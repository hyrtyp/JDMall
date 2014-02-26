.class public Lcom/jingdong/common/utils/GlobalInitialization;
.super Ljava/lang/Object;
.source "GlobalInitialization.java"

# interfaces
.implements Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/utils/GlobalInitialization$ConfigLoadedListener;,
        Lcom/jingdong/common/utils/GlobalInitialization$GlobalInitializationListener;
    }
.end annotation


# static fields
.field private static final BLOCK_TASK_TOKEN_REGISTER_DEVICE:Ljava/lang/String; = "BLOCK_TASK_TOKEN_REGISTER_DEVICE"

.field private static final BLOCK_TASK_TOKEN_SERVER_CONFIG:Ljava/lang/String; = "BLOCK_TASK_TOKEN_SERVER_CONFIG"

.field private static alreadyABTest:Z

.field private static globalInitialization:Lcom/jingdong/common/utils/GlobalInitialization;


# instance fields
.field private alreadyConfig:Z

.field private alreadyDevice:Z

.field private blockTaskTokenSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private configListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/utils/GlobalInitialization$ConfigLoadedListener;",
            ">;"
        }
    .end annotation
.end field

.field private cpaProcessor:Lcom/jingdong/common/utils/CPAUtils$Processor;

.field private giListener:Lcom/jingdong/common/utils/GlobalInitialization$GlobalInitializationListener;

.field private httpGroup:Lcom/jingdong/common/utils/HttpGroup;

.field private httpGroupSetting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

