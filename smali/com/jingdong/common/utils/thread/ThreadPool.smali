.class public Lcom/jingdong/common/utils/thread/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "ThreadPool"


# instance fields
.field protected hasIdleThread:Z

.field protected initPoolSize:I

.field protected initialized:Z

.field protected maxPoolSize:I

.field protected queue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/jingdong/common/utils/IPriority;",
            ">;"
        }
    .end annotation
.end field

.field protected threads:Ljava/util/Vector;


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .parameter "maxPoolSize"
    .parameter "initPoolSize"

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/thread/ThreadPool;->threads:Ljava/util/Vector;

    .line 25
    iput-boolean v1, p0, Lcom/jingdong/common/utils/thread/ThreadPool;->initialized:Z

    .line 26
    iput-boolean v1, p0, Lcom/jingdong/common/utils/thread/ThreadPool;->hasIdleThread:Z

    .line 27
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/thread/ThreadPool;->queue:Ljava/util/PriorityQueue;

    .line 30
    iput p1, p0, Lcom/jingdong/common/utils/thread/ThreadPool;->maxPoolSize:I

    .line 31
    iput p2, p0, Lcom/jingdong/common/utils/thread/ThreadPool;->initPoolSize:I

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/utils/thread/ThreadPool;)Lcom/jingdong/common/utils/IPriority;
    .locals 1
    .parameter

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/jingdong/common/utils/thread/ThreadPool;->pollTasks()Lcom/jingdong/common/utils/IPriority;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized pollTasks()Lcom/jingdong/common/utils/IPriority;
    .locals 1

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jingdong/common/utils/thread/ThreadPool;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/utils/IPriority;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getIdleThread()Lcom/jingdong/common/utils/thread/PooledThread;
    .locals 5

    .prologue
    .line 145
    :cond_0
    iget-object v3, p0, Lcom/jingdong/common/utils/thread/ThreadPool;->threads:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, itr:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/jingdong/common/utils/thread/ThreadPool;->getPoolSize()I

    move-result v3

    iget v4, p0, Lcom/jingdong/common/utils/thread/ThreadPool;->maxPoolSize:I

    if-ge v3, v4, :cond_3

    .line 153
    new-instance v2, Lcom/jingdong/common/utils/thread/PooledThread;

    invoke-direct {v2, p0}, Lcom/jingdong/common/utils/thread/PooledThread;-><init>(Lcom/jingdong/common/utils/thread/ThreadPool;)V

    .line 154
    .local v2, thread:Lcom/jingdong/common/utils/thread/PooledThread;
    invoke-virtual {v2}, Lcom/jingdong/common/utils/thread/PooledThread;->start()V

    .line 155
    iget-object v3, p0, Lcom/jingdong/common/utils/thread/ThreadPool;->threads:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 161
    .end local v2           #thread:Lcom/jingdong/common/utils/thread/PooledThread;
    :goto_0
    return-object v1

    .line 146
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/utils/thread/PooledThread;

    .line 147
    .local v1, th:Lcom/jingdong/common/utils/thread/PooledThread;
    invoke-virtual {v1}, Lcom/jingdong/common/utils/thread/PooledThread;->isRunning()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 160
    .end local v1           #th:Lcom/jingdong/common/utils/thread/PooledThread;
    :cond_3
    invoke-virtual {p0}, Lcom/jingdong/common/utils/thread/ThreadPool;->waitForIdleThread()Z

    move-result v3

    if-nez v3, :cond_0

    .line 161
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPoolSize()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/jingdong/common/utils/thread/ThreadPool;->threads:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 35
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jingdong/common/utils/thread/ThreadPool;->initialized:Z

    .line 36
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/jingdong/common/utils/thread/ThreadPool;->initPoolSize:I

    if-lt v0, v2, :cond_0

    .line 46
    new-instance v2, Lcom/jingdong/common/utils/thread/ThreadPool$1;

    invoke-direct {v2, p0}, Lcom/jingdong/common/utils/thread/ThreadPool$1;-><init>(Lcom/jingdong/common/utils/thread/ThreadPool;)V

    .line 84
    invoke-virtual {v2}, Lcom/jingdong/common/utils/thread/ThreadPool$1;->start()V

    .line 85
    return-void

    .line 37
    :cond_0
    new-instance v1, Lcom/jingdong/common/utils/thread/PooledThread;

    invoke-direct {v1, p0}, Lcom/jingdong/common/utils/thread/PooledThread;-><init>(Lcom/jingdong/common/utils/thread/ThreadPool;)V

    .line 38
    .local v1, thread:Lcom/jingdong/common/utils/thread/PooledThread;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ThreadPool_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/thread/PooledThread;->setName(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1}, Lcom/jingdong/common/utils/thread/PooledThread;->start()V

    .line 41
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/thread/PooledThread;->setPriority(I)V

    .line 42
    iget-object v2, p0, Lcom/jingdong/common/utils/thread/ThreadPool;->threads:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected declared-synchronized notifyForIdleThread()V
    .locals 1

    .prologue
    .line 125
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/jingdong/common/utils/thread/ThreadPool;->hasIdleThread:Z

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized offerTask(Ljava/lang/Runnable;I)V
    .locals 2
    .parameter "runnable"
    .parameter "priority"

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/jingdong/common/utils/PriorityCollection;

    invoke-direct {v0, p2}, Lcom/jingdong/common/utils/PriorityCollection;-><init>(I)V

    .line 168
    .local v0, list:Lcom/jingdong/common/utils/PriorityCollection;,"Lcom/jingdong/common/utils/PriorityCollection<Ljava/lang/Runnable;>;"
    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/PriorityCollection;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/thread/ThreadPool;->offerTasks(Lcom/jingdong/common/utils/IPriority;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    .line 167
    .end local v0           #list:Lcom/jingdong/common/utils/PriorityCollection;,"Lcom/jingdong/common/utils/PriorityCollection<Ljava/lang/Runnable;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized offerTasks(Lcom/jingdong/common/utils/IPriority;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jingdong/common/utils/thread/ThreadPool;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 174
    iget-object v1, p0, Lcom/jingdong/common/utils/thread/ThreadPool;->queue:Ljava/util/PriorityQueue;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 175
    :try_start_1
    iget-object v0, p0, Lcom/jingdong/common/utils/thread/ThreadPool;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 174
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 173
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaxPoolSize(I)V
    .locals 1
    .parameter "maxPoolSize"

    .prologue
    .line 89
    iput p1, p0, Lcom/jingdong/common/utils/thread/ThreadPool;->maxPoolSize:I

    .line 90
    invoke-virtual {p0}, Lcom/jingdong/common/utils/thread/ThreadPool;->getPoolSize()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Lcom/jingdong/common/utils/thread/ThreadPool;->setPoolSize(I)V

    .line 92
    :cond_0
    return-void
.end method

.method public setPoolSize(I)V
    .locals 5
    .parameter "size"

    .prologue
    .line 100
    iget-boolean v3, p0, Lcom/jingdong/common/utils/thread/ThreadPool;->initialized:Z

    if-nez v3, :cond_1

    .line 101
    iput p1, p0, Lcom/jingdong/common/utils/thread/ThreadPool;->initPoolSize:I

    .line 117
    :cond_0
    return-void

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/thread/ThreadPool;->getPoolSize()I

    move-result v3

    if-le p1, v3, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/jingdong/common/utils/thread/ThreadPool;->getPoolSize()I

    move-result v0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    iget v3, p0, Lcom/jingdong/common/utils/thread/ThreadPool;->maxPoolSize:I

    if-ge v0, v3, :cond_0

    .line 105
    new-instance v2, Lcom/jingdong/common/utils/thread/PooledThread;

    invoke-direct {v2, p0}, Lcom/jingdong/common/utils/thread/PooledThread;-><init>(Lcom/jingdong/common/utils/thread/ThreadPool;)V

    .line 106
    .local v2, thread:Lcom/jingdong/common/utils/thread/PooledThread;
    invoke-virtual {v2}, Lcom/jingdong/common/utils/thread/PooledThread;->start()V

    .line 107
    iget-object v3, p0, Lcom/jingdong/common/utils/thread/ThreadPool;->threads:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .end local v0           #i:I
    .end local v2           #thread:Lcom/jingdong/common/utils/thread/PooledThread;
    :cond_2
    invoke-virtual {p0}, Lcom/jingdong/common/utils/thread/ThreadPool;->getPoolSize()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 110
    :goto_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/thread/ThreadPool;->getPoolSize()I

    move-result v3

    if-le v3, p1, :cond_0

    .line 111
    iget-object v3, p0, Lcom/jingdong/common/utils/thread/ThreadPool;->threads:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/utils/thread/PooledThread;

    .line 112
    .local v1, th:Lcom/jingdong/common/utils/thread/PooledThread;
    invoke-virtual {v1}, Lcom/jingdong/common/utils/thread/PooledThread;->kill()V

    goto :goto_1
.end method

.method protected declared-synchronized waitForIdleThread()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 130
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/jingdong/common/utils/thread/ThreadPool;->hasIdleThread:Z

    .line 131
    :goto_0
    iget-boolean v2, p0, Lcom/jingdong/common/utils/thread/ThreadPool;->hasIdleThread:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/jingdong/common/utils/thread/ThreadPool;->getPoolSize()I

    move-result v2

    iget v3, p0, Lcom/jingdong/common/utils/thread/ThreadPool;->maxPoolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v2, v3, :cond_1

    .line 139
    :cond_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit p0

    return v1

    .line 133
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/InterruptedException;
    goto :goto_1

    .line 130
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
