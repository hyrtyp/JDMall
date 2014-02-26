.class public Lcom/jingdong/common/broadcastReceiver/TimeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimeChangedReceiver.java"


# static fields
.field private static intentFilter:Landroid/content/IntentFilter;

.field private static timeChangedReceiver:Lcom/jingdong/common/broadcastReceiver/TimeChangedReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    return-void
.end method

.method public static registerReceiver(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 42
    sget-object v0, Lcom/jingdong/common/broadcastReceiver/TimeChangedReceiver;->timeChangedReceiver:Lcom/jingdong/common/broadcastReceiver/TimeChangedReceiver;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/jingdong/common/broadcastReceiver/TimeChangedReceiver;

    invoke-direct {v0}, Lcom/jingdong/common/broadcastReceiver/TimeChangedReceiver;-><init>()V

    sput-object v0, Lcom/jingdong/common/broadcastReceiver/TimeChangedReceiver;->timeChangedReceiver:Lcom/jingdong/common/broadcastReceiver/TimeChangedReceiver;

    .line 46
    :cond_0
    if-eqz p0, :cond_1

    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/jingdong/common/broadcastReceiver/TimeChangedReceiver;->intentFilter:Landroid/content/IntentFilter;

    .line 48
    sget-object v0, Lcom/jingdong/common/broadcastReceiver/TimeChangedReceiver;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/jingdong/common/broadcastReceiver/TimeChangedReceiver;->timeChangedReceiver:Lcom/jingdong/common/broadcastReceiver/TimeChangedReceiver;

    sget-object v1, Lcom/jingdong/common/broadcastReceiver/TimeChangedReceiver;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    :cond_1
    return-void
.end method

.method public static unregisterReceiver(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    if-eqz p0, :cond_0

    sget-object v0, Lcom/jingdong/common/broadcastReceiver/TimeChangedReceiver;->timeChangedReceiver:Lcom/jingdong/common/broadcastReceiver/TimeChangedReceiver;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/jingdong/common/broadcastReceiver/TimeChangedReceiver;->timeChangedReceiver:Lcom/jingdong/common/broadcastReceiver/TimeChangedReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "content"
    .parameter "intent"

    .prologue
    .line 28
    monitor-enter p0

    .line 32
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/jingdong/common/utils/TimerUntil;->isChangedDate:Z

    .line 28
    monitor-exit p0

    .line 34
    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
