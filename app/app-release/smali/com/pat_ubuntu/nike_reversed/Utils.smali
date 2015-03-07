.class public Lcom/pat_ubuntu/nike_reversed/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;,
        Lcom/pat_ubuntu/nike_reversed/Utils$Logger;
    }
.end annotation


# static fields
.field private static final hexArray:[C

.field private static sSettingsCodeToStringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSettingsStringToCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x32

    .line 76
    const-string v2, "0123456789ABCDEF"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sput-object v2, Lcom/pat_ubuntu/nike_reversed/Utils;->hexArray:[C

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 110
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v2, "SERIAL_NUMBER"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v2, "BAND_COLOR"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v2, "BLE_ADDRESS"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v2, "XTAL_TRIM"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v2, "BLE_POWER_LEVEL"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v2, "ADC_CAL_VCC_MV"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v2, "ADC_CAL_VREFINT_CONV"

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v2, "ADC_CAL_BAT_RATIO"

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v2, "LED_ROW_BALANCE"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v2, "LED_DOT_CORRECTION"

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v2, "ALS_BOOST"

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v2, "GOAL_0"

    const/16 v3, 0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v2, "GOAL_1"

    const/16 v3, 0x29

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v2, "GOAL_2"

    const/16 v3, 0x2a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v2, "GOAL_3"

    const/16 v3, 0x2b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v2, "GOAL_4"

    const/16 v3, 0x2c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v2, "GOAL_5"

    const/16 v3, 0x2d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v2, "GOAL_6"

    const/16 v3, 0x2e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v2, "TEMP_GOAL"

    const/16 v3, 0x2f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v2, "FUEL"

    const/16 v3, 0x30

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v2, "CALORIES"

    const/16 v3, 0x31

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v2, "STEPS"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v2, "24HRCLOCK"

    const/16 v3, 0x38

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v2, "MENU_CALORIES"

    const/16 v3, 0x39

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v2, "MENU_STEPS"

    const/16 v3, 0x3a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v2, "MENU_GOAL"

    const/16 v3, 0x3b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v2, "WEIGHT"

    const/16 v3, 0x3d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v2, "HEIGHT"

    const/16 v3, 0x3e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v2, "DOB"

    const/16 v3, 0x3f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v2, "GENDER"

    const/16 v3, 0x40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v2, "HANDEDNESS"

    const/16 v3, 0x41

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v2, "ZONEOFFSET"

    const/16 v3, 0x45

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v2, "DSTOFFSET"

    const/16 v3, 0x46

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v2, "MOVE_REMINDER_HRS"

    const/16 v3, 0x5c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v2, "HOURSWON"

    const/16 v3, 0x5a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v2, "FIRST_NAME"

    const/16 v3, 0x61

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v2, "IN_SESSION_LED"

    const/16 v3, 0x63

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v2, "MENU_FUELRATE"

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v2, "MENU_STARS"

    const/16 v3, 0x59

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v2, "LIFETIME_FUEL"

    const/16 v3, 0x5e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v2, "DISCOVERY_TOKEN"

    const/16 v3, 0x4b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/pat_ubuntu/nike_reversed/Utils;->sSettingsStringToCodeMap:Ljava/util/Map;

    .line 153
    new-instance v2, Ljava/util/HashMap;

    sget-object v3, Lcom/pat_ubuntu/nike_reversed/Utils;->sSettingsStringToCodeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Lcom/pat_ubuntu/nike_reversed/Utils;->sSettingsCodeToStringMap:Ljava/util/Map;

    .line 155
    sget-object v2, Lcom/pat_ubuntu/nike_reversed/Utils;->sSettingsStringToCodeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 157
    .local v1, "s":Ljava/lang/String;
    sget-object v3, Lcom/pat_ubuntu/nike_reversed/Utils;->sSettingsCodeToStringMap:Ljava/util/Map;

    sget-object v4, Lcom/pat_ubuntu/nike_reversed/Utils;->sSettingsStringToCodeMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 159
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 78
    if-nez p0, :cond_0

    .line 79
    const-string v3, "<null>"

    .line 89
    :goto_0
    return-object v3

    .line 82
    :cond_0
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    .line 84
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 85
    aget-byte v3, p0, v1

    and-int/lit16 v2, v3, 0xff

    .line 86
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/pat_ubuntu/nike_reversed/Utils;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 87
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/pat_ubuntu/nike_reversed/Utils;->hexArray:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 89
    .end local v2    # "v":I
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static getSettingCode(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 166
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/Utils;->sSettingsStringToCodeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getSettingCodes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/Utils;->sSettingsStringToCodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected static getSettingKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 162
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/Utils;->sSettingsCodeToStringMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected static getSettingType(I)Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 174
    sparse-switch p0, :sswitch_data_0

    .line 222
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->UINT32:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    :goto_0
    return-object v0

    .line 177
    :sswitch_0
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->STRING:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    goto :goto_0

    .line 182
    :sswitch_1
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->BYTE:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    goto :goto_0

    .line 189
    :sswitch_2
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->BYTE_ARRAY:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    goto :goto_0

    .line 193
    :sswitch_3
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->UINT32:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    goto :goto_0

    .line 201
    :sswitch_4
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->BOOLEAN:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    goto :goto_0

    .line 204
    :sswitch_5
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->DOB_CALENDAR:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    goto :goto_0

    .line 207
    :sswitch_6
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->GENDER:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    goto :goto_0

    .line 210
    :sswitch_7
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->UINT32:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    goto :goto_0

    .line 213
    :sswitch_8
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->BYTE:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    goto :goto_0

    .line 216
    :sswitch_9
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->BOOLEAN:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    goto :goto_0

    .line 219
    :sswitch_a
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->BYTE:Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    goto :goto_0

    .line 174
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x9 -> :sswitch_2
        0xa -> :sswitch_2
        0x30 -> :sswitch_3
        0x38 -> :sswitch_4
        0x39 -> :sswitch_4
        0x3a -> :sswitch_4
        0x3b -> :sswitch_4
        0x3c -> :sswitch_4
        0x3d -> :sswitch_3
        0x3e -> :sswitch_a
        0x3f -> :sswitch_5
        0x40 -> :sswitch_6
        0x41 -> :sswitch_1
        0x45 -> :sswitch_7
        0x46 -> :sswitch_8
        0x4b -> :sswitch_2
        0x59 -> :sswitch_4
        0x61 -> :sswitch_0
        0x63 -> :sswitch_9
    .end sparse-switch
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x10

    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    new-array v0, v3, [B

    .line 95
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 96
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v1, 0x1

    .line 97
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 95
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_0
    return-object v0
.end method

.method public static processGetSettingsResponse([B)V
    .locals 23
    .param p0, "raw"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 241
    invoke-static/range {p0 .. p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 244
    .local v7, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    .line 245
    .local v9, "dummy1":B
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    .line 246
    .local v10, "dummy2":B
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    .line 247
    .local v11, "dummy3":B
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    .line 249
    .local v12, "dummy4":B
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    .line 251
    .local v13, "elements":B
    if-gtz v13, :cond_1

    .line 334
    :cond_0
    return-void

    .line 255
    :cond_1
    const/4 v5, 0x0

    .local v5, "b":B
    :goto_0
    if-ge v5, v13, :cond_0

    .line 257
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 258
    new-instance v18, Ljava/lang/Exception;

    const-string v19, "Decoding error, not enough remaining bytes"

    invoke-direct/range {v18 .. v19}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v18

    .line 261
    :cond_2
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    .line 262
    .local v8, "configKey":B
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->get()B

    move-result v17

    .line 264
    .local v17, "valueSize":B
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v17, v0

    .line 266
    invoke-static {v8}, Lcom/pat_ubuntu/nike_reversed/Utils;->getSettingKey(I)Ljava/lang/String;

    move-result-object v16

    .line 267
    .local v16, "settingKey":Ljava/lang/String;
    if-nez v16, :cond_3

    .line 269
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unknown config key "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->e(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v18

    add-int v18, v18, v17

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 255
    :goto_1
    add-int/lit8 v18, v5, 0x1

    move/from16 v0, v18

    int-to-byte v5, v0

    goto :goto_0

    .line 274
    :cond_3
    sget-object v18, Lcom/pat_ubuntu/nike_reversed/Utils$1;->$SwitchMap$com$pat_ubuntu$nike_reversed$Utils$SettingType:[I

    invoke-static {v8}, Lcom/pat_ubuntu/nike_reversed/Utils;->getSettingType(I)Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/pat_ubuntu/nike_reversed/Utils$SettingType;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_0

    .line 330
    new-instance v18, Ljava/lang/Exception;

    const-string v19, "Unknown config type"

    invoke-direct/range {v18 .. v19}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v18

    .line 277
    :pswitch_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Got BYTE setting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->get()B

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 281
    :pswitch_1
    move/from16 v0, v17

    new-array v3, v0, [B

    .line 282
    .local v3, "array":[B
    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 283
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Got BYTE_ARRAY setting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v3}, Lcom/pat_ubuntu/nike_reversed/Utils;->bytesToHex([B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 287
    .end local v3    # "array":[B
    :pswitch_2
    move/from16 v0, v17

    new-array v4, v0, [B

    .line 288
    .local v4, "array2":[B
    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 290
    const/4 v6, 0x0

    .local v6, "b2":B
    :goto_2
    move/from16 v0, v17

    if-ge v6, v0, :cond_4

    aget-byte v18, v4, v6

    if-eqz v18, :cond_4

    add-int/lit8 v18, v6, 0x1

    move/from16 v0, v18

    int-to-byte v6, v0

    goto :goto_2

    .line 291
    :cond_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Got STRING setting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    new-instance v19, Ljava/lang/String;

    const/16 v20, 0x0

    const-string v21, "US-ASCII"

    invoke-static/range {v21 .. v21}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v4, v1, v6, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 295
    .end local v4    # "array2":[B
    .end local v6    # "b2":B
    :pswitch_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Got UINT32 setting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 299
    :pswitch_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Got UINT16 setting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 303
    :pswitch_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Got BOOLEAN setting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->get()B

    move-result v18

    if-nez v18, :cond_5

    const-string v18, "false"

    :goto_3
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string v18, "true"

    goto :goto_3

    .line 307
    :pswitch_6
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    .line 308
    .local v15, "int1":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Got DOB_CALENDAR setting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    new-instance v19, Ljava/util/GregorianCalendar;

    const v20, 0xffff

    and-int v20, v20, v15

    ushr-int/lit8 v21, v15, 0x10

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    ushr-int/lit8 v22, v15, 0x18

    invoke-direct/range {v19 .. v22}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 312
    .end local v15    # "int1":I
    :pswitch_7
    const-string v14, "UNKNOWN"

    .line 313
    .local v14, "gender":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->get()B

    move-result v18

    sparse-switch v18, :sswitch_data_0

    .line 323
    :goto_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Got setting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 315
    :sswitch_0
    const-string v14, "MALE"

    .line 316
    goto :goto_4

    .line 319
    :sswitch_1
    const-string v14, "FEMALE"

    goto :goto_4

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 313
    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_1
        0x4d -> :sswitch_0
    .end sparse-switch
.end method
