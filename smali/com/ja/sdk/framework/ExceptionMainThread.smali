.class public Lcom/ja/sdk/framework/ExceptionMainThread;
.super Ljava/lang/Thread;
.source "ExceptionMainThread.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ExceptionMainThread"

.field private static mainWorkThread:Lcom/ja/sdk/framework/ExceptionMainThread;


# instance fields
.field private isMainWorkThreadObject:Ljava/lang/Boolean;

.field private isMainWorkThreadRun:Ljava/lang/Boolean;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/ja/sdk/framework/ExceptionMainThread;

    invoke-direct {v0}, Lcom/ja/sdk/framework/ExceptionMainThread;-><init>()V

    sput-object v0, Lcom/ja/sdk/framework/ExceptionMainThread;->mainWorkThread:Lcom/ja/sdk/framework/ExceptionMainThread;

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ja/sdk/framework/ExceptionMainThread;->isMainWorkThreadRun:Ljava/lang/Boolean;

    .line 19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ja/sdk/framework/ExceptionMainThread;->isMainWorkThreadObject:Ljava/lang/Boolean;

    .line 20
    return-void
.end method

.method public static getSingleInstance()Lcom/ja/sdk/framework/ExceptionMainThread;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/ja/sdk/framework/ExceptionMainThread;->mainWorkThread:Lcom/ja/sdk/framework/ExceptionMainThread;

    return-object v0
.end method

.method private setMainWorkThreadObject()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ja/sdk/framework/ExceptionMainThread;->isMainWorkThreadObject:Ljava/lang/Boolean;

    .line 43
    return-void
.end method


# virtual methods
.method public declared-synchronized getMainWorkThreadRunFlag()Z
    .locals 1

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ja/sdk/framework/ExceptionMainThread;->isMainWorkThreadRun:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isMainWorkThreadOk()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ja/sdk/framework/ExceptionMainThread;->isMainWorkThreadObject:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 56
    invoke-static {}, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->getSignleInstance()Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;

    move-result-object v1

    iget-object v2, p0, Lcom/ja/sdk/framework/ExceptionMainThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->setDataSendStrategy(Landroid/content/Context;)V

    .line 58
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ja/sdk/framework/ExceptionMainThread;->setMainWorkThreadRunFlag(Ljava/lang/Boolean;)V

    .line 59
    sget-object v2, Lcom/ja/sdk/framework/ExceptionMainThread;->mainWorkThread:Lcom/ja/sdk/framework/ExceptionMainThread;

    monitor-enter v2

    .line 63
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->getSignleInstance()Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;

    move-result-object v1

    iget-object v3, p0, Lcom/ja/sdk/framework/ExceptionMainThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->postTaskToMainThread(Landroid/content/Context;)V

    .line 59
    monitor-exit v2

    .line 71
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 67
    .local v0, illegalmonitorstateexception:Ljava/lang/IllegalMonitorStateException;
    const-string v1, "ExceptionMainThread"

    invoke-static {v1, v0}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 59
    .end local v0           #illegalmonitorstateexception:Ljava/lang/IllegalMonitorStateException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized setMainWorkThreadRunFlag(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/ja/sdk/framework/ExceptionMainThread;->isMainWorkThreadRun:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startMainWorkThread(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ja/sdk/framework/ExceptionMainThread;->isMainWorkThreadOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    iput-object p1, p0, Lcom/ja/sdk/framework/ExceptionMainThread;->mContext:Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Lcom/ja/sdk/framework/ExceptionMainThread;->setMainWorkThreadObject()V

    .line 28
    invoke-virtual {p0}, Lcom/ja/sdk/framework/ExceptionMainThread;->start()V

    goto :goto_0
.end method
