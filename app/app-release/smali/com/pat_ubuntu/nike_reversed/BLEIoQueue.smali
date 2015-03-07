.class public Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BLEIoQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pat_ubuntu/nike_reversed/BLEIoQueue$QueueCallbacks;
    }
.end annotation


# instance fields
.field private _callbacks:Lcom/pat_ubuntu/nike_reversed/BLEIoQueue$QueueCallbacks;

.field private _current:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;

.field private _gatt:Landroid/bluetooth/BluetoothGatt;

.field private _ops:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pat_ubuntu/nike_reversed/BLEIoQueue$QueueCallbacks;)V
    .locals 1
    .param p1, "callbacks"    # Lcom/pat_ubuntu/nike_reversed/BLEIoQueue$QueueCallbacks;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;->_ops:Ljava/util/Queue;

    .line 48
    iput-object p1, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;->_callbacks:Lcom/pat_ubuntu/nike_reversed/BLEIoQueue$QueueCallbacks;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;->_current:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;

    .line 50
    return-void
.end method

.method private next()V
    .locals 8

    .prologue
    .line 58
    iget-object v6, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;->_ops:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;

    .line 59
    .local v4, "op":Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;
    if-nez v4, :cond_1

    .line 60
    const-string v6, "No I/O operations to execute."

    invoke-static {v6}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->d(Ljava/lang/String;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iput-object v4, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;->_current:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;

    .line 66
    const/4 v3, 0x0

    .line 68
    .local v3, "ok":Z
    invoke-virtual {v4}, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->get_descriptor()Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v2

    .line 69
    .local v2, "desc":Landroid/bluetooth/BluetoothGattDescriptor;
    invoke-virtual {v4}, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->get_characteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 70
    .local v0, "charact":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v4}, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->get_data()[B

    move-result-object v1

    .line 72
    .local v1, "data":[B
    invoke-virtual {v4}, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->get_type()Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    move-result-object v6

    sget-object v7, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;->NOTIFY_START:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    if-ne v6, v7, :cond_3

    .line 74
    iget-object v6, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;->_gatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v7, 0x1

    invoke-virtual {v6, v0, v7}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v3

    .line 75
    if-eqz v3, :cond_2

    .line 76
    sget-object v6, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v2, v6}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 77
    iget-object v6, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;->_gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v6, v2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v3

    .line 105
    :cond_2
    :goto_1
    if-nez v3, :cond_0

    .line 106
    const-string v6, "Operation failed, fetching next ..."

    invoke-static {v6}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->e(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;->next()V

    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {v4}, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->get_type()Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    move-result-object v6

    sget-object v7, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;->WRITE_DESCRIPTOR:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    if-ne v6, v7, :cond_4

    .line 82
    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 84
    iget-object v6, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;->_gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v6, v2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v3

    goto :goto_1

    .line 86
    :cond_4
    invoke-virtual {v4}, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->get_type()Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    move-result-object v6

    sget-object v7, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;->WRITE_CHARACTERISTICS:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    if-ne v6, v7, :cond_5

    .line 88
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 90
    new-instance v5, Lcom/pat_ubuntu/nike_reversed/Packet;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/pat_ubuntu/nike_reversed/Packet;-><init>([B)V

    .line 92
    .local v5, "p":Lcom/pat_ubuntu/nike_reversed/Packet;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/pat_ubuntu/nike_reversed/Packet;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->d(Ljava/lang/String;)V

    .line 94
    iget-object v6, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;->_gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v3

    .line 95
    goto :goto_1

    .line 96
    .end local v5    # "p":Lcom/pat_ubuntu/nike_reversed/Packet;
    :cond_5
    invoke-virtual {v4}, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->get_type()Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    move-result-object v6

    sget-object v7, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;->READ_CHARACTERISTICS:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    if-ne v6, v7, :cond_6

    .line 98
    iget-object v6, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;->_gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v3

    goto :goto_1

    .line 102
    :cond_6
    const-string v6, "Unhandled Operation"

    invoke-static {v6}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->e(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public add(Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;)V
    .locals 1
    .param p1, "op"    # Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;->_ops:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 143
    new-instance v1, Lcom/pat_ubuntu/nike_reversed/Packet;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/pat_ubuntu/nike_reversed/Packet;-><init>([B)V

    .line 145
    .local v1, "p":Lcom/pat_ubuntu/nike_reversed/Packet;
    invoke-virtual {v1}, Lcom/pat_ubuntu/nike_reversed/Packet;->getBuffer()[B

    move-result-object v2

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v0, v2, 0xff

    .line 147
    .local v0, "op":I
    const/16 v2, 0xf4

    if-eq v0, v2, :cond_0

    const/16 v2, 0x15

    if-ne v0, v2, :cond_1

    .line 160
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;->next()V

    .line 161
    return-void

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;->_current:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;->_current:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;

    invoke-virtual {v2}, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->get_callback()Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 153
    iget-object v2, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;->_current:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;

    invoke-virtual {v2}, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->get_callback()Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;->onData(Lcom/pat_ubuntu/nike_reversed/Packet;)V

    goto :goto_0

    .line 157
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/pat_ubuntu/nike_reversed/Packet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 113
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 115
    const-string v0, "Connected to GATT server, starting services discovery ..."

    invoke-static {v0}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->i(Ljava/lang/String;)V

    .line 117
    iput-object p1, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;->_gatt:Landroid/bluetooth/BluetoothGatt;

    .line 119
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    if-nez p3, :cond_0

    .line 123
    const-string v0, "Disconnected."

    invoke-static {v0}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;->next()V

    .line 139
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;->_callbacks:Lcom/pat_ubuntu/nike_reversed/BLEIoQueue$QueueCallbacks;

    invoke-interface {v0, p0, p1, p2}, Lcom/pat_ubuntu/nike_reversed/BLEIoQueue$QueueCallbacks;->onServicesDiscovered(Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;Landroid/bluetooth/BluetoothGatt;I)V

    .line 132
    invoke-direct {p0}, Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;->next()V

    .line 133
    return-void
.end method
