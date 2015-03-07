.class Lcom/pat_ubuntu/nike_reversed/Utils$Logger;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pat_ubuntu/nike_reversed/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Logger"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BLEHACKS"

.field private static _activity:Lcom/pat_ubuntu/nike_reversed/MainActivity;

.field private static _logView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->_logView:Landroid/widget/TextView;

    .line 37
    sput-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->_activity:Lcom/pat_ubuntu/nike_reversed/MainActivity;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->_logView:Landroid/widget/TextView;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 0
    .param p0, "m"    # Ljava/lang/String;

    .prologue
    .line 73
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .param p0, "m"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string v0, "BLEHACKS"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ERROR] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->log2view(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2
    .param p0, "m"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v0, "BLEHACKS"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[INFO] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->log2view(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method private static log2view(Ljava/lang/String;)V
    .locals 2
    .param p0, "m"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->_activity:Lcom/pat_ubuntu/nike_reversed/MainActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->_logView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->_activity:Lcom/pat_ubuntu/nike_reversed/MainActivity;

    new-instance v1, Lcom/pat_ubuntu/nike_reversed/Utils$Logger$1;

    invoke-direct {v1, p0}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pat_ubuntu/nike_reversed/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 53
    :cond_0
    return-void
.end method

.method public static setLogView(Lcom/pat_ubuntu/nike_reversed/MainActivity;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "act"    # Lcom/pat_ubuntu/nike_reversed/MainActivity;
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 40
    sput-object p0, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->_activity:Lcom/pat_ubuntu/nike_reversed/MainActivity;

    .line 41
    sput-object p1, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->_logView:Landroid/widget/TextView;

    .line 42
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2
    .param p0, "m"    # Ljava/lang/String;

    .prologue
    .line 66
    const-string v0, "BLEHACKS"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WARN] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pat_ubuntu/nike_reversed/Utils$Logger;->log2view(Ljava/lang/String;)V

    .line 68
    return-void
.end method
