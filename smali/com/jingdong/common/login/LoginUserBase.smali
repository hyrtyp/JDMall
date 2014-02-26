.class public abstract Lcom/jingdong/common/login/LoginUserBase;
.super Ljava/lang/Object;
.source "LoginUserBase.java"

# interfaces
.implements Lcom/jingdong/common/login/ILoginUser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/login/LoginUserBase$LoginListener;,
        Lcom/jingdong/common/login/LoginUserBase$LoginRequestListener;
    }
.end annotation


# static fields
.field public static final CERTKEY:Ljava/lang/String; = "cert"

.field public static final LOGIN_NAME:Ljava/lang/String; = "loginName"

.field private static final TAG:Ljava/lang/String;

.field private static UserState:I

.field private static isAlreadySyncCart:Z

.field public static isAutoRetryLogin:Z

.field private static jbUserInfo:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    sput v0, Lcom/jingdong/common/login/LoginUserBase;->UserState:I

    .line 45
    sput-boolean v0, Lcom/jingdong/common/login/LoginUserBase;->isAlreadySyncCart:Z

    .line 47
    const-class v0, Lcom/jingdong/common/login/LoginUserBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/common/login/LoginUserBase;->TAG:Ljava/lang/String;

    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jingdong/common/login/LoginUserBase;->isAutoRetryLogin:Z

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearRemember(ZZZ)V
    .locals 0
    .parameter "username"
    .parameter "password"
    .parameter "remember"

    .prologue
    .line 390
    if-eqz p0, :cond_0

    .line 391
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->removeUsername()V

    .line 393
    :cond_0
    if-eqz p1, :cond_1

    .line 394
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->removePassword()V

    .line 396
    :cond_1
    if-eqz p2, :cond_2

    .line 397
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->removeRemember()V

    .line 399
    :cond_2
    return-void
.end method

.method public static executeLoginRunnableForCheckNetwork(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/Runnable;)V
    .locals 6
    .parameter "myActivity"
    .parameter "runnable"

    .prologue
    const/4 v3, 0x0

    .line 227
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/jingdong/common/utils/NetUtils;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->isRemember()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, userName:Ljava/lang/String;
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getPassword()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, password:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    new-instance v5, Lcom/jingdong/common/login/LoginUserBase$2;

    invoke-direct {v5, p1, p0}, Lcom/jingdong/common/login/LoginUserBase$2;-><init>(Ljava/lang/Runnable;Lcom/jingdong/common/frame/IMyActivity;)V

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/jingdong/common/login/LoginUserBase;->loginRequest(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/jingdong/common/login/LoginUserBase$LoginRequestListener;)V

    .line 247
    .end local v1           #userName:Ljava/lang/String;
    .end local v2           #password:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static getLoginName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    sget v1, Lcom/jingdong/common/login/LoginUserBase;->UserState:I

    sget v2, Lcom/jingdong/common/constant/Constants;->LOG_OFF:I

    if-ne v1, v2, :cond_0

    .line 178
    const-string v1, ""

    .line 183
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 181
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/jingdong/common/login/LoginUserBase;->jbUserInfo:Lorg/json/JSONObject;

    const-string v2, "loginName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method public static getLoginUserCert()Ljava/lang/String;
    .locals 3

    .prologue
    .line 188
    sget v1, Lcom/jingdong/common/login/LoginUserBase;->UserState:I

    sget v2, Lcom/jingdong/common/constant/Constants;->LOG_OFF:I

    if-ne v1, v2, :cond_0

    .line 189
    const-string v1, ""

    .line 194
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 192
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/jingdong/common/login/LoginUserBase;->jbUserInfo:Lorg/json/JSONObject;

    const-string v2, "cert"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method public static getLoginUserInfo()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 140
    sget-object v2, Lcom/jingdong/common/login/LoginUserBase;->jbUserInfo:Lorg/json/JSONObject;

    if-nez v2, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 152
    .local v0, userInfo:Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 143
    .end local v0           #userInfo:Lorg/json/JSONObject;
    :cond_0
    const/4 v0, 0x0

    .line 145
    .restart local v0       #userInfo:Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    sget-object v2, Lcom/jingdong/common/login/LoginUserBase;->jbUserInfo:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v0           #userInfo:Lorg/json/JSONObject;
    .local v1, userInfo:Lorg/json/JSONObject;
    :try_start_1
    const-string v2, "cert"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 147
    .end local v1           #userInfo:Lorg/json/JSONObject;
    .restart local v0       #userInfo:Lorg/json/JSONObject;
    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    .end local v0           #userInfo:Lorg/json/JSONObject;
    .restart local v1       #userInfo:Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #userInfo:Lorg/json/JSONObject;
    .restart local v0       #userInfo:Lorg/json/JSONObject;
    goto :goto_0
