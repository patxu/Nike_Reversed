/*
 * Copyleft of Simone Margaritelli aka evilsocket <evilsocket@gmail.com>
 * http://www.evilsocket.net/
 * 
 * This is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this software. If not, see <http://www.gnu.org/licenses/>.
 */
package com.pat_ubuntu.nike_reversed;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

import com.pat_ubuntu.nike_reversed.Utils.Logger;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.support.v7.app.ActionBarActivity;
import android.widget.TextView;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.ParcelUuid;


public class MainActivity extends ActionBarActivity 
{
    private final static int REQUEST_ENABLE_BT = 1;

    private final static UUID CLIENT_CHARACTERISTIC_CONFIG_UUID = UUID.fromString("00002902-0000-1000-8000-00805f9b34fb");

    private static final UUID COPPERHEAD_CMD_UUID = UUID.fromString("c7d25540-31dd-11e2-81c1-0800200c9a66");
    private static final UUID COPPERHEAD_RSP_UUID = UUID.fromString("d36f33f0-31dd-11e2-81c1-0800200c9a66");
    private static final UUID COPPERHEAD_SERVICE_UUID = UUID.fromString("83cdc410-31dd-11e2-81c1-0800200c9a66");

    private BluetoothManager _btManager = null;
    private BluetoothAdapter _btAdapter = null;
    private BLEIoQueue 		 _ioqueue   = null;

    private boolean _scanning = false;
    private BluetoothAdapter.LeScanCallback _leScanCallback = null;

    private static final byte[] NIKE_COMPANY_CODE = { 0, 120 };

    private void dumpDeviceAdvData( Bundle advData ) {
        Set<String> props = advData.keySet();

        for( String prop : props )
        {
            String mess = "  " + prop + " : ";

            if( prop.equals("COMPANYCODE") || prop.equals("MANUDATA") )
            {
                byte[] value = advData.getByteArray(prop);
                mess += Utils.bytesToHex(value) + " ( " + new String(value) + " )";
            }
            else if( prop.equals("SERVICES") )
            {
                ArrayList<ParcelUuid> services = advData.getParcelableArrayList(prop);
                for( ParcelUuid uuid : services )
                {
                    mess += uuid.toString() + " ";
                }
            }
            else if( prop.equals("LOCALNAME") )
            {
                mess += advData.getString(prop);
            }

            Logger.d( mess );
        }
    }

    private static final Map<Integer, String> propsMap;
    static
    {
        propsMap = new HashMap<Integer, String>();

        propsMap.put( BluetoothGattCharacteristic.PROPERTY_BROADCAST, "PROPERTY_BROADCAST" );
        propsMap.put( BluetoothGattCharacteristic.PROPERTY_READ, "PROPERTY_READ" );
        propsMap.put( BluetoothGattCharacteristic.PROPERTY_WRITE_NO_RESPONSE, "PROPERTY_WRITE_NO_RESPONSE" );
        propsMap.put( BluetoothGattCharacteristic.PROPERTY_WRITE, "PROPERTY_WRITE" );
        propsMap.put( BluetoothGattCharacteristic.PROPERTY_NOTIFY, "PROPERTY_NOTIFY" );
        propsMap.put( BluetoothGattCharacteristic.PROPERTY_INDICATE, "PROPERTY_INDICATE" );
        propsMap.put( BluetoothGattCharacteristic.PROPERTY_SIGNED_WRITE, "PROPERTY_SIGNED_WRITE" );
        propsMap.put( BluetoothGattCharacteristic.PROPERTY_EXTENDED_PROPS, "PROPERTY_EXTENDED_PROPS" );
    }

