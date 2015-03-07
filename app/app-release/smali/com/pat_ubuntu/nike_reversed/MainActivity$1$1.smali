.class Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/pat_ubuntu/nike_reversed/BLEIoQueue$QueueCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pat_ubuntu/nike_reversed/MainActivity$1;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private _CommandChannel:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private _CopperheadService:Landroid/bluetooth/BluetoothGattService;

.field private _ResponseChannel:Landroid/bluetooth/BluetoothGattCharacteristic;

.field final synthetic this$1:Lcom/pat_ubuntu/nike_reversed/MainActivity$1;


# direct methods
.method constructor <init>(Lcom/pat_ubuntu/nike_reversed/MainActivity$1;)V
    .locals 1
    .param p1, "this$1"    # Lcom/pat_ubuntu/nike_reversed/MainActivity$1;

    .prologue
    const/4 v0, 0x0

    .line 191
    iput-object p1, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->this$1:Lcom/pat_ubuntu/nike_reversed/MainActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object v0, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->_CopperheadService:Landroid/bluetooth/BluetoothGattService;

    .line 193
    iput-object v0, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->_CommandChannel:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 194
    iput-object v0, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->_ResponseChannel:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method

.method static synthetic access$1100(Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;I)V
    .locals 0
    .param p0, "x0"    # Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;
    .param p1, "x1"    # Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;
    .param p2, "x2"    # I

    .prologue
    .line 191
    invoke-direct {p0, p1, p2}, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->requestSetting(Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;[BLcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;
    .param p1, "x1"    # Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;
    .param p2, "x2"    # [B
    .param p3, "x3"    # Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;

    .prologue
    .line 191
    invoke-direct {p0, p1, p2, p3}, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->addPacket(Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;[BLcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;)V

    return-void
.end method

.method private addPacket(Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;Ljava/lang/String;Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;)V
    .locals 6
    .param p1, "queue"    # Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;

    .prologue
    const/16 v5, 0x10

    .line 207
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    new-array v0, v3, [B

    .line 209
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 210
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v1, 0x1

    .line 211
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 209
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    :cond_0
    invoke-direct {p0, p1, v0, p3}, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->addPacket(Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;[BLcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;)V

    .line 215
    return-void
.end method

.method private addPacket(Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;[BLcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;)V
    .locals 3
    .param p1, "queue"    # Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;
    .param p2, "data"    # [B
    .param p3, "callback"    # Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;

    .prologue
    .line 198
    new-instance v0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;

    sget-object v1, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;->WRITE_CHARACTERISTICS:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    const-string v2, "Sending command."

    invoke-direct {v0, v1, v2, p3}, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;-><init>(Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;Ljava/lang/String;Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;)V

    .line 200
    .local v0, "op":Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;
    invoke-virtual {v0, p2}, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->set_data([B)V

    .line 201
    iget-object v1, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->_CommandChannel:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->set_characteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 203
    invoke-virtual {p1, v0}, Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;->add(Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;)V

    .line 204
    return-void
.end method

.method private requestSetting(Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;I)V
    .locals 6
    .param p1, "queue"    # Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;
    .param p2, "code"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 221
    new-instance v1, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;-><init>(I)V

    .line 222
    .local v1, "oppacket":Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->setOpcode(B)V

    .line 223
    invoke-virtual {v1}, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->getPayloadBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 224
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 225
    int-to-byte v3, p2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 227
    invoke-static {v1}, Lcom/pat_ubuntu/nike_reversed/Packet;->wrap(Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;)Lcom/pat_ubuntu/nike_reversed/Packet;

    move-result-object v2

    .line 229
    .local v2, "p":Lcom/pat_ubuntu/nike_reversed/Packet;
    sget-object v3, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;->COMMAND:Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

    invoke-virtual {v2, v3}, Lcom/pat_ubuntu/nike_reversed/Packet;->setProtocolLayer(Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;)V

    .line 230
    invoke-virtual {v2, v4}, Lcom/pat_ubuntu/nike_reversed/Packet;->setPacketCount(I)V

    .line 231
    invoke-virtual {v2, v4}, Lcom/pat_ubuntu/nike_reversed/Packet;->setPacketIndex(I)V

    .line 232
    invoke-virtual {v2, v5}, Lcom/pat_ubuntu/nike_reversed/Packet;->setSequenceNumber(I)V

    .line 234
    invoke-virtual {v2}, Lcom/pat_ubuntu/nike_reversed/Packet;->getBuffer()[B

    move-result-object v3

    new-instance v4, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$1;

    invoke-direct {v4, p0}, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$1;-><init>(Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;)V

    invoke-direct {p0, p1, v3, v4}, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->addPacket(Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;[BLcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;)V

    .line 249
    return-void
.end method

.method private uploadGraphic(Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;I)V
    .locals 2
    .param p1, "queue"    # Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;
    .param p2, "code"    # I

    .prologue
    .line 253
    new-instance v0, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;-><init>(I)V

    .line 255
    .local v0, "oppacket":Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;
    return-void
.end method


# virtual methods
.method public onServicesDiscovered(Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 8
    .param p1, "queue"    # Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;
    .param p2, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p3, "status"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 259
    iget-object v4, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->this$1:Lcom/pat_ubuntu/nike_reversed/MainActivity$1;

    iget-object v4, v4, Lcom/pat_ubuntu/nike_reversed/MainActivity$1;->this$0:Lcom/pat_ubuntu/nike_reversed/MainActivity;

    # invokes: Lcom/pat_ubuntu/nike_reversed/MainActivity;->dumpServices(Landroid/bluetooth/BluetoothGatt;)V
    invoke-static {v4, p2}, Lcom/pat_ubuntu/nike_reversed/MainActivity;->access$600(Lcom/pat_ubuntu/nike_reversed/MainActivity;Landroid/bluetooth/BluetoothGatt;)V

    .line 261
    # getter for: Lcom/pat_ubuntu/nike_reversed/MainActivity;->COPPERHEAD_SERVICE_UUID:Ljava/util/UUID;
    invoke-static {}, Lcom/pat_ubuntu/nike_reversed/MainActivity;->access$700()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    iput-object v4, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->_CopperheadService:Landroid/bluetooth/BluetoothGattService;

    .line 262
    iget-object v4, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->_CopperheadService:Landroid/bluetooth/BluetoothGattService;

    if-nez v4, :cond_0

    .line 263
    const-string v4, "No Copperhead service found."

    invoke-static {v4}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->e(Ljava/lang/String;)V

    .line 428
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v4, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->_CopperheadService:Landroid/bluetooth/BluetoothGattService;

    # getter for: Lcom/pat_ubuntu/nike_reversed/MainActivity;->COPPERHEAD_CMD_UUID:Ljava/util/UUID;
    invoke-static {}, Lcom/pat_ubuntu/nike_reversed/MainActivity;->access$800()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    iput-object v4, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->_CommandChannel:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 271
    iget-object v4, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->_CopperheadService:Landroid/bluetooth/BluetoothGattService;

    # getter for: Lcom/pat_ubuntu/nike_reversed/MainActivity;->COPPERHEAD_RSP_UUID:Ljava/util/UUID;
    invoke-static {}, Lcom/pat_ubuntu/nike_reversed/MainActivity;->access$900()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    iput-object v4, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->_ResponseChannel:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 273
    iget-object v4, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->_CommandChannel:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-nez v4, :cond_1

    .line 274
    const-string v4, "Could not find COPPERHEAD_CMD_UUID"

    invoke-static {v4}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_1
    iget-object v4, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->_ResponseChannel:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-nez v4, :cond_2

    .line 278
    const-string v4, "Could not find COPPERHEAD_RSP_UUID"

    invoke-static {v4}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_2
    iget-object v4, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->_ResponseChannel:Landroid/bluetooth/BluetoothGattCharacteristic;

    # getter for: Lcom/pat_ubuntu/nike_reversed/MainActivity;->CLIENT_CHARACTERISTIC_CONFIG_UUID:Ljava/util/UUID;
    invoke-static {}, Lcom/pat_ubuntu/nike_reversed/MainActivity;->access$1000()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v3

    .line 286
    .local v3, "rsp_config_desc":Landroid/bluetooth/BluetoothGattDescriptor;
    if-nez v3, :cond_3

    .line 287
    const-string v4, "RSP has no client config."

    invoke-static {v4}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_3
    new-instance v2, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;

    sget-object v4, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;->NOTIFY_START:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    const-string v5, "Enable response channel notifications."

    invoke-direct {v2, v4, v5}, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;-><init>(Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;Ljava/lang/String;)V

    .line 293
    .local v2, "notify":Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;
    iget-object v4, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->_ResponseChannel:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2, v4}, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->set_characteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 294
    invoke-virtual {v2, v3}, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->set_descriptor(Landroid/bluetooth/BluetoothGattDescriptor;)V

    .line 296
    invoke-virtual {p1, v2}, Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;->add(Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;)V

    .line 298
    move-object v1, p1

    .line 300
    .local v1, "fq":Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;
    new-instance v0, Lcom/pat_ubuntu/nike_reversed/Packet;

    const/16 v4, 0x13

    invoke-direct {v0, v4}, Lcom/pat_ubuntu/nike_reversed/Packet;-><init>(I)V

    .line 306
    .local v0, "auth":Lcom/pat_ubuntu/nike_reversed/Packet;
    sget-object v4, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;->SESSION:Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

    invoke-virtual {v0, v4}, Lcom/pat_ubuntu/nike_reversed/Packet;->setProtocolLayer(Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;)V

    .line 307
    invoke-virtual {v0, v7}, Lcom/pat_ubuntu/nike_reversed/Packet;->setPacketCount(I)V

    .line 308
    invoke-virtual {v0, v7}, Lcom/pat_ubuntu/nike_reversed/Packet;->setPacketIndex(I)V

    .line 309
    invoke-virtual {v0, v6}, Lcom/pat_ubuntu/nike_reversed/Packet;->setSequenceNumber(I)V

    .line 310
    invoke-virtual {v0, v6, v6}, Lcom/pat_ubuntu/nike_reversed/Packet;->setCommandBytes(BB)V

    .line 312
    invoke-virtual {v0}, Lcom/pat_ubuntu/nike_reversed/Packet;->getBuffer()[B

    move-result-object v4

    new-instance v5, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;

    invoke-direct {v5, p0, v1}, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;-><init>(Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;)V

    invoke-direct {p0, p1, v4, v5}, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->addPacket(Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;[BLcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;)V

    goto :goto_0
.end method
