.class public Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;
.super Landroid/os/Handler;
.source "LogDatabaseMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ja/analytics/framework/LogDatabaseMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MonitorThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ja/analytics/framework/LogDatabaseMonitor;


# direct methods
.method public constructor <init>(Lcom/ja/analytics/framework/LogDatabaseMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;->this$0:Lcom/ja/analytics/framework/LogDatabaseMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 182
    return-void
.end method

.method public constructor <init>(Lcom/ja/analytics/framework/LogDatabaseMonitor;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter "looper"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;->this$0:Lcom/ja/analytics/framework/LogDatabaseMonitor;

    .line 185
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 186
    invoke-static {}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MonitorThreadHandler() --->"

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 197
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 199
    :pswitch_0
    invoke-static {}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$3()Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;

    move-result-object v0

    new-instance v1, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;

    iget-object v2, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;->this$0:Lcom/ja/analytics/framework/LogDatabaseMonitor;

    iget-object v3, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;->this$0:Lcom/ja/analytics/framework/LogDatabaseMonitor;

    #getter for: Lcom/ja/analytics/framework/LogDatabaseMonitor;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$2(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;-><init>(Lcom/ja/analytics/framework/LogDatabaseMonitor;Landroid/content/Context;)V

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 202
    :pswitch_1
    invoke-static {}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$3()Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;

    move-result-object v0

    new-instance v1, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;

    iget-object v2, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;->this$0:Lcom/ja/analytics/framework/LogDatabaseMonitor;

    iget-object v3, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;->this$0:Lcom/ja/analytics/framework/LogDatabaseMonitor;

    #getter for: Lcom/ja/analytics/framework/LogDatabaseMonitor;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$2(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;-><init>(Lcom/ja/analytics/framework/LogDatabaseMonitor;Landroid/content/Context;)V

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 206
    :pswitch_2
    invoke-static {}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$3()Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;

    move-result-object v0

    new-instance v1, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;

    iget-object v2, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;->this$0:Lcom/ja/analytics/framework/LogDatabaseMonitor;

    iget-object v3, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;->this$0:Lcom/ja/analytics/framework/LogDatabaseMonitor;

    #getter for: Lcom/ja/analytics/framework/LogDatabaseMonitor;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$2(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;-><init>(Lcom/ja/analytics/framework/LogDatabaseMonitor;Landroid/content/Context;)V

    sget v2, Lcom/ja/analytics/constant/Constants;->SEND_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public postTask(Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 213
    invoke-static {}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$3()Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;

    move-result-object v0

    sget v1, Lcom/ja/analytics/constant/Constants;->SEND_INTERVAL:I

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    return-void
.end method
