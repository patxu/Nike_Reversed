.class public Lcom/pat_ubuntu/nike_reversed/Packet;
.super Ljava/lang/Object;
.source "Packet.java"


# instance fields
.field private _buffer:[B


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/pat_ubuntu/nike_reversed/Packet;->_buffer:[B

    .line 29
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/Packet;->_buffer:[B

    aput-byte v1, v0, v1

    .line 30
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "buffer"    # [B

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/pat_ubuntu/nike_reversed/Packet;->_buffer:[B

    .line 34
    return-void
.end method

.method public static wrap(Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;)Lcom/pat_ubuntu/nike_reversed/Packet;
    .locals 3
    .param p0, "cpacket"    # Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/pat_ubuntu/nike_reversed/CopperheadPacket;->getData()[B

    move-result-object v1

    .line 39
    .local v1, "payload":[B
    new-instance v0, Lcom/pat_ubuntu/nike_reversed/Packet;

    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v2}, Lcom/pat_ubuntu/nike_reversed/Packet;-><init>(I)V

    .line 41
    .local v0, "packet":Lcom/pat_ubuntu/nike_reversed/Packet;
    invoke-virtual {v0, v1}, Lcom/pat_ubuntu/nike_reversed/Packet;->setPayload([B)V

    .line 43
    return-object v0
.end method


# virtual methods
.method public getBuffer()[B
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/Packet;->_buffer:[B

    return-object v0
.end method

.method public getBuffered(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 51
    iget-object v1, p0, Lcom/pat_ubuntu/nike_reversed/Packet;->_buffer:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 52
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 53
    return-object v0
.end method

.method public getPacketCount()I
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/Packet;->_buffer:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getPacketIndex()I
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/Packet;->_buffer:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    ushr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getProtocolLayer()Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/Packet;->_buffer:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;->SESSION:Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

    .line 90
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;->COMMAND:Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

    goto :goto_0
.end method

.method public getSequenceNumber()I
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/Packet;->_buffer:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    ushr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public isFinalPacket()Z
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/pat_ubuntu/nike_reversed/Packet;->getPacketIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/pat_ubuntu/nike_reversed/Packet;->getPacketCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCommandBytes(BB)V
    .locals 2
    .param p1, "a"    # B
    .param p2, "b"    # B

    .prologue
    .line 114
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/Packet;->_buffer:[B

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 115
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/Packet;->_buffer:[B

    const/4 v1, 0x2

    aput-byte p2, v0, v1

    .line 116
    return-void
.end method

.method public setPacketCount(I)V
    .locals 4
    .param p1, "n"    # I

    .prologue
    const/4 v3, 0x0

    .line 128
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/Packet;->_buffer:[B

    aget-byte v1, v0, v3

    and-int/lit8 v1, v1, -0x4

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 129
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/Packet;->_buffer:[B

    aget-byte v1, v0, v3

    and-int/lit8 v2, p1, 0x3

    int-to-byte v2, v2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 130
    return-void
.end method

.method public setPacketIndex(I)V
    .locals 4
    .param p1, "n"    # I

    .prologue
    const/4 v3, 0x0

    .line 123
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/Packet;->_buffer:[B

    aget-byte v1, v0, v3

    and-int/lit8 v1, v1, -0xd

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 124
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/Packet;->_buffer:[B

    aget-byte v1, v0, v3

    and-int/lit8 v2, p1, 0x3

    shl-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 125
    return-void
.end method

.method public setPayload([B)V
    .locals 4
    .param p1, "payload"    # [B

    .prologue
    .line 133
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/pat_ubuntu/nike_reversed/Packet;->_buffer:[B

    const/4 v2, 0x1

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    return-void
.end method

.method public setProtocolLayer(Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;)V
    .locals 3
    .param p1, "layer"    # Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

    .prologue
    const/4 v2, 0x0

    .line 103
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;->SESSION:Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

    if-ne p1, v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/Packet;->_buffer:[B

    aget-byte v1, v0, v2

    or-int/lit8 v1, v1, -0x80

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/Packet;->_buffer:[B

    aget-byte v1, v0, v2

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto :goto_0
.end method

.method public setSequenceNumber(I)V
    .locals 4
    .param p1, "n"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/pat_ubuntu/nike_reversed/Packet;->_buffer:[B

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    and-int/lit8 v3, p1, 0x7

    shl-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 120
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 57
    const-string v3, ""

    .line 59
    .local v3, "s":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/pat_ubuntu/nike_reversed/Packet;->getProtocolLayer()Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "COUNT="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/pat_ubuntu/nike_reversed/Packet;->getPacketCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "INDEX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/pat_ubuntu/nike_reversed/Packet;->getPacketIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SEQN="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/pat_ubuntu/nike_reversed/Packet;->getSequenceNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 64
    const-string v5, "0123456789ABCDEF"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 65
    .local v0, "HEX":[C
    iget-object v5, p0, Lcom/pat_ubuntu/nike_reversed/Packet;->_buffer:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x2

    new-array v1, v5, [C

    .line 66
    .local v1, "hexChars":[C
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_0
    iget-object v5, p0, Lcom/pat_ubuntu/nike_reversed/Packet;->_buffer:[B

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 67
    iget-object v5, p0, Lcom/pat_ubuntu/nike_reversed/Packet;->_buffer:[B

    aget-byte v5, v5, v2

    and-int/lit16 v4, v5, 0xff

    .line 68
    .local v4, "v":I
    add-int/lit8 v5, v2, -0x1

    mul-int/lit8 v5, v5, 0x2

    ushr-int/lit8 v6, v4, 0x4

    aget-char v6, v0, v6

    aput-char v6, v1, v5

    .line 69
    add-int/lit8 v5, v2, -0x1

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v6, v4, 0xf

    aget-char v6, v0, v6

    aput-char v6, v1, v5

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .end local v4    # "v":I
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    return-object v3
.end method
