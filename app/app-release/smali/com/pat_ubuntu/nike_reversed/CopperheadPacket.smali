.class public Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;
.super Ljava/lang/Object;
.source "CopperheadPacket.java"


# static fields
.field public static final MAX_PACKET_SIZE:I = 0x3f

.field private static final MSG_INVALID_BUFFER_SIZE:Ljava/lang/String; = "Invalid packet buffer size"

.field private static final TAG:Ljava/lang/String; = "CopperheadPacket"

.field private static final ZONE:Ljava/lang/String; = "LogicalLink"

.field private static mTag:B


# instance fields
.field private mBuffer:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x20

    sput-byte v0, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->mTag:B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->mBuffer:[B

    .line 37
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->mBuffer:[B

    const/4 v1, 0x0

    add-int/lit8 v2, p1, -0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 38
    invoke-virtual {p0}, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->incrementTag()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->setTag(B)V

    .line 39
    return-void
.end method

.method public constructor <init>([B)V
    .locals 6
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->mBuffer:[B

    .line 44
    array-length v3, p1

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->getSize()I

    move-result v3

    const/16 v4, 0x3f

    if-le v3, v4, :cond_2

    .line 46
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid packet buffer size: length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 47
    .local v1, "localStringBuilder":Ljava/lang/StringBuilder;
    array-length v3, p1

    if-lez v3, :cond_1

    .line 48
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " : size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->getSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "str":Ljava/lang/String;
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 51
    .end local v1    # "localStringBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "str":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->getSize()I

    move-result v0

    .line 52
    .local v0, "i":I
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-le v0, v3, :cond_3

    .line 53
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid packet buffer size: length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 54
    :cond_3
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->mBuffer:[B

    return-object v0
.end method

.method public getNotificationCode()I
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->mBuffer:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    return v0
.end method

.method public getPayload(I)[B
    .locals 4
    .param p1, "paramInt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->getPayloadSize()I

    move-result v0

    .line 69
    .local v0, "i":I
    add-int/lit8 v1, p1, 0x3

    .line 70
    .local v1, "j":I
    add-int/lit8 v2, v0, 0x3

    if-le v1, v2, :cond_0

    .line 71
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Invalid packet buffer size"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->mBuffer:[B

    add-int/lit8 v3, v0, 0x3

    invoke-static {v2, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    return-object v2
.end method

.method public getPayloadBuffer()Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 77
    iget-object v1, p0, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->mBuffer:[B

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->mBuffer:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x3

    invoke-static {v1, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 78
    .local v0, "localByteBuffer":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 79
    return-object v0
.end method

.method public getPayloadSize()I
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->mBuffer:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method public getResponseStatus()I
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->mBuffer:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    return v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->mBuffer:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getTag()I
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->mBuffer:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    return v0
.end method

.method protected incrementTag()B
    .locals 2

    .prologue
    .line 104
    sget-byte v0, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->mTag:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    sput-byte v0, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->mTag:B

    .line 105
    sget-byte v0, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->mTag:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 106
    const/4 v0, 0x0

    sput-byte v0, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->mTag:B

    .line 107
    :cond_0
    sget-byte v0, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->mTag:B

    return v0
.end method

.method public setOpcode(B)V
    .locals 2
    .param p1, "paramByte"    # B

    .prologue
    .line 112
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->mBuffer:[B

    const/4 v1, 0x2

    aput-byte p1, v0, v1

    .line 113
    return-void
.end method

.method public setTag(B)V
    .locals 2
    .param p1, "paramByte"    # B

    .prologue
    .line 117
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->mBuffer:[B

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 118
    return-void
.end method

.method public writePayloadTo(Ljava/io/ByteArrayOutputStream;I)V
    .locals 4
    .param p1, "paramByteArrayOutputStream"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "paramInt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->getPayloadSize()I

    move-result v0

    .line 123
    .local v0, "i":I
    add-int/lit8 v1, p2, 0x3

    .line 124
    .local v1, "j":I
    add-int/lit8 v2, v0, 0x3

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->mBuffer:[B

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 125
    :cond_0
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Invalid packet buffer size"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->mBuffer:[B

    sub-int v3, v0, p2

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 127
    return-void
.end method
