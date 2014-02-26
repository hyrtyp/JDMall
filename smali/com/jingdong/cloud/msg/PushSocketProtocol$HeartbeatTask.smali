.class final Lcom/jingdong/cloud/msg/PushSocketProtocol$HeartbeatTask;
.super Ljava/util/TimerTask;
.source "PushSocketProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/cloud/msg/PushSocketProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeartbeatTask"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field initial:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 148
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jingdong/cloud/msg/PushSocketProtocol$HeartbeatTask;->initial:J

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jingdong/cloud/msg/PushSocketProtocol$HeartbeatTask;->initial:J

    .line 153
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/32 v7, 0x1b7740

    const/4 v5, 0x0

    .line 157
    sget-boolean v3, Lcom/jingdong/cloud/msg/PushSocketProtocol;->isOpenHeartBeat:Z

    if-nez v3, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    sget-boolean v3, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v3, :cond_2

    .line 161
    invoke-static {}, Lcom/jingdong/cloud/msg/PushSocketProtocol;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Send heartbeat."

    invoke-static {v3, v4}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_2
    iget-object v3, p0, Lcom/jingdong/cloud/msg/PushSocketProtocol$HeartbeatTask;->context:Landroid/content/Context;

    const/4 v4, 0x2

    #calls: Lcom/jingdong/cloud/msg/PushSocketProtocol;->putJsonMsg(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5, v5, v5}, Lcom/jingdong/cloud/msg/PushSocketProtocol;->access$1(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 167
    .local v1, now:J
    sget-boolean v3, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v3, :cond_3

    .line 168
    const-class v3, Lcom/jingdong/cloud/msg/PushSocketProtocol$HeartbeatTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "now - initial = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/jingdong/cloud/msg/PushSocketProtocol$HeartbeatTask;->initial:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/jingdong/cloud/msg/PushSocketProtocol$HeartbeatTask;->initial:J

    sub-long v5, v1, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", CHECK_REQ_QUEUE_TIMEOUT_INTERVAL = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_3
    iget-wide v3, p0, Lcom/jingdong/cloud/msg/PushSocketProtocol$HeartbeatTask;->initial:J

    sub-long v3, v1, v3

    cmp-long v3, v3, v7

    if-lez v3, :cond_0

    .line 171
    const-class v3, Lcom/jingdong/cloud/msg/PushSocketProtocol$HeartbeatTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Prepare to scan timeout requests..."

    invoke-static {v3, v4}, Lcom/jingdong/cloud/msg/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-wide/32 v3, 0xaba9500

    invoke-static {v3, v4}, Lcom/jingdong/cloud/msg/util/RequestQueue;->purge(J)I

    move-result v0

    .line 173
    .local v0, count:I
    const-class v3, Lcom/jingdong/cloud/msg/PushSocketProtocol$HeartbeatTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Done: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " timeout requests are purged."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jingdong/cloud/msg/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iput-wide v1, p0, Lcom/jingdong/cloud/msg/PushSocketProtocol$HeartbeatTask;->initial:J

    goto/16 :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/jingdong/cloud/msg/PushSocketProtocol$HeartbeatTask;->context:Landroid/content/Context;

    .line 180
    return-void
.end method
