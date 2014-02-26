.class Lcom/jingdong/common/utils/MyCountdownTimer$1;
.super Landroid/os/Handler;
.source "MyCountdownTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/MyCountdownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/utils/MyCountdownTimer;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/MyCountdownTimer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/MyCountdownTimer$1;->this$0:Lcom/jingdong/common/utils/MyCountdownTimer;

    .line 106
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 110
    iget v6, p1, Landroid/os/Message;->what:I

    .line 111
    .local v6, what:I
    iget-object v8, p0, Lcom/jingdong/common/utils/MyCountdownTimer$1;->this$0:Lcom/jingdong/common/utils/MyCountdownTimer;

    monitor-enter v8

    .line 112
    :try_start_0
    iget-object v7, p0, Lcom/jingdong/common/utils/MyCountdownTimer$1;->this$0:Lcom/jingdong/common/utils/MyCountdownTimer;

    #getter for: Lcom/jingdong/common/utils/MyCountdownTimer;->mStopTimeInFuture:J
    invoke-static {v7}, Lcom/jingdong/common/utils/MyCountdownTimer;->access$0(Lcom/jingdong/common/utils/MyCountdownTimer;)J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long v4, v9, v11

    .line 114
    .local v4, millisLeft:J
    const-wide/16 v9, 0x0

    cmp-long v7, v4, v9

    if-gtz v7, :cond_0

    .line 115
    iget-object v7, p0, Lcom/jingdong/common/utils/MyCountdownTimer$1;->this$0:Lcom/jingdong/common/utils/MyCountdownTimer;

    invoke-virtual {v7, v6}, Lcom/jingdong/common/utils/MyCountdownTimer;->onFinish(I)V

    .line 111
    :goto_0
    monitor-exit v8

    .line 134
    return-void

    .line 116
    :cond_0
    iget-object v7, p0, Lcom/jingdong/common/utils/MyCountdownTimer$1;->this$0:Lcom/jingdong/common/utils/MyCountdownTimer;

    #getter for: Lcom/jingdong/common/utils/MyCountdownTimer;->mCountdownInterval:J
    invoke-static {v7}, Lcom/jingdong/common/utils/MyCountdownTimer;->access$1(Lcom/jingdong/common/utils/MyCountdownTimer;)J

    move-result-wide v9

    cmp-long v7, v4, v9

    if-gez v7, :cond_1

    .line 118
    invoke-virtual {p0, v6}, Lcom/jingdong/common/utils/MyCountdownTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v7, v4, v5}, Lcom/jingdong/common/utils/MyCountdownTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 111
    .end local v4           #millisLeft:J
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 120
    .restart local v4       #millisLeft:J
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 121
    .local v2, lastTickStart:J
    iget-object v7, p0, Lcom/jingdong/common/utils/MyCountdownTimer$1;->this$0:Lcom/jingdong/common/utils/MyCountdownTimer;

    invoke-virtual {v7, v4, v5, v6}, Lcom/jingdong/common/utils/MyCountdownTimer;->onTick(JI)V

    .line 124
    iget-object v7, p0, Lcom/jingdong/common/utils/MyCountdownTimer$1;->this$0:Lcom/jingdong/common/utils/MyCountdownTimer;

    #getter for: Lcom/jingdong/common/utils/MyCountdownTimer;->mCountdownInterval:J
    invoke-static {v7}, Lcom/jingdong/common/utils/MyCountdownTimer;->access$1(Lcom/jingdong/common/utils/MyCountdownTimer;)J

    move-result-wide v9

    add-long/2addr v9, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long v0, v9, v11

    .line 128
    .local v0, delay:J
    :goto_1
    const-wide/16 v9, 0x0

    cmp-long v7, v0, v9

    if-ltz v7, :cond_2

    .line 131
    invoke-virtual {p0, v6}, Lcom/jingdong/common/utils/MyCountdownTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v7, v0, v1}, Lcom/jingdong/common/utils/MyCountdownTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 129
    :cond_2
    iget-object v7, p0, Lcom/jingdong/common/utils/MyCountdownTimer$1;->this$0:Lcom/jingdong/common/utils/MyCountdownTimer;

    #getter for: Lcom/jingdong/common/utils/MyCountdownTimer;->mCountdownInterval:J
    invoke-static {v7}, Lcom/jingdong/common/utils/MyCountdownTimer;->access$1(Lcom/jingdong/common/utils/MyCountdownTimer;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v9

    add-long/2addr v0, v9

    goto :goto_1
.end method
