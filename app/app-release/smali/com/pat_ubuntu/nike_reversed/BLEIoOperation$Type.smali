.class public final enum Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;
.super Ljava/lang/Enum;
.source "BLEIoOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pat_ubuntu/nike_reversed/BLEIoOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

.field public static final enum NOTIFY_START:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

.field public static final enum NOTIFY_STOP:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

.field public static final enum READ_CHARACTERISTICS:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

.field public static final enum READ_DESCRIPTOR:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

.field public static final enum WRITE_CHARACTERISTICS:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

.field public static final enum WRITE_DESCRIPTOR:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    const-string v1, "NOTIFY_START"

    invoke-direct {v0, v1, v3}, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;->NOTIFY_START:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    .line 28
    new-instance v0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    const-string v1, "NOTIFY_STOP"

    invoke-direct {v0, v1, v4}, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;->NOTIFY_STOP:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    .line 29
    new-instance v0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    const-string v1, "READ_CHARACTERISTICS"

    invoke-direct {v0, v1, v5}, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;->READ_CHARACTERISTICS:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    .line 30
    new-instance v0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    const-string v1, "WRITE_CHARACTERISTICS"

    invoke-direct {v0, v1, v6}, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;->WRITE_CHARACTERISTICS:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    .line 31
    new-instance v0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    const-string v1, "READ_DESCRIPTOR"

    invoke-direct {v0, v1, v7}, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;->READ_DESCRIPTOR:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    .line 32
    new-instance v0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    const-string v1, "WRITE_DESCRIPTOR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;->WRITE_DESCRIPTOR:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    .line 25
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    sget-object v1, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;->NOTIFY_START:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;->NOTIFY_STOP:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;->READ_CHARACTERISTICS:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;->WRITE_CHARACTERISTICS:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;->READ_DESCRIPTOR:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;->WRITE_DESCRIPTOR:Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;->$VALUES:[Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    return-object v0
.end method

.method public static values()[Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;->$VALUES:[Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    invoke-virtual {v0}, [Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pat_ubuntu/nike_reversed/BLEIoOperation$Type;

    return-object v0
.end method
