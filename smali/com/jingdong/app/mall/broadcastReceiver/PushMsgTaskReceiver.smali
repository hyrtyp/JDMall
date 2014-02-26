.class public Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushMsgTaskReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PushMessageReceiver"


# instance fields
.field private handler:Landroid/os/Handler;

.field private needNotifySize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;->needNotifySize:I

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;->handler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;->getUnreadMessages(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;->needNotifySize:I

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;->needNotifySize:I

    return v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private getUnreadMessages(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "killSelfToken"

    .prologue
    .line 109
    new-instance v0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;

    invoke-direct {v0, p0, p2}, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;-><init>(Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/jingdong/common/utils/PushMessageUtils;->getAllUnReadMessageIds(Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V

    .line 261
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 45
    invoke-static {}, Lcom/jingdong/common/utils/MessageUtil;->getMsgMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {}, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->StartKillSelfTimer()Ljava/lang/Object;

    move-result-object v1

    .line 57
    .local v1, killSelfToken:Ljava/lang/Object;
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 58
    .local v2, settings:Landroid/content/SharedPreferences;
    const-string v3, "msg_auto_update_switch"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 59
    .local v0, isNeedPushMsg:Z
    if-nez v0, :cond_1

    .line 67
    invoke-static {v1}, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->killSelf(Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_1
    iput v4, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;->needNotifySize:I

    .line 73
    const-wide/16 v3, -0x1

    invoke-static {p1, v3, v4}, Lcom/jingdong/common/utils/AlarmUtils;->alarmPushMsgTask(Landroid/content/Context;J)V

    .line 76
    invoke-static {}, Lcom/jingdong/app/mall/utils/TimeUtils;->isPushMsgMuteNow()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    invoke-static {v1}, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->killSelf(Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    :cond_2
    invoke-static {}, Lcom/jingdong/common/utils/PushMessageUtils;->getDeviceTokenFromLocal()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 88
    invoke-direct {p0, p1, v1}, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;->getUnreadMessages(Landroid/content/Context;Ljava/lang/Object;)V

    goto :goto_0

    .line 90
    :cond_3
    new-instance v3, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$1;

    invoke-direct {v3, p0, p1, v1}, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$1;-><init>(Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;Landroid/content/Context;Ljava/lang/Object;)V

    invoke-static {v3, v5, v5}, Lcom/jingdong/common/utils/PushMessageUtils;->regPushMessageToken(Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)V

    goto :goto_0
.end method