.end method

.method public static getLoginUserName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 161
    sget v1, Lcom/jingdong/common/login/LoginUserBase;->UserState:I

    sget v2, Lcom/jingdong/common/constant/Constants;->LOG_OFF:I

    if-ne v1, v2, :cond_0

    .line 162
    const-string v1, ""

    .line 167
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 165
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/jingdong/common/login/LoginUserBase;->jbUserInfo:Lorg/json/JSONObject;

    const-string v2, "pin"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method public static hasLogin()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 80
    sget v2, Lcom/jingdong/common/login/LoginUserBase;->UserState:I

    if-nez v2, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    sget v2, Lcom/jingdong/common/login/LoginUserBase;->UserState:I

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 83
    goto :goto_0
.end method

.method public static isAlreadySyncCart()Z
    .locals 1

    .prologue
    .line 199
    sget-boolean v0, Lcom/jingdong/common/login/LoginUserBase;->isAlreadySyncCart:Z

    return v0
.end method

.method public static login(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/jingdong/common/login/LoginUserBase$LoginRequestListener;)V
    .locals 1
    .parameter "myActivity"
    .parameter "userName"
    .parameter "password"
    .parameter "isErrorNotifyUser"
    .parameter "isEffect"
    .parameter "listener"

    .prologue
    .line 217
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jingdong/common/login/LoginUserBase;->isAutoRetryLogin:Z

    .line 218
    invoke-static/range {p0 .. p5}, Lcom/jingdong/common/login/LoginUserBase;->loginRequest(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/jingdong/common/login/LoginUserBase$LoginRequestListener;)V

    .line 219
    return-void
.end method

.method public static loginCallback(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "mContext"
    .parameter "runnable"

    .prologue
    .line 405
    new-instance v0, Lcom/jingdong/common/login/LoginUserBase$4;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/common/login/LoginUserBase$4;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/Runnable;)V

    invoke-interface {p0, v0}, Lcom/jingdong/common/frame/IMyActivity;->addResumeListener(Lcom/jingdong/common/frame/IResumeListener;)V

    .line 417
    return-void
.end method

