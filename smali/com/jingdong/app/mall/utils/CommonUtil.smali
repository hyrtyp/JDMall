.class public final Lcom/jingdong/app/mall/utils/CommonUtil;
.super Lcom/jingdong/common/utils/CommonBase;
.source "CommonUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonUtil"

.field private static commonUtil:Lcom/jingdong/app/mall/utils/CommonUtil;

.field private static lastToClientTimeMillis:J

.field private static mAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, ""

    sput-object v0, Lcom/jingdong/app/mall/utils/CommonUtil;->mAction:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/jingdong/common/utils/CommonBase;-><init>()V

    .line 63
    return-void
.end method

.method public static getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/jingdong/app/mall/utils/CommonUtil;->commonUtil:Lcom/jingdong/app/mall/utils/CommonUtil;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/jingdong/app/mall/utils/CommonUtil;

    invoke-direct {v0}, Lcom/jingdong/app/mall/utils/CommonUtil;-><init>()V

    sput-object v0, Lcom/jingdong/app/mall/utils/CommonUtil;->commonUtil:Lcom/jingdong/app/mall/utils/CommonUtil;

    .line 69
    :cond_0
    sget-object v0, Lcom/jingdong/app/mall/utils/CommonUtil;->commonUtil:Lcom/jingdong/app/mall/utils/CommonUtil;

    return-object v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 569
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/MyApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toBrowserInFrame(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;)V
    .locals 1
    .parameter "activity"
    .parameter "action"
    .parameter "urlParamMap"

    .prologue
    .line 577
    if-nez p0, :cond_0

    .line 599
    :goto_0
    return-void

    .line 581
    :cond_0
    new-instance v0, Lcom/jingdong/app/mall/utils/CommonUtil$10;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/utils/CommonUtil$10;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;)V

    invoke-static {p1, p2, v0}, Lcom/jingdong/app/mall/utils/CommonUtil;->queryBrowserUrl(Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;)V

    goto :goto_0
.end method


