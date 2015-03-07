.class Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->onServicesDiscovered(Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;Landroid/bluetooth/BluetoothGatt;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;

.field final synthetic val$fq:Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;


# direct methods
.method constructor <init>(Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;)V
    .locals 0
    .param p1, "this$2"    # Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;->this$2:Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;

    iput-object p2, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;->val$fq:Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(Lcom/pat_ubuntu/nike_reversed/Packet;)V
    .locals 14
    .param p1, "challenge_packet"    # Lcom/pat_ubuntu/nike_reversed/Packet;

    .prologue
    const v13, 0xffff

    const/16 v12, 0x10

    const/4 v11, 0x0

    .line 316
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<< "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/pat_ubuntu/nike_reversed/Packet;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->d(Ljava/lang/String;)V

    .line 318
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v9}, Lcom/pat_ubuntu/nike_reversed/Packet;->getBuffered(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 323
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 324
    .local v5, "opcode":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 326
    .local v3, "length":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 424
    const-string v9, "Unknown auth code."

    invoke-static {v9}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->e(Ljava/lang/String;)V

    .line 426
    :goto_0
    return-void

    .line 329
    :pswitch_0
    const-string v9, "Received authentication challenge"

    invoke-static {v9}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->i(Ljava/lang/String;)V

    .line 336
    new-array v4, v12, [B

    .line 337
    .local v4, "nonce":[B
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 339
    if-eqz v4, :cond_0

    array-length v9, v4

    if-eq v9, v12, :cond_1

    .line 341
    :cond_0
    const-string v9, "Missing or invalid authentication challenge nonce"

    invoke-static {v9}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_1
    new-instance v2, Lcom/pat_ubuntu/nike_reversed/CopperheadCRC32;

    invoke-direct {v2}, Lcom/pat_ubuntu/nike_reversed/CopperheadCRC32;-><init>()V

    .line 349
    .local v2, "crc":Lcom/pat_ubuntu/nike_reversed/CopperheadCRC32;
    const-string v9, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"

    invoke-static {v9}, Lcom/pat_ubuntu/nike_reversed/Utils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 351
    .local v0, "auth_token":[B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NONCE: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Lcom/pat_ubuntu/nike_reversed/Utils;->bytesToHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->d(Ljava/lang/String;)V

    .line 356
    new-instance v6, Lcom/pat_ubuntu/nike_reversed/Packet;

    const/16 v9, 0x13

    invoke-direct {v6, v9}, Lcom/pat_ubuntu/nike_reversed/Packet;-><init>(I)V

    .line 358
    .local v6, "resp_packet":Lcom/pat_ubuntu/nike_reversed/Packet;
    sget-object v9, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;->SESSION:Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

    invoke-virtual {v6, v9}, Lcom/pat_ubuntu/nike_reversed/Packet;->setProtocolLayer(Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;)V

    .line 359
    invoke-virtual {v6, v11}, Lcom/pat_ubuntu/nike_reversed/Packet;->setPacketCount(I)V

    .line 360
    invoke-virtual {v6, v11}, Lcom/pat_ubuntu/nike_reversed/Packet;->setPacketIndex(I)V

    .line 361
    invoke-virtual {p1}, Lcom/pat_ubuntu/nike_reversed/Packet;->getSequenceNumber()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v6, v9}, Lcom/pat_ubuntu/nike_reversed/Packet;->setSequenceNumber(I)V

    .line 363
    const/16 v9, 0x12

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 365
    .local v7, "response":Ljava/nio/ByteBuffer;
    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 366
    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 368
    invoke-virtual {v2, v4}, Lcom/pat_ubuntu/nike_reversed/CopperheadCRC32;->update([B)V

    .line 369
    invoke-virtual {v2, v0}, Lcom/pat_ubuntu/nike_reversed/CopperheadCRC32;->update([B)V

    .line 371
    invoke-virtual {v2}, Lcom/pat_ubuntu/nike_reversed/CopperheadCRC32;->getValue()I

    move-result v9

    and-int/2addr v9, v13

    invoke-virtual {v2}, Lcom/pat_ubuntu/nike_reversed/CopperheadCRC32;->getValue()I

    move-result v10

    ushr-int/lit8 v10, v10, 0x10

    and-int/2addr v10, v13

    xor-int/2addr v9, v10

    int-to-short v8, v9

    .line 373
    .local v8, "sum":S
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 375
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/pat_ubuntu/nike_reversed/Packet;->setPayload([B)V

    .line 377
    iget-object v9, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;->this$2:Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;

    iget-object v10, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;->val$fq:Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;

    invoke-virtual {v6}, Lcom/pat_ubuntu/nike_reversed/Packet;->getBuffer()[B

    move-result-object v11

    new-instance v12, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2$1;

    invoke-direct {v12, p0}, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2$1;-><init>(Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;)V

    # invokes: Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->addPacket(Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;[BLcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;)V
    invoke-static {v9, v10, v11, v12}, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->access$1200(Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;[BLcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;)V

    goto/16 :goto_0

    .line 326
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
    .end packed-switch
.end method
