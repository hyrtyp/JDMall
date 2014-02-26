.class public Lcom/jingdong/common/utils/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseParamsJsonFromString(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 16
    new-instance v2, Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {v2}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>()V

    .line 17
    .local v2, json:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v6, "{"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 19
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, args:[Ljava/lang/String;
    array-length v6, v1

    :goto_0
    if-lt v5, v6, :cond_1

    .line 51
    .end local v1           #args:[Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v2

    .line 21
    .restart local v1       #args:[Ljava/lang/String;
    :cond_1
    aget-object v0, v1, v5

    .line 22
    .local v0, arg:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 23
    .local v4, strs:[Ljava/lang/String;
    array-length v7, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v8, 0x2

    if-ge v7, v8, :cond_2

    .line 21
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 27
    :cond_2
    const/4 v7, 0x0

    :try_start_1
    aget-object v7, v4, v7

    const/4 v8, 0x1

    aget-object v8, v4, v8

    invoke-virtual {v2, v7, v8}, Lcom/jingdong/common/utils/JSONObjectProxy;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 28
    :catch_0
    move-exception v7

    goto :goto_2

    .line 43
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #args:[Ljava/lang/String;
    .end local v4           #strs:[Ljava/lang/String;
    :cond_3
    :try_start_2
    new-instance v3, Lcom/jingdong/common/utils/JSONObjectProxy;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v2           #json:Lcom/jingdong/common/utils/JSONObjectProxy;
    .local v3, json:Lcom/jingdong/common/utils/JSONObjectProxy;
    move-object v2, v3

    .line 44
    .end local v3           #json:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v2       #json:Lcom/jingdong/common/utils/JSONObjectProxy;
    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_1

    .line 36
    :catch_2
    move-exception v5

    goto :goto_1
.end method
