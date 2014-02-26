.class public Lcom/jd/droidlib/util/ConnectivityUtil;
.super Ljava/lang/Object;
.source "ConnectivityUtil.java"


# instance fields
.field private final connectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 29
    iput-object v0, p0, Lcom/jd/droidlib/util/ConnectivityUtil;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 31
    return-void
.end method


# virtual methods
.method public backgroundDataEnabled()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jd/droidlib/util/ConnectivityUtil;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    return v0
.end method

.method public connected()Z
    .locals 2

    .prologue
    .line 38
    iget-object v1, p0, Lcom/jd/droidlib/util/ConnectivityUtil;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 39
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onWiFi()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 43
    iget-object v2, p0, Lcom/jd/droidlib/util/ConnectivityUtil;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 44
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {p0}, Lcom/jd/droidlib/util/ConnectivityUtil;->connected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
