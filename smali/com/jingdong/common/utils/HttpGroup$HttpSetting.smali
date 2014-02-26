.class public Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
.super Ljava/lang/Object;
.source "HttpGroup.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/HttpGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpSetting"
.end annotation


# static fields
.field public static final CACHE_MODE_ASSETS:I = 0x3

.field public static final CACHE_MODE_AUTO:I = 0x0

.field public static final CACHE_MODE_ONLY_CACHE:I = 0x1

.field public static final CACHE_MODE_ONLY_NET:I = 0x2

.field public static final EFFECT_DEFAULT:I = 0x1

.field public static final EFFECT_NO:I = 0x0

.field public static final EFFECT_STATE_NO:I = 0x0

.field public static final EFFECT_STATE_YES:I = 0x1

.field public static final ERROR_DIALOG_TYPE_BACK_RETRY:I = 0x2

.field public static final ERROR_DIALOG_TYPE_DEFAULT:I = 0x0

.field public static final ERROR_DIALOG_TYPE_ONLY_CANCEL:I = 0x1

.field public static final ERROR_DIALOG_TYPE_SETUP_CANCEL:I = 0x3


# instance fields
.field private alertErrorDialogType:I

.field private attempts:I

.field private cacheMode:I

.field private connectTimeout:I

.field private effect:I

.field private effectState:I

.field private finalUrl:Ljava/lang/String;

.field private functionId:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private id:I

.field private isForeverCache:Z

.field private isReady:Z

.field private isThisFunctionMustBeExcute:Z

.field private isTopPriority:Z

.field private isUseCookies:Z

.field private jsonParams:Lorg/json/JSONObject;

.field private localFileCache:Z

.field private localFileCacheTime:J

.field private localMemoryCache:Z

.field private mNeedAgainEncrypt:Z

.field private mapParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private md5:Ljava/lang/String;

.field private needGlobalInitialization:Z

.field private needShareImage:Z

.field private notifyUser:Z

.field private notifyUserWithExit:Z

.field private onEndListener:Lcom/jingdong/common/utils/HttpGroup$OnEndListener;

.field private onErrorListener:Lcom/jingdong/common/utils/HttpGroup$OnErrorListener;

.field private onProgressListener:Lcom/jingdong/common/utils/HttpGroup$OnProgressListener;

.field private onReadyListener:Lcom/jingdong/common/utils/HttpGroup$OnReadyListener;

.field private onStartListener:Lcom/jingdong/common/utils/HttpGroup$OnStartListener;

.field private post:Z

.field private priority:I

.field private readTimeout:I

.field private savePath:Lcom/jingdong/common/utils/FileGuider;

.field private type:I

.field private url:Ljava/lang/String;

.field private useLocalCookies:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3191
    const-string v0, "post"

    const-string v1, "requestMethod"

    const-string v2, "post"

    invoke-static {v1, v2}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->post:Z

    .line 3192
    iput-boolean v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->notifyUser:Z

    .line 3193
    iput-boolean v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->useLocalCookies:Z

    .line 3194
    iput-boolean v4, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isUseCookies:Z

    .line 3195
    iput-boolean v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->notifyUserWithExit:Z

    .line 3196
    iput-boolean v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->localMemoryCache:Z

    .line 3197
    iput-boolean v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->localFileCache:Z

    .line 3198
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->localFileCacheTime:J

    .line 3199
    iput-boolean v4, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->needGlobalInitialization:Z

    .line 3200
    iput v4, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->effect:I

    .line 3201
    iput v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->effectState:I

    .line 3202
    iput v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->cacheMode:I

    .line 3208
    iput-boolean v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isThisFunctionMustBeExcute:Z

    .line 3209
    iput-boolean v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->mNeedAgainEncrypt:Z

    .line 3211
    iput-boolean v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isTopPriority:Z

    .line 3213
    iput-boolean v4, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isReady:Z

    .line 3215
    iput v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->alertErrorDialogType:I

    .line 3143
    return-void
