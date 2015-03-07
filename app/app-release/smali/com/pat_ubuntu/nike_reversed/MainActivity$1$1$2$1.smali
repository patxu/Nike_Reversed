.class Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;->onData(Lcom/pat_ubuntu/nike_reversed/Packet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;


# direct methods
.method constructor <init>(Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;)V
    .locals 0
    .param p1, "this$3"    # Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2$1;->this$3:Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(Lcom/pat_ubuntu/nike_reversed/Packet;)V
    .locals 7
    .param p1, "challenge_response"    # Lcom/pat_ubuntu/nike_reversed/Packet;

    .prologue
    .line 381
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<< "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/pat_ubuntu/nike_reversed/Packet;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->d(Ljava/lang/String;)V

    .line 383
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v4}, Lcom/pat_ubuntu/nike_reversed/Packet;->getBuffered(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 386
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 387
    .local v2, "opcode":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 392
    .local v1, "length":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 394
    .local v3, "reply":I
    const/16 v4, 0x42

    if-ne v3, v4, :cond_0

    .line 395
    const-string v4, "Succesfully authenticated."

    invoke-static {v4}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->i(Ljava/lang/String;)V

    .line 402
    iget-object v4, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2$1;->this$3:Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;

    iget-object v4, v4, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;->this$2:Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;

    iget-object v5, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2$1;->this$3:Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;

    iget-object v5, v5, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;->val$fq:Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;

    const-string v6, "FUEL"

    invoke-static {v6}, Lcom/pat_ubuntu/nike_reversed/Utils;->getSettingCode(Ljava/lang/String;)I

    move-result v6

    # invokes: Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->requestSetting(Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;I)V
    invoke-static {v4, v5, v6}, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->access$1100(Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;I)V

    .line 403
    iget-object v4, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2$1;->this$3:Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;

    iget-object v4, v4, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;->this$2:Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;

    iget-object v5, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2$1;->this$3:Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;

    iget-object v5, v5, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;->val$fq:Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;

    const-string v6, "FIRST_NAME"

    invoke-static {v6}, Lcom/pat_ubuntu/nike_reversed/Utils;->getSettingCode(Ljava/lang/String;)I

    move-result v6

    # invokes: Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->requestSetting(Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;I)V
    invoke-static {v4, v5, v6}, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->access$1100(Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;I)V

    .line 407
    iget-object v4, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2$1;->this$3:Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;

    iget-object v4, v4, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;->this$2:Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;

    iget-object v5, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2$1;->this$3:Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;

    iget-object v5, v5, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;->val$fq:Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;

    const-string v6, "IN_SESSION_LED"

    invoke-static {v6}, Lcom/pat_ubuntu/nike_reversed/Utils;->getSettingCode(Ljava/lang/String;)I

    move-result v6

    # invokes: Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->requestSetting(Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;I)V
    invoke-static {v4, v5, v6}, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->access$1100(Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;I)V

    .line 408
    iget-object v4, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2$1;->this$3:Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;

    iget-object v4, v4, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;->this$2:Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;

    iget-object v5, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2$1;->this$3:Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;

    iget-object v5, v5, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;->val$fq:Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;

    const-string v6, "WEIGHT"

    invoke-static {v6}, Lcom/pat_ubuntu/nike_reversed/Utils;->getSettingCode(Ljava/lang/String;)I

    move-result v6

    # invokes: Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->requestSetting(Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;I)V
    invoke-static {v4, v5, v6}, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->access$1100(Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;I)V

    .line 409
    iget-object v4, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2$1;->this$3:Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;

    iget-object v4, v4, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;->this$2:Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;

    iget-object v5, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2$1;->this$3:Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;

    iget-object v5, v5, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;->val$fq:Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;

    const-string v6, "LED_ROW_BALANCE"

    invoke-static {v6}, Lcom/pat_ubuntu/nike_reversed/Utils;->getSettingCode(Ljava/lang/String;)I

    move-result v6

    # invokes: Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->requestSetting(Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;I)V
    invoke-static {v4, v5, v6}, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->access$1100(Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;I)V

    .line 410
    iget-object v4, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2$1;->this$3:Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;

    iget-object v4, v4, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;->this$2:Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;

    iget-object v5, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2$1;->this$3:Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;

    iget-object v5, v5, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$2;->val$fq:Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;

    const-string v6, "LED_DOT_CORRECTION"

    invoke-static {v6}, Lcom/pat_ubuntu/nike_reversed/Utils;->getSettingCode(Ljava/lang/String;)I

    move-result v6

    # invokes: Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->requestSetting(Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;I)V
    invoke-static {v4, v5, v6}, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->access$1100(Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;I)V

    .line 416
    :goto_0
    return-void

    .line 414
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Authentication failure, reply: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
