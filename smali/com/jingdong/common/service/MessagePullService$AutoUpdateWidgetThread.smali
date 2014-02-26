.class Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;
.super Ljava/lang/Thread;
.source "MessagePullService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/service/MessagePullService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoUpdateWidgetThread"
.end annotation


# instance fields
.field private stop:Z

.field final synthetic this$0:Lcom/jingdong/common/service/MessagePullService;

.field private time:J


# direct methods
.method public constructor <init>(Lcom/jingdong/common/service/MessagePullService;JZ)V
    .locals 0
    .parameter
    .parameter "time"
    .parameter "stop"

    .prologue
    .line 1284
    iput-object p1, p0, Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;->this$0:Lcom/jingdong/common/service/MessagePullService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1285
    iput-wide p2, p0, Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;->time:J

    .line 1286
    iput-boolean p4, p0, Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;->stop:Z

    .line 1287
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x1388

    .line 1290
    :goto_0
    iget-boolean v1, p0, Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;->stop:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;->this$0:Lcom/jingdong/common/service/MessagePullService;

    #getter for: Lcom/jingdong/common/service/MessagePullService;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/jingdong/common/service/MessagePullService;->access$10(Lcom/jingdong/common/service/MessagePullService;)Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1301
    :cond_0
    return-void

    .line 1291
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;->time:J

    sub-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-ltz v1, :cond_2

    .line 1292
    iget-object v1, p0, Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;->this$0:Lcom/jingdong/common/service/MessagePullService;

    #getter for: Lcom/jingdong/common/service/MessagePullService;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/jingdong/common/service/MessagePullService;->access$10(Lcom/jingdong/common/service/MessagePullService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;->time:J

    .line 1296
    :cond_2
    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1297
    :catch_0
    move-exception v0

    .line 1298
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public setStop(Z)V
    .locals 0
    .parameter "stop"

    .prologue
    .line 1281
    iput-boolean p1, p0, Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;->stop:Z

    .line 1282
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 1274
    iput-wide p1, p0, Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;->time:J

    .line 1275
    return-void
.end method
