.class public Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;
.super Lcom/jingdong/common/utils/HttpGroup;
.source "HttpGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/HttpGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpGroupaAsynPool"
.end annotation


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;)V
    .locals 0
    .parameter "setting"

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/jingdong/common/utils/HttpGroup;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;)V

    .line 348
    return-void
.end method


# virtual methods
.method public execute(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    .locals 4
    .parameter "httpRequest"

    .prologue
    .line 354
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool$1;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool$1;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    .line 386
    .local v0, runnable:Ljava/lang/Runnable;
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->getHttpSetting()Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isTopPriority()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 388
    .local v1, td:Ljava/lang/Thread;
    const-string v2, "HttpGroup_isTopPriority"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 393
    .end local v1           #td:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/thread/PooledThread;->getFirstThreadPool()Lcom/jingdong/common/utils/thread/ThreadPool;

    move-result-object v2

    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->getHttpSetting()Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getPriority()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/jingdong/common/utils/thread/ThreadPool;->offerTask(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method
