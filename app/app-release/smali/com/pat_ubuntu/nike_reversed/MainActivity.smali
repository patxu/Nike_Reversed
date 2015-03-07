.class public Lcom/pat_ubuntu/nike_reversed/MainActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "MainActivity.java"


# static fields
.field private static final CLIENT_CHARACTERISTIC_CONFIG_UUID:Ljava/util/UUID;

.field private static final COPPERHEAD_CMD_UUID:Ljava/util/UUID;

.field private static final COPPERHEAD_RSP_UUID:Ljava/util/UUID;

.field private static final COPPERHEAD_SERVICE_UUID:Ljava/util/UUID;

.field private static final NIKE_COMPANY_CODE:[B

.field private static final REQUEST_ENABLE_BT:I = 0x1

.field private static final propsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _btAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private _btManager:Landroid/bluetooth/BluetoothManager;

.field private _ioqueue:Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;

.field private _leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private _scanning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 51
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->CLIENT_CHARACTERISTIC_CONFIG_UUID:Ljava/util/UUID;

    .line 53
    const-string v0, "c7d25540-31dd-11e2-81c1-0800200c9a66"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->COPPERHEAD_CMD_UUID:Ljava/util/UUID;

    .line 54
    const-string v0, "d36f33f0-31dd-11e2-81c1-0800200c9a66"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->COPPERHEAD_RSP_UUID:Ljava/util/UUID;

    .line 55
    const-string v0, "83cdc410-31dd-11e2-81c1-0800200c9a66"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->COPPERHEAD_SERVICE_UUID:Ljava/util/UUID;

    .line 64
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->NIKE_COMPANY_CODE:[B

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->propsMap:Ljava/util/Map;

    .line 100
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->propsMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PROPERTY_BROADCAST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->propsMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PROPERTY_READ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->propsMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PROPERTY_WRITE_NO_RESPONSE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->propsMap:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PROPERTY_WRITE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->propsMap:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PROPERTY_NOTIFY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->propsMap:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PROPERTY_INDICATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->propsMap:Ljava/util/Map;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PROPERTY_SIGNED_WRITE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->propsMap:Ljava/util/Map;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PROPERTY_EXTENDED_PROPS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-void

    .line 64
    :array_0
    .array-data 1
        0x0t
        0x78t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->_btManager:Landroid/bluetooth/BluetoothManager;

    .line 58
    iput-object v1, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->_btAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 59
    iput-object v1, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->_ioqueue:Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->_scanning:Z

    .line 62
    iput-object v1, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->_leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/pat_ubuntu/nike_reversed/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/pat_ubuntu/nike_reversed/MainActivity;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->_scanning:Z

    return v0
.end method

.method static synthetic access$002(Lcom/pat_ubuntu/nike_reversed/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/pat_ubuntu/nike_reversed/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->_scanning:Z

    return p1
.end method

.method static synthetic access$100()[B
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->NIKE_COMPANY_CODE:[B

    return-object v0
.end method

.method static synthetic access$1000()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->CLIENT_CHARACTERISTIC_CONFIG_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$200(Lcom/pat_ubuntu/nike_reversed/MainActivity;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/pat_ubuntu/nike_reversed/MainActivity;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/pat_ubuntu/nike_reversed/MainActivity;->dumpDeviceAdvData(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/pat_ubuntu/nike_reversed/MainActivity;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .locals 1
    .param p0, "x0"    # Lcom/pat_ubuntu/nike_reversed/MainActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->_leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/pat_ubuntu/nike_reversed/MainActivity;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/pat_ubuntu/nike_reversed/MainActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->_btAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/pat_ubuntu/nike_reversed/MainActivity;)Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;
    .locals 1
    .param p0, "x0"    # Lcom/pat_ubuntu/nike_reversed/MainActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->_ioqueue:Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;

    return-object v0
.end method

.method static synthetic access$502(Lcom/pat_ubuntu/nike_reversed/MainActivity;Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;)Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;
    .locals 0
    .param p0, "x0"    # Lcom/pat_ubuntu/nike_reversed/MainActivity;
    .param p1, "x1"    # Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->_ioqueue:Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;

    return-object p1
.end method

.method static synthetic access$600(Lcom/pat_ubuntu/nike_reversed/MainActivity;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .param p0, "x0"    # Lcom/pat_ubuntu/nike_reversed/MainActivity;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/pat_ubuntu/nike_reversed/MainActivity;->dumpServices(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method static synthetic access$700()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->COPPERHEAD_SERVICE_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->COPPERHEAD_CMD_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->COPPERHEAD_RSP_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method private dumpDeviceAdvData(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "advData"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 69
    .local v2, "props":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    .local v1, "prop":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "mess":Ljava/lang/String;
    const-string v7, "COMPANYCODE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "MANUDATA"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 75
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 76
    .local v5, "value":[B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/pat_ubuntu/nike_reversed/Utils;->bytesToHex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " )"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .end local v5    # "value":[B
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_2
    const-string v7, "SERVICES"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 80
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 81
    .local v3, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 83
    .local v4, "uuid":Landroid/os/ParcelUuid;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    goto :goto_2

    .line 86
    .end local v3    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    .end local v4    # "uuid":Landroid/os/ParcelUuid;
    :cond_3
    const-string v7, "LOCALNAME"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 88
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 93
    .end local v0    # "mess":Ljava/lang/String;
    .end local v1    # "prop":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private dumpServices(Landroid/bluetooth/BluetoothGatt;)V
    .locals 16
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 112
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothGattService;

    .line 114
    .local v8, "svc":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    .line 115
    .local v10, "svc_uuid":Ljava/lang/String;
    const-string v11, ""

    invoke-static {v10, v11}, Lcom/pat_ubuntu/nike_reversed/GATTAttributes;->lookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 116
    .local v9, "svc_name":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SERVICE "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " ( "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " )"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->d(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 120
    .local v0, "chara":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "chr_uuid":Ljava/lang/String;
    const-string v11, ""

    invoke-static {v3, v11}, Lcom/pat_ubuntu/nike_reversed/GATTAttributes;->lookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "chr_name":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    .line 123
    .local v2, "chr_props":I
    const-string v7, ""

    .line 125
    .local v7, "props":Ljava/lang/String;
    sget-object v11, Lcom/pat_ubuntu/nike_reversed/MainActivity;->propsMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 126
    .local v5, "it":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 127
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 129
    .local v6, "pairs":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    and-int/2addr v11, v2

    if-eqz v11, :cond_2

    .line 130
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 134
    .end local v6    # "pairs":Ljava/util/Map$Entry;
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " ( "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " ) ["

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "] : "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v14

    invoke-static {v14}, Lcom/pat_ubuntu/nike_reversed/Utils;->bytesToHex([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->d(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 138
    .local v4, "desc":Landroid/bluetooth/BluetoothGattDescriptor;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "      DESC: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 143
    .end local v0    # "chara":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v1    # "chr_name":Ljava/lang/String;
    .end local v2    # "chr_props":I
    .end local v3    # "chr_uuid":Ljava/lang/String;
    .end local v4    # "desc":Landroid/bluetooth/BluetoothGattDescriptor;
    .end local v5    # "it":Ljava/util/Iterator;
    .end local v7    # "props":Ljava/lang/String;
    .end local v8    # "svc":Landroid/bluetooth/BluetoothGattService;
    .end local v9    # "svc_name":Ljava/lang/String;
    .end local v10    # "svc_uuid":Ljava/lang/String;
    :cond_4
    const-string v11, "---------------------------------------------------------------------------"

    invoke-static {v11}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->d(Ljava/lang/String;)V

    .line 144
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 148
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    const v1, 0x7f030017

    invoke-virtual {p0, v1}, Lcom/pat_ubuntu/nike_reversed/MainActivity;->setContentView(I)V

    .line 152
    const v1, 0x7f08003f

    invoke-virtual {p0, v1}, Lcom/pat_ubuntu/nike_reversed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p0, v1}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->setLogView(Lcom/pat_ubuntu/nike_reversed/MainActivity;Landroid/widget/TextView;)V

    .line 154
    const-string v1, "bluetooth"

    invoke-virtual {p0, v1}, Lcom/pat_ubuntu/nike_reversed/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    iput-object v1, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->_btManager:Landroid/bluetooth/BluetoothManager;

    .line 155
    iget-object v1, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->_btManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->_btAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 157
    iget-object v1, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->_btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    const-string v1, "Bluetooth is disabled."

    invoke-static {v1}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->w(Ljava/lang/String;)V

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, "enableIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lcom/pat_ubuntu/nike_reversed/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 164
    .end local v0    # "enableIntent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Lcom/pat_ubuntu/nike_reversed/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/pat_ubuntu/nike_reversed/MainActivity$1;-><init>(Lcom/pat_ubuntu/nike_reversed/MainActivity;)V

    iput-object v1, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->_leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 441
    const-string v1, "Starting scan ..."

    invoke-static {v1}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->i(Ljava/lang/String;)V

    .line 443
    iput-boolean v2, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->_scanning:Z

    .line 444
    iget-object v1, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->_btAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity;->_leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 445
    return-void
.end method
