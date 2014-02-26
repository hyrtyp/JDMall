.class public Lcom/ja/sdk/pagevisitsend/SendPageAccessDataTask;
.super Ljava/lang/Object;
.source "SendPageAccessDataTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "SendPageAccessDataTask"

.field private static isSendPageAccessDataTaskRun:Ljava/lang/Boolean;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mSendDataMainThread:Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataTask;->isSendPageAccessDataTaskRun:Ljava/lang/Boolean;

    .line 8
    return-void
.end method

.method constructor <init>(Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;Landroid/content/Context;)V
    .locals 2
    .parameter "aSendDataMainThread"
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataTask;->mSendDataMainThread:Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;

    .line 19
    iput-object p2, p0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataTask;->mContext:Landroid/content/Context;

    .line 20
    const-string v0, "SendPageAccessDataTask"

    const-string v1, "SendPageAccessDataTask constructor!!!!"

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method

.method public static getSendPageAccessDataStartThread()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataTask;->isSendPageAccessDataTaskRun:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static setSendPageAccessDataStaskThread(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "flags"

    .prologue
    .line 24
    const-string v0, "SendPageAccessDataTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSendPageAccessDataStaskThread(): ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    sput-object p0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataTask;->isSendPageAccessDataTaskRun:Ljava/lang/Boolean;

    .line 26
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 32
    const-string v0, "SendPageAccessDataTask"

    const-string v1, "SendPageAccessDataTask,  run() start()!!!!"

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataTask;->setSendPageAccessDataStaskThread(Ljava/lang/Boolean;)V

    .line 34
    monitor-enter p0

    .line 35
    :try_start_0
    invoke-static {}, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataStart;->getSendPageAccessDataStartThread()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataStart;

    iget-object v2, p0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataTask;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataStart;-><init>(Landroid/content/Context;Lcom/ja/sdk/pagevisitsend/SendPageAccessDataTask;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    :goto_0
    const-string v0, "SendPageAccessDataTask"

    const-string v1, "SendPageAccessDataTask,  run() end()!!!!"

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    monitor-exit p0

    .line 42
    return-void

    .line 39
    :cond_0
    const-string v0, "SendPageAccessDataTask"

    const-string v1, "SendPageAccessDataStart thread is busy!!!!"

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