    private void dumpServices( BluetoothGatt gatt )
    {
        for( BluetoothGattService svc : gatt.getServices() )
        {
            String svc_uuid = svc.getUuid().toString(),
                   svc_name = GATTAttributes.lookup( svc_uuid, "" );
            Logger.d( "SERVICE " + svc_name + " ( " + svc_uuid + " )" );

            for( BluetoothGattCharacteristic chara : svc.getCharacteristics() )
            {
                String chr_uuid = chara.getUuid().toString(),
                       chr_name = GATTAttributes.lookup( chr_uuid, "" );
                int chr_props = chara.getProperties();
                String props = "";

                for (Object o : propsMap.entrySet()) {
                    Map.Entry pairs = (Map.Entry) o;

                    if ((chr_props & (Integer) pairs.getKey()) != 0) {
                        props += pairs.getValue().toString() + " ";
                    }
                }

                Logger.d( "    " + chr_name + " ( " + chr_uuid + " ) [" + props + "] : " + Utils.bytesToHex(chara.getValue() ) );

                for( BluetoothGattDescriptor desc : chara.getDescriptors() )
                {
                    Logger.d( "      DESC: " + desc.getUuid() );
                }
            }
        }

        Logger.d( "---------------------------------------------------------------------------" );
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        //refers to a TextView specified in activity_main.xml
        Logger.setLogView( this, (TextView)findViewById( R.id.log_view ) );

        _btManager = (BluetoothManager)getSystemService(Context.BLUETOOTH_SERVICE);
        _btAdapter = _btManager.getAdapter();

        if(!_btAdapter.isEnabled()){
            Logger.w( "Bluetooth is disabled." );

            Intent enableIntent = new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE);
            startActivityForResult(enableIntent,REQUEST_ENABLE_BT);
        }

