.class Lcom/jingdong/common/utils/CommonBase$2;
.super Ljava/lang/Object;
.source "CommonBase.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/CommonBase;->queryBrowserUrl(Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$action:Ljava/lang/String;

.field private final synthetic val$listener:Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;

.field private final synthetic val$params:Lcom/jingdong/common/utils/URLParamMap;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;Lcom/jingdong/common/utils/URLParamMap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/CommonBase$2;->val$action:Ljava/lang/String;

    iput-object p2, p0, Lcom/jingdong/common/utils/CommonBase$2;->val$listener:Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;

    iput-object p3, p0, Lcom/jingdong/common/utils/CommonBase$2;->val$params:Lcom/jingdong/common/utils/URLParamMap;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 15
    .parameter "httpResponse"

    .prologue
    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 194
    .local v2, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v11, "tokenKey"

    invoke-virtual {v2, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 195
    .local v8, token:Ljava/lang/String;
    if-nez v8, :cond_0

    .line 196
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/jingdong/common/utils/CommonBase$2;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    .line 264
    :goto_0
    return-void

    .line 199
    :cond_0
    const-string v11, "url"

    invoke-virtual {v2, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 200
    .local v10, url:Ljava/lang/String;
    if-nez v10, :cond_1

    .line 201
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/jingdong/common/utils/CommonBase$2;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    goto :goto_0

    .line 208
    :cond_1
    iget-object v11, p0, Lcom/jingdong/common/utils/CommonBase$2;->val$params:Lcom/jingdong/common/utils/URLParamMap;

    const-string v12, "tokenKey"

    invoke-virtual {v11, v12, v8}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    sget-wide v11, Lcom/jingdong/common/lbs/LocManager;->lati:D

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_2

    sget-wide v11, Lcom/jingdong/common/lbs/LocManager;->longi:D

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-eqz v11, :cond_b

    .line 210
    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 212
    .local v3, lbsJO:Lorg/json/JSONObject;
    :try_start_0
    sget-wide v11, Lcom/jingdong/common/lbs/LocManager;->lati:D

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-eqz v11, :cond_3

    .line 213
    const-string v11, "lat"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v13, Lcom/jingdong/common/lbs/LocManager;->lati:D

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    :cond_3
    sget-wide v11, Lcom/jingdong/common/lbs/LocManager;->longi:D

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-eqz v11, :cond_4

    .line 216
    const-string v11, "lng"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v13, Lcom/jingdong/common/lbs/LocManager;->longi:D

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    :cond_4
    sget v11, Lcom/jingdong/common/lbs/LocManager;->provinceId:I

    if-eqz v11, :cond_5

    .line 219
    const-string v11, "provinceId"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget v13, Lcom/jingdong/common/lbs/LocManager;->provinceId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    :cond_5
    sget v11, Lcom/jingdong/common/lbs/LocManager;->cityId:I

    if-eqz v11, :cond_6

    .line 222
    const-string v11, "cityId"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget v13, Lcom/jingdong/common/lbs/LocManager;->cityId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    :cond_6
    sget v11, Lcom/jingdong/common/lbs/LocManager;->districtId:I

    if-eqz v11, :cond_7

    .line 225
    const-string v11, "districtId"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget v13, Lcom/jingdong/common/lbs/LocManager;->districtId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    :cond_7
    sget-object v11, Lcom/jingdong/common/lbs/LocManager;->provinceName:Ljava/lang/String;

    if-eqz v11, :cond_8

    .line 228
    const-string v11, "provinceName"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/jingdong/common/lbs/LocManager;->provinceName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    :cond_8
    sget-object v11, Lcom/jingdong/common/lbs/LocManager;->cityName:Ljava/lang/String;

    if-eqz v11, :cond_9

    .line 231
    const-string v11, "cityName"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/jingdong/common/lbs/LocManager;->cityName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    :cond_9
    sget-object v11, Lcom/jingdong/common/lbs/LocManager;->districtName:Ljava/lang/String;

    if-eqz v11, :cond_a

    .line 234
    const-string v11, "districtName"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/jingdong/common/lbs/LocManager;->districtName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :cond_a
    :goto_1
    iget-object v11, p0, Lcom/jingdong/common/utils/CommonBase$2;->val$params:Lcom/jingdong/common/utils/URLParamMap;

    const-string v12, "lbs"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .end local v3           #lbsJO:Lorg/json/JSONObject;
    :cond_b
    iget-object v11, p0, Lcom/jingdong/common/utils/CommonBase$2;->val$params:Lcom/jingdong/common/utils/URLParamMap;

    invoke-static {v10, v11}, Lcom/jingdong/common/utils/HttpGroup;->mergerUrlAndParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 242
    .local v6, mergerUrl:Ljava/lang/String;
    const-string v11, "mHost"

    invoke-static {v11}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 243
    .local v4, mHost:Ljava/lang/String;
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 244
    const/16 v5, 0x50

    .line 245
    .local v5, mPort:I
    const-string v11, ":"

    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 246
    .local v7, split:[Ljava/lang/String;
    array-length v11, v7

    const/4 v12, 0x1

    if-le v11, v12, :cond_c

    .line 247
    const/4 v11, 0x0

    aget-object v4, v7, v11

    .line 249
    const/4 v11, 0x1

    :try_start_1
    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    .line 254
    :cond_c
    :goto_2
    :try_start_2
    new-instance v9, Ljava/net/URI;

    invoke-direct {v9, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 255
    .local v9, uri:Ljava/net/URI;
    new-instance v11, Lorg/apache/http/HttpHost;

    invoke-direct {v11, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {v9, v11}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;)Ljava/net/URI;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    .line 263
    .end local v5           #mPort:I
    .end local v7           #split:[Ljava/lang/String;
    .end local v9           #uri:Ljava/net/URI;
    :cond_d
    :goto_3
    iget-object v11, p0, Lcom/jingdong/common/utils/CommonBase$2;->val$listener:Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;

    invoke-interface {v11, v6}, Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;->onComplete(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    .end local v4           #mHost:Ljava/lang/String;
    .end local v6           #mergerUrl:Ljava/lang/String;
    .restart local v3       #lbsJO:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 237
    .local v1, e1:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 256
    .end local v1           #e1:Lorg/json/JSONException;
    .end local v3           #lbsJO:Lorg/json/JSONObject;
    .restart local v4       #mHost:Ljava/lang/String;
    .restart local v5       #mPort:I
    .restart local v6       #mergerUrl:Ljava/lang/String;
    .restart local v7       #split:[Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 257
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_3

    .line 250
    .end local v0           #e:Ljava/net/URISyntaxException;
    :catch_2
    move-exception v11

    goto :goto_2
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/jingdong/common/utils/CommonBase$2;->val$listener:Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;->onComplete(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 2
    .parameter "httpSettingParams"

    .prologue
    .line 183
    const-string v0, "action"

    iget-object v1, p0, Lcom/jingdong/common/utils/CommonBase$2;->val$action:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    return-void
.end method
