.class public Lcom/jingdong/cloud/msg/PushService;
.super Ljava/lang/Object;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/cloud/msg/PushService$LoginSuccessListener;
    }
.end annotation


# static fields
.field private static final LISTENERS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/cloud/msg/PushService$LoginSuccessListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final SERVICE:Lcom/jingdong/cloud/msg/PushService;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private regId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-class v0, Lcom/jingdong/cloud/msg/PushService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/cloud/msg/PushService;->TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/jingdong/cloud/msg/PushService;

    invoke-direct {v0}, Lcom/jingdong/cloud/msg/PushService;-><init>()V

    sput-object v0, Lcom/jingdong/cloud/msg/PushService;->SERVICE:Lcom/jingdong/cloud/msg/PushService;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/jingdong/cloud/msg/PushService;->LISTENERS:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/cloud/msg/PushService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jingdong/cloud/msg/PushService;->regId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/cloud/msg/PushService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/jingdong/cloud/msg/PushService;->regId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/jingdong/cloud/msg/PushService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/cloud/msg/PushService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/jingdong/cloud/msg/PushService;->loginOrRegister(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/cloud/msg/PushService;Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/jingdong/cloud/msg/PushService;->parseJson(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static getInstance()Lcom/jingdong/cloud/msg/PushService;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/jingdong/cloud/msg/PushService;->SERVICE:Lcom/jingdong/cloud/msg/PushService;

    return-object v0
.end method

.method private handleAfterLogin()V
    .locals 3

    .prologue
    .line 251
    sget-object v1, Lcom/jingdong/cloud/msg/PushService;->LISTENERS:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 255
    return-void

    .line 251
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/cloud/msg/PushService$LoginSuccessListener;

    .line 252
    .local v0, listener:Lcom/jingdong/cloud/msg/PushService$LoginSuccessListener;
    invoke-interface {v0}, Lcom/jingdong/cloud/msg/PushService$LoginSuccessListener;->onLoginSuccess()V

    .line 253
    sget-object v2, Lcom/jingdong/cloud/msg/PushService;->LISTENERS:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private handleResponse(Landroid/content/Context;ILorg/json/JSONObject;)V
    .locals 5
    .parameter "context"
    .parameter "type"
    .parameter "jsonObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 218
    sget-boolean v1, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v1, :cond_0

    .line 219
    sget-object v1, Lcom/jingdong/cloud/msg/PushService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Handle received data: type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 245
    :goto_0
    :pswitch_0
    return-void

    .line 223
    :pswitch_1
    invoke-static {v4}, Lcom/jingdong/cloud/msg/entity/LoginState;->setHasLogin(Z)V

    .line 224
    invoke-direct {p0}, Lcom/jingdong/cloud/msg/PushService;->handleAfterLogin()V

    goto :goto_0

    .line 227
    :pswitch_2
    const-string v1, "rid"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, rid:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 229
    const-string v1, "regid"

    invoke-static {p1, v1, v0}, Lcom/jingdong/cloud/msg/util/SharedPreferenceUtil;->putStringValueByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v1, "com.jd.register.action"

    invoke-direct {p0, p1, v1, p3}, Lcom/jingdong/cloud/msg/PushService;->sendMsgBroadcast(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 234
    :cond_1
    invoke-static {v4}, Lcom/jingdong/cloud/msg/entity/LoginState;->setHasLogin(Z)V

    .line 235
    invoke-direct {p0}, Lcom/jingdong/cloud/msg/PushService;->handleAfterLogin()V

    goto :goto_0

    .line 239
    .end local v0           #rid:Ljava/lang/String;
    :pswitch_3
    const-string v1, "type"

    invoke-virtual {p3, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 240
    const-string v1, "com.jd.msg.tag"

    invoke-direct {p0, p1, v1, p3}, Lcom/jingdong/cloud/msg/PushService;->sendMsgBroadcast(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private loginOrRegister(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 145
    const-string v0, "regid"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/jingdong/cloud/msg/util/SharedPreferenceUtil;->getStringFromSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/cloud/msg/PushService;->regId:Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loginOrRegister:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jingdong/cloud/msg/PushService;->regId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/cloud/msg/PushService;->regId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/jingdong/cloud/msg/PushService;->regId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Lcom/jingdong/cloud/msg/PushService;->TAG:Ljava/lang/String;

    const-string v1, "Sending register request..."

    invoke-static {v0, v1}, Lcom/jingdong/cloud/msg/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {p1}, Lcom/jingdong/cloud/msg/PushSocketProtocol;->sendRegister(Landroid/content/Context;)V

    .line 155
    :goto_0
    return-void

    .line 151
    :cond_0
    sget-object v0, Lcom/jingdong/cloud/msg/PushService;->TAG:Ljava/lang/String;

    const-string v1, "Sending login request..."

    invoke-static {v0, v1}, Lcom/jingdong/cloud/msg/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/jingdong/cloud/msg/PushService;->regId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jingdong/cloud/msg/PushSocketProtocol;->sendLogin(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseJson(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 9
    .parameter "context"
    .parameter "jsonObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 163
    const-string v6, "o"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, opcoFlag:Ljava/lang/String;
    const/4 v5, 0x0

    .line 165
    .local v5, reqId:Ljava/lang/String;
    const-string v6, "reqid"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 166
    const-string v6, "reqid"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 168
    :cond_0
    sget-boolean v6, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v6, :cond_1

    .line 169
    sget-object v6, Lcom/jingdong/cloud/msg/PushService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Received json message \uff1a opcoFlag = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", message"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 172
    const-string v6, "SMSG"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 173
    const-string v6, "mid"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, msgId:Ljava/lang/String;
    sget-boolean v6, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v6, :cond_2

    .line 175
    sget-object v6, Lcom/jingdong/cloud/msg/PushService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "opcoFlag = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", msgId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_2
    invoke-static {v3}, Lcom/jingdong/cloud/msg/util/MsgIdQueue;->isContainId(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 179
    invoke-static {}, Lcom/jingdong/cloud/msg/util/MsgIdQueue;->pollQueue()V

    .line 180
    invoke-static {v3}, Lcom/jingdong/cloud/msg/util/MsgIdQueue;->pushQueue(Ljava/lang/String;)V

    .line 181
    const-string v6, "ct"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, content:Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 184
    .local v2, jsonContent:Lorg/json/JSONObject;
    const-string v6, "com.jd.msg"

    invoke-direct {p0, p1, v6, v2}, Lcom/jingdong/cloud/msg/PushService;->sendMsgBroadcast(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 187
    .end local v1           #content:Ljava/lang/String;
    .end local v2           #jsonContent:Lorg/json/JSONObject;
    :cond_3
    const/4 v6, 0x0

    invoke-static {p1, v3, v6}, Lcom/jingdong/cloud/msg/PushSocketProtocol;->reponseSMSG(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .end local v3           #msgId:Ljava/lang/String;
    :cond_4
    :goto_0
    return-void

    .line 188
    :cond_5
    const-string v6, "OK"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 189
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 190
    invoke-static {v5}, Lcom/jingdong/cloud/msg/util/RequestQueue;->take(Ljava/lang/String;)Lcom/jingdong/cloud/msg/entity/Call;

    move-result-object v0

    .line 192
    .local v0, call:Lcom/jingdong/cloud/msg/entity/Call;
    sget-boolean v6, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v6, :cond_6

    .line 193
    sget-object v6, Lcom/jingdong/cloud/msg/PushService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "parseJson --->  call = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_6
    if-eqz v0, :cond_4

    .line 199
    invoke-virtual {v0}, Lcom/jingdong/cloud/msg/entity/Call;->getOpType()I

    move-result v6

    invoke-direct {p0, p1, v6, p2}, Lcom/jingdong/cloud/msg/PushService;->handleResponse(Landroid/content/Context;ILorg/json/JSONObject;)V

    .line 200
    sget-boolean v6, Lcom/jingdong/cloud/msg/PushSocketProtocol;->isOpenHeartBeat:Z

    if-nez v6, :cond_4

    .line 201
    const/4 v6, 0x1

    invoke-static {p1, v6}, Lcom/jingdong/cloud/msg/PushSocketProtocol;->openOrCloseHeartBeat(Landroid/content/Context;Z)V

    goto :goto_0

    .line 203
    .end local v0           #call:Lcom/jingdong/cloud/msg/entity/Call;
    :cond_7
    const-string v6, "ERR"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 204
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 205
    invoke-static {v5}, Lcom/jingdong/cloud/msg/util/RequestQueue;->take(Ljava/lang/String;)Lcom/jingdong/cloud/msg/entity/Call;

    .line 206
    const-string v6, "com.jd.msg.error"

    invoke-direct {p0, p1, v6, p2}, Lcom/jingdong/cloud/msg/PushService;->sendMsgBroadcast(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private sendMsgBroadcast(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5
    .parameter "context"
    .parameter "action"
    .parameter "jsonObject"

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 132
    .local v1, msg:Ljava/lang/String;
    if-nez p3, :cond_0

    .line 133
    new-instance p3, Lorg/json/JSONObject;

    .end local p3
    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 135
    .restart local p3
    :cond_0
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    const-string v2, "com.jd.msg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    sget-object v2, Lcom/jingdong/cloud/msg/PushService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendMsgBroadcast: action = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 139
    return-void
.end method


# virtual methods
.method addTag(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "tags"

    .prologue
    const/4 v6, 0x0

    .line 263
    invoke-static {}, Lcom/jingdong/cloud/msg/entity/LoginState;->isHasLogin()Z

    move-result v1

    .line 264
    .local v1, isLogined:Z
    sget-boolean v3, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v3, :cond_0

    .line 265
    sget-object v3, Lcom/jingdong/cloud/msg/PushService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Login status: isLogined = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_0
    if-nez v1, :cond_3

    .line 268
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/jingdong/cloud/msg/util/RequestQueue;->contains(Ljava/lang/Integer;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 269
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/jingdong/cloud/msg/util/RequestQueue;->contains(Ljava/lang/Integer;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 270
    :cond_1
    sget-object v3, Lcom/jingdong/cloud/msg/PushService;->LISTENERS:Ljava/util/ArrayList;

    new-instance v4, Lcom/jingdong/cloud/msg/PushService$2;

    invoke-direct {v4, p0, p1, p2}, Lcom/jingdong/cloud/msg/PushService$2;-><init>(Lcom/jingdong/cloud/msg/PushService;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    :goto_0
    return-void

    .line 277
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 279
    .local v2, json:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "com.jd.msg.not.login"

    const-string v4, "\u60a8\u8fd8\u6ca1\u6709\u767b\u5f55\u6216\u6ce8\u518c\uff0c\u8bf7\u5148\u767b\u5f55\u6216\u6ce8\u518c!"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    const-string v3, "com.jd.msg.not.login"

    const/4 v4, 0x0

    invoke-direct {p0, p1, v3, v4}, Lcom/jingdong/cloud/msg/PushService;->sendMsgBroadcast(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 287
    .end local v0           #e:Lorg/json/JSONException;
    .end local v2           #json:Lorg/json/JSONObject;
    :cond_3
    invoke-static {p1, v6, p2}, Lcom/jingdong/cloud/msg/PushSocketProtocol;->addTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public connectServer(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    sget-boolean v0, Lcom/jingdong/cloud/msg/service/JDReceiveMsgService;->isNeedLive:Z

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 53
    :cond_0
    new-instance v0, Lcom/jingdong/cloud/msg/PushService$1;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/cloud/msg/PushService$1;-><init>(Lcom/jingdong/cloud/msg/PushService;Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/jingdong/cloud/msg/PushSocket;->connect(Landroid/content/Context;Lcom/jingdong/cloud/msg/PushSocket$ConnectListener;)V

    goto :goto_0
.end method

.method removeTag(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "tags"

    .prologue
    .line 297
    invoke-static {}, Lcom/jingdong/cloud/msg/entity/LoginState;->isHasLogin()Z

    move-result v1

    .line 298
    .local v1, isLogined:Z
    sget-boolean v3, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v3, :cond_0

    .line 299
    sget-object v3, Lcom/jingdong/cloud/msg/PushService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Login status: isLogined = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_0
    if-nez v1, :cond_3

    .line 302
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/jingdong/cloud/msg/util/RequestQueue;->contains(Ljava/lang/Integer;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 303
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/jingdong/cloud/msg/util/RequestQueue;->contains(Ljava/lang/Integer;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 304
    :cond_1
    sget-object v3, Lcom/jingdong/cloud/msg/PushService;->LISTENERS:Ljava/util/ArrayList;

    new-instance v4, Lcom/jingdong/cloud/msg/PushService$3;

    invoke-direct {v4, p0, p1, p2}, Lcom/jingdong/cloud/msg/PushService$3;-><init>(Lcom/jingdong/cloud/msg/PushService;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    :goto_0
    return-void

    .line 311
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 313
    .local v2, json:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "com.jd.msg.not.login"

    const-string v4, "\u60a8\u8fd8\u6ca1\u6709\u767b\u5f55\u6216\u6ce8\u518c\uff0c\u8bf7\u5148\u767b\u5f55\u6216\u6ce8\u518c!"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    const-string v3, "com.jd.msg.not.login"

    invoke-direct {p0, p1, v3, v2}, Lcom/jingdong/cloud/msg/PushService;->sendMsgBroadcast(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 321
    .end local v0           #e:Lorg/json/JSONException;
    .end local v2           #json:Lorg/json/JSONObject;
    :cond_3
    const/4 v3, 0x0

    invoke-static {p1, v3, p2}, Lcom/jingdong/cloud/msg/PushSocketProtocol;->removeTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
