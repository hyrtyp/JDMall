.class public Lcom/jingdong/common/utils/thread/PooledThread;
.super Ljava/lang/Thread;
.source "PooledThread.java"


# static fields
.field private static sFirstPool:Lcom/jingdong/common/utils/thread/ThreadPool;

.field private static sSecondPool:Lcom/jingdong/common/utils/thread/ThreadPool;

.field private static sThirdPool:Lcom/jingdong/common/utils/thread/ThreadPool;


# instance fields
.field protected killed:Z

.field protected paused:Z

.field private pool:Lcom/jingdong/common/utils/thread/ThreadPool;

.field protected running:Z

.field protected stopped:Z

.field protected tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/thread/ThreadPool;)V
    .locals 2
    .parameter "pool"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/thread/PooledThread;->tasks:Ljava/util/List;

    .line 59
    iput-boolean v1, p0, Lcom/jingdong/common/utils/thread/PooledThread;->running:Z

    .line 60
    iput-boolean v1, p0, Lcom/jingdong/common/utils/thread/PooledThread;->stopped:Z

    .line 61
    iput-boolean v1, p0, Lcom/jingdong/common/utils/thread/PooledThread;->paused:Z

    .line 62
    iput-boolean v1, p0, Lcom/jingdong/common/utils/thread/PooledThread;->killed:Z

    .line 66
    iput-object p1, p0, Lcom/jingdong/common/utils/thread/PooledThread;->pool:Lcom/jingdong/common/utils/thread/ThreadPool;

    .line 67
    return-void
.end method

.method public static declared-synchronized getFirstThreadPool()Lcom/jingdong/common/utils/thread/ThreadPool;
    .locals 4

    .prologue
    .line 35
    const-class v1, Lcom/jingdong/common/utils/thread/PooledThread;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jingdong/common/utils/thread/PooledThread;->sFirstPool:Lcom/jingdong/common/utils/thread/ThreadPool;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/jingdong/common/utils/thread/ThreadPool;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Lcom/jingdong/common/utils/thread/ThreadPool;-><init>(II)V

    sput-object v0, Lcom/jingdong/common/utils/thread/PooledThread;->sFirstPool:Lcom/jingdong/common/utils/thread/ThreadPool;

    .line 37
    sget-object v0, Lcom/jingdong/common/utils/thread/PooledThread;->sFirstPool:Lcom/jingdong/common/utils/thread/ThreadPool;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/thread/ThreadPool;->init()V

    .line 39
    :cond_0
    sget-object v0, Lcom/jingdong/common/utils/thread/PooledThread;->sFirstPool:Lcom/jingdong/common/utils/thread/ThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getSecondThreadPool()Lcom/jingdong/common/utils/thread/ThreadPool;
    .locals 4

    .prologue
    .line 43
    const-class v1, Lcom/jingdong/common/utils/thread/PooledThread;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jingdong/common/utils/thread/PooledThread;->sSecondPool:Lcom/jingdong/common/utils/thread/ThreadPool;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/jingdong/common/utils/thread/ThreadPool;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Lcom/jingdong/common/utils/thread/ThreadPool;-><init>(II)V

    sput-object v0, Lcom/jingdong/common/utils/thread/PooledThread;->sSecondPool:Lcom/jingdong/common/utils/thread/ThreadPool;

    .line 45
    sget-object v0, Lcom/jingdong/common/utils/thread/PooledThread;->sSecondPool:Lcom/jingdong/common/utils/thread/ThreadPool;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/thread/ThreadPool;->init()V

    .line 47
    :cond_0
    sget-object v0, Lcom/jingdong/common/utils/thread/PooledThread;->sSecondPool:Lcom/jingdong/common/utils/thread/ThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getThirdThreadPool()Lcom/jingdong/common/utils/thread/ThreadPool;
    .locals 4

    .prologue
    .line 51
    const-class v1, Lcom/jingdong/common/utils/thread/PooledThread;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jingdong/common/utils/thread/PooledThread;->sThirdPool:Lcom/jingdong/common/utils/thread/ThreadPool;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/jingdong/common/utils/thread/ThreadPool;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Lcom/jingdong/common/utils/thread/ThreadPool;-><init>(II)V

    sput-object v0, Lcom/jingdong/common/utils/thread/PooledThread;->sThirdPool:Lcom/jingdong/common/utils/thread/ThreadPool;

    .line 53
    sget-object v0, Lcom/jingdong/common/utils/thread/PooledThread;->sThirdPool:Lcom/jingdong/common/utils/thread/ThreadPool;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/thread/ThreadPool;->init()V

    .line 55
    :cond_0
    sget-object v0, Lcom/jingdong/common/utils/thread/PooledThread;->sThirdPool:Lcom/jingdong/common/utils/thread/ThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/jingdong/common/utils/thread/PooledThread;->running:Z

    return v0
