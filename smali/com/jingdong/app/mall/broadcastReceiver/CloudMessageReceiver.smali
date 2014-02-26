.class public Lcom/jingdong/app/mall/broadcastReceiver/CloudMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CloudMessageReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudMessageReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 30
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, action:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const-string v15, "com.jd.msg"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 39
    const-string v15, "com.jd.msg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 45
    .local v10, msg:Ljava/lang/String;
    :try_start_0
    new-instance v6, Lcom/jingdong/common/utils/JSONObjectProxy;

    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v15}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V

    .line 49
    .local v6, json:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getCookies()Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, cookies:Ljava/lang/String;
    new-instance v9, Lcom/jingdong/common/entity/MessageSummary;

    invoke-direct {v9, v6}, Lcom/jingdong/common/entity/MessageSummary;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 55
    .local v9, messageSummary:Lcom/jingdong/common/entity/MessageSummary;
    invoke-virtual {v9}, Lcom/jingdong/common/entity/MessageSummary;->getId()Ljava/lang/String;

    move-result-object v11

    .line 57
    .local v11, msgId:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 61
    const-string v15, "_"

    invoke-virtual {v11, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 65
    const-string v15, "_"

    invoke-virtual {v11, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v5, v15, v16

    .line 70
    .local v5, idType:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 73
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 79
    .local v14, type:I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v15

    if-nez v15, :cond_2

    const/16 v15, 0x14

    if-ne v14, v15, :cond_0

    .line 82
    :cond_2
    invoke-static {}, Lcom/jingdong/app/mall/utils/TimeUtils;->isPushMsgMuteNow()Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v12, 0x0

    .line 83
    .local v12, needVoice:Z
    :goto_1
    const/4 v15, 0x1

    invoke-static {v9, v15, v12}, Lcom/jingdong/app/mall/utils/NotificationUtils;->addPushMessageNotify(Lcom/jingdong/common/entity/MessageSummary;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    .end local v3           #cookies:Ljava/lang/String;
    .end local v5           #idType:Ljava/lang/String;
    .end local v6           #json:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v9           #messageSummary:Lcom/jingdong/common/entity/MessageSummary;
    .end local v11           #msgId:Ljava/lang/String;
    .end local v12           #needVoice:Z
    .end local v14           #type:I
    :catch_0
    move-exception v4

    .line 85
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v3       #cookies:Ljava/lang/String;
    .restart local v5       #idType:Ljava/lang/String;
    .restart local v6       #json:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v9       #messageSummary:Lcom/jingdong/common/entity/MessageSummary;
    .restart local v11       #msgId:Ljava/lang/String;
    .restart local v14       #type:I
    :cond_3
    const/4 v12, 0x1

    goto :goto_1

    .line 87
    .end local v3           #cookies:Ljava/lang/String;
    .end local v5           #idType:Ljava/lang/String;
    .end local v6           #json:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v9           #messageSummary:Lcom/jingdong/common/entity/MessageSummary;
    .end local v10           #msg:Ljava/lang/String;
    .end local v11           #msgId:Ljava/lang/String;
    .end local v14           #type:I
    :cond_4
    const-string v15, "com.jd.register.action"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 89
    const-string v15, "com.jd.msg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v8, jsonForRid:Ljava/lang/String;
    const/4 v6, 0x0

    .line 92
    .restart local v6       #json:Lcom/jingdong/common/utils/JSONObjectProxy;
    :try_start_1
    new-instance v7, Lcom/jingdong/common/utils/JSONObjectProxy;

    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v15}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 94
    .end local v6           #json:Lcom/jingdong/common/utils/JSONObjectProxy;
    .local v7, json:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v7, :cond_0

    .line 96
    :try_start_2
    const-string v15, "aid"

    invoke-virtual {v7, v15}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, appID:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v15, "JD_PUSH_APPID"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/jingdong/cloud/msg/util/CommonUtil;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 102
    const-string v15, "rid"

    invoke-virtual {v7, v15}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 106
    .local v13, rid:Ljava/lang/String;
    if-nez v13, :cond_5

    .line 107
    const-string v13, ""

    .line 109
    :cond_5
    invoke-static {v13}, Lcom/jingdong/common/utils/PushMessageUtils;->registerDevice(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 111
    .end local v2           #appID:Ljava/lang/String;
    .end local v13           #rid:Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v6, v7

    .line 112
    .end local v7           #json:Lcom/jingdong/common/utils/JSONObjectProxy;
    .local v4, e:Lorg/json/JSONException;
    .restart local v6       #json:Lcom/jingdong/common/utils/JSONObjectProxy;
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 111
    .end local v4           #e:Lorg/json/JSONException;
    :catch_2
    move-exception v4

    goto :goto_2
.end method
