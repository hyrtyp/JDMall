.class public abstract Lcom/jingdong/common/utils/MyCountdownTimer;
.super Ljava/lang/Object;
.source "MyCountdownTimer.java"


# static fields
.field private static final MSG:I = 0x1


# instance fields
.field private mCountdownInterval:J

.field private mHandler:Landroid/os/Handler;

.field private mMillisInFuture:J

.field private mStopTimeInFuture:J

.field private what:I


# direct methods
.method public constructor <init>(JJI)V
    .locals 1
    .parameter "millisInFuture"
    .parameter "countDownInterval"
    .parameter "what"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/jingdong/common/utils/MyCountdownTimer$1;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/MyCountdownTimer$1;-><init>(Lcom/jingdong/common/utils/MyCountdownTimer;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/MyCountdownTimer;->mHandler:Landroid/os/Handler;

    .line 51
    iput-wide p1, p0, Lcom/jingdong/common/utils/MyCountdownTimer;->mMillisInFuture:J

    .line 52
    iput-wide p3, p0, Lcom/jingdong/common/utils/MyCountdownTimer;->mCountdownInterval:J

    .line 53
    iput p5, p0, Lcom/jingdong/common/utils/MyCountdownTimer;->what:I

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/utils/MyCountdownTimer;)J
    .locals 2
    .parameter

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/jingdong/common/utils/MyCountdownTimer;->mStopTimeInFuture:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/jingdong/common/utils/MyCountdownTimer;)J
    .locals 2
    .parameter

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/jingdong/common/utils/MyCountdownTimer;->mCountdownInterval:J

    return-wide v0
.end method


# virtual methods
.method public final cancel(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jingdong/common/utils/MyCountdownTimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 71
    return-void
.end method

.method public abstract onFinish(I)V
.end method

.method public abstract onTick(JI)V
.end method

.method public final declared-synchronized reset(JJI)V
    .locals 1
    .parameter "millisInFuture"
    .parameter "countDownInterval"
    .parameter "what"

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/jingdong/common/utils/MyCountdownTimer;->mMillisInFuture:J

    .line 61
    iput-wide p3, p0, Lcom/jingdong/common/utils/MyCountdownTimer;->mCountdownInterval:J

    .line 62
    iput p5, p0, Lcom/jingdong/common/utils/MyCountdownTimer;->what:I

    .line 63
    invoke-virtual {p0}, Lcom/jingdong/common/utils/MyCountdownTimer;->start()Lcom/jingdong/common/utils/MyCountdownTimer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized start()Lcom/jingdong/common/utils/MyCountdownTimer;
    .locals 5

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Lcom/jingdong/common/utils/MyCountdownTimer;->mMillisInFuture:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 78
    iget v1, p0, Lcom/jingdong/common/utils/MyCountdownTimer;->what:I

    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/MyCountdownTimer;->onFinish(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    .line 83
    .end local p0
    .local v0, this:Lcom/jingdong/common/utils/MyCountdownTimer;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 81
    .end local v0           #this:Lcom/jingdong/common/utils/MyCountdownTimer;
    .restart local p0
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/jingdong/common/utils/MyCountdownTimer;->mMillisInFuture:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/jingdong/common/utils/MyCountdownTimer;->mStopTimeInFuture:J

    .line 82
    iget-object v1, p0, Lcom/jingdong/common/utils/MyCountdownTimer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/jingdong/common/utils/MyCountdownTimer;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/jingdong/common/utils/MyCountdownTimer;->what:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    .line 83
    .end local p0
    .restart local v0       #this:Lcom/jingdong/common/utils/MyCountdownTimer;
    goto :goto_0

    .line 77
    .end local v0           #this:Lcom/jingdong/common/utils/MyCountdownTimer;
    .restart local p0
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
