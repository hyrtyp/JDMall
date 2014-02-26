.class public Lcom/jingdong/app/lib/pay/PayUtils;
.super Ljava/lang/Object;
.source "PayUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jingdong.app.lib.pay.PayUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doPay(Lcom/jingdong/app/lib/base/activity/JDActivity;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "xml"

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/jingdong/app/lib/base/activity/JDActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/upomp/bypay/util/Utils;->setPackageName(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/unionpay/upomp/bypay/util/UPOMP;->init()V

    .line 32
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/SplashActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "xml"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 36
    invoke-virtual {p0, v1}, Lcom/jingdong/app/lib/base/activity/JDActivity;->startActivity(Landroid/content/Intent;)V

    .line 37
    return-void
.end method

.method public static processPayResult(Lcom/jingdong/app/lib/pay/PayCallBack;)V
    .locals 2
    .parameter "callBack"

    .prologue
    .line 43
    invoke-static {}, Lcom/unionpay/upomp/bypay/util/UPOMP;->getPayResult()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, payResult:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "<respCode>0000</respCode>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    if-eqz p0, :cond_0

    .line 47
    invoke-interface {p0}, Lcom/jingdong/app/lib/pay/PayCallBack;->onPaySuccess()V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    if-eqz p0, :cond_0

    .line 51
    invoke-interface {p0}, Lcom/jingdong/app/lib/pay/PayCallBack;->onPayFail()V

    goto :goto_0
.end method
