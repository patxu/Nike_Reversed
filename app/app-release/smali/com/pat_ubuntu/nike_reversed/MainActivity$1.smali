.class Lcom/pat_ubuntu/nike_reversed/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pat_ubuntu/nike_reversed/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pat_ubuntu/nike_reversed/MainActivity;


# direct methods
.method constructor <init>(Lcom/pat_ubuntu/nike_reversed/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pat_ubuntu/nike_reversed/MainActivity;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1;->this$0:Lcom/pat_ubuntu/nike_reversed/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    .line 168
    iget-object v2, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1;->this$0:Lcom/pat_ubuntu/nike_reversed/MainActivity;

    # getter for: Lcom/pat_ubuntu/nike_reversed/MainActivity;->_scanning:Z
    invoke-static {v2}, Lcom/pat_ubuntu/nike_reversed/MainActivity;->access$000(Lcom/pat_ubuntu/nike_reversed/MainActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    :try_start_0
    invoke-static {p3}, Lcom/pat_ubuntu/nike_reversed/AdvertisementData;->parse([B)Landroid/os/Bundle;

    move-result-object v0

    .line 180
    .local v0, "advData":Landroid/os/Bundle;
    const-string v2, "COMPANYCODE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    # getter for: Lcom/pat_ubuntu/nike_reversed/MainActivity;->NIKE_COMPANY_CODE:[B
    invoke-static {}, Lcom/pat_ubuntu/nike_reversed/MainActivity;->access$100()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FOUND NIKE DEVICE ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->i(Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1;->this$0:Lcom/pat_ubuntu/nike_reversed/MainActivity;

    # invokes: Lcom/pat_ubuntu/nike_reversed/MainActivity;->dumpDeviceAdvData(Landroid/os/Bundle;)V
    invoke-static {v2, v0}, Lcom/pat_ubuntu/nike_reversed/MainActivity;->access$200(Lcom/pat_ubuntu/nike_reversed/MainActivity;Landroid/os/Bundle;)V

    .line 186
    iget-object v2, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1;->this$0:Lcom/pat_ubuntu/nike_reversed/MainActivity;

    const/4 v3, 0x0

    # setter for: Lcom/pat_ubuntu/nike_reversed/MainActivity;->_scanning:Z
    invoke-static {v2, v3}, Lcom/pat_ubuntu/nike_reversed/MainActivity;->access$002(Lcom/pat_ubuntu/nike_reversed/MainActivity;Z)Z

    .line 187
    iget-object v2, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1;->this$0:Lcom/pat_ubuntu/nike_reversed/MainActivity;

    # getter for: Lcom/pat_ubuntu/nike_reversed/MainActivity;->_btAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Lcom/pat_ubuntu/nike_reversed/MainActivity;->access$400(Lcom/pat_ubuntu/nike_reversed/MainActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1;->this$0:Lcom/pat_ubuntu/nike_reversed/MainActivity;

    # getter for: Lcom/pat_ubuntu/nike_reversed/MainActivity;->_leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    invoke-static {v3}, Lcom/pat_ubuntu/nike_reversed/MainActivity;->access$300(Lcom/pat_ubuntu/nike_reversed/MainActivity;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 189
    const-string v2, "Connecting to GATT server ..."

    invoke-static {v2}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->i(Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1;->this$0:Lcom/pat_ubuntu/nike_reversed/MainActivity;

    new-instance v3, Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;

    new-instance v4, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;

    invoke-direct {v4, p0}, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;-><init>(Lcom/pat_ubuntu/nike_reversed/MainActivity$1;)V

    invoke-direct {v3, v4}, Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;-><init>(Lcom/pat_ubuntu/nike_reversed/BLEIoQueue$QueueCallbacks;)V

    # setter for: Lcom/pat_ubuntu/nike_reversed/MainActivity;->_ioqueue:Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;
    invoke-static {v2, v3}, Lcom/pat_ubuntu/nike_reversed/MainActivity;->access$502(Lcom/pat_ubuntu/nike_reversed/MainActivity;Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;)Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;

    .line 431
    iget-object v2, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1;->this$0:Lcom/pat_ubuntu/nike_reversed/MainActivity;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1;->this$0:Lcom/pat_ubuntu/nike_reversed/MainActivity;

    # getter for: Lcom/pat_ubuntu/nike_reversed/MainActivity;->_ioqueue:Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;
    invoke-static {v4}, Lcom/pat_ubuntu/nike_reversed/MainActivity;->access$500(Lcom/pat_ubuntu/nike_reversed/MainActivity;)Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 434
    .end local v0    # "advData":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 436
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
