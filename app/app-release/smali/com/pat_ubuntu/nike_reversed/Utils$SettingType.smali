.class public final enum Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pat_ubuntu/nike_reversed/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "SettingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

.field public static final enum BOOLEAN:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

.field public static final enum BYTE:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

.field public static final enum BYTE_ARRAY:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

.field public static final enum DOB_CALENDAR:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

.field public static final enum GENDER:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

.field public static final enum HOURS:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

.field public static final enum STRING:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

.field public static final enum UINT16:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

.field public static final enum UINT32:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 229
    new-instance v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    const-string v1, "BOOLEAN"

    invoke-direct {v0, v1, v3}, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->BOOLEAN:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    .line 230
    new-instance v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    const-string v1, "BYTE"

    invoke-direct {v0, v1, v4}, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->BYTE:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    .line 231
    new-instance v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    const-string v1, "BYTE_ARRAY"

    invoke-direct {v0, v1, v5}, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->BYTE_ARRAY:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    .line 232
    new-instance v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    const-string v1, "DOB_CALENDAR"

    invoke-direct {v0, v1, v6}, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->DOB_CALENDAR:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    .line 233
    new-instance v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    const-string v1, "GENDER"

    invoke-direct {v0, v1, v7}, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->GENDER:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    .line 234
    new-instance v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    const-string v1, "HOURS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->HOURS:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    .line 235
    new-instance v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    const-string v1, "STRING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->STRING:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    .line 236
    new-instance v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    const-string v1, "UINT16"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->UINT16:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    .line 237
    new-instance v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    const-string v1, "UINT32"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->UINT32:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    .line 227
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    sget-object v1, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->BOOLEAN:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->BYTE:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->BYTE_ARRAY:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->DOB_CALENDAR:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->GENDER:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->HOURS:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->STRING:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->UINT16:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->UINT32:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->$VALUES:[Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

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
    .line 227
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 227
    const-class v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    return-object v0
.end method

.method public static values()[Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->$VALUES:[Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    invoke-virtual {v0}, [Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    return-object v0
.end method
