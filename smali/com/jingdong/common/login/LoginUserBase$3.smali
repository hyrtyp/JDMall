.class Lcom/jingdong/common/login/LoginUserBase$3;
.super Ljava/lang/Object;
.source "LoginUserBase.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/login/LoginUserBase;->loginRequest(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/jingdong/common/login/LoginUserBase$LoginRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$listener:Lcom/jingdong/common/login/LoginUserBase$LoginRequestListener;

.field private final synthetic val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

.field private final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/common/login/LoginUserBase$LoginRequestListener;Ljava/lang/String;Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/login/LoginUserBase$3;->val$listener:Lcom/jingdong/common/login/LoginUserBase$LoginRequestListener;

    iput-object p2, p0, Lcom/jingdong/common/login/LoginUserBase$3;->val$userName:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/common/login/LoginUserBase$3;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onLoginError(ILjava/lang/String;)V
    .locals 1
    .parameter "errorType"
    .parameter "msg"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/jingdong/common/login/LoginUserBase$3;->val$listener:Lcom/jingdong/common/login/LoginUserBase$LoginRequestListener;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/jingdong/common/login/LoginUserBase$3;->val$listener:Lcom/jingdong/common/login/LoginUserBase$LoginRequestListener;

    invoke-interface {v0, p1, p2}, Lcom/jingdong/common/login/LoginUserBase$LoginRequestListener;->onLoginError(ILjava/lang/String;)V

    .line 294
    :cond_0
    return-void
.end method

.method private onLoginSuccess(Ljava/lang/String;)V
    .locals 1
    .parameter "pin"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/jingdong/common/login/LoginUserBase$3;->val$listener:Lcom/jingdong/common/login/LoginUserBase$LoginRequestListener;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/jingdong/common/login/LoginUserBase$3;->val$listener:Lcom/jingdong/common/login/LoginUserBase$LoginRequestListener;

    invoke-interface {v0, p1}, Lcom/jingdong/common/login/LoginUserBase$LoginRequestListener;->onLoginSuccess(Ljava/lang/String;)V

    .line 300
    :cond_0
    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 10
    .parameter "httpResponse"

    .prologue
    const/4 v8, 0x1

    .line 309
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    .line 310
    .local v4, loginObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v7, "logInfo"

    invoke-virtual {v4, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    .line 311
    .local v2, jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-virtual {v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v7

    if-ge v7, v8, :cond_0

    .line 315
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/jingdong/common/login/LoginUserBase$3;->onLoginError(ILjava/lang/String;)V

    .line 360
    .end local v2           #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v4           #loginObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :goto_0
    return-void

    .line 317
    .restart local v2       #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .restart local v4       #loginObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->names()Lorg/json/JSONArray;

    move-result-object v1

    .line 318
    .local v1, jNames:Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "failure"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 319
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v7

    const-string v8, "failure"

    invoke-virtual {v7, v8}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 321
    .local v6, tip:Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/jingdong/common/login/LoginUserBase;->clearRemember(ZZZ)V

    .line 326
    const/4 v7, 0x2

    invoke-direct {p0, v7, v6}, Lcom/jingdong/common/login/LoginUserBase$3;->onLoginError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    .end local v1           #jNames:Lorg/json/JSONArray;
    .end local v2           #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v4           #loginObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v6           #tip:Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_0

    .line 330
    .restart local v1       #jNames:Lorg/json/JSONArray;
    .restart local v2       #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .restart local v4       #loginObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_1
    :try_start_1
    const-string v7, "pin"

    invoke-virtual {v4, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 336
    .local v3, jsonPin:Ljava/lang/String;
    :goto_1
    const/4 v7, 0x1

    :try_start_2
    sput-boolean v7, Lcom/jingdong/common/constant/Constants;->hasLogIn:Z

    .line 337
    sget v7, Lcom/jingdong/common/constant/Constants;->LOG_IN:I

    invoke-static {v7}, Lcom/jingdong/common/login/LoginUserBase;->setUserState(I)V

    .line 338
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 340
    .local v5, temp:Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/jingdong/common/login/LoginUserBase$3;->val$userName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 341
    const-string v7, "loginName"

    iget-object v8, p0, Lcom/jingdong/common/login/LoginUserBase$3;->val$userName:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    :cond_2
    const-string v7, "pin"

    invoke-virtual {v5, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    const-string v7, "cert"

    const-string v8, "cat"

    invoke-virtual {v4, v8}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    invoke-static {v5}, Lcom/jingdong/common/login/LoginUserBase;->setUserInfo(Lorg/json/JSONObject;)V

    .line 347
    iget-object v7, p0, Lcom/jingdong/common/login/LoginUserBase$3;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    const-string v8, "login"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/jingdong/common/frame/IMyActivity;->putBooleanToPreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 352
    invoke-direct {p0, v3}, Lcom/jingdong/common/login/LoginUserBase$3;->onLoginSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 331
    .end local v3           #jsonPin:Ljava/lang/String;
    .end local v5           #temp:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 332
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "oldpin"

    invoke-virtual {v4, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    .restart local v3       #jsonPin:Ljava/lang/String;
    goto :goto_1
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 3
    .parameter "error"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 367
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->getErrorCode()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 369
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/jingdong/common/login/LoginUserBase$3;->onLoginError(ILjava/lang/String;)V

    .line 373
    :goto_0
    return-void

    .line 371
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0, v2}, Lcom/jingdong/common/login/LoginUserBase$3;->onLoginError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 377
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 304
    return-void
.end method
