.class public Lcom/jingdong/app/mall/broadcastReceiver/AppStateRecevier;
.super Landroid/content/BroadcastReceiver;
.source "AppStateRecevier.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppStateRecevier"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 22
    invoke-static {}, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->StartKillSelfTimer()Ljava/lang/Object;

    move-result-object v0

    .line 24
    .local v0, killSelfToken:Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, packageFullName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, names:[Ljava/lang/String;
    array-length v3, v1

    if-le v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    .end local v1           #names:[Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    const-wide/16 v3, -0x1

    invoke-static {p1, v3, v4}, Lcom/jingdong/common/utils/AlarmUtils;->alarmPushMsgTask(Landroid/content/Context;J)V

    .line 60
    :cond_1
    invoke-static {v0}, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->killSelf(Ljava/lang/Object;)V

    .line 61
    return-void

    .line 39
    .restart local v1       #names:[Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    invoke-static {p1}, Lcom/jingdong/common/utils/MessageUtil;->clearMsgData(Landroid/content/Context;)V

    goto :goto_0
.end method
