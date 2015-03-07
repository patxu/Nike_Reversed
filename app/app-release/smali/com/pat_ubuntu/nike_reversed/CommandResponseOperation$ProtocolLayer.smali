.class public final enum Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;
.super Ljava/lang/Enum;
.source "CommandResponseOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProtocolLayer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

.field public static final enum COMMAND:Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

.field public static final enum SESSION:Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

    const-string v1, "COMMAND"

    invoke-direct {v0, v1, v2}, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;->COMMAND:Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

    new-instance v0, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

    const-string v1, "SESSION"

    invoke-direct {v0, v1, v3}, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;->SESSION:Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

    sget-object v1, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;->COMMAND:Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;->SESSION:Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

    aput-object v1, v0, v3

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;->$VALUES:[Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

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

.method public static valueOf(Ljava/lang/String;)Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

    return-object v0
.end method

.method public static values()[Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;->$VALUES:[Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

    invoke-virtual {v0}, [Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pat_ubuntu/nike_reversed/CommandResponseOperation$ProtocolLayer;

    return-object v0
.end method
