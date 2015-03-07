.class public Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;
.super Ljava/lang/Object;
.source "BLEIoOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;,
        Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;
    }
.end annotation


# instance fields
.field private _callback:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;

.field private _characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private _data:[B

.field private _description:Ljava/lang/String;

.field private _descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

.field private _type:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;


# direct methods
.method public constructor <init>(Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->_characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 42
    iput-object v0, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->_descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    .line 43
    iput-object v0, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->_data:[B

    .line 45
    iput-object v0, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->_callback:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;

    .line 48
    iput-object p1, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->_type:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    .line 49
    iput-object p2, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->_description:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;Ljava/lang/String;Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;)V
    .locals 1
    .param p1, "type"    # Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->_characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 42
    iput-object v0, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->_descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    .line 43
    iput-object v0, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->_data:[B

    .line 45
    iput-object v0, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->_callback:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;

    .line 53
    iput-object p1, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->_type:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    .line 54
    iput-object p2, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->_description:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->_callback:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;

    .line 56
    return-void
.end method


# virtual methods
.method public get_callback()Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->_callback:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;

    return-object v0
.end method

.method public get_characteristic()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->_characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public get_data()[B
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->_data:[B

    return-object v0
.end method

.method public get_description()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->_description:Ljava/lang/String;

    return-object v0
.end method

.method public get_descriptor()Landroid/bluetooth/BluetoothGattDescriptor;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->_descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    return-object v0
.end method

.method public get_type()Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->_type:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    return-object v0
.end method

.method public set_callback(Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;)V
    .locals 0
    .param p1, "_callback"    # Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->_callback:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;

    .line 101
    return-void
.end method

.method public set_characteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p1, "_characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->_characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 73
    return-void
.end method

.method public set_data([B)V
    .locals 0
    .param p1, "_data"    # [B

    .prologue
    .line 92
    iput-object p1, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->_data:[B

    .line 93
    return-void
.end method

.method public set_description(Ljava/lang/String;)V
    .locals 0
    .param p1, "_description"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->_description:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public set_descriptor(Landroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 0
    .param p1, "_descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->_descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    .line 79
    return-void
.end method

.method public set_type(Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;)V
    .locals 0
    .param p1, "_type"    # Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->_type:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OP] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;->_description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
