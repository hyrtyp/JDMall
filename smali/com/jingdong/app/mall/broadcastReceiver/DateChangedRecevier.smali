.class public Lcom/jingdong/app/mall/broadcastReceiver/DateChangedRecevier;
.super Landroid/content/BroadcastReceiver;
.source "DateChangedRecevier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 18
    invoke-static {}, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->StartKillSelfTimer()Ljava/lang/Object;

    move-result-object v0

    .line 22
    .local v0, token:Ljava/lang/Object;
    const-wide/16 v1, -0x1

    invoke-static {p1, v1, v2}, Lcom/jingdong/common/utils/AlarmUtils;->alarmPushMsgTask(Landroid/content/Context;J)V

    .line 27
    invoke-static {v0}, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->killSelf(Ljava/lang/Object;)V

    .line 28
    return-void
.end method
