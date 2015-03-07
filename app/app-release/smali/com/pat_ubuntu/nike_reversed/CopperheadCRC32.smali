.class public Lcom/pat_ubuntu/nike_reversed/CopperheadCRC32;
.super Ljava/lang/Object;
.source "CopperheadCRC32.java"


# static fields
.field private static final CRCPOLY:I = 0x4c11db7

.field private static final INITIAL_VALUE:I = -0x1


# instance fields
.field private mValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/pat_ubuntu/nike_reversed/CopperheadCRC32;->mValue:I

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/pat_ubuntu/nike_reversed/CopperheadCRC32;->mValue:I

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/pat_ubuntu/nike_reversed/CopperheadCRC32;->mValue:I

    .line 36
    return-void
.end method

.method public update([B)V
    .locals 4
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 41
    array-length v2, p1

    rem-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 42
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string v3, "Length of data must be a multiple of 4"

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 44
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 45
    iget v2, p0, Lcom/pat_ubuntu/nike_reversed/CopperheadCRC32;->mValue:I

    xor-int/lit8 v3, v0, 0x3

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x18

    xor-int/2addr v2, v3

    iput v2, p0, Lcom/pat_ubuntu/nike_reversed/CopperheadCRC32;->mValue:I

    .line 46
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/16 v2, 0x8

    if-ge v1, v2, :cond_2

    .line 47
    const/high16 v2, -0x80000000

    iget v3, p0, Lcom/pat_ubuntu/nike_reversed/CopperheadCRC32;->mValue:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 48
    const v2, 0x4c11db7

    iget v3, p0, Lcom/pat_ubuntu/nike_reversed/CopperheadCRC32;->mValue:I

    shl-int/lit8 v3, v3, 0x1

    xor-int/2addr v2, v3

    iput v2, p0, Lcom/pat_ubuntu/nike_reversed/CopperheadCRC32;->mValue:I

    .line 46
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 51
    :cond_1
    iget v2, p0, Lcom/pat_ubuntu/nike_reversed/CopperheadCRC32;->mValue:I

    shl-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/pat_ubuntu/nike_reversed/CopperheadCRC32;->mValue:I

    goto :goto_2

    .line 44
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "j":I
    :cond_3
    return-void
.end method
