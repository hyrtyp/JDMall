.class public Lcom/ja/sdk/framework/PageAccessMainThread;
.super Ljava/lang/Thread;
.source "PageAccessMainThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PageAccessMainThread"

.field private static mainWorkThread:Lcom/ja/sdk/framework/PageAccessMainThread;


# instance fields
.field private isMainWorkThreadObject:Ljava/lang/Boolean;

.field private isMainWorkThreadRun:Ljava/lang/Boolean;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/ja/sdk/framework/PageAccessMainThread;

    invoke-direct {v0}, Lcom/ja/sdk/framework/PageAccessMainThread;-><init>()V

    sput-object v0, Lcom/ja/sdk/framework/PageAccessMainThread;->mainWorkThread:Lcom/ja/sdk/framework/PageAccessMainThread;

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 17
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ja/sdk/framework/PageAccessMainThread;->isMainWorkThreadRun:Ljava/lang/Boolean;

    .line 18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ja/sdk/framework/PageAccessMainThread;->isMainWorkThreadObject:Ljava/lang/Boolean;

    .line 19
    return-void
.end method

.method public static getSingleInstance()Lcom/ja/sdk/framework/PageAccessMainThread;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/ja/sdk/framework/PageAccessMainThread;->mainWorkThread:Lcom/ja/sdk/framework/PageAccessMainThread;

    return-object v0
.end method

.method private setMainWorkThreadObject()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ja/sdk/framework/PageAccessMainThread;->isMainWorkThreadObject:Ljava/lang/Boolean;

    .line 42
    return-void
.end method


# virtual methods
.method public declared-synchronized getMainWorkThreadRunFlag()Z
    .locals 1

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ja/sdk/framework/PageAccessMainThread;->isMainWorkThreadRun:Ljava/lang/Boolean;

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
    .line 36
    iget-object v0, p0, Lcom/ja/sdk/framework/PageAccessMainThread;->isMainWorkThreadObject:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 55
    invoke-static {}, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->getSignleInstance()Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;

    move-result-object v1

    iget-object v2, p0, Lcom/ja/sdk/framework/PageAccessMainThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->setPageAccessSendStrategy(Landroid/content/Context;)V

    .line 57
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ja/sdk/framework/PageAccessMainThread;->setMainWorkThreadRunFlag(Ljava/lang/Boolean;)V

    .line 58
    sget-object v2, Lcom/ja/sdk/framework/PageAccessMainThread;->mainWorkThread:Lcom/ja/sdk/framework/PageAccessMainThread;

    monitor-enter v2

    .line 62
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->getSignleInstance()Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;

    move-result-object v1

    iget-object v3, p0, Lcom/ja/sdk/framework/PageAccessMainThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->postTaskToMainThread(Landroid/content/Context;)V

    .line 58
    monitor-exit v2

    .line 70
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 66
    .local v0, illegalmonitorstateexception:Ljava/lang/IllegalMonitorStateException;
    const-string v1, "PageAccessMainThread"

    invoke-static {v1, v0}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 58
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
    .line 45
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/ja/sdk/framework/PageAccessMainThread;->isMainWorkThreadRun:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startMainWorkThread(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ja/sdk/framework/PageAccessMainThread;->isMainWorkThreadOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    iput-object p1, p0, Lcom/ja/sdk/framework/PageAccessMainThread;->mContext:Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Lcom/ja/sdk/framework/PageAccessMainThread;->setMainWorkThreadObject()V

    .line 27
    invoke-virtual {p0}, Lcom/ja/sdk/framework/PageAccessMainThread;->start()V

    goto :goto_0
.end method