.field private myActivity:Lcom/jingdong/common/frame/IMyActivity;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jingdong/common/utils/GlobalInitialization;->alreadyABTest:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->configListenerList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->blockTaskTokenSet:Ljava/util/Set;

    .line 55
    iput-boolean v1, p0, Lcom/jingdong/common/utils/GlobalInitialization;->alreadyDevice:Z

    .line 56
    iput-boolean v1, p0, Lcom/jingdong/common/utils/GlobalInitialization;->alreadyConfig:Z

    .line 156
    iget-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->httpGroupSetting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

    .line 158
    iget-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->httpGroupSetting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setType(I)V

    .line 159
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

    iget-object v1, p0, Lcom/jingdong/common/utils/GlobalInitialization;->httpGroupSetting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

    invoke-direct {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    .line 162
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/utils/GlobalInitialization;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->alreadyDevice:Z

    return v0
.end method

.method static synthetic access$1(Lcom/jingdong/common/utils/GlobalInitialization;)Z
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->alreadyConfig:Z

    return v0
.end method

.method static synthetic access$2(Lcom/jingdong/common/utils/GlobalInitialization;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/jingdong/common/utils/GlobalInitialization;->serverConfig(Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/common/utils/GlobalInitialization;ZLcom/jingdong/common/frame/IMyActivity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 476
    invoke-direct {p0, p1, p2}, Lcom/jingdong/common/utils/GlobalInitialization;->checksofteWareUpdated(ZLcom/jingdong/common/frame/IMyActivity;)V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/common/utils/GlobalInitialization;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/common/utils/GlobalInitialization;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->configListenerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/common/utils/GlobalInitialization;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/jingdong/common/utils/GlobalInitialization;->alreadyConfig:Z

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/common/utils/GlobalInitialization;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/jingdong/common/utils/GlobalInitialization;->removeBlockTaskToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/jingdong/common/utils/GlobalInitialization;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/jingdong/common/utils/GlobalInitialization;->alreadyDevice:Z

    return-void
.end method

.method private addBlockTaskToken(Ljava/lang/String;)V
    .locals 1
    .parameter "token"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->blockTaskTokenSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public static checkVersion(Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 2
    .parameter "myActivity"

    .prologue
    .line 470
    invoke-static {}, Lcom/jingdong/common/utils/GlobalInitialization;->getGlobalInitializationInstance()Lcom/jingdong/common/utils/GlobalInitialization;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/jingdong/common/utils/GlobalInitialization;->checksofteWareUpdated(ZLcom/jingdong/common/frame/IMyActivity;)V

    .line 471
    return-void
.end method

.method private checksofteWareUpdated(ZLcom/jingdong/common/frame/IMyActivity;)V
    .locals 7
    .parameter "isAuto"
    .parameter "myActivity"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 484
    const-string v3, "applicationUpgrade"

    invoke-static {v3}, Lcom/jingdong/common/config/Configuration;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    .line 576
    :goto_0
    return-void

    .line 488
    :cond_0
    new-instance v2, Lcom/jingdong/common/utils/GlobalInitialization$5;

    invoke-direct {v2, p0, p2, p1}, Lcom/jingdong/common/utils/GlobalInitialization$5;-><init>(Lcom/jingdong/common/utils/GlobalInitialization;Lcom/jingdong/common/frame/IMyActivity;Z)V

    .line 554
    .local v2, onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 555
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v3, "version"

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 556
    const-string v3, "osVersion"

    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 557
    const-string v3, "platform"

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 558
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 560
    invoke-virtual {v0, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNeedGlobalInitialization(Z)V

    .line 561
    invoke-virtual {v0, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 562
    invoke-virtual {v0, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 563
    if-nez p1, :cond_2

    .line 564
    invoke-virtual {v0, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 565
    invoke-virtual {v0, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 566
    move-object v1, p2

    .line 567
    .local v1, myShowActivity:Lcom/jingdong/common/frame/IMyActivity;
    if-nez v1, :cond_1

    .line 568
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/MyApplication;->getCurrentMyActivity()Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v1

    .line 570
    :cond_1
    invoke-interface {v1}, Lcom/jingdong/common/frame/IMyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0

    .line 574
    .end local v1           #myShowActivity:Lcom/jingdong/common/frame/IMyActivity;
    :cond_2
    iget-object v3, p0, Lcom/jingdong/common/utils/GlobalInitialization;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v3, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0
.end method

.method public static getGlobalInitializationInstance()Lcom/jingdong/common/utils/GlobalInitialization;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/jingdong/common/utils/GlobalInitialization;->globalInitialization:Lcom/jingdong/common/utils/GlobalInitialization;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/jingdong/common/utils/GlobalInitialization;

    invoke-direct {v0}, Lcom/jingdong/common/utils/GlobalInitialization;-><init>()V

    sput-object v0, Lcom/jingdong/common/utils/GlobalInitialization;->globalInitialization:Lcom/jingdong/common/utils/GlobalInitialization;

    .line 102
    :cond_0
    sget-object v0, Lcom/jingdong/common/utils/GlobalInitialization;->globalInitialization:Lcom/jingdong/common/utils/GlobalInitialization;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/GlobalInitialization;->initMyActivity()V

    .line 103
    sget-object v0, Lcom/jingdong/common/utils/GlobalInitialization;->globalInitialization:Lcom/jingdong/common/utils/GlobalInitialization;

    return-object v0
.end method

.method private initEndCallBack()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->giListener:Lcom/jingdong/common/utils/GlobalInitialization$GlobalInitializationListener;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->giListener:Lcom/jingdong/common/utils/GlobalInitialization$GlobalInitializationListener;

    invoke-interface {v0}, Lcom/jingdong/common/utils/GlobalInitialization$GlobalInitializationListener;->initEnd()V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->giListener:Lcom/jingdong/common/utils/GlobalInitialization$GlobalInitializationListener;

    .line 229
    :cond_0
    return-void
.end method

.method public static initNetwork(Z)V
    .locals 1
    .parameter "wait"

    .prologue
    .line 140
    invoke-static {}, Lcom/jingdong/common/utils/GlobalInitialization;->getGlobalInitializationInstance()Lcom/jingdong/common/utils/GlobalInitialization;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jingdong/common/utils/GlobalInitialization;->networkInitialization(Z)V

    .line 141
    return-void
.end method

.method private declared-synchronized networkInitializationEnd()V
    .locals 2

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v0

    .line 242
    .local v0, myApplication:Lcom/jingdong/common/MyApplication;
    iget-boolean v1, p0, Lcom/jingdong/common/utils/GlobalInitialization;->alreadyDevice:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/jingdong/common/utils/GlobalInitialization;->alreadyConfig:Z

    if-eqz v1, :cond_0

    .line 243
    const/4 v1, 0x2

    iput v1, v0, Lcom/jingdong/common/MyApplication;->networkInitializationState:I

    .line 251
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    monitor-exit p0

    return-void

    .line 245
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput v1, v0, Lcom/jingdong/common/MyApplication;->networkInitializationState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 240
    .end local v0           #myApplication:Lcom/jingdong/common/MyApplication;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private networkInitializationStart(Z)V
    .locals 4
    .parameter "isOnlyFirst"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 265
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 267
    iget-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "registerDevice"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->alreadyDevice:Z

    .line 268
    iget-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "serverConfig"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->alreadyConfig:Z

    .line 270
    iget-boolean v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->alreadyDevice:Z

    if-nez v0, :cond_0

    .line 274
    const-string v0, "BLOCK_TASK_TOKEN_REGISTER_DEVICE"

    invoke-direct {p0, v0}, Lcom/jingdong/common/utils/GlobalInitialization;->addBlockTaskToken(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0, v2}, Lcom/jingdong/common/utils/GlobalInitialization;->registerDevice(Z)V

    .line 278
    :cond_0
    iget-boolean v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->alreadyConfig:Z

    if-nez v0, :cond_1

    .line 282
    const-string v0, "BLOCK_TASK_TOKEN_SERVER_CONFIG"

    invoke-direct {p0, v0}, Lcom/jingdong/common/utils/GlobalInitialization;->addBlockTaskToken(Ljava/lang/String;)V

    .line 283
    invoke-direct {p0, v2}, Lcom/jingdong/common/utils/GlobalInitialization;->serverConfig(Z)V

    .line 286
    :cond_1
    iget-boolean v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->alreadyDevice:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->alreadyConfig:Z

    if-eqz v0, :cond_2

    .line 287
    invoke-direct {p0}, Lcom/jingdong/common/utils/GlobalInitialization;->initEndCallBack()V

    .line 290
    :cond_2
    sget-boolean v0, Lcom/jingdong/common/utils/GlobalInitialization;->alreadyABTest:Z

    if-nez v0, :cond_3

    .line 291
    iget-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-static {v0}, Lcom/jingdong/common/utils/ABTestUtils;->initABData(Lcom/jingdong/common/utils/HttpGroup;)V

    .line 292
    sput-boolean v2, Lcom/jingdong/common/utils/GlobalInitialization;->alreadyABTest:Z

    .line 296
    :cond_3
    if-eqz p1, :cond_4

    .line 328
    :goto_0
    return-void

    .line 300
    :cond_4
    new-instance v0, Lcom/jingdong/common/utils/GlobalInitialization$1;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/GlobalInitialization$1;-><init>(Lcom/jingdong/common/utils/GlobalInitialization;)V

    .line 319
    invoke-virtual {v0}, Lcom/jingdong/common/utils/GlobalInitialization$1;->start()V

    .line 321
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/jingdong/common/utils/GlobalInitialization$2;

    invoke-direct {v1, p0}, Lcom/jingdong/common/utils/GlobalInitialization$2;-><init>(Lcom/jingdong/common/utils/GlobalInitialization;)V

    .line 326
    const-string v2, "routineCheckDelayTime"

    invoke-static {v2}, Lcom/jingdong/common/config/Configuration;->getIntegerProperty(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    .line 321
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public static regDevice()V
    .locals 2

    .prologue
    .line 147
    invoke-static {}, Lcom/jingdong/common/utils/GlobalInitialization;->getGlobalInitializationInstance()Lcom/jingdong/common/utils/GlobalInitialization;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/GlobalInitialization;->registerDevice(Z)V

    .line 148
    return-void
.end method

.method private removeBlockTaskToken(Ljava/lang/String;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->blockTaskTokenSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->blockTaskTokenSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/jingdong/common/utils/GlobalInitialization;->networkInitializationEnd()V

    .line 94
    invoke-direct {p0}, Lcom/jingdong/common/utils/GlobalInitialization;->initEndCallBack()V

    .line 96
    :cond_0
    return-void
.end method

.method private serverConfig(Z)V
    .locals 3
    .parameter "isFirst"

    .prologue
    .line 339
    new-instance v1, Lcom/jingdong/common/utils/GlobalInitialization$3;

    invoke-direct {v1, p0}, Lcom/jingdong/common/utils/GlobalInitialization$3;-><init>(Lcom/jingdong/common/utils/GlobalInitialization;)V

    .line 389
    .local v1, onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 390
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v2, "serverConfig"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 394
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNeedGlobalInitialization(Z)V

    .line 395
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setTopPriority(Z)V

    .line 397
    iget-object v2, p0, Lcom/jingdong/common/utils/GlobalInitialization;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v2, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 398
    return-void
.end method


# virtual methods
.method public addConfigLoadedListener(Lcom/jingdong/common/utils/GlobalInitialization$ConfigLoadedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->configListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 607
    return-void
.end method

.method public initMyActivity()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/MyApplication;->getCurrentMyActivity()Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 115
    iget-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization;->httpGroupSetting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

    iget-object v1, p0, Lcom/jingdong/common/utils/GlobalInitialization;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setMyActivity(Lcom/jingdong/common/frame/IMyActivity;)V

    .line 119
    :cond_0
    return-void
.end method

.method public declared-synchronized networkInitialization(Z)V
    .locals 2
    .parameter "wait"

    .prologue
    .line 165
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/jingdong/common/utils/GlobalInitialization;->networkInitialization(ZZLcom/jingdong/common/utils/GlobalInitialization$GlobalInitializationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized networkInitialization(ZZLcom/jingdong/common/utils/GlobalInitialization$GlobalInitializationListener;)V
    .locals 5
    .parameter "wait"
    .parameter "isOnlyFirst"
    .parameter "listener"

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iput-object p3, p0, Lcom/jingdong/common/utils/GlobalInitialization;->giListener:Lcom/jingdong/common/utils/GlobalInitialization$GlobalInitializationListener;

    .line 182
    new-instance v2, Lcom/jingdong/common/utils/CPAUtils$Processor;

    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/MyApplication;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/common/utils/GlobalInitialization;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-direct {v2, v3, v4, p0}, Lcom/jingdong/common/utils/CPAUtils$Processor;-><init>(Landroid/os/Handler;Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;)V

    iput-object v2, p0, Lcom/jingdong/common/utils/GlobalInitialization;->cpaProcessor:Lcom/jingdong/common/utils/CPAUtils$Processor;

    .line 184
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v1

    .line 189
    .local v1, myApplication:Lcom/jingdong/common/MyApplication;
    iget v2, v1, Lcom/jingdong/common/MyApplication;->networkInitializationState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v2, :pswitch_data_0

    .line 219
    :goto_0
    monitor-exit p0

    return-void

    .line 191
    :pswitch_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/jingdong/common/utils/GlobalInitialization;->networkInitializationStart(Z)V

    .line 192
    iget-boolean v2, p0, Lcom/jingdong/common/utils/GlobalInitialization;->alreadyDevice:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/jingdong/common/utils/GlobalInitialization;->alreadyConfig:Z

    if-eqz v2, :cond_0

    .line 193
    const/4 v2, 0x2

    iput v2, v1, Lcom/jingdong/common/MyApplication;->networkInitializationState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 179
    .end local v1           #myApplication:Lcom/jingdong/common/MyApplication;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 196
    .restart local v1       #myApplication:Lcom/jingdong/common/MyApplication;
    :cond_0
    const/4 v2, 0x1

    :try_start_2
    iput v2, v1, Lcom/jingdong/common/MyApplication;->networkInitializationState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    :pswitch_1
    if-eqz p1, :cond_1

    .line 204
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 212
    :cond_1
    :goto_1
    :try_start_4
    invoke-direct {p0}, Lcom/jingdong/common/utils/GlobalInitialization;->initEndCallBack()V

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 215
    .end local v0           #e:Ljava/lang/InterruptedException;
    :pswitch_2
    invoke-direct {p0}, Lcom/jingdong/common/utils/GlobalInitialization;->initEndCallBack()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public registerDevice(Z)V
    .locals 6
    .parameter "isFirst"

    .prologue
    .line 405
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/jingdong/common/utils/GlobalInitialization;->cpaProcessor:Lcom/jingdong/common/utils/CPAUtils$Processor;

    invoke-virtual {v5}, Lcom/jingdong/common/utils/CPAUtils$Processor;->beforeRegisterDevice()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 464
    :goto_0
    return-void

    .line 413
    :cond_0
    const/4 v3, 0x0

    .line 419
    .local v3, params:Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->getDeviceInfoStr()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #params:Lorg/json/JSONObject;
    .local v4, params:Lorg/json/JSONObject;
    move-object v3, v4

    .line 423
    .end local v4           #params:Lorg/json/JSONObject;
    .restart local v3       #params:Lorg/json/JSONObject;
    :goto_1
    new-instance v2, Lcom/jingdong/common/utils/GlobalInitialization$4;

    invoke-direct {v2, p0}, Lcom/jingdong/common/utils/GlobalInitialization$4;-><init>(Lcom/jingdong/common/utils/GlobalInitialization;)V

    .line 454
    .local v2, onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 455
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 456
    const-string v5, "device"

    invoke-virtual {v1, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 460
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNeedGlobalInitialization(Z)V

    .line 461
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setTopPriority(Z)V

    .line 463
    iget-object v5, p0, Lcom/jingdong/common/utils/GlobalInitialization;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v5, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0

    .line 420
    .end local v1           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    .end local v2           #onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;
    :catch_0
    move-exception v0

    .line 421
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