        _leScanCallback = new BluetoothAdapter.LeScanCallback() {

            @Override
            public void onLeScan(BluetoothDevice device, int rssi, byte[] scanRecord) {
                if(!_scanning)
                    return;

                try
                {
                    /*
                     * Parse device advertisment data.
                     */
                    final Bundle advData = AdvertisementData.parse(scanRecord);
                    /*
                     * Is this a nike device?
                     */
                    if( Arrays.equals(advData.getByteArray("COMPANYCODE"), NIKE_COMPANY_CODE ) )
                    {
                        Logger.i( "FOUND NIKE DEVICE [" + device +"]" );

                        dumpDeviceAdvData( advData );

                        _scanning = false;
                        _btAdapter.stopLeScan(_leScanCallback);

                        Logger.i( "Connecting to GATT server ..." );

                        //creates the queue
                        _ioqueue = new BLEIoQueue( new BLEIoQueue.QueueCallbacks() {
                            private BluetoothGattService	    _CopperheadService = null;
                            private BluetoothGattCharacteristic _CommandChannel = null;//where we write commands
                            private BluetoothGattCharacteristic _ResponseChannel = null;//where we read commands

                            // add a raw packet to the queue
                            private void addPacket( BLEIoQueue queue, byte[] data, BLEIoOperation.OnResponseCallback callback ){
                                BLEIoOperation op = new BLEIoOperation( BLEIoOperation.Type.WRITE_CHARACTERISTICS, "Sending command.", callback );

                                op.set_data( data );
//                                String string = _CommandChannel.toString() + "";
//                                Logger.i("CHARACTERISTIC: " + op.get_characteristic());
//                                Logger.i("DESCRIPTION: " + op.get_description());
                                op.set_characteristic( _CommandChannel ); //what is this command channel?

                                queue.add(op);
                            }

                            //puts a string of numbers into a byte array and then calls addPacket; assumes string s is even
                            private void addPacket( BLEIoQueue queue, String s, BLEIoOperation.OnResponseCallback callback ){
                                byte[] buffer = new byte[ s.length() / 2 ];

                                for( int i = 0, j = 0; i < s.length(); i += 2, ++j ){
                                    buffer[j] = (byte) ((Character.digit(s.charAt(i), 16) << 4)
                                                        + Character.digit(s.charAt(i+1), 16));
                                }

                                addPacket( queue, buffer, callback );
                            }
                            /*
                            Cmd_Settings_Get
                            create the needed packet to request a specific setting from the device
                            encoding found in NikeProtocolCoder_Copperhead.java line 1504
                            */
                            private void requestSetting( BLEIoQueue queue, int code )
                            {
                                CopperheadPacket oppacket = new CopperheadPacket(5); //line 1519
                                oppacket.setOpcode((byte)10); //OPCODE_SETTING_GET is 0xa
                                ByteBuffer b = oppacket.getPayloadBuffer();
                                b.put( (byte)1 );
                                b.put( (byte)code );

                                Packet p = Packet.wrap(oppacket);

                                p.setProtocolLayer( CommandResponseOperation.ProtocolLayer.COMMAND );
                                p.setPacketCount(0);
                                p.setPacketIndex(0);
                                p.setSequenceNumber(1);

                                addPacket( queue, p.getBuffer(), new BLEIoOperation.OnResponseCallback() {
                                    @Override
                                    public void onData(Packet config) {
                                        Logger.i("CONFIG: " + config.toString());

                                        byte[] raw = config.getBuffer();
//                                        Logger.i("SETTING: " + config.toString());

                                        try
                                        {
                                            Utils.processGetSettingsResponse(raw);
                                        }
                                        catch( Exception e )
                                        {
                                            Logger.e( e.toString() );
                                        }
                                    }
                                } );
                            }

                            // Battery_State; always returns 4 bytes then 00- what does this mean?
                            // doesn't work yet
                            private void batteryState( BLEIoQueue queue){
                                CopperheadPacket oppacket = new CopperheadPacket(5);
                                oppacket.setOpcode((byte)6);
                                ByteBuffer b = oppacket.getPayloadBuffer();
                                b.put((byte)1);


                                Packet p = Packet.wrap(oppacket);

                                p.setProtocolLayer( CommandResponseOperation.ProtocolLayer.COMMAND );
                                p.setPacketCount(0); // not sure what these next 3 lines do; used both above and in auth
                                p.setPacketIndex(0);
                                p.setSequenceNumber(1);

                                Logger.i("BAT PACKET: " + p.toString());
                                //(packet adds ot queue, p.getBuffer is new BLEIoOperation data, callback response)
                                addPacket(queue, p.getBuffer(), new BLEIoOperation.OnResponseCallback() {
                                    @Override
                                    public void onData(Packet packet) { //add to queue, wait for magic?
                                        Logger.i("BATTERY: " + packet.toString()); //count, index, sequ?
                                    }
                                });
                            }

                            /*
                            Cmd_UploadGraphic; subclass of GenericMemoryBlock
                            line 1861
                            */
                            private void uploadGraphic( BLEIoQueue queue, Bitmap map){ //uploadGraphic.smali
//                                int size = map.getByteCount(); //map.getRowBytes() * map.getHeight();
//                                String string = size + "";
//                                Logger.i("Size: " + string);
                                CopperheadPacket oppacket = new CopperheadPacket(map.getByteCount() + 4); //why +4?
                                oppacket.setOpcode((byte)21); //0x15; opcode for upload_graphic
                                ByteBuffer b = oppacket.getPayloadBuffer();
                                b.put((byte)1); //what's the 1 for?
                                map.copyPixelsToBuffer(b); //copy bitmap into bytebuffer


                                Packet p = Packet.wrap(oppacket);

                                p.setProtocolLayer( CommandResponseOperation.ProtocolLayer.COMMAND );
                                p.setPacketCount(0); // not sure what these next 3 lines do; used both above and in auth
                                p.setPacketIndex(0);
                                p.setSequenceNumber(1);

                                Logger.i("BITMAP PACKET: " + p.toString());
                                //(packet adds ot queue, p.getBuffer is new BLEIoOperation data, callback response)
                                addPacket(queue, p.getBuffer(), new BLEIoOperation.OnResponseCallback() {
                                    @Override
                                    public void onData(Packet packet) { //add to queue, wait for magic?
                                        Logger.i("GRAPHICS: " + packet.toString()); //count, index, sequ?
                                    }
                                });
                            }

                            /*
                            public class Cmd_UploadGraphic extends com.nike.nikerf.protocol.a
                            {
                                public Cmd_UploadGraphic()
                                {
                                }

                                public NikeMessage decode(NikeTransaction paramNikeTransaction)
                                        throws ProtocolCoderException
                                {
                                    NikeRequest localNikeRequest = paramNikeTransaction.getRequest();
                                    NikeProtocolCoder_Copperhead.processGenericResponse(paramNikeTransaction, localNikeRequest);
                                    return localNikeRequest;
                                }

                                public void encode(NikeTransaction paramNikeTransaction)
                                        throws ProtocolCoderException
                                {
                                    NikeRequest localNikeRequest = paramNikeTransaction.getRequest();
                                    if (!(localNikeRequest.requestData instanceof UploadGraphic))
                                        throw new IllegalArgumentException("request object is class " + localNikeRequest.requestData.getClass().getName() + ". Expected UploadGraphic");
                                    UploadGraphic localUploadGraphic = (UploadGraphic)localNikeRequest.requestData;
                                    if (localUploadGraphic.payload == null)
                                        throw new ProtocolCoderException("Invalid parameter");
                                    if (localUploadGraphic.payload.length > 127)
                                        throw new ProtocolCoderException("payload is too big (>127).");
                                    CopperheadPacket localCopperheadPacket = new CopperheadPacket(7 + localUploadGraphic.payload.length);
                                    localCopperheadPacket.setOpcode((byte)21);
                                    ByteBuffer localByteBuffer = localCopperheadPacket.getPayloadBuffer();
                                    localByteBuffer.put(localUploadGraphic.index);
                                    localByteBuffer.putShort(localUploadGraphic.address);
                                    localByteBuffer.put((byte)localUploadGraphic.payload.length);
                                    localByteBuffer.put(localUploadGraphic.payload);
                                    NikeProtocolCoder_Copperhead.addNewOperationToTransaction(paramNikeTransaction, CommandResponseOperation.ProtocolLayer.COMMAND, localCopperheadPacket.getData());
                                }
                            }
*/
/*

                            Sample log output

                            03-10 18:10:58.422  27527-27540/com.pat_ubuntu.nike_reversed I/BLEHACKS﹕ GRAPHICS: [COMMAND] COUNT=1 INDEX=1 SEQN=3 : 000000000000000000000000000000000000
                            03-10 18:10:58.492  27527-27540/com.pat_ubuntu.nike_reversed I/BLEHACKS﹕ GRAPHICS: [COMMAND] COUNT=0 INDEX=0 SEQN=4 : 012200000000000000000000000000000000
                            03-10 18:13:57.132  27527-27540/com.pat_ubuntu.nike_reversed I/BLEHACKS﹕ GRAPHICS: [COMMAND] COUNT=1 INDEX=1 SEQN=5 : 9E0600000000000000000000000000000000
                            03-10 18:14:02.242  27527-27540/com.pat_ubuntu.nike_reversed I/BLEHACKS﹕ GRAPHICS: [COMMAND] COUNT=1 INDEX=1 SEQN=6 : 9E0600000000000000000000000000000000
                            03-10 18:14:07.242  27527-27540/com.pat_ubuntu.nike_reversed I/BLEHACKS﹕ GRAPHICS: [COMMAND] COUNT=1 INDEX=1 SEQN=7 : 9E0600000000000000000000000000000000
                            03-10 18:14:13.282  27527-27540/com.pat_ubuntu.nike_reversed I/BLEHACKS﹕ GRAPHICS: [COMMAND] COUNT=1 INDEX=1 SEQN=1 : 9E0600000000000000000000000000000000
                            03-10 18:14:18.282  27527-27540/com.pat_ubuntu.nike_reversed I/BLEHACKS﹕ GRAPHICS: [COMMAND] COUNT=1 INDEX=1 SEQN=2 : 9E0600000000000000000000000000000000

                            03-10 18:19:53.292  27527-27540/com.pat_ubuntu.nike_reversed I/BLEHACKS﹕ GRAPHICS: [COMMAND] COUNT=1 INDEX=1 SEQN=4 : 9E0600000000000000000000000000000000
                            03-10 18:19:54.142  27527-27539/com.pat_ubuntu.nike_reversed I/BLEHACKS﹕ GRAPHICS: [COMMAND] COUNT=0 INDEX=0 SEQN=5 : 0CFFFF0324E900000E9C14D53C0000000000
                            03-10 18:19:54.152  27527-27540/com.pat_ubuntu.nike_reversed I/BLEHACKS﹕ GRAPHICS: [COMMAND] COUNT=0 INDEX=0 SEQN=6 : 0CFFFF0350E900000E9C14D53C0000000000
                            03-10 18:19:54.162  27527-27540/com.pat_ubuntu.nike_reversed I/BLEHACKS﹕ GRAPHICS: [COMMAND] COUNT=1 INDEX=1 SEQN=7 : 9E0600000000000000000000000000000000

*/


                            @Override
                            public void onServicesDiscovered(BLEIoQueue queue, BluetoothGatt gatt, int status) {
                                dumpServices(gatt);

                                _CopperheadService = gatt.getService( COPPERHEAD_SERVICE_UUID );
                                if( _CopperheadService == null ){
                                    Logger.e( "No Copperhead service found." );
                                    return;
                                }

                                /*
                                 * Get command and response channels.
                                 */
                                _CommandChannel = _CopperheadService.getCharacteristic( COPPERHEAD_CMD_UUID );
                                _ResponseChannel = _CopperheadService.getCharacteristic( COPPERHEAD_RSP_UUID );

                                if( _CommandChannel == null ){
                                    Logger.e( "Could not find COPPERHEAD_CMD_UUID" );
                                    return;
                                }
                                else if( _ResponseChannel == null ){
                                    Logger.e( "Could not find COPPERHEAD_RSP_UUID" );
                                    return;
                                }

                                /*
                                 * Enable the response channel to receive incoming data notifications.
                                 */
                                BluetoothGattDescriptor rsp_config_desc = _ResponseChannel.getDescriptor( CLIENT_CHARACTERISTIC_CONFIG_UUID );
                                if( rsp_config_desc == null ){
                                    Logger.e( "RSP has no client config." );
                                    return;
                                }

                                BLEIoOperation notify = new BLEIoOperation( BLEIoOperation.Type.NOTIFY_START, "Enable response channel notifications." );

                                notify.set_characteristic( _ResponseChannel );
                                notify.set_descriptor( rsp_config_desc );

                                queue.add(notify);

                                final BLEIoQueue fq = queue;

                                Packet auth = new Packet(19);

                                /*
                                 * Send the "START AUTH" packet -> 0x90 0x01 0x01 0x00 .....
                                 * 0x90 = 144, 0x01 = 1, 0x00 = 0
                                 */
                                auth.setProtocolLayer( CommandResponseOperation.ProtocolLayer.SESSION );
                                auth.setPacketCount(0);
                                auth.setPacketIndex(0);
                                auth.setSequenceNumber(1);
                                auth.setCommandBytes( (byte)1, (byte)1 );

                                addPacket( queue, auth.getBuffer(), new BLEIoOperation.OnResponseCallback() {
                                    @Override
                                    public void onData( Packet challenge_packet ) {

                                        Logger.d( "<< " + challenge_packet.toString() );

                                        ByteBuffer buffer = challenge_packet.getBuffered(ByteOrder.LITTLE_ENDIAN);

                                        // challenge response look something like this: 0xC0 0x11 0x41 0xF495C98693075322225EB8B8A4D79B39

                                        // remove op code and length
                                        int opcode = buffer.get(); //reply opcode
                                        int length = buffer.get(); //following data size

                                        switch( buffer.get() )
                                        {
                                            case 0x41: //authentication opcode
                                                Logger.i( "Received authentication challenge" );

                                                /*
                                                 * Get 16 bytes of AUTH nonce
                                                 * nonce is a one-time number, often to ensure that communications can't be reused in
                                                 * replay attacks
                                                 */
                                                byte[] nonce = new byte[16];
                                                buffer.get(nonce);

                                                if ((nonce == null) || (nonce.length != 16))
                                                {
                                                    Logger.e("Missing or invalid authentication challenge nonce");
                                                }
                                                else
                                                {
                                                    CopperheadCRC32 crc = new CopperheadCRC32();

                                                    //instead of the robust system using the nonce and discovery token, we just use this...
                                                    //as long as you can get the nonce (BLE smartphone) you can authenticate
                                                    byte[] auth_token = Utils.hexToBytes("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF");

                                                    Logger.d( "NONCE: " + Utils.bytesToHex( nonce ) );

                                                    /*
                                                     * Create the response packet: 0xb0 0x03 0x02 [2 BYTES OF CRC] 0x00 ...
                                                     */
                                                    Packet resp_packet = new Packet(19);

                                                    resp_packet.setProtocolLayer( CommandResponseOperation.ProtocolLayer.SESSION );
                                                    resp_packet.setPacketCount(0);
                                                    resp_packet.setPacketIndex(0);
                                                    resp_packet.setSequenceNumber( challenge_packet.getSequenceNumber() + 1 );

                                                    ByteBuffer response = ByteBuffer.allocate(18);

                                                    response.put( (byte)0x03 );
                                                    response.put( (byte)0x02 );

                                                    crc.update(nonce);
                                                    crc.update(auth_token);

                                                    short sum = (short)((0xFFFF & crc.getValue()) ^ (0xFFFF & crc.getValue() >>> 16));

                                                    response.putShort(sum);

                                                    resp_packet.setPayload( response.array() );

                                                    addPacket( fq, resp_packet.getBuffer(), new BLEIoOperation.OnResponseCallback() {
                                                        @Override
                                                        public void onData(Packet challenge_response) {

                                                            Logger.d( "<< " + challenge_response.toString() );

                                                            ByteBuffer buffer = challenge_response.getBuffered(ByteOrder.LITTLE_ENDIAN);

                                                            // remove op code and length
                                                            int opcode = buffer.get();
                                                            int length = buffer.get();

                                                            /*
                                                             * Get the authentication reply code.
                                                             */
                                                            int reply = buffer.get(); //everything after this byte we don't really care about

                                                            if( reply == 0x42 ) { //send the commands!
                                                                Logger.i( "Succesfully authenticated." );

                                                                // Request some settings using requestSetting() and then uses
                                                                // processGetSettingsResponse() in Utils to decode the message
//                                                                requestSetting( fq, Utils.getSettingCode( "BAND_COLOR" );

                                                                // why is this unintelligible?
//                                                                requestSetting( fq, Utils.getSettingCode( "FUEL" ) );

                                                                requestSetting( fq, Utils.getSettingCode( "BLE_POWER_LEVEL" ) );
////                                                                requestSetting( fq, Utils.getSettingCode( "SERIAL_NUMBER" ) );
//
//                                                                //UPLOAD GRAPHIC TESTING
//                                                                requestSetting( fq, Utils.getSettingCode( "IN_SESSION_LED" ) );
//                                                                requestSetting( fq, Utils.getSettingCode( "WEIGHT" ) );
//                                                                requestSetting( fq, Utils.getSettingCode( "LED_ROW_BALANCE" ) );
//                                                                requestSetting( fq, Utils.getSettingCode( "LED_DOT_CORRECTION" ) );

                                                                //there's a 5x20 and 1x20 LED array
                                                                Bitmap.Config conf = Bitmap.Config.ARGB_8888;
                                                                int w = 20; //total guess
                                                                int h = 5; //maybe 5 tall?

                                                                Bitmap map = Bitmap.createBitmap(w, h, conf);
                                                                for (int i = 0; i < w; i++) {
                                                                    for (int j = 0; j < h; j++ ) {
                                                                        map.setPixel(i, j, Color.BLACK);
                                                                    }
                                                                }
//                                                                uploadGraphic(fq, map);

                                                                batteryState(fq);
                                                            }
                                                            else {
                                                                Logger.e( "Authentication failure, reply: " + reply );
                                                            }
                                                        }
                                                    });
                                                }

                                                break;

                                            default:

                                                Logger.e( "Unknown auth code." );
                                        }
                                    }
                                });
                            }
                        });

                        device.connectGatt( MainActivity.this, false, _ioqueue );
                    }
                }
                catch( Exception e )
                {
                    Logger.e( e.toString() );
                }
            }
        };

        Logger.i( "Starting scan ..." );

        _scanning = true;
        _btAdapter.startLeScan(_leScanCallback);
    }

}
