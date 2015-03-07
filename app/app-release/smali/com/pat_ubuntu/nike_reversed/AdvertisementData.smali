.class public Lcom/pat_ubuntu/nike_reversed/AdvertisementData;
.super Ljava/lang/Object;
.source "AdvertisementData.java"


# static fields
.field public static final KEY_COMPANY_CODE:Ljava/lang/String; = "COMPANYCODE"

.field public static final KEY_LOCAL_NAME:Ljava/lang/String; = "LOCALNAME"

.field public static final KEY_MANUFACTURER_DATA:Ljava/lang/String; = "MANUDATA"

.field public static final KEY_SERVICE_LIST:Ljava/lang/String; = "SERVICES"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse([B)Landroid/os/Bundle;
    .locals 9
    .param p0, "scanRecord"    # [B

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    .line 35
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v4, "parsed":Landroid/os/Bundle;
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 40
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 43
    .local v2, "i":I
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-le v2, v6, :cond_2

    .line 66
    :cond_0
    return-object v4

    .end local v2    # "i":I
    :cond_1
    move v2, v5

    .line 40
    goto :goto_1

    .line 46
    .restart local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 47
    .local v3, "j":I
    add-int/lit8 v6, v2, -0x1

    new-array v0, v6, [B

    .line 48
    .local v0, "arrayOfByte":[B
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 50
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 54
    :sswitch_0
    const-string v6, "COMPANYCODE"

    invoke-static {v0, v5, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 55
    const-string v6, "MANUDATA"

    array-length v7, v0

    invoke-static {v0, v8, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0

    .line 59
    :sswitch_1
    const-string v6, "SERVICES"

    invoke-static {v0}, Lcom/pat_ubuntu/nike_reversed/AdvertisementData;->parseUuids([B)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 62
    :sswitch_2
    const-string v6, "LOCALNAME"

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method private static parseUuids([B)Ljava/util/ArrayList;
    .locals 8
    .param p0, "paramArrayOfByte"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 71
    .local v3, "localByteBuffer":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v2, "localArrayList":Ljava/util/ArrayList;
    :goto_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    .line 74
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 75
    .local v0, "l":J
    new-instance v4, Landroid/os/ParcelUuid;

    new-instance v5, Ljava/util/UUID;

    .line 76
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    invoke-direct {v5, v6, v7, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v4, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 75
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    .end local v0    # "l":J
    :cond_0
    return-object v2
.end method
