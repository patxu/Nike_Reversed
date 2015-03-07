.class Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$OnResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;->requestSetting(Lcom/pat_ubuntu/nike_reversed/BLEIoQueue;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;


# direct methods
.method constructor <init>(Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1$1;->this$2:Lcom/pat_ubuntu/nike_reversed/MainActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(Lcom/pat_ubuntu/nike_reversed/Packet;)V
    .locals 3
    .param p1, "config"    # Lcom/pat_ubuntu/nike_reversed/Packet;

    .prologue
    .line 237
    invoke-virtual {p1}, Lcom/pat_ubuntu/nike_reversed/Packet;->getBuffer()[B

    move-result-object v1

    .line 241
    .local v1, "raw":[B
    :try_start_0
    invoke-static {v1}, Lcom/pat_ubuntu/nike_reversed/Utils;->processGetSettingsResponse([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
