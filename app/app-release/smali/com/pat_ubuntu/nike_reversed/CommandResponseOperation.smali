.class public Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation;
.super Ljava/lang/Object;
.source "CommandResponseOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;
    }
.end annotation


# static fields
.field private static final MAX_BUFFER_SIZE:I = 0x40

.field private static final TAG:Ljava/lang/String;

.field private static final ZONE:Ljava/lang/String; = "LogicalLink"


# instance fields
.field protected mCommandBuffer:[B

.field protected mLayer:Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

.field private final mMarker:Ljava/lang/String;

.field private responseBuffer:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;->COMMAND:Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

    iput-object v0, p0, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation;->mLayer:Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

    .line 35
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation;->responseBuffer:Ljava/io/ByteArrayOutputStream;

    .line 38
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Marker cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    iput-object p1, p0, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation;->mMarker:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getCommandData()[B
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation;->mCommandBuffer:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getProtocolLayer()Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation;->mLayer:Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

    return-object v0
.end method

.method public getResponseData()[B
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation;->responseBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public setCommandData([B)V
    .locals 0
    .param p1, "paramArrayOfByte"    # [B

    .prologue
    .line 56
    iput-object p1, p0, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation;->mCommandBuffer:[B

    .line 57
    return-void
.end method

.method public setProtocolLayer(Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;)V
    .locals 0
    .param p1, "paramProtocolLayer"    # Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation;->mLayer:Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v0, "localStringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "CommandResponseOperation "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v2, p0, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation;->mMarker:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v2, " protocol = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p0}, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation;->getProtocolLayer()Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

    move-result-object v2

    sget-object v3, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;->COMMAND:Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

    if-ne v2, v3, :cond_0

    .line 70
    :cond_0
    const-string v1, "COMMAND"

    .line 71
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeResponseData(Ljava/io/ByteArrayOutputStream;)V
    .locals 1
    .param p1, "paramByteArrayOutputStream"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation;->responseBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 78
    return-void
.end method

.method public writeResponseData([B)V
    .locals 1
    .param p1, "paramArrayOfByte"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation;->responseBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 82
    return-void
.end method
