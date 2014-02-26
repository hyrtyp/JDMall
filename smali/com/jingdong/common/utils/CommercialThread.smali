.class public Lcom/jingdong/common/utils/CommercialThread;
.super Ljava/lang/Thread;
.source "CommercialThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/utils/CommercialThread$CommercialThreadListener;
    }
.end annotation


# instance fields
.field public isRunner:Z

.field private listner:Lcom/jingdong/common/utils/CommercialThread$CommercialThreadListener;

.field public sleepTime:J

.field public stop:Z


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/CommercialThread$CommercialThreadListener;)V
    .locals 2
    .parameter "listner"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 11
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/jingdong/common/utils/CommercialThread;->sleepTime:J

    .line 16
    iput-object p1, p0, Lcom/jingdong/common/utils/CommercialThread;->listner:Lcom/jingdong/common/utils/CommercialThread$CommercialThreadListener;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/common/utils/CommercialThread;->stop:Z

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/utils/CommercialThread;->isRunner:Z

    .line 19
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 23
    monitor-enter p0

    .line 25
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/jingdong/common/utils/CommercialThread;->stop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 23
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    return-void

    .line 26
    :cond_0
    :try_start_2
    iget-boolean v0, p0, Lcom/jingdong/common/utils/CommercialThread;->isRunner:Z

    if-nez v0, :cond_1

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/utils/CommercialThread;->listner:Lcom/jingdong/common/utils/CommercialThread$CommercialThreadListener;

    invoke-interface {v0}, Lcom/jingdong/common/utils/CommercialThread$CommercialThreadListener;->doRun()V

    .line 30
    iget-wide v0, p0, Lcom/jingdong/common/utils/CommercialThread;->sleepTime:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    goto :goto_1

    .line 23
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
