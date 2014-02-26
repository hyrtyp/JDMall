.class public Lcom/jingdong/app/mall/broadcastReceiver/ReActivationUserReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ReActivationUserReceiver.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.360buy.RE_ACTIVATION_USER"

.field private static final TAG:Ljava/lang/String; = "ReActivationUserReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 39
    new-instance v2, Lcom/jingdong/app/mall/utils/ReActivationUserManager;

    invoke-direct {v2, p1}, Lcom/jingdong/app/mall/utils/ReActivationUserManager;-><init>(Landroid/content/Context;)V

    .line 41
    .local v2, nm:Lcom/jingdong/app/mall/utils/ReActivationUserManager;
    invoke-static {}, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->StartKillSelfTimer()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->setKillSelfToken(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 52
    invoke-static {}, Lcom/jingdong/common/utils/MessageUtil;->getMsgMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 57
    invoke-static {}, Lcom/jingdong/common/utils/MessageUtil;->openMsgService()V

    goto :goto_0

    .line 63
    :cond_2
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 64
    .local v3, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 65
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "nextPushMsgTaskTime"

    const-wide/16 v5, 0x0

    invoke-interface {v1, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 66
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    const-wide/16 v4, -0x1

    invoke-static {p1, v4, v5}, Lcom/jingdong/common/utils/AlarmUtils;->alarmPushMsgTask(Landroid/content/Context;J)V

    .line 72
    invoke-virtual {v2}, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->checkOverdueAlarmForBoot()V

    goto :goto_0

    .line 76
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #preferences:Landroid/content/SharedPreferences;
    :cond_3
    const-string v4, "com.360buy.RE_ACTIVATION_USER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 77
    invoke-virtual {v2}, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->requestNotifys()V

    goto :goto_0

    .line 78
    :cond_4
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    invoke-static {}, Lcom/jingdong/common/utils/MessageUtil;->getMsgMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    invoke-static {}, Lcom/jingdong/common/utils/MessageUtil;->closeMsgService()V

    goto :goto_0
.end method
