.class public Lcom/jingdong/common/utils/PushMessageUtils;
.super Ljava/lang/Object;
.source "PushMessageUtils.java"


# static fields
.field private static DEFAULT_GET_TOKEN_DELAY:J = 0x0L

.field private static final KEY_KEY:Ljava/lang/String; = "k"

.field private static final KEY_VALUE:Ljava/lang/String; = "v"

.field private static final TAG:Ljava/lang/String; = "PushMessageUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/jingdong/common/utils/PushMessageUtils;->DEFAULT_GET_TOKEN_DELAY:J

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindUser(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 177
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    invoke-static {p0, p1, p2}, Lcom/jingdong/common/utils/AlarmUtils;->alarmPushMsgTask(Landroid/content/Context;J)V

    .line 210
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/PushMessageUtils;->getBindState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    invoke-static {p0, p1, p2}, Lcom/jingdong/common/utils/AlarmUtils;->alarmPushMsgTask(Landroid/content/Context;J)V

    goto :goto_0

    .line 187
    :cond_1
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 188
    .local v0, setting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "bingding"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 189
    const-string v1, "msgHost"

    invoke-static {v1}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setHost(Ljava/lang/String;)V

    .line 190
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 191
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUseLocalCookies(Z)V

    .line 192
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setThisFunctionMustBeExcute(Z)V

    .line 193
    new-instance v1, Lcom/jingdong/common/utils/PushMessageUtils$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/jingdong/common/utils/PushMessageUtils$2;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 209
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroupUtils;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0
.end method

.method public static getAllMessageList(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V
    .locals 4
    .parameter "activity"
    .parameter "listener"

    .prologue
    const/4 v3, 0x1

    .line 389
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 390
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "allListAndDetail"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPost(Z)V

    .line 392
    const-string v1, "msgHost"

    invoke-static {v1}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setHost(Ljava/lang/String;)V

    .line 393
    const-string v1, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 394
    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 395
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 396
    invoke-interface {p0}, Lcom/jingdong/common/frame/IMyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 397
    return-void
.end method

.method public static getAllUnReadMessageIds(Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V
    .locals 3
    .parameter "onCommonListener"

    .prologue
    .line 307
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 308
    .local v0, setting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "msgUnReadIdList"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 309
    const-string v1, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 310
    const-string v1, "msgHost"

    invoke-static {v1}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setHost(Ljava/lang/String;)V

    .line 311
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 312
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUseLocalCookies(Z)V

    .line 313
    invoke-virtual {v0, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 314
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroupUtils;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 315
    return-void
.end method

.method public static getAllUserCategory(Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V
    .locals 4
    .parameter "onCommonListener"

    .prologue
    .line 280
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v3

    if-nez v3, :cond_0

    .line 299
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/PushMessageUtils;->getDeviceTokenFromLocal()Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, token:Ljava/lang/String;
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 286
    .local v1, setting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v3, "getSubcribeMsgTypes"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 287
    const-string v3, "msgHost"

    invoke-static {v3}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setHost(Ljava/lang/String;)V

    .line 288
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 289
    const-string v3, "devicetoken"

    invoke-virtual {v1, v3, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    invoke-virtual {v1, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 291
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroupUtils;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v0

    .line 293
    .local v0, group:Lcom/jingdong/common/utils/HttpGroup;
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0
.end method

.method public static getBindState()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 130
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 131
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "msg_auto_has_bind"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultGetTokenDelay()J
    .locals 4

    .prologue
    .line 40
    sget-wide v0, Lcom/jingdong/common/utils/PushMessageUtils;->DEFAULT_GET_TOKEN_DELAY:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 41
    const-string v0, "defaultFirstGetTokenDelay"

    invoke-static {v0}, Lcom/jingdong/common/config/Configuration;->getLongProperty(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/jingdong/common/utils/PushMessageUtils;->DEFAULT_GET_TOKEN_DELAY:J

    .line 43
    :cond_0
    sget-wide v0, Lcom/jingdong/common/utils/PushMessageUtils;->DEFAULT_GET_TOKEN_DELAY:J

    return-wide v0
.end method

.method public static getDeviceTokenFromLocal()Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 109
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "msg_auto_device_token"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, token:Ljava/lang/String;
    return-object v1
.end method

.method public static getMessageDetail(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V
    .locals 5
    .parameter "activity"
    .parameter "msgId"
    .parameter "onCommonListener"

    .prologue
    .line 326
    invoke-static {}, Lcom/jingdong/common/utils/PushMessageUtils;->getDeviceTokenFromLocal()Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, token:Ljava/lang/String;
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 328
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v3, "messageDetail"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 329
    const-string v3, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    const-string v3, "msgId"

    invoke-virtual {v1, v3, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    const-string v3, "devicetoken"

    invoke-virtual {v1, v3, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    const-string v3, "msgHost"

    invoke-static {v3}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setHost(Ljava/lang/String;)V

    .line 333
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 334
    invoke-virtual {v1, p2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 335
    invoke-interface {p0}, Lcom/jingdong/common/frame/IMyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v0

    .line 337
    .local v0, group:Lcom/jingdong/common/utils/HttpGroup;
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 344
    return-void
.end method

.method public static getMessageSummaryWithMsgId(Ljava/lang/String;Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V
    .locals 3
    .parameter "lastId"
    .parameter "onCommonListener"

    .prologue
    .line 260
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    :goto_0
    return-void

    .line 264
    :cond_0
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 265
    .local v0, setting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "msgSummaryList"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 266
    const-string v1, "msgHost"

    invoke-static {v1}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setHost(Ljava/lang/String;)V

    .line 267
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 268
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUseLocalCookies(Z)V

    .line 269
    const-string v1, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    const-string v1, "msgIds"

    invoke-virtual {v0, v1, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 273
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroupUtils;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0
.end method

.method public static initNotfyWithMessageList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/BaseMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, msgIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 234
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v2, needNotifys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/BaseMessage;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v6, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-object v2

    .line 238
    :cond_1
    invoke-static {}, Lcom/jingdong/common/database/table/PushMessageTable;->getHasNotifyMessages()Ljava/util/ArrayList;

    move-result-object v1

    .line 239
    .local v1, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/BaseMessage;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 245
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v6, :cond_0

    goto :goto_0

    .line 239
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 240
    .local v0, id:Ljava/lang/String;
    new-instance v3, Lcom/jingdong/common/entity/BaseMessage;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v0, v5}, Lcom/jingdong/common/entity/BaseMessage;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    .local v3, temp:Lcom/jingdong/common/entity/BaseMessage;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 242
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static regPushMessageToken(Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)V
    .locals 4
    .parameter "listener"
    .parameter "otherGroup"
    .parameter "otherSetting"

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-static {}, Lcom/jingdong/common/utils/PushMessageUtils;->getDeviceTokenFromLocal()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 58
    :cond_0
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 59
    .local v0, setting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "appName"

    const-string v2, "jdapp"

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    const-string v1, "registerDevice"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 61
    const-string v1, "msgHost"

    invoke-static {v1}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setHost(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 63
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 64
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setThisFunctionMustBeExcute(Z)V

    .line 66
    new-instance v1, Lcom/jingdong/common/utils/PushMessageUtils$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/jingdong/common/utils/PushMessageUtils$1;-><init>(Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 99
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroupUtils;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0
.end method

.method public static registerDevice(Ljava/lang/String;)V
    .locals 4
    .parameter "deviceToken"

    .prologue
    const/4 v3, 0x0

    .line 432
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 433
    .local v0, setting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "appName"

    const-string v2, "jdapp"

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 434
    const-string v1, "devicetoken"

    invoke-virtual {v0, v1, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 435
    const-string v1, "registerDevice"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 436
    const-string v1, "msgHost"

    invoke-static {v1}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setHost(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 438
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 439
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setThisFunctionMustBeExcute(Z)V

    .line 441
    new-instance v1, Lcom/jingdong/common/utils/PushMessageUtils$3;

    invoke-direct {v1}, Lcom/jingdong/common/utils/PushMessageUtils$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 465
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroupUtils;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 466
    return-void
.end method

.method public static resetMessageCategorySubcribeState(Lcom/jingdong/common/entity/MessageCategory;Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V
    .locals 6
    .parameter "category"
    .parameter "listener"

    .prologue
    .line 407
    invoke-static {}, Lcom/jingdong/common/utils/PushMessageUtils;->getDeviceTokenFromLocal()Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, token:Ljava/lang/String;
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 410
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v3, "subcribeMsgType"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 411
    const-string v3, "msgHost"

    invoke-static {v3}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setHost(Ljava/lang/String;)V

    .line 412
    const-string v3, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 413
    const-string v3, "appname"

    const-string v4, "jdapp"

    invoke-virtual {v1, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    const-string v3, "devicetoken"

    invoke-virtual {v1, v3, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 415
    const-string v3, "msgType"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/MessageCategory;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 416
    const-string v3, "isSubcribe"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jingdong/common/entity/MessageCategory;->getIsSubcribe()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 417
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 418
    invoke-virtual {v1, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 419
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroupUtils;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v0

    .line 421
    .local v0, group:Lcom/jingdong/common/utils/HttpGroup;
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 428
    return-void
.end method

.method public static saveBindState(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 121
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 122
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "msg_auto_has_bind"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 124
    return-void
.end method

.method public static saveDeviceToken(Ljava/lang/String;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 138
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "msg_auto_device_token"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    return-void
.end method

.method public static saveNotifyIdAndTime(Ljava/lang/String;)V
    .locals 4
    .parameter "msgId"

    .prologue
    .line 160
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 165
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "log_push_msg_notify_id_and_time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lcom/jingdong/common/utils/FormatUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static saveUnReadMsgIds(Ljava/lang/String;)V
    .locals 4
    .parameter "msgIds"

    .prologue
    .line 147
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 151
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "log_push_msg_unread_msg_ids"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lcom/jingdong/common/utils/FormatUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static sendNotiftyMessageLog(Lcom/jingdong/common/entity/MessageSummary;Ljava/util/ArrayList;Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V
    .locals 12
    .parameter "summary"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/entity/MessageSummary;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/BaseMessage;",
            ">;",
            "Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 477
    .local p1, needNotifys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/BaseMessage;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-lt v10, v11, :cond_0

    if-nez p0, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 482
    .local v7, params:Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 484
    .local v0, array:Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/jingdong/common/entity/MessageSummary;->getId()Ljava/lang/String;

    move-result-object v8

    .line 487
    .local v8, summaryId:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v5, v10, :cond_2

    .line 518
    :try_start_0
    const-string v10, "msg"

    invoke-virtual {v7, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 526
    new-instance v4, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 527
    .local v4, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v10, "statisticsMsgAlert"

    invoke-virtual {v4, v10}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v4, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 529
    const-string v10, "msgHost"

    invoke-static {v10}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setHost(Ljava/lang/String;)V

    .line 530
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 531
    invoke-virtual {v4, p2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 532
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroupUtils;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v3

    .line 533
    .local v3, group:Lcom/jingdong/common/utils/HttpGroup;
    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0

    .line 488
    .end local v3           #group:Lcom/jingdong/common/utils/HttpGroup;
    .end local v4           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :cond_2
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/BaseMessage;

    .line 489
    .local v1, baseMessage:Lcom/jingdong/common/entity/BaseMessage;
    if-nez v1, :cond_4

    .line 487
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 493
    :cond_4
    invoke-virtual {v1}, Lcom/jingdong/common/entity/BaseMessage;->getMsgId()Ljava/lang/String;

    move-result-object v6

    .line 494
    .local v6, id:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 498
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 501
    .local v9, temp:Lorg/json/JSONObject;
    :try_start_1
    const-string v10, "k"

    invoke-virtual {v9, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 502
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 503
    const-string v10, "v"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/MessageSummary;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 507
    :goto_3
    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 508
    :catch_0
    move-exception v10

    goto :goto_2

    .line 505
    :cond_5
    const-string v10, "v"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 519
    .end local v1           #baseMessage:Lcom/jingdong/common/entity/BaseMessage;
    .end local v6           #id:Ljava/lang/String;
    .end local v9           #temp:Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    .line 523
    .local v2, e:Lorg/json/JSONException;
    goto :goto_0
.end method

.method public static setAllMessageReaded(Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 350
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/jingdong/common/utils/PushMessageUtils;->setMessageReaded(Ljava/lang/String;Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V

    .line 351
    return-void
.end method

.method public static setAllMessageReaded(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/MessageListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 538
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/MessageListItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v0, broadcastReads:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/BaseMessage;>;"
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 540
    .local v3, params:Lorg/json/JSONObject;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 541
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 547
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 548
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 550
    :try_start_0
    const-string v5, "msgIds"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :goto_1
    new-instance v5, Lcom/jingdong/common/utils/PushMessageUtils$4;

    invoke-direct {v5, v0}, Lcom/jingdong/common/utils/PushMessageUtils$4;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v5}, Lcom/jingdong/common/utils/PushMessageUtils;->setAllMessageReaded(Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V

    .line 573
    :cond_0
    return-void

    .line 541
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/MessageListItem;

    .line 542
    .local v2, messItem:Lcom/jingdong/common/entity/MessageListItem;
    invoke-virtual {v2}, Lcom/jingdong/common/entity/MessageListItem;->getType()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x14

    if-ne v6, v7, :cond_2

    .line 543
    new-instance v6, Lcom/jingdong/common/entity/BaseMessage;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/MessageListItem;->getMsgId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/jingdong/common/entity/BaseMessage;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_2
    invoke-virtual {v2}, Lcom/jingdong/common/entity/MessageListItem;->getMsgId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 551
    .end local v2           #messItem:Lcom/jingdong/common/entity/MessageListItem;
    :catch_0
    move-exception v1

    .line 552
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static setMessageReaded(Ljava/lang/String;Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V
    .locals 5
    .parameter "msgId"
    .parameter "listener"

    .prologue
    .line 358
    invoke-static {}, Lcom/jingdong/common/utils/PushMessageUtils;->getDeviceTokenFromLocal()Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, token:Ljava/lang/String;
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 361
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v3, "allMsgReaded"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 362
    const-string v3, "msgHost"

    invoke-static {v3}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setHost(Ljava/lang/String;)V

    .line 364
    const-string v3, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 365
    const-string v3, "devicetoken"

    invoke-virtual {v1, v3, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 366
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 367
    const-string v3, "msgId"

    invoke-virtual {v1, v3, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 369
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 370
    invoke-virtual {v1, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 371
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroupUtils;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v0

    .line 373
    .local v0, group:Lcom/jingdong/common/utils/HttpGroup;
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 380
    return-void
.end method

.method public static unBindUser()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 216
    invoke-static {}, Lcom/jingdong/common/utils/PushMessageUtils;->getBindState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    .local v0, setting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :goto_0
    return-void

    .line 219
    .end local v0           #setting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :cond_0
    invoke-static {v2}, Lcom/jingdong/common/utils/PushMessageUtils;->saveBindState(Z)V

    .line 220
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 221
    .restart local v0       #setting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "cancelDevice"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 222
    const-string v1, "msgHost"

    invoke-static {v1}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setHost(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 224
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroupUtils;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0
.end method
