.class public final Lcom/jingdong/cloud/msg/JDPushInterface;
.super Ljava/lang/Object;
.source "JDPushInterface.java"


# static fields
.field public static final EXTRA_PUSH_ERROR_ACTION:Ljava/lang/String; = "com.jd.msg.error"

.field public static final EXTRA_PUSH_MSG_ACTION:Ljava/lang/String; = "com.jd.msg"

.field public static final EXTRA_PUSH_NOT_LOGIN_ACTION:Ljava/lang/String; = "com.jd.msg.not.login"

.field public static final EXTRA_PUSH_REGISTER_ID_ACTION:Ljava/lang/String; = "com.jd.register.action"

.field public static final EXTRA_PUSH_TAG_ACTION:Ljava/lang/String; = "com.jd.msg.tag"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/jingdong/cloud/msg/JDPushInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/cloud/msg/JDPushInterface;->TAG:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTag(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "tags"

    .prologue
    .line 82
    sget-object v0, Lcom/jingdong/cloud/msg/JDPushInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Add tags; tags = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jingdong/cloud/msg/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {}, Lcom/jingdong/cloud/msg/PushService;->getInstance()Lcom/jingdong/cloud/msg/PushService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/jingdong/cloud/msg/PushService;->addTag(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static removeTag(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "tags"

    .prologue
    .line 95
    sget-object v0, Lcom/jingdong/cloud/msg/JDPushInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remove tags; tags = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jingdong/cloud/msg/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-static {}, Lcom/jingdong/cloud/msg/PushService;->getInstance()Lcom/jingdong/cloud/msg/PushService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/jingdong/cloud/msg/PushService;->removeTag(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startPush(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "uuid"

    .prologue
    .line 40
    if-nez p0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    const-string v1, "jd.cloud.uuid"

    invoke-static {p0, v1, p1}, Lcom/jingdong/cloud/msg/util/SharedPreferenceUtil;->putStringValueByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {p0}, Lcom/jingdong/cloud/msg/util/CommonUtil;->isServiceRunning(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 45
    sget-object v1, Lcom/jingdong/cloud/msg/JDPushInterface;->TAG:Ljava/lang/String;

    const-string v2, "PUSH service is not running now, try to start it..."

    invoke-static {v1, v2}, Lcom/jingdong/cloud/msg/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jingdong/cloud/msg/service/JDReceiveMsgService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v0, service:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 48
    sget-object v1, Lcom/jingdong/cloud/msg/JDPushInterface;->TAG:Ljava/lang/String;

    const-string v2, "Succeed to start PUSH service!"

    invoke-static {v1, v2}, Lcom/jingdong/cloud/msg/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    .end local v0           #service:Landroid/content/Intent;
    :cond_2
    sget-boolean v1, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v1, :cond_0

    .line 51
    sget-object v1, Lcom/jingdong/cloud/msg/JDPushInterface;->TAG:Ljava/lang/String;

    const-string v2, "PUSH service is running now."

    invoke-static {v1, v2}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static stopPush(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 62
    if-nez p0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 65
    :cond_0
    sget-object v1, Lcom/jingdong/cloud/msg/JDPushInterface;->TAG:Ljava/lang/String;

    const-string v2, "Close heartbeat service."

    invoke-static {v1, v2}, Lcom/jingdong/cloud/msg/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sput-boolean v3, Lcom/jingdong/cloud/msg/service/JDReceiveMsgService;->isNeedLive:Z

    .line 67
    invoke-static {p0, v3}, Lcom/jingdong/cloud/msg/PushSocketProtocol;->openOrCloseHeartBeat(Landroid/content/Context;Z)V

    .line 68
    invoke-static {v3}, Lcom/jingdong/cloud/msg/entity/LoginState;->setHasLogin(Z)V

    .line 69
    invoke-static {}, Lcom/jingdong/cloud/msg/PushSocket;->closeConnect()V

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jingdong/cloud/msg/service/JDReceiveMsgService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, service:Landroid/content/Intent;
    sget-object v1, Lcom/jingdong/cloud/msg/JDPushInterface;->TAG:Ljava/lang/String;

    const-string v2, "Try to stop PUSH service."

    invoke-static {v1, v2}, Lcom/jingdong/cloud/msg/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 73
    sget-object v1, Lcom/jingdong/cloud/msg/JDPushInterface;->TAG:Ljava/lang/String;

    const-string v2, "Succeed to stop PUSH service!"

    invoke-static {v1, v2}, Lcom/jingdong/cloud/msg/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