.end method


# virtual methods
.method public appendOneAttempts()V
    .locals 1

    .prologue
    .line 3272
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->attempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->attempts:I

    .line 3273
    return-void
.end method

.method public getAlertErrorDialogType()I
    .locals 1

    .prologue
    .line 3226
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->alertErrorDialogType:I

    return v0
.end method

.method public getAttempts()I
    .locals 1

    .prologue
    .line 3267
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->attempts:I

    return v0
.end method

.method public getCacheMode()I
    .locals 1

    .prologue
    .line 3617
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->cacheMode:I

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 3364
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->connectTimeout:I

    return v0
.end method

.method public getEffect()I
    .locals 1

    .prologue
    .line 3601
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->effect:I

    return v0
.end method

.method public getEffectState()I
    .locals 1

    .prologue
    .line 3609
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->effectState:I

    return v0
.end method

.method public getFinalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3296
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->finalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFunctionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3280
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->functionId:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3593
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 3585
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->id:I

    return v0
.end method

.method public getJsonParams()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 3304
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->jsonParams:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 3305
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->jsonParams:Lorg/json/JSONObject;

    .line 3307
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->jsonParams:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getLocalFileCacheTime()J
    .locals 2

    .prologue
    .line 3550
    iget-wide v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->localFileCacheTime:J

    return-wide v0
.end method

