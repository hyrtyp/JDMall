.class Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool$1;
.super Ljava/lang/Object;
.source "HttpGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;->execute(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

.field private final synthetic val$httpRequest:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool$1;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

    iput-object p2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool$1;->val$httpRequest:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 357
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool$1;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

    iget v2, v1, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;->httpCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;->httpCount:I

    .line 359
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool$1;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

    iget v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;->httpCount:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 360
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool$1;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;->onStart()V

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool$1;->val$httpRequest:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->noNeedConnectionHandler()V

    .line 365
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool$1;->val$httpRequest:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-boolean v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->isNeedConnection:Z

    if-eqz v1, :cond_1

    .line 367
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool$1$1;

    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool$1;->val$httpRequest:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    invoke-direct {v0, p0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool$1$1;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool$1;Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    .line 374
    .local v0, taskRunnable:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool$1;->val$httpRequest:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->getHttpSetting()Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isTopPriority()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 375
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 384
    .end local v0           #taskRunnable:Ljava/lang/Runnable;
    :cond_1
    :goto_0
    return-void

    .line 377
    .restart local v0       #taskRunnable:Ljava/lang/Runnable;
    :cond_2
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool$1;->val$httpRequest:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->getHttpSetting()Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getPriority()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_3

    .line 378
    invoke-static {}, Lcom/jingdong/common/utils/thread/PooledThread;->getSecondThreadPool()Lcom/jingdong/common/utils/thread/ThreadPool;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool$1;->val$httpRequest:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->getHttpSetting()Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getPriority()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/jingdong/common/utils/thread/ThreadPool;->offerTask(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 380
    :cond_3
    invoke-static {}, Lcom/jingdong/common/utils/thread/PooledThread;->getThirdThreadPool()Lcom/jingdong/common/utils/thread/ThreadPool;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool$1;->val$httpRequest:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->getHttpSetting()Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getPriority()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/jingdong/common/utils/thread/ThreadPool;->offerTask(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method