# virtual methods
.method public backToHomePage(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 74
    const-class v1, Lcom/jingdong/app/mall/MainFrameActivity;

    invoke-virtual {p0, p1, v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->goToMainFrameActivity(Landroid/content/Context;Ljava/lang/Class;)Lcom/jingdong/common/frame/IMainActivity;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/MainFrameActivity;

    .line 75
    .local v0, mainFrameActivity:Lcom/jingdong/app/mall/MainFrameActivity;
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/jingdong/app/mall/MainFrameActivity;->toHomeActivity()V

    .line 78
    :cond_0
    return-void
.end method

.method public checkSDKForPay()Z
    .locals 5

    .prologue
    .line 82
    const/4 v2, 0x7

    .line 84
    .local v2, sdkNum:I
    :try_start_0
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 88
    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    .line 89
    new-instance v0, Lcom/jingdong/app/mall/utils/CommonUtil$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/utils/CommonUtil$1;-><init>(Lcom/jingdong/app/mall/utils/CommonUtil;)V

    .line 102
    .local v0, dialogController:Lcom/jingdong/app/mall/utils/ui/DialogController;
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    const v4, 0x7f0701a9

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    const v4, 0x7f0703e5

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setMessage(Ljava/lang/CharSequence;)V

    .line 104
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    const v4, 0x7f07014d

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setNeutralButton(Ljava/lang/CharSequence;)V

    .line 105
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jingdong/app/mall/utils/ui/DialogController;->init(Landroid/content/Context;)V

    .line 106
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    new-instance v4, Lcom/jingdong/app/mall/utils/CommonUtil$2;

    invoke-direct {v4, p0, v0}, Lcom/jingdong/app/mall/utils/CommonUtil$2;-><init>(Lcom/jingdong/app/mall/utils/CommonUtil;Lcom/jingdong/app/mall/utils/ui/DialogController;)V

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 111
    const/4 v3, 0x0

    .line 113
    .end local v0           #dialogController:Lcom/jingdong/app/mall/utils/ui/DialogController;
    :goto_1
    return v3

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, e:Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v1           #e:Ljava/lang/Throwable;
    :cond_0
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public doPay(Ljava/lang/String;)V
    .locals 4
    .parameter "xml"

    .prologue
    .line 124
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unionpay/upomp/bypay/util/Utils;->setPackageName(Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/unionpay/upomp/bypay/util/UPOMP;->init()V

    .line 127
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v2

    .line 129
    .local v2, myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/unionpay/upomp/bypay/activity/SplashActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "xml"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 133
    new-instance v3, Lcom/jingdong/app/mall/utils/CommonUtil$3;

    invoke-direct {v3, p0, v2, p1}, Lcom/jingdong/app/mall/utils/CommonUtil$3;-><init>(Lcom/jingdong/app/mall/utils/CommonUtil;Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/utils/MyActivity;->addResumeListener(Lcom/jingdong/common/frame/IResumeListener;)V

    .line 187
    new-instance v3, Lcom/jingdong/app/mall/utils/CommonUtil$4;

    invoke-direct {v3, p0, v2, v1}, Lcom/jingdong/app/mall/utils/CommonUtil$4;-><init>(Lcom/jingdong/app/mall/utils/CommonUtil;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 193
    return-void
.end method

.method public forwardWebActivity(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;)V
    .locals 2
    .parameter "myActivity"
    .parameter "action"

    .prologue
    .line 197
    new-instance v0, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v0}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->forwardWebActivity(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Z)V

    .line 198
    return-void
.end method

.method public forwardWebActivity(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;)V
    .locals 1
    .parameter "myActivity"
    .parameter "action"
    .parameter "urlParamMap"

    .prologue
    .line 202
    new-instance v0, Lcom/jingdong/app/mall/utils/CommonUtil$5;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/utils/CommonUtil$5;-><init>(Lcom/jingdong/app/mall/utils/CommonUtil;Lcom/jingdong/common/frame/IMyActivity;)V

    invoke-static {p2, p3, v0}, Lcom/jingdong/app/mall/utils/CommonUtil;->queryBrowserUrl(Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;)V

    .line 212
    return-void
.end method

.method public forwardWebActivity(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Z)V
    .locals 1
    .parameter "myActivity"
    .parameter "action"
    .parameter "urlParamMap"
    .parameter "needCleanHistory"

    .prologue
    .line 216
    new-instance v0, Lcom/jingdong/app/mall/utils/CommonUtil$6;

    invoke-direct {v0, p0, p1, p4}, Lcom/jingdong/app/mall/utils/CommonUtil$6;-><init>(Lcom/jingdong/app/mall/utils/CommonUtil;Lcom/jingdong/common/frame/IMyActivity;Z)V

    invoke-static {p2, p3, v0}, Lcom/jingdong/app/mall/utils/CommonUtil;->queryBrowserUrl(Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;)V

    .line 232
    return-void
.end method

.method public forwardWebActivity(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .parameter "myActivity"
    .parameter "action"
    .parameter "actionUrl"
    .parameter "needCleanHistory"
    .parameter "orientation"

    .prologue
    .line 239
    new-instance v0, Lcom/jingdong/app/mall/utils/CommonUtil$7;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/utils/CommonUtil$7;-><init>(Lcom/jingdong/app/mall/utils/CommonUtil;Lcom/jingdong/common/frame/IMyActivity;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    .line 256
    return-void
.end method

.method public forwardWebActivityForAction(Landroid/content/Context;Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;)V
    .locals 1
    .parameter "myActivity"
    .parameter "action"
    .parameter "urlParamMap"

    .prologue
    .line 260
    new-instance v0, Lcom/jingdong/app/mall/utils/CommonUtil$8;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/utils/CommonUtil$8;-><init>(Lcom/jingdong/app/mall/utils/CommonUtil;Landroid/content/Context;)V

    invoke-static {p2, p3, v0}, Lcom/jingdong/app/mall/utils/CommonUtil;->queryBrowserUrl(Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;)V

    .line 270
    return-void
.end method

.method public forwardWebActivityWithWidget(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;)V
    .locals 3
    .parameter "myActivity"
    .parameter "action"

    .prologue
    .line 286
    if-nez p2, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    .line 291
    .local v0, currentActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    instance-of v1, v0, Lcom/jingdong/app/mall/WebActivity;

    if-eqz v1, :cond_2

    .line 292
    sget-object v1, Lcom/jingdong/app/mall/utils/CommonUtil;->mAction:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 295
    check-cast v0, Lcom/jingdong/app/mall/WebActivity;

    .end local v0           #currentActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-virtual {v0}, Lcom/jingdong/app/mall/WebActivity;->stopLoading()V

    .line 297
    :cond_2
    sput-object p2, Lcom/jingdong/app/mall/utils/CommonUtil;->mAction:Ljava/lang/String;

    .line 299
    new-instance v1, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v1}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/jingdong/app/mall/utils/CommonUtil;->forwardWebActivity(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Z)V

    goto :goto_0
.end method

.method public goToShoppingCartPage(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "isNavigation"

    .prologue
    .line 304
    const-class v1, Lcom/jingdong/app/mall/MainFrameActivity;

    invoke-virtual {p0, p1, v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->goToMainFrameActivity(Landroid/content/Context;Ljava/lang/Class;)Lcom/jingdong/common/frame/IMainActivity;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/MainFrameActivity;

    .line 305
    .local v0, mainFrameActivity:Lcom/jingdong/app/mall/MainFrameActivity;
    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0, p2}, Lcom/jingdong/app/mall/MainFrameActivity;->toShoppingCart(Z)V

    .line 308
    :cond_0
    return-void
.end method

.method public sendCustomBroadcast(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "moduleId"

    .prologue
    .line 312
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.360buy.interfaceBroadcastReceiver"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    .local v1, intent:Landroid/content/Intent;
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 314
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 315
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "moduleId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 316
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 317
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 318
    return-void
.end method

.method public startActivityInFrame(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 562
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/MainFrameActivity;

    invoke-virtual {v1, p1, v2}, Lcom/jingdong/app/mall/utils/CommonUtil;->goToMainFrameActivity(Landroid/content/Context;Ljava/lang/Class;)Lcom/jingdong/common/frame/IMainActivity;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/MainFrameActivity;

    .line 563
    .local v0, mainFrameActivity:Lcom/jingdong/app/mall/MainFrameActivity;
    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {v0, p2}, Lcom/jingdong/app/mall/MainFrameActivity;->startSubActivity(Landroid/content/Intent;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    .line 566
    :cond_0
    return-void
.end method

.method public toClient(Ljava/lang/String;)V
    .locals 7
    .parameter "tokenKey"

    .prologue
    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/jingdong/app/mall/utils/CommonUtil;->lastToClientTimeMillis:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xbb8

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 553
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/jingdong/app/mall/utils/CommonUtil;->lastToClientTimeMillis:J

    .line 330
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;-><init>()V

    .line 331
    .local v1, httpGroupSetting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;
    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setType(I)V

    .line 332
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setMyActivity(Lcom/jingdong/common/frame/IMyActivity;)V

    .line 333
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

    invoke-direct {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;)V

    .line 335
    .local v0, httpGroup:Lcom/jingdong/common/utils/HttpGroup;
    new-instance v2, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 336
    .local v2, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 337
    const-string v3, "getToken"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 338
    new-instance v3, Lcom/jingdong/app/mall/utils/CommonUtil$9;

    invoke-direct {v3, p0, p1, v0}, Lcom/jingdong/app/mall/utils/CommonUtil$9;-><init>(Lcom/jingdong/app/mall/utils/CommonUtil;Ljava/lang/String;Lcom/jingdong/common/utils/HttpGroup;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 552
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0
.end method
