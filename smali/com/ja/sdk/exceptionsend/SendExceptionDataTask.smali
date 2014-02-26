.class public Lcom/ja/sdk/exceptionsend/SendExceptionDataTask;
.super Ljava/lang/Object;
.source "SendExceptionDataTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "SendExceptionDataTask"

.field private static isSendExceptionDataTaskRun:Ljava/lang/Boolean;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mSendDataMainThread:Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ja/sdk/exceptionsend/SendExceptionDataTask;->isSendExceptionDataTaskRun:Ljava/lang/Boolean;

    .line 12
    return-void
.end method

.method constructor <init>(Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;Landroid/content/Context;)V
    .locals 2
    .parameter "aSendDataMainThread"
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ja/sdk/exceptionsend/SendExceptionDataTask;->mSendDataMainThread:Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;

    .line 23
    iput-object p2, p0, Lcom/ja/sdk/exceptionsend/SendExceptionDataTask;->mContext:Landroid/content/Context;

    .line 24
    const-string v0, "SendExceptionDataTask"

    const-string v1, " SendExceptionDataTask constructor!!"

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void
.end method

.method public static getSendExceptionDataStartThread()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/ja/sdk/exceptionsend/SendExceptionDataTask;->isSendExceptionDataTaskRun:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static setSendExceptionDataStaskThread(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "flags"

    .prologue
    .line 28
    const-string v0, "SendExceptionDataTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " setSendExceptionDataStaskThread()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sput-object p0, Lcom/ja/sdk/exceptionsend/SendExceptionDataTask;->isSendExceptionDataTaskRun:Ljava/lang/Boolean;

    .line 30
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 36
    const-string v0, "SendExceptionDataTask"

    const-string v1, " SendExceptionDataTask  start run()!!"

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    monitor-enter p0

    .line 38
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/ja/sdk/exceptionsend/SendExceptionDataTask;->setSendExceptionDataStaskThread(Ljava/lang/Boolean;)V

    .line 40
    invoke-static {}, Lcom/ja/sdk/exceptionsend/SendExceptionDataStart;->getSendExceptionDataStartThread()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    const-string v0, "SendExceptionDataTask"

    const-string v1, " new SendExceptionDataStart(this), 5* 100"

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {}, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ja/sdk/exceptionsend/SendExceptionDataStart;

    invoke-direct {v1, p0}, Lcom/ja/sdk/exceptionsend/SendExceptionDataStart;-><init>(Lcom/ja/sdk/exceptionsend/SendExceptionDataTask;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    :goto_0
    const-string v0, "SendExceptionDataTask"

    const-string v1, " SendExceptionDataTask run() end!!"

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    monitor-exit p0

    .line 48
    return-void

    .line 44
    :cond_0
    const-string v0, "SendExceptionDataTask"

    const-string v1, "SendExceptionDataStart thread is busy!!!!"

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
