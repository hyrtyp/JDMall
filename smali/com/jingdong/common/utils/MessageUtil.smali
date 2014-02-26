.class public Lcom/jingdong/common/utils/MessageUtil;
.super Ljava/lang/Object;
.source "MessageUtil.java"


# static fields
.field private static MSG_MODE:Ljava/lang/Boolean; = null

.field private static final TAG:Ljava/lang/String; = "MessageUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearMsgData(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 79
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "nextPushMsgTaskTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 81
    const-string v1, "msg_auto_has_bind"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 82
    const-string v1, "msg_auto_device_token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    const-string v1, "regid"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/jingdong/cloud/msg/util/SharedPreferenceUtil;->putStringValueByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static closeMsgService()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/jingdong/common/utils/MessageUtil;->getMsgMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/cloud/msg/JDPushInterface;->stopPush(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static getMsgMode()Z
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/jingdong/common/utils/MessageUtil;->MSG_MODE:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 28
    const-string v0, "msgMode"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jingdong/common/config/Configuration;->getBooleanProperty(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/jingdong/common/utils/MessageUtil;->MSG_MODE:Ljava/lang/Boolean;

    .line 30
    :cond_0
    sget-object v0, Lcom/jingdong/common/utils/MessageUtil;->MSG_MODE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static openMsgService()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/jingdong/common/utils/MessageUtil;->getMsgMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    .local v0, msgSwitch:Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return-void

    .line 43
    .end local v0           #msgSwitch:Ljava/lang/Boolean;
    :cond_1
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->msg_auto_update_switch_key:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/CommonUtil;->getBooleanFromPreference(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 46
    .restart local v0       #msgSwitch:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 52
    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->readDeviceUUID()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-static {v1, v2}, Lcom/jingdong/cloud/msg/JDPushInterface;->startPush(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    goto :goto_0
.end method