.method public static loginRequest(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/jingdong/common/login/LoginUserBase$LoginRequestListener;)V
    .locals 4
    .parameter "myActivity"
    .parameter "userName"
    .parameter "password"
    .parameter "isErrorNotifyUser"
    .parameter "isEffect"
    .parameter "listener"

    .prologue
    .line 267
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 277
    .local v2, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "loginpwd"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    const-string v3, "loginname"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 286
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v3, "login"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 288
    new-instance v3, Lcom/jingdong/common/login/LoginUserBase$3;

    invoke-direct {v3, p5, p1, p0}, Lcom/jingdong/common/login/LoginUserBase$3;-><init>(Lcom/jingdong/common/login/LoginUserBase$LoginRequestListener;Ljava/lang/String;Lcom/jingdong/common/frame/IMyActivity;)V

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 381
    invoke-virtual {v1, p3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 382
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setAlertErrorDialogType(I)V

    .line 383
    if-nez p4, :cond_2

    .line 384
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 386
    :cond_2
    invoke-interface {p0}, Lcom/jingdong/common/frame/IMyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0

    .line 279
    .end local v1           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :catch_0
    move-exception v0

    .line 283
    .local v0, e:Lorg/json/JSONException;
    goto :goto_0
.end method

.method public static logoutOnlineInfo()V
    .locals 2

    .prologue
    .line 423
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/jingdong/common/login/LoginUserBase;->setUserStateOff(Z)V

    .line 424
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "login"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 425
    invoke-static {}, Lcom/jingdong/common/constant/Constants;->clearOrderInfo()V

    .line 426
    invoke-static {}, Lcom/jingdong/common/controller/ShoppingBaseController;->clearLocalCart()V

    .line 427
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/MyApplication;->getCurrentMyActivity()Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/common/utils/UserUtil;->cleanData(Lcom/jingdong/common/frame/IMyActivity;)V

    .line 428
    return-void
.end method

.method public static setAlreadySyncCart(Z)V
    .locals 0
    .parameter "isSyncCart"

    .prologue
    .line 203
    sput-boolean p0, Lcom/jingdong/common/login/LoginUserBase;->isAlreadySyncCart:Z

    .line 204
    return-void
.end method

.method public static setUserInfo(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "userinfo"

    .prologue
    .line 133
    sput-object p0, Lcom/jingdong/common/login/LoginUserBase;->jbUserInfo:Lorg/json/JSONObject;

    .line 134
    invoke-static {}, Lcom/jingdong/common/utils/NewJLogUtil;->isUseNewJLog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/common/utils/JLogUtil;->setUserPin(Ljava/lang/String;)V

    .line 137
    :cond_0
    return-void
.end method

.method public static setUserState(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 92
    sput p0, Lcom/jingdong/common/login/LoginUserBase;->UserState:I

    .line 93
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jingdong/common/login/LoginUserBase;->setAlreadySyncCart(Z)V

    .line 94
    sget v0, Lcom/jingdong/common/constant/Constants;->LOG_IN:I

    if-ne p0, v0, :cond_0

    .line 95
    invoke-static {}, Lcom/jingdong/common/utils/PushMessageUtils;->getDeviceTokenFromLocal()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v0

    invoke-static {}, Lcom/jingdong/common/utils/AlarmUtils;->getDefaultDelay()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/jingdong/common/utils/PushMessageUtils;->bindUser(Landroid/content/Context;J)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-static {}, Lcom/jingdong/common/utils/MessageUtil;->getMsgMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/jingdong/common/login/LoginUserBase$1;

    invoke-direct {v0}, Lcom/jingdong/common/login/LoginUserBase$1;-><init>()V

    invoke-static {v0, v1, v1}, Lcom/jingdong/common/utils/PushMessageUtils;->regPushMessageToken(Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)V

    goto :goto_0
.end method

.method public static setUserStateOff(Z)V
    .locals 1
    .parameter "needCleanCookies"

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jingdong/common/login/LoginUserBase;->setAlreadySyncCart(Z)V

    .line 122
    sget v0, Lcom/jingdong/common/constant/Constants;->LOG_OFF:I

    sput v0, Lcom/jingdong/common/login/LoginUserBase;->UserState:I

    .line 123
    invoke-static {}, Lcom/jingdong/common/utils/NewJLogUtil;->isUseNewJLog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    const-string v0, ""

    invoke-static {v0}, Lcom/jingdong/common/utils/JLogUtil;->setUserPin(Ljava/lang/String;)V

    .line 126
    :cond_0
    if-eqz p0, :cond_1

    .line 127
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jingdong/common/login/SafetyManager;->saveCookies(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/jingdong/common/utils/PushMessageUtils;->unBindUser()V

    .line 130
    :cond_1
    return-void
.end method
