.class public Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;
.super Ljava/lang/Object;
.source "SendPageAccessDataMainThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SendPageAccessDataMainThread"

.field private static mDataSenderThread:Landroid/os/HandlerThread;

.field private static mHandler:Landroid/os/Handler;

.field private static mSendDataMainThread:Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;


# instance fields
.field private isExceptionAnalysis:Ljava/lang/Boolean;

.field private mSendStrategy:Lcom/ja/sdk/framework/SendStrategyEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PageAccessDataSenderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->mDataSenderThread:Landroid/os/HandlerThread;

    .line 25
    new-instance v0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;

    invoke-direct {v0}, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;-><init>()V

    sput-object v0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->mSendDataMainThread:Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;

    .line 16
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->isExceptionAnalysis:Ljava/lang/Boolean;

    .line 29
    sget-object v0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->mDataSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->mDataSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->mHandler:Landroid/os/Handler;

    .line 31
    return-void
.end method

.method static getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getSignleInstance()Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->mSendDataMainThread:Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;

    return-object v0
.end method

.method public static isExceptionAnalysisFlags(Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;)Ljava/lang/Boolean;
    .locals 1
    .parameter "aSendDataMainThread"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->isExceptionAnalysis:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static setExceptionAnalysisFlags(Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "aSendDataMainThread"
    .parameter "flags"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->isExceptionAnalysis:Ljava/lang/Boolean;

    .line 42
    return-void
.end method

.method static setSendStrategyEnum(Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;Lcom/ja/sdk/framework/SendStrategyEnum;)Lcom/ja/sdk/framework/SendStrategyEnum;
    .locals 0
    .parameter "mainThread"
    .parameter "sendstrategyenum"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->mSendStrategy:Lcom/ja/sdk/framework/SendStrategyEnum;

    return-object p1
.end method


# virtual methods
.method public getDataSendStrategy(Landroid/content/Context;)Lcom/ja/sdk/framework/SendStrategyEnum;
    .locals 5
    .parameter "context"

    .prologue
    .line 88
    :try_start_0
    const-string v2, "Ja_Sdk_SEND_STRATEGY"

    invoke-static {p1, v2}, Lcom/ja/sdk/utils/ManifestPackageUtils;->ReadCofigInfoFromManifest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, s1:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    sget-object v2, Lcom/ja/sdk/framework/SendStrategyEnum;->IMMEDIATELY:Lcom/ja/sdk/framework/SendStrategyEnum;

    invoke-virtual {v2}, Lcom/ja/sdk/framework/SendStrategyEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    sget-object v2, Lcom/ja/sdk/framework/SendStrategyEnum;->IMMEDIATELY:Lcom/ja/sdk/framework/SendStrategyEnum;

    iput-object v2, p0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->mSendStrategy:Lcom/ja/sdk/framework/SendStrategyEnum;

    .line 93
    const-string v2, "__360buy_Ja_Sdk_SendPageAccess"

    const-string v3, "sendPageAccessType"

    iget-object v4, p0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->mSendStrategy:Lcom/ja/sdk/framework/SendStrategyEnum;

    invoke-virtual {v4}, Lcom/ja/sdk/framework/SendStrategyEnum;->ordinal()I

    move-result v4

    invoke-static {p1, v2, v3, v4}, Lcom/ja/sdk/utils/PreferenceUtils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v1           #s1:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->mSendStrategy:Lcom/ja/sdk/framework/SendStrategyEnum;

    return-object v2

    .line 96
    :catch_0
    move-exception v0

    .line 98
    .local v0, exception1:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPageAccessSendStrategy()Lcom/ja/sdk/framework/SendStrategyEnum;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->mSendStrategy:Lcom/ja/sdk/framework/SendStrategyEnum;

    return-object v0
.end method

.method public postTaskToMainThread(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 54
    invoke-static {}, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataTask;->getSendPageAccessDataStartThread()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    const-string v0, "SendPageAccessDataMainThread"

    const-string v1, "SendPageAccessDataTask is not busy!!"

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-object v0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataTask;

    invoke-direct {v1, p0, p1}, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataTask;-><init>(Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string v0, "SendPageAccessDataMainThread"

    const-string v1, "SendPageAccessDataTask is busy!!"

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPageAccessSendStrategy(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 69
    :try_start_0
    const-string v2, "Ja_Sdk_SEND_STRATEGY"

    invoke-static {p1, v2}, Lcom/ja/sdk/utils/ManifestPackageUtils;->ReadCofigInfoFromManifest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, s1:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    sget-object v2, Lcom/ja/sdk/framework/SendStrategyEnum;->IMMEDIATELY:Lcom/ja/sdk/framework/SendStrategyEnum;

    invoke-virtual {v2}, Lcom/ja/sdk/framework/SendStrategyEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const-string v2, "__360buy_Ja_Sdk_SendPageAccess"

    const-string v3, "sendPageAccessType"

    iget-object v4, p0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->mSendStrategy:Lcom/ja/sdk/framework/SendStrategyEnum;

    invoke-virtual {v4}, Lcom/ja/sdk/framework/SendStrategyEnum;->ordinal()I

    move-result v4

    invoke-static {p1, v2, v3, v4}, Lcom/ja/sdk/utils/PreferenceUtils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1           #s1:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 80
    .local v0, exception1:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPageAccessSendStrategy(Landroid/content/Context;Lcom/ja/sdk/framework/SendStrategyEnum;)V
    .locals 3
    .parameter "context"
    .parameter "sendstrategyenum"

    .prologue
    .line 117
    sget-object v0, Lcom/ja/sdk/framework/SendStrategyEnum;->IMMEDIATELY:Lcom/ja/sdk/framework/SendStrategyEnum;

    invoke-virtual {p2, v0}, Lcom/ja/sdk/framework/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/ja/sdk/framework/SendStrategyEnum;->IMMEDIATELY:Lcom/ja/sdk/framework/SendStrategyEnum;

    iput-object v0, p0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->mSendStrategy:Lcom/ja/sdk/framework/SendStrategyEnum;

    .line 119
    const-string v0, "__360buy_Ja_Sdk_SendPageAccess"

    const-string v1, "sendPageAccessType"

    iget-object v2, p0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->mSendStrategy:Lcom/ja/sdk/framework/SendStrategyEnum;

    invoke-virtual {v2}, Lcom/ja/sdk/framework/SendStrategyEnum;->ordinal()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/ja/sdk/utils/PreferenceUtils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    :cond_0
    return-void
.end method
