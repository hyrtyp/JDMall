.class public Lcom/jingdong/common/utils/UserUtil;
.super Ljava/lang/Object;
.source "UserUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanData(Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 92
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->cleanCookies()V

    .line 95
    invoke-interface {p0}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/common/utils/JDGameUtil;->sendLogoutBroadCast(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method public static onLogout(Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 5
    .parameter "myActivity"

    .prologue
    const/4 v4, 0x0

    .line 27
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 28
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v2, "logout"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 29
    new-instance v2, Lcom/jingdong/common/utils/UserUtil$1;

    invoke-direct {v2, p0}, Lcom/jingdong/common/utils/UserUtil$1;-><init>(Lcom/jingdong/common/frame/IMyActivity;)V

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 61
    invoke-interface {p0}, Lcom/jingdong/common/frame/IMyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 63
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/jingdong/common/login/LoginUserBase;->setUserStateOff(Z)V

    .line 64
    const-string v2, "login"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Lcom/jingdong/common/frame/IMyActivity;->putBooleanToPreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 68
    invoke-static {v4}, Lcom/jingdong/common/login/SafetyManager;->setRemember(Z)V

    .line 69
    invoke-static {}, Lcom/jingdong/common/controller/ShoppingBaseController;->clearLocalCart()V

    .line 70
    invoke-static {}, Lcom/jingdong/common/constant/Constants;->clearOrderInfo()V

    .line 75
    invoke-static {}, Lcom/jingdong/common/service/MessagePullService;->widgetIsRunInBg()Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    new-instance v1, Landroid/content/Intent;

    invoke-interface {p0}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/jingdong/common/service/MessagePullService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v1, serviceIntent:Landroid/content/Intent;
    const-string v2, "Action_Stop_Message_Service"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-interface {p0}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 83
    .end local v1           #serviceIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
