.class Lcom/jingdong/common/utils/thread/ThreadPool$1;
.super Ljava/lang/Thread;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/thread/ThreadPool;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/utils/thread/ThreadPool;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/thread/ThreadPool;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/thread/ThreadPool$1;->this$0:Lcom/jingdong/common/utils/thread/ThreadPool;

    .line 46
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 49
    const-string v3, "ThreadPool_init"

    invoke-virtual {p0, v3}, Lcom/jingdong/common/utils/thread/ThreadPool$1;->setName(Ljava/lang/String;)V

    .line 51
    const/16 v3, 0x13

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 59
    :goto_0
    iget-object v3, p0, Lcom/jingdong/common/utils/thread/ThreadPool$1;->this$0:Lcom/jingdong/common/utils/thread/ThreadPool;

    invoke-virtual {v3}, Lcom/jingdong/common/utils/thread/ThreadPool;->getIdleThread()Lcom/jingdong/common/utils/thread/PooledThread;

    move-result-object v1

    .line 60
    .local v1, idleThread:Lcom/jingdong/common/utils/thread/PooledThread;
    iget-object v3, p0, Lcom/jingdong/common/utils/thread/ThreadPool$1;->this$0:Lcom/jingdong/common/utils/thread/ThreadPool;

    #calls: Lcom/jingdong/common/utils/thread/ThreadPool;->pollTasks()Lcom/jingdong/common/utils/IPriority;
    invoke-static {v3}, Lcom/jingdong/common/utils/thread/ThreadPool;->access$0(Lcom/jingdong/common/utils/thread/ThreadPool;)Lcom/jingdong/common/utils/IPriority;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 61
    .local v2, pollTasks:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Runnable;>;"
    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/thread/PooledThread;->putTasks(Ljava/util/Collection;)V

    .line 66
    invoke-virtual {v1}, Lcom/jingdong/common/utils/thread/PooledThread;->startTasks()V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v3, p0, Lcom/jingdong/common/utils/thread/ThreadPool$1;->this$0:Lcom/jingdong/common/utils/thread/ThreadPool;

    iget-object v4, v3, Lcom/jingdong/common/utils/thread/ThreadPool;->queue:Ljava/util/PriorityQueue;

    monitor-enter v4

    .line 73
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/common/utils/thread/ThreadPool$1;->this$0:Lcom/jingdong/common/utils/thread/ThreadPool;

    iget-object v3, v3, Lcom/jingdong/common/utils/thread/ThreadPool;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_1
    :try_start_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
