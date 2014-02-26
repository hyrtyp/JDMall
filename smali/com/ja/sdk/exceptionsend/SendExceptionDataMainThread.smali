.class public Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;
.super Ljava/lang/Object;
.source "SendExceptionDataMainThread.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SendExceptionDataMainThread"

.field private static mDataSenderThread:Landroid/os/HandlerThread;

.field private static mHandler:Landroid/os/Handler;

.field private static mSendDataMainThread:Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;

.field private static mSendStrategy:Lcom/ja/sdk/framework/SendStrategyEnum;


# instance fields
.field private isExceptionAnalysis:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExceptionDataSenderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->mDataSenderThread:Landroid/os/HandlerThread;

    .line 26
    new-instance v0, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;

    invoke-direct {v0}, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;-><init>()V

    sput-object v0, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->mSendDataMainThread:Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;

    .line 18
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->isExceptionAnalysis:Ljava/lang/Boolean;

    .line 30
    sget-object v0, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->mDataSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 31
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->mDataSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->mHandler:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method static getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getSignleInstance()Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->mSendDataMainThread:Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;

    return-object v0
.end method

.method public static isExceptionAnalysisFlags(Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;)Ljava/lang/Boolean;
    .locals 1
    .parameter "aSendDataMainThread"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->isExceptionAnalysis:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static setExceptionAnalysisFlags(Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "aSendDataMainThread"
    .parameter "flags"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->isExceptionAnalysis:Ljava/lang/Boolean;

    .line 42
    return-void
.end method


# virtual methods
.method public getUncaughtExceptionSendStrategy()Lcom/ja/sdk/framework/SendStrategyEnum;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->mSendStrategy:Lcom/ja/sdk/framework/SendStrategyEnum;

    return-object v0
.end method

.method public declared-synchronized postTaskToMainThread(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    const-string v0, "SendExceptionDataMainThread"

    const-string v1, "postTaskToMainThread()"

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {}, Lcom/ja/sdk/exceptionsend/SendExceptionDataTask;->getSendExceptionDataStartThread()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const-string v0, "SendExceptionDataMainThread"

    const-string v1, "new SendExceptionDataTask(this, context)!!"

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget-object v0, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ja/sdk/exceptionsend/SendExceptionDataTask;

    invoke-direct {v1, p0, p1}, Lcom/ja/sdk/exceptionsend/SendExceptionDataTask;-><init>(Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :goto_0
    monitor-exit p0

    return-void

    .line 60
    :cond_0
    :try_start_1
    const-string v0, "SendExceptionDataMainThread"

    const-string v1, "SendExceptionDataTask is busy!!!"

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDataSendStrategy(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 69
    :try_start_0
    const-string v4, "Ja_Sdk_EXCEPTION_LOG"

    invoke-static {p1, v4}, Lcom/ja/sdk/utils/ManifestPackageUtils;->ReadCofigInfoFromManifest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, s:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 71
    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 73
    invoke-static {}, Lcom/ja/sdk/framework/ExceptionDataHandle;->getSingleInstance()Lcom/ja/sdk/framework/ExceptionDataHandle;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/ja/sdk/framework/ExceptionDataHandle;->openExceptonDataAnalysis(Landroid/content/Context;)V

    .line 74
    const-string v4, "__360buy_Ja_Sdk_SendException"

    const-string v5, "exceptionanalysisflag"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p1, v4, v5, v6}, Lcom/ja/sdk/utils/PreferenceUtils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    const-string v4, "Ja_Sdk_SEND_STRATEGY"

    invoke-static {p1, v4}, Lcom/ja/sdk/utils/ManifestPackageUtils;->ReadCofigInfoFromManifest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, s1:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 87
    sget-object v4, Lcom/ja/sdk/framework/SendStrategyEnum;->IMMEDIATELY:Lcom/ja/sdk/framework/SendStrategyEnum;

    invoke-virtual {v4}, Lcom/ja/sdk/framework/SendStrategyEnum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    const-string v4, "__360buy_Ja_Sdk_SendException"

    const-string v5, "sendUncaughtExceptionType"

    sget-object v6, Lcom/ja/sdk/framework/SendStrategyEnum;->IMMEDIATELY:Lcom/ja/sdk/framework/SendStrategyEnum;

    invoke-virtual {v6}, Lcom/ja/sdk/framework/SendStrategyEnum;->ordinal()I

    move-result v6

    invoke-static {p1, v4, v5, v6}, Lcom/ja/sdk/utils/PreferenceUtils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    .end local v3           #s1:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 76
    .restart local v2       #s:Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    const-string v4, "__360buy_Ja_Sdk_SendException"

    const-string v5, "exceptionanalysisflag"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p1, v4, v5, v6}, Lcom/ja/sdk/utils/PreferenceUtils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 79
    .end local v2           #s:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 81
    .local v0, exception:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 92
    .end local v0           #exception:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 94
    .local v1, exception1:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setUncaughtExceptionSendStrategy(Landroid/content/Context;Lcom/ja/sdk/framework/SendStrategyEnum;)V
    .locals 3
    .parameter "context"
    .parameter "sendstrategyenum"

    .prologue
    .line 109
    sget-object v0, Lcom/ja/sdk/framework/SendStrategyEnum;->IMMEDIATELY:Lcom/ja/sdk/framework/SendStrategyEnum;

    invoke-virtual {p2, v0}, Lcom/ja/sdk/framework/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/ja/sdk/framework/SendStrategyEnum;->IMMEDIATELY:Lcom/ja/sdk/framework/SendStrategyEnum;

    sput-object v0, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->mSendStrategy:Lcom/ja/sdk/framework/SendStrategyEnum;

    .line 111
    const-string v0, "__360buy_Ja_Sdk_SendException"

    const-string v1, "sendUncaughtExceptionType"

    sget-object v2, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->mSendStrategy:Lcom/ja/sdk/framework/SendStrategyEnum;

    invoke-virtual {v2}, Lcom/ja/sdk/framework/SendStrategyEnum;->ordinal()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/ja/sdk/utils/PreferenceUtils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 113
    :cond_0
    return-void
.end method

.method public setUncaughtExcetpionFlag(ZLandroid/content/Context;)V
    .locals 3
    .parameter "flag"
    .parameter "context"

    .prologue
    .line 101
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->isExceptionAnalysis:Ljava/lang/Boolean;

    .line 102
    const-string v0, "__360buy_Ja_Sdk_SendException"

    const-string v1, "exceptionanalysisflag"

    iget-object v2, p0, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->isExceptionAnalysis:Ljava/lang/Boolean;

    invoke-static {p2, v0, v1, v2}, Lcom/ja/sdk/utils/PreferenceUtils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 103
    const-string v0, "SendExceptionDataMainThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APP_ANALYSIS_EXCEPTION is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->isExceptionAnalysis:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method
