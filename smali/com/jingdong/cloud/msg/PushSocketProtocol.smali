.class public Lcom/jingdong/cloud/msg/PushSocketProtocol;
.super Ljava/lang/Object;
.source "PushSocketProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/cloud/msg/PushSocketProtocol$ConnTask;,
        Lcom/jingdong/cloud/msg/PushSocketProtocol$HeartbeatTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static isConn:Z

.field public static isOpenHeartBeat:Z

.field private static timer:Ljava/util/Timer;

.field private static timerConn:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 24
    const-class v0, Lcom/jingdong/cloud/msg/PushSocketProtocol;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/cloud/msg/PushSocketProtocol;->TAG:Ljava/lang/String;

    .line 25
    sput-boolean v1, Lcom/jingdong/cloud/msg/PushSocketProtocol;->isOpenHeartBeat:Z

    .line 26
    sput-object v2, Lcom/jingdong/cloud/msg/PushSocketProtocol;->timer:Ljava/util/Timer;

    .line 28
    sput-boolean v1, Lcom/jingdong/cloud/msg/PushSocketProtocol;->isConn:Z

    .line 29
    sput-object v2, Lcom/jingdong/cloud/msg/PushSocketProtocol;->timerConn:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/jingdong/cloud/msg/PushSocketProtocol;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 325
    invoke-static {p0, p1, p2, p3, p4}, Lcom/jingdong/cloud/msg/PushSocketProtocol;->putJsonMsg(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static addTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "regId"
    .parameter "tags"

    .prologue
    .line 228
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v0, :cond_0

    .line 229
    sget-object v0, Lcom/jingdong/cloud/msg/PushSocketProtocol;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Add tags: tags = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/jingdong/cloud/msg/PushSocketProtocol;->putJsonMsg(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public static openOrCloseConn(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "isNeedOpen"

    .prologue
    .line 39
    if-eqz p1, :cond_2

    .line 40
    sget-boolean v1, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v1, :cond_0

    .line 41
    sget-object v1, Lcom/jingdong/cloud/msg/PushSocketProtocol;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Open or close Conn: isConn = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/jingdong/cloud/msg/PushSocketProtocol;->isConn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    sget-boolean v1, Lcom/jingdong/cloud/msg/PushSocketProtocol;->isConn:Z

    if-nez v1, :cond_1

    .line 44
    const/4 v1, 0x1

    sput-boolean v1, Lcom/jingdong/cloud/msg/PushSocketProtocol;->isConn:Z

    .line 46
    new-instance v0, Lcom/jingdong/cloud/msg/PushSocketProtocol$ConnTask;

    invoke-direct {v0}, Lcom/jingdong/cloud/msg/PushSocketProtocol$ConnTask;-><init>()V

    .local v0, connTask:Ljava/util/TimerTask;
    move-object v1, v0

    .line 47
    check-cast v1, Lcom/jingdong/cloud/msg/PushSocketProtocol$ConnTask;

    invoke-virtual {v1, p0}, Lcom/jingdong/cloud/msg/PushSocketProtocol$ConnTask;->setContext(Landroid/content/Context;)V

    .line 48
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Lcom/jingdong/cloud/msg/PushSocketProtocol;->timerConn:Ljava/util/Timer;

    .line 50
    sget-object v1, Lcom/jingdong/cloud/msg/PushSocketProtocol;->timerConn:Ljava/util/Timer;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 66
    .end local v0           #connTask:Ljava/util/TimerTask;
    :cond_1
    :goto_0
    return-void

    .line 53
    :cond_2
    const/4 v1, 0x0

    sput-boolean v1, Lcom/jingdong/cloud/msg/PushSocketProtocol;->isConn:Z

    .line 54
    sget-object v1, Lcom/jingdong/cloud/msg/PushSocketProtocol;->timerConn:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 55
    sget-boolean v1, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v1, :cond_3

    .line 56
    sget-object v1, Lcom/jingdong/cloud/msg/PushSocketProtocol;->TAG:Ljava/lang/String;

    const-string v2, "Cancel timerConn instance."

    invoke-static {v1, v2}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_3
    sget-object v1, Lcom/jingdong/cloud/msg/PushSocketProtocol;->timerConn:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 60
    const/4 v1, 0x0

    sput-object v1, Lcom/jingdong/cloud/msg/PushSocketProtocol;->timerConn:Ljava/util/Timer;

    goto :goto_0
.end method

.method public static openOrCloseHeartBeat(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "isNeedOpen"

    .prologue
    .line 117
    if-eqz p1, :cond_2

    .line 118
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/jingdong/cloud/msg/PushSocketProtocol;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Open or close heartbeat: isOpenHeartBeat = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/jingdong/cloud/msg/PushSocketProtocol;->isOpenHeartBeat:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    sget-boolean v0, Lcom/jingdong/cloud/msg/PushSocketProtocol;->isOpenHeartBeat:Z

    if-nez v0, :cond_1

    .line 122
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jingdong/cloud/msg/PushSocketProtocol;->isOpenHeartBeat:Z

    .line 124
    new-instance v1, Lcom/jingdong/cloud/msg/PushSocketProtocol$HeartbeatTask;

    invoke-direct {v1}, Lcom/jingdong/cloud/msg/PushSocketProtocol$HeartbeatTask;-><init>()V

    .local v1, heartbeatTask:Ljava/util/TimerTask;
    move-object v0, v1

    .line 125
    check-cast v0, Lcom/jingdong/cloud/msg/PushSocketProtocol$HeartbeatTask;

    invoke-virtual {v0, p0}, Lcom/jingdong/cloud/msg/PushSocketProtocol$HeartbeatTask;->setContext(Landroid/content/Context;)V

    .line 126
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/jingdong/cloud/msg/PushSocketProtocol;->timer:Ljava/util/Timer;

    .line 127
    sget-object v0, Lcom/jingdong/cloud/msg/PushSocketProtocol;->timer:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x493e0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 143
    .end local v1           #heartbeatTask:Ljava/util/TimerTask;
    :cond_1
    :goto_0
    return-void

    .line 130
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jingdong/cloud/msg/PushSocketProtocol;->isOpenHeartBeat:Z

    .line 131
    sget-object v0, Lcom/jingdong/cloud/msg/PushSocketProtocol;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 132
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v0, :cond_3

    .line 133
    sget-object v0, Lcom/jingdong/cloud/msg/PushSocketProtocol;->TAG:Ljava/lang/String;

    const-string v2, "Cancel timer instance."

    invoke-static {v0, v2}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_3
    sget-object v0, Lcom/jingdong/cloud/msg/PushSocketProtocol;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 137
    const/4 v0, 0x0

    sput-object v0, Lcom/jingdong/cloud/msg/PushSocketProtocol;->timer:Ljava/util/Timer;

    goto :goto_0
.end method

.method private static putConstantJson(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 5
    .parameter "context"
    .parameter "msgType"
    .parameter "regId"
    .parameter "appID"

    .prologue
    .line 385
    const/4 v1, 0x0

    .line 387
    .local v1, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 389
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .local v2, jsonObject:Lorg/json/JSONObject;
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    move-object v1, v2

    .line 426
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .restart local v1       #jsonObject:Lorg/json/JSONObject;
    :goto_1
    return-object v1

    .line 393
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :pswitch_1
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 394
    const-string v3, "rid"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 397
    const-string v3, "aid"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v2

    .line 402
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .restart local v1       #jsonObject:Lorg/json/JSONObject;
    goto :goto_1

    .line 404
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :pswitch_2
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 405
    const-string v3, "aid"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v2

    .line 411
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .restart local v1       #jsonObject:Lorg/json/JSONObject;
    goto :goto_1

    .line 414
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :pswitch_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 415
    const-string v3, "rid"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 418
    const-string v3, "aid"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 424
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .local v0, e:Lorg/json/JSONException;
    .restart local v1       #jsonObject:Lorg/json/JSONObject;
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 423
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :cond_2
    move-object v1, v2

    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .restart local v1       #jsonObject:Lorg/json/JSONObject;
    goto :goto_1

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static putJsonMsg(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "msgType"
    .parameter "msgId"
    .parameter "regId"
    .parameter "tags"

    .prologue
    .line 326
    if-nez p0, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    const-string v5, "JD_PUSH_APPID"

    invoke-static {p0, v5}, Lcom/jingdong/cloud/msg/util/CommonUtil;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 330
    .local v0, appID:Ljava/lang/Object;
    sget-object v5, Lcom/jingdong/cloud/msg/PushSocketProtocol;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "putJsonMsg... appID \uff1a "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jingdong/cloud/msg/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 334
    const/4 v2, 0x0

    .line 336
    .local v2, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .local v3, jsonObject:Lorg/json/JSONObject;
    :try_start_1
    invoke-static {p0, p1, p3, v0}, Lcom/jingdong/cloud/msg/PushSocketProtocol;->putConstantJson(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 338
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    packed-switch p1, :pswitch_data_0

    .line 372
    :cond_2
    :goto_1
    invoke-static {p0, v2, p1}, Lcom/jingdong/cloud/msg/PushSocketProtocol;->sendJsonMsg(Landroid/content/Context;Lorg/json/JSONObject;I)V

    goto :goto_0

    .line 340
    :pswitch_0
    :try_start_2
    const-string v5, "o"

    const-string v6, "REG"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    invoke-static {p0}, Lcom/jingdong/cloud/msg/util/CommonUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 342
    .local v4, uuid:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 343
    const-string v5, "ct"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 369
    .end local v4           #uuid:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 370
    .local v1, e:Lorg/json/JSONException;
    :goto_2
    sget-object v5, Lcom/jingdong/cloud/msg/PushSocketProtocol;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jingdong/cloud/msg/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 347
    .end local v1           #e:Lorg/json/JSONException;
    :pswitch_1
    :try_start_3
    const-string v5, "o"

    const-string v6, "LOGN"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 350
    :pswitch_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 351
    const-string v5, "mid"

    invoke-virtual {v2, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    :cond_3
    const-string v5, "o"

    const-string v6, "FIN"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 356
    :pswitch_3
    const-string v5, "o"

    const-string v6, "PI"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 359
    :pswitch_4
    const-string v5, "o"

    const-string v6, "ATAG"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    const-string v5, "tags"

    invoke-virtual {v2, v5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 363
    :pswitch_5
    const-string v5, "o"

    const-string v6, "RTAG"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    const-string v5, "tags"

    invoke-virtual {v2, v5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 369
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .restart local v3       #jsonObject:Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    goto :goto_2

    .line 338
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static removeTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "regId"
    .parameter "tags"

    .prologue
    .line 242
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v0, :cond_0

    .line 243
    sget-object v0, Lcom/jingdong/cloud/msg/PushSocketProtocol;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remove tags: tags = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/jingdong/cloud/msg/PushSocketProtocol;->putJsonMsg(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method static reponseSMSG(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "msgId"
    .parameter "regId"

    .prologue
    .line 214
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v0, :cond_0

    .line 215
    sget-object v0, Lcom/jingdong/cloud/msg/PushSocketProtocol;->TAG:Ljava/lang/String;

    const-string v1, "Reponse SMSG."

    invoke-static {v0, v1}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/jingdong/cloud/msg/PushSocketProtocol;->putJsonMsg(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method private static declared-synchronized sendJsonMsg(Landroid/content/Context;Lorg/json/JSONObject;I)V
    .locals 10
    .parameter "context"
    .parameter "msgJson"
    .parameter "type"

    .prologue
    .line 258
    const-class v7, Lcom/jingdong/cloud/msg/PushSocketProtocol;

    monitor-enter v7

    :try_start_0
    sget-boolean v6, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v6, :cond_0

    .line 259
    sget-object v6, Lcom/jingdong/cloud/msg/PushSocketProtocol;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Send JSON message: context = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :cond_0
    if-nez p0, :cond_2

    .line 315
    :cond_1
    :goto_0
    monitor-exit v7

    return-void

    .line 264
    :cond_2
    const/4 v3, 0x0

    .line 265
    .local v3, out:Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 267
    .local v4, reqId:Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/jingdong/cloud/msg/PushSocket;->getInstance()Ljava/net/Socket;

    move-result-object v5

    .line 268
    .local v5, socket:Ljava/net/Socket;
    sget-boolean v6, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v6, :cond_3

    .line 269
    sget-object v6, Lcom/jingdong/cloud/msg/PushSocketProtocol;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Send JSON message: socket = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_3
    if-eqz v5, :cond_1

    .line 272
    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 274
    if-eqz p2, :cond_4

    const/4 v6, 0x1

    if-eq p2, v6, :cond_4

    const/4 v6, 0x4

    if-eq p2, v6, :cond_4

    const/4 v6, 0x5

    if-ne p2, v6, :cond_5

    .line 275
    :cond_4
    invoke-static {}, Lcom/jingdong/cloud/msg/util/CommonUtil;->nextUniqueId()Ljava/lang/String;

    move-result-object v4

    .line 276
    const-string v6, "reqid"

    invoke-virtual {p1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    :cond_5
    sget-boolean v6, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v6, :cond_6

    .line 279
    sget-object v6, Lcom/jingdong/cloud/msg/PushSocketProtocol;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Send JSON message: type = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", message ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_6
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v6}, Lcom/jingdong/cloud/msg/util/NumberUtil;->getByteArray(I)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 282
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 283
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 285
    sget-object v6, Lcom/jingdong/cloud/msg/PushSocketProtocol;->TAG:Ljava/lang/String;

    const-string v8, "Succeed to send request!"

    invoke-static {v6, v8}, Lcom/jingdong/cloud/msg/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 292
    :pswitch_1
    if-eqz v4, :cond_1

    .line 293
    new-instance v0, Lcom/jingdong/cloud/msg/entity/Call;

    invoke-direct {v0, p2, v4}, Lcom/jingdong/cloud/msg/entity/Call;-><init>(ILjava/lang/String;)V

    .line 294
    .local v0, call:Lcom/jingdong/cloud/msg/entity/Call;
    invoke-static {v0}, Lcom/jingdong/cloud/msg/util/RequestQueue;->put(Lcom/jingdong/cloud/msg/entity/Call;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 301
    .end local v0           #call:Lcom/jingdong/cloud/msg/entity/Call;
    .end local v5           #socket:Ljava/net/Socket;
    :catch_0
    move-exception v1

    .line 302
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v6, Lcom/jingdong/cloud/msg/PushSocketProtocol;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/jingdong/cloud/msg/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    if-eqz v3, :cond_7

    .line 305
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 310
    :cond_7
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/jingdong/cloud/msg/PushSocket;->closeConnect()V

    .line 311
    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/jingdong/cloud/msg/PushSocketProtocol;->openOrCloseHeartBeat(Landroid/content/Context;Z)V

    .line 313
    invoke-static {}, Lcom/jingdong/cloud/msg/PushService;->getInstance()Lcom/jingdong/cloud/msg/PushService;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/jingdong/cloud/msg/PushService;->connectServer(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 258
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #out:Ljava/io/OutputStream;
    .end local v4           #reqId:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 306
    .restart local v1       #e:Ljava/lang/Exception;
    .restart local v3       #out:Ljava/io/OutputStream;
    .restart local v4       #reqId:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 307
    .local v2, e1:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static sendLogin(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "regId"

    .prologue
    const/4 v1, 0x0

    .line 203
    const/4 v0, 0x1

    invoke-static {p0, v0, v1, p1, v1}, Lcom/jingdong/cloud/msg/PushSocketProtocol;->putJsonMsg(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method static sendRegister(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 191
    sget-object v0, Lcom/jingdong/cloud/msg/PushSocketProtocol;->TAG:Ljava/lang/String;

    const-string v1, "sendRegister..."

    invoke-static {v0, v1}, Lcom/jingdong/cloud/msg/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x0

    invoke-static {p0, v0, v2, v2, v2}, Lcom/jingdong/cloud/msg/PushSocketProtocol;->putJsonMsg(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method
