.class public Lcom/jd/lottery/lib/activity/BaseActivity;
.super Lcom/jd/droidlib/activity/support/FragmentActivity;
.source "BaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/jd/droidlib/activity/support/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/jd/droidlib/activity/support/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/jd/lottery/lib/activity/BaseActivity;->setRequestedOrientation(I)V

    .line 18
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/jd/lottery/lib/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 20
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 21
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_1

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/jd/lottery/lib/activity/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jd/lottery/lib/activity/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/jd/lottery/lib/R$string;->no_network:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 25
    :cond_1
    return-void
.end method
