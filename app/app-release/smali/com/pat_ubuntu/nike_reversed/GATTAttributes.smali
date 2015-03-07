.class public Lcom/pat_ubuntu/nike_reversed/GATTAttributes;
.super Ljava/lang/Object;
.source "GATTAttributes.java"


# static fields
.field public static CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String;

.field public static HEART_RATE_MEASUREMENT:Ljava/lang/String;

.field private static attributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/GATTAttributes;->attributes:Ljava/util/HashMap;

    .line 26
    const-string v0, "00002a37-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/GATTAttributes;->HEART_RATE_MEASUREMENT:Ljava/lang/String;

    .line 27
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lcom/pat_ubuntu/nike_reversed/GATTAttributes;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/GATTAttributes;->attributes:Ljava/util/HashMap;

    const-string v1, "0000180d-0000-1000-8000-00805f9b34fb"

    const-string v2, "Heart Rate Service"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/GATTAttributes;->attributes:Ljava/util/HashMap;

    const-string v1, "0000180a-0000-1000-8000-00805f9b34fb"

    const-string v2, "Device Information Service"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/GATTAttributes;->attributes:Ljava/util/HashMap;

    const-string v1, "83cdc410-31dd-11e2-81c1-0800200c9a66"

    const-string v2, "Nike+ Fuelband SE ( Copper Head )"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/GATTAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/pat_ubuntu/nike_reversed/GATTAttributes;->HEART_RATE_MEASUREMENT:Ljava/lang/String;

    const-string v2, "Heart Rate Measurement"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/GATTAttributes;->attributes:Ljava/util/HashMap;

    const-string v1, "00002a29-0000-1000-8000-00805f9b34fb"

    const-string v2, "Manufacturer Name String"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/GATTAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/pat_ubuntu/nike_reversed/GATTAttributes;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String;

    const-string v2, "Client Characteristic Config"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/GATTAttributes;->attributes:Ljava/util/HashMap;

    const-string v1, "c7d25540-31dd-11e2-81c1-0800200c9a66"

    const-string v2, "Command Channel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/GATTAttributes;->attributes:Ljava/util/HashMap;

    const-string v1, "d36f33f0-31dd-11e2-81c1-0800200c9a66"

    const-string v2, "Response Channel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "defaultName"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-object v1, Lcom/pat_ubuntu/nike_reversed/GATTAttributes;->attributes:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p1    # "defaultName":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultName":Ljava/lang/String;
    :cond_0
    move-object p1, v0

    goto :goto_0
.end method