.end method

.method public kill()V
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/jingdong/common/utils/thread/PooledThread;->running:Z

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/jingdong/common/utils/thread/PooledThread;->interrupt()V

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/utils/thread/PooledThread;->killed:Z

    goto :goto_0
.end method

.method public killSync()V
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/jingdong/common/utils/thread/PooledThread;->kill()V

    .line 136
    :goto_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/thread/PooledThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    return-void

    .line 138
    :cond_0
    const-wide/16 v0, 0x5

    :try_start_0
    invoke-static {v0, v1}, Lcom/jingdong/common/utils/thread/PooledThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public pauseTasks()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/utils/thread/PooledThread;->paused:Z

    .line 112
    return-void
.end method

.method public pauseTasksSync()V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/jingdong/common/utils/thread/PooledThread;->pauseTasks()V

    .line 117
    :goto_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/thread/PooledThread;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    return-void

    .line 119
    :cond_0
    const-wide/16 v0, 0x5

    :try_start_0
    invoke-static {v0, v1}, Lcom/jingdong/common/utils/thread/PooledThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected popTask()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jingdong/common/utils/thread/PooledThread;->tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/jingdong/common/utils/thread/PooledThread;->tasks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 86
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putTask(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jingdong/common/utils/thread/PooledThread;->tasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public putTasks(Ljava/util/Collection;)V
    .locals 1
    .parameter "tasks"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/jingdong/common/utils/thread/PooledThread;->tasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    return-void
.end method

.method public declared-synchronized run()V
    .locals 3

    .prologue
    .line 151
    monitor-enter p0

    const/16 v2, 0x13

    :try_start_0
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lcom/jingdong/common/utils/thread/PooledThread;->running:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jingdong/common/utils/thread/PooledThread;->tasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/jingdong/common/utils/thread/PooledThread;->pool:Lcom/jingdong/common/utils/thread/ThreadPool;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/thread/ThreadPool;->notifyForIdleThread()V

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 178
    :goto_0
    iget-boolean v2, p0, Lcom/jingdong/common/utils/thread/PooledThread;->killed:Z

    if-eqz v2, :cond_0

    .line 179
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jingdong/common/utils/thread/PooledThread;->killed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    :goto_1
    monitor-exit p0

    return-void

    .line 160
    .local v1, task:Ljava/lang/Runnable;
    :cond_2
    :try_start_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 161
    iget-boolean v2, p0, Lcom/jingdong/common/utils/thread/PooledThread;->stopped:Z

    if-eqz v2, :cond_4

    .line 162
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jingdong/common/utils/thread/PooledThread;->stopped:Z

    .line 163
    iget-object v2, p0, Lcom/jingdong/common/utils/thread/PooledThread;->tasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 164
    iget-object v2, p0, Lcom/jingdong/common/utils/thread/PooledThread;->tasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 175
    :cond_3
    :goto_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jingdong/common/utils/thread/PooledThread;->running:Z

    goto :goto_0

    .line 183
    .end local v1           #task:Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/lang/InterruptedException;
    goto :goto_1

    .line 168
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #task:Ljava/lang/Runnable;
    :cond_4
    iget-boolean v2, p0, Lcom/jingdong/common/utils/thread/PooledThread;->paused:Z

    if-eqz v2, :cond_5

    .line 169
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jingdong/common/utils/thread/PooledThread;->paused:Z

    .line 170
    iget-object v2, p0, Lcom/jingdong/common/utils/thread/PooledThread;->tasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 159
    .end local v1           #task:Ljava/lang/Runnable;
    :cond_5
    invoke-virtual {p0}, Lcom/jingdong/common/utils/thread/PooledThread;->popTask()Ljava/lang/Runnable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .restart local v1       #task:Ljava/lang/Runnable;
    if-nez v1, :cond_2

    goto :goto_2

    .line 151
    .end local v1           #task:Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized startTasks()V
    .locals 1

    .prologue
    .line 146
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/jingdong/common/utils/thread/PooledThread;->running:Z

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopTasks()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/utils/thread/PooledThread;->stopped:Z

    .line 96
    return-void
.end method

.method public stopTasksSync()V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/jingdong/common/utils/thread/PooledThread;->stopTasks()V

    .line 101
    :goto_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/thread/PooledThread;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    return-void

    .line 103
    :cond_0
    const-wide/16 v0, 0x5

    :try_start_0
    invoke-static {v0, v1}, Lcom/jingdong/common/utils/thread/PooledThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    goto :goto_0
.end method