.method public getMapParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3339
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->mapParams:Ljava/util/Map;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, -0x1

    .line 3459
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->md5:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 3460
    invoke-virtual {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 3461
    .local v4, urlTempStr:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 3486
    .end local v4           #urlTempStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 3464
    .restart local v4       #urlTempStr:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 3465
    .local v2, start:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v6, 0x3

    if-lt v0, v6, :cond_4

    .line 3468
    if-eq v2, v8, :cond_0

    .line 3471
    invoke-virtual {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 3473
    .local v3, urlPath:Ljava/lang/String;
    const-string v5, "&networkType="

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 3474
    .local v1, networkIndex:I
    if-eq v1, v8, :cond_2

    .line 3475
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3477
    :cond_2
    invoke-virtual {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isPost()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3478
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getJsonParams()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jingdong/common/utils/Md5Encrypt;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->md5:Ljava/lang/String;

    .line 3486
    .end local v0           #i:I
    .end local v1           #networkIndex:I
    .end local v2           #start:I
    .end local v3           #urlPath:Ljava/lang/String;
    .end local v4           #urlTempStr:Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->md5:Ljava/lang/String;

    goto :goto_0

    .line 3466
    .restart local v0       #i:I
    .restart local v2       #start:I
    .restart local v4       #urlTempStr:Ljava/lang/String;
    :cond_4
    const-string v6, "/"

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 3465
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3480
    .restart local v1       #networkIndex:I
    .restart local v3       #urlPath:Ljava/lang/String;
    :cond_5
    invoke-static {v3}, Lcom/jingdong/common/utils/Md5Encrypt;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->md5:Ljava/lang/String;

    goto :goto_2
.end method

.method public getNeedAgainEncrypt()Z
    .locals 1

    .prologue
    .line 3640
    iget-boolean v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->mNeedAgainEncrypt:Z

    return v0
.end method

.method public getOnEndListener()Lcom/jingdong/common/utils/HttpGroup$OnEndListener;
    .locals 1

    .prologue
    .line 3380
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->onEndListener:Lcom/jingdong/common/utils/HttpGroup$OnEndListener;

    return-object v0
.end method

.method public getOnErrorListener()Lcom/jingdong/common/utils/HttpGroup$OnErrorListener;
    .locals 1

    .prologue
    .line 3384
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->onErrorListener:Lcom/jingdong/common/utils/HttpGroup$OnErrorListener;

    return-object v0
.end method

.method public getOnProgressListener()Lcom/jingdong/common/utils/HttpGroup$OnProgressListener;
    .locals 1

    .prologue
    .line 3376
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->onProgressListener:Lcom/jingdong/common/utils/HttpGroup$OnProgressListener;

    return-object v0
.end method

.method public getOnReadyListener()Lcom/jingdong/common/utils/HttpGroup$OnReadyListener;
    .locals 1

    .prologue
    .line 3388
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->onReadyListener:Lcom/jingdong/common/utils/HttpGroup$OnReadyListener;

    return-object v0
.end method

.method public getOnStartListener()Lcom/jingdong/common/utils/HttpGroup$OnStartListener;
    .locals 1

    .prologue
    .line 3372
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->onStartListener:Lcom/jingdong/common/utils/HttpGroup$OnStartListener;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 3494
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->priority:I

    return v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 3510
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->readTimeout:I

    return v0
.end method

.method public getSavePath()Lcom/jingdong/common/utils/FileGuider;
    .locals 1

    .prologue
    .line 3558
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->savePath:Lcom/jingdong/common/utils/FileGuider;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 3542
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3288
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isForeverCache()Z
    .locals 1

    .prologue
    .line 3218
    iget-boolean v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isForeverCache:Z

    return v0
.end method

.method public isLocalFileCache()Z
    .locals 1

    .prologue
    .line 3534
    iget-boolean v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->localFileCache:Z

    return v0
.end method

.method public isLocalMemoryCache()Z
    .locals 1

    .prologue
    .line 3526
    iget-boolean v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->localMemoryCache:Z

    return v0
.end method

.method public isNeedGlobalInitialization()Z
    .locals 1

    .prologue
    .line 3577
    iget-boolean v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->needGlobalInitialization:Z

    return v0
.end method

.method public isNeedShareImage()Z
    .locals 1

    .prologue
    .line 3632
    iget-boolean v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->needShareImage:Z

    return v0
.end method

.method public isNotifyUser()Z
    .locals 1

    .prologue
    .line 3518
    iget-boolean v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->notifyUser:Z

    return v0
.end method

.method public isNotifyUserWithExit()Z
    .locals 1

    .prologue
    .line 3569
    iget-boolean v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->notifyUserWithExit:Z

    return v0
.end method

.method public isPost()Z
    .locals 1

    .prologue
    .line 3502
    iget-boolean v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->post:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 3234
    iget-boolean v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isReady:Z

    return v0
.end method

.method public isThisFunctionMustBeExcute()Z
    .locals 1

    .prologue
    .line 3243
    iget-boolean v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isThisFunctionMustBeExcute:Z

    return v0
.end method

.method public isTopPriority()Z
    .locals 1

    .prologue
    .line 3644
    iget-boolean v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isTopPriority:Z

    return v0
.end method

.method public isUseCookies()Z
    .locals 1

    .prologue
    .line 3263
    iget-boolean v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isUseCookies:Z

    return v0
.end method

.method public isUseLocalCookies()Z
    .locals 1

    .prologue
    .line 3251
    iget-boolean v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->useLocalCookies:Z

    return v0
.end method

.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 1
    .parameter "httpResponse"

    .prologue
    .line 3422
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->onEndListener:Lcom/jingdong/common/utils/HttpGroup$OnEndListener;

    if-eqz v0, :cond_0

    .line 3431
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->onEndListener:Lcom/jingdong/common/utils/HttpGroup$OnEndListener;

    invoke-interface {v0, p1}, Lcom/jingdong/common/utils/HttpGroup$OnEndListener;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V

    .line 3433
    :cond_0
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 3
    .parameter "httpError"

    .prologue
    const/4 v2, 0x0

    .line 3436
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->onErrorListener:Lcom/jingdong/common/utils/HttpGroup$OnErrorListener;

    if-eqz v1, :cond_0

    .line 3437
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->onErrorListener:Lcom/jingdong/common/utils/HttpGroup$OnErrorListener;

    invoke-interface {v1, p1}, Lcom/jingdong/common/utils/HttpGroup$OnErrorListener;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    .line 3438
    iget-boolean v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isThisFunctionMustBeExcute:Z

    if-eqz v1, :cond_0

    .line 3439
    new-instance v0, Lcom/jingdong/common/entity/UnExcuteFunction;

    invoke-direct {v0}, Lcom/jingdong/common/entity/UnExcuteFunction;-><init>()V

    .line 3440
    .local v0, function:Lcom/jingdong/common/entity/UnExcuteFunction;
    invoke-virtual {v0, v2}, Lcom/jingdong/common/entity/UnExcuteFunction;->setIfNeedNotifyUser(I)V

    .line 3441
    invoke-virtual {v0, v2}, Lcom/jingdong/common/entity/UnExcuteFunction;->setIfNeedLodingModel(I)V

    .line 3442
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UnExcuteFunction;->setCallBack(Ljava/lang/String;)V

    .line 3443
    invoke-virtual {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getFunctionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UnExcuteFunction;->setFunctionId(Ljava/lang/String;)V

    .line 3444
    invoke-virtual {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getJsonParams()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UnExcuteFunction;->setJsonParams(Ljava/lang/String;)V

    .line 3445
    invoke-virtual {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UnExcuteFunction;->setHost(Ljava/lang/String;)V

    .line 3446
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->md5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UnExcuteFunction;->setMd5(Ljava/lang/String;)V

    .line 3447
    invoke-static {v0}, Lcom/jingdong/common/database/table/UnExcuteFunctionTable;->saveUnExcuteFunction(Lcom/jingdong/common/entity/UnExcuteFunction;)V

    .line 3450
    .end local v0           #function:Lcom/jingdong/common/entity/UnExcuteFunction;
    :cond_0
    return-void
.end method

.method public onProgress(II)V
    .locals 1
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 3453
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->onProgressListener:Lcom/jingdong/common/utils/HttpGroup$OnProgressListener;

    if-eqz v0, :cond_0

    .line 3454
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->onProgressListener:Lcom/jingdong/common/utils/HttpGroup$OnProgressListener;

    invoke-interface {v0, p1, p2}, Lcom/jingdong/common/utils/HttpGroup$OnProgressListener;->onProgress(II)V

    .line 3456
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 3416
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->onStartListener:Lcom/jingdong/common/utils/HttpGroup$OnStartListener;

    if-eqz v0, :cond_0

    .line 3417
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->onStartListener:Lcom/jingdong/common/utils/HttpGroup$OnStartListener;

    invoke-interface {v0}, Lcom/jingdong/common/utils/HttpGroup$OnStartListener;->onStart()V

    .line 3419
    :cond_0
    return-void
.end method

.method public putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 3326
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->jsonParams:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 3327
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->jsonParams:Lorg/json/JSONObject;

    .line 3330
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->jsonParams:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3336
    :goto_0
    return-void

    .line 3331
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public putMapParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 3357
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->mapParams:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 3358
    new-instance v0, Lcom/jingdong/common/utils/URLParamMap;

    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$5()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jingdong/common/utils/URLParamMap;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->mapParams:Ljava/util/Map;

    .line 3360
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->mapParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3361
    return-void
.end method

.method public setAlertErrorDialogType(I)V
    .locals 0
    .parameter "alertErrorDialogType"

    .prologue
    .line 3230
    iput p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->alertErrorDialogType:I

    .line 3231
    return-void
.end method

.method public setAttempts(I)V
    .locals 0
    .parameter "attempts"

    .prologue
    .line 3276
    iput p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->attempts:I

    .line 3277
    return-void
.end method

.method public setCacheMode(I)V
    .locals 0
    .parameter "cacheMode"

    .prologue
    .line 3624
    iput p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->cacheMode:I

    .line 3625
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0
    .parameter "connectTimeout"

    .prologue
    .line 3368
    iput p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->connectTimeout:I

    .line 3369
    return-void
.end method

.method public setEffect(I)V
    .locals 0
    .parameter "effect"

    .prologue
    .line 3605
    iput p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->effect:I

    .line 3606
    return-void
.end method

.method public setEffectState(I)V
    .locals 0
    .parameter "effectState"

    .prologue
    .line 3613
    iput p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->effectState:I

    .line 3614
    return-void
.end method

.method public setFinalUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "finalUrl"

    .prologue
    .line 3300
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->finalUrl:Ljava/lang/String;

    .line 3301
    return-void
.end method

.method public setForeverCache(Z)V
    .locals 0
    .parameter "isForeverCache"

    .prologue
    .line 3222
    iput-boolean p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isForeverCache:Z

    .line 3223
    return-void
.end method

.method public setFunctionId(Ljava/lang/String;)V
    .locals 0
    .parameter "functionId"

    .prologue
    .line 3284
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->functionId:Ljava/lang/String;

    .line 3285
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 3597
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->host:Ljava/lang/String;

    .line 3598
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 3589
    iput p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->id:I

    .line 3590
    return-void
.end method

.method public setJsonParams(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "params"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3315
    if-nez p1, :cond_0

    .line 3323
    :goto_0
    return-void

    .line 3319
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->jsonParams:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3320
    :catch_0
    move-exception v0

    .line 3321
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V
    .locals 1
    .parameter "httpTaskListener"

    .prologue
    .line 3392
    instance-of v0, p1, Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;

    if-eqz v0, :cond_0

    .line 3393
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 3395
    :cond_0
    instance-of v0, p1, Lcom/jingdong/common/utils/DefaultEffectHttpListener;

    if-eqz v0, :cond_1

    .line 3396
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffectState(I)V

    .line 3398
    :cond_1
    instance-of v0, p1, Lcom/jingdong/common/utils/HttpGroup$OnErrorListener;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 3399
    check-cast v0, Lcom/jingdong/common/utils/HttpGroup$OnErrorListener;

    iput-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->onErrorListener:Lcom/jingdong/common/utils/HttpGroup$OnErrorListener;

    .line 3401
    :cond_2
    instance-of v0, p1, Lcom/jingdong/common/utils/HttpGroup$OnStartListener;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 3402
    check-cast v0, Lcom/jingdong/common/utils/HttpGroup$OnStartListener;

    iput-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->onStartListener:Lcom/jingdong/common/utils/HttpGroup$OnStartListener;

    .line 3404
    :cond_3
    instance-of v0, p1, Lcom/jingdong/common/utils/HttpGroup$OnProgressListener;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 3405
    check-cast v0, Lcom/jingdong/common/utils/HttpGroup$OnProgressListener;

    iput-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->onProgressListener:Lcom/jingdong/common/utils/HttpGroup$OnProgressListener;

    .line 3407
    :cond_4
    instance-of v0, p1, Lcom/jingdong/common/utils/HttpGroup$OnEndListener;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 3408
    check-cast v0, Lcom/jingdong/common/utils/HttpGroup$OnEndListener;

    iput-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->onEndListener:Lcom/jingdong/common/utils/HttpGroup$OnEndListener;

    .line 3410
    :cond_5
    instance-of v0, p1, Lcom/jingdong/common/utils/HttpGroup$OnReadyListener;

    if-eqz v0, :cond_6

    .line 3411
    check-cast p1, Lcom/jingdong/common/utils/HttpGroup$OnReadyListener;

    .end local p1
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->onReadyListener:Lcom/jingdong/common/utils/HttpGroup$OnReadyListener;

    .line 3413
    :cond_6
    return-void
.end method

.method public setLocalFileCache(Z)V
    .locals 0
    .parameter "localFileCache"

    .prologue
    .line 3538
    iput-boolean p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->localFileCache:Z

    .line 3539
    return-void
.end method

.method public setLocalFileCacheTime(J)V
    .locals 0
    .parameter "localFileCacheTime"

    .prologue
    .line 3554
    iput-wide p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->localFileCacheTime:J

    .line 3555
    return-void
.end method

.method public setLocalMemoryCache(Z)V
    .locals 0
    .parameter "localMemoryCache"

    .prologue
    .line 3530
    iput-boolean p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->localMemoryCache:Z

    .line 3531
    return-void
.end method

.method public setMapParams(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3347
    .local p1, mapParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 3354
    :cond_0
    return-void

    .line 3350
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 3351
    .local v1, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3352
    .local v0, key:Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putMapParams(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0
    .parameter "md5"

    .prologue
    .line 3490
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->md5:Ljava/lang/String;

    .line 3491
    return-void
.end method

.method public setNeedEncrypt(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 3636
    iput-boolean p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->mNeedAgainEncrypt:Z

    .line 3637
    return-void
.end method

.method public setNeedGlobalInitialization(Z)V
    .locals 0
    .parameter "needGlobalInitialization"

    .prologue
    .line 3581
    iput-boolean p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->needGlobalInitialization:Z

    .line 3582
    return-void
.end method

.method public setNeedShareImage(Z)V
    .locals 0
    .parameter "needShareImage"

    .prologue
    .line 3628
    iput-boolean p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->needShareImage:Z

    .line 3629
    return-void
.end method

.method public setNotifyUser(Z)V
    .locals 0
    .parameter "notifyUser"

    .prologue
    .line 3522
    iput-boolean p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->notifyUser:Z

    .line 3523
    return-void
.end method

.method public setNotifyUserWithExit(Z)V
    .locals 0
    .parameter "notifyUserOrExit"

    .prologue
    .line 3573
    iput-boolean p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->notifyUserWithExit:Z

    .line 3574
    return-void
.end method

.method public setPost(Z)V
    .locals 0
    .parameter "post"

    .prologue
    .line 3506
    iput-boolean p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->post:Z

    .line 3507
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 3498
    iput p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->priority:I

    .line 3499
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0
    .parameter "readTimeout"

    .prologue
    .line 3514
    iput p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->readTimeout:I

    .line 3515
    return-void
.end method

.method public setReady(Z)V
    .locals 0
    .parameter "isReady"

    .prologue
    .line 3239
    iput-boolean p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isReady:Z

    .line 3240
    return-void
.end method

.method public setSavePath(Lcom/jingdong/common/utils/FileGuider;)V
    .locals 0
    .parameter "savePath"

    .prologue
    .line 3565
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->savePath:Lcom/jingdong/common/utils/FileGuider;

    .line 3566
    return-void
.end method

.method public setThisFunctionMustBeExcute(Z)V
    .locals 0
    .parameter "isThisFunctionMustBeExcute"

    .prologue
    .line 3247
    iput-boolean p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isThisFunctionMustBeExcute:Z

    .line 3248
    return-void
.end method

.method public setTopPriority(Z)V
    .locals 0
    .parameter "isTopPriority"

    .prologue
    .line 3648
    iput-boolean p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isTopPriority:Z

    .line 3649
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 3546
    iput p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->type:I

    .line 3547
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 3292
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->url:Ljava/lang/String;

    .line 3293
    return-void
.end method

.method public setUseCookies(Z)V
    .locals 0
    .parameter "isUseCookies"

    .prologue
    .line 3259
    iput-boolean p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isUseCookies:Z

    .line 3260
    return-void
.end method

.method public setUseLocalCookies(Z)V
    .locals 0
    .parameter "useLocalCookies"

    .prologue
    .line 3255
    iput-boolean p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->useLocalCookies:Z

    .line 3256
    return-void
.end method
