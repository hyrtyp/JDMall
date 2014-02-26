.class public Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;
.super Ljava/lang/Object;
.source "UseCacheHttpGroupUtil.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private functionID:Ljava/lang/String;

.field private group:Lcom/jingdong/common/utils/HttpGroup;

.field private handler:Landroid/os/Handler;

.field private interval:I

.field private isCacheBack:Z

.field private isNetBack:Z

.field private isOnlyCache:Z

.field private isOnlyNetData:Z

.field private onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;

.field private param:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "UseCacheHttpGroupUtil"

    iput-object v0, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->TAG:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->isOnlyNetData:Z

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->isCacheBack:Z

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->handler:Landroid/os/Handler;

    .line 38
    iput v1, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->interval:I

    .line 40
    iput-boolean v1, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->isNetBack:Z

    .line 45
    iput-boolean v1, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->isOnlyCache:Z

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->isNetBack:Z

    return v0
.end method

.method static synthetic access$1(Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;)Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;

    return-object v0
.end method

.method private reLoadData()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 145
    iget-boolean v2, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->isOnlyNetData:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->isOnlyCache:Z

    if-nez v2, :cond_0

    .line 146
    iput-boolean v0, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->isOnlyNetData:Z

    .line 147
    iput-boolean v1, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->isCacheBack:Z

    .line 148
    iget-object v1, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->group:Lcom/jingdong/common/utils/HttpGroup;

    iget-object v2, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->functionID:Ljava/lang/String;

    iget-object v3, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->param:Ljava/lang/String;

    iget-object v4, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->addUseCache(Lcom/jingdong/common/utils/HttpGroup;Ljava/lang/String;Ljava/lang/String;Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V

    .line 151
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addUseCache(Lcom/jingdong/common/utils/HttpGroup;Ljava/lang/String;Ljava/lang/String;Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V
    .locals 4
    .parameter "group"
    .parameter "functionID"
    .parameter "param"
    .parameter "onAllListener"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    iput-object p1, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->group:Lcom/jingdong/common/utils/HttpGroup;

    .line 57
    iput-object p2, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->functionID:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;

    .line 59
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 60
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v0, p2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 66
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    invoke-static {p3}, Lcom/jingdong/common/utils/JsonParser;->parseParamsJsonFromString(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 70
    :cond_0
    iput-object p3, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->param:Ljava/lang/String;

    .line 72
    iget-boolean v1, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->isOnlyNetData:Z

    if-eqz v1, :cond_1

    .line 73
    iput-boolean v2, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->isCacheBack:Z

    .line 77
    :cond_1
    invoke-virtual {v0, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 78
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 79
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setForeverCache(Z)V

    .line 80
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCache(Z)V

    .line 81
    iget-boolean v1, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->isOnlyNetData:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->isOnlyCache:Z

    if-nez v1, :cond_2

    .line 82
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setCacheMode(I)V

    .line 86
    :goto_0
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNeedGlobalInitialization(Z)V

    .line 87
    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 88
    return-void

    .line 84
    :cond_2
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setCacheMode(I)V

    goto :goto_0
.end method

.method public getInterval()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->interval:I

    return v0
.end method

.method public isCacheBack()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->isCacheBack:Z

    return v0
.end method

.method protected onCacheError()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->isCacheBack:Z

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil$1;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil$1;-><init>(Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V

    .line 104
    iget v2, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->interval:I

    int-to-long v2, v2

    .line 94
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->reLoadData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    :cond_1
    return-void

    .line 106
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->isNetBack:Z

    .line 107
    iget-object v0, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;

    invoke-interface {v0, p1}, Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->reLoadData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;

    invoke-interface {v0, p1}, Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    goto :goto_0
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 1
    .parameter "httpSettingParams"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;

    invoke-interface {v0, p1}, Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;->onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V

    .line 139
    :cond_0
    return-void
.end method

.method public setInterval(I)V
    .locals 0
    .parameter "interval"

    .prologue
    .line 177
    iput p1, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->interval:I

    .line 178
    return-void
.end method

.method public setOnlyUseCache(Z)V
    .locals 0
    .parameter "isOnlyCache"

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->isOnlyCache:Z

    .line 170
    return-void
.end method
