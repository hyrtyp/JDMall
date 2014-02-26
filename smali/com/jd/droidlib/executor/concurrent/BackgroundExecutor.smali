.class public Lcom/jd/droidlib/executor/concurrent/BackgroundExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "BackgroundExecutor.java"


# direct methods
.method public constructor <init>(I)V
    .locals 8
    .parameter "nThreads"

    .prologue
    .line 25
    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 27
    new-instance v7, Lcom/jd/droidlib/executor/concurrent/BackgroundPriorityThreadFactory;

    invoke-direct {v7}, Lcom/jd/droidlib/executor/concurrent/BackgroundPriorityThreadFactory;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 28
    return-void
.end method
