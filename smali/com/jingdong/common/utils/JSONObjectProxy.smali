.class public Lcom/jingdong/common/utils/JSONObjectProxy;
.super Lorg/json/JSONObject;
.source "JSONObjectProxy.java"


# instance fields
.field private jsonObject:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "jsonObject"

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    .line 15
    return-void
.end method


# virtual methods
.method public accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 42
    iget-object v2, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    :goto_0
    return-object v1

    .line 46
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Lorg/json/JSONException;
    goto :goto_0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;
    .locals 4
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v2, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    :goto_0
    return-object v1

    .line 64
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Lorg/json/JSONException;
    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v2, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    :goto_0
    return-object v1

    .line 82
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Lorg/json/JSONException;
    goto :goto_0
.end method

.method public getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Lcom/jingdong/common/utils/JSONArrayPoxy;

    iget-object v1, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>(Lorg/json/JSONArray;)V

    return-object v0
.end method

.method public bridge synthetic getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    return-object v0
.end method

.method public getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;
    .locals 4
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v2, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    :goto_0
    return-object v1

    .line 100
    :cond_0
    :try_start_0
    new-instance v2, Lcom/jingdong/common/utils/JSONArrayPoxy;

    iget-object v3, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Lorg/json/JSONException;
    goto :goto_0
.end method

.method public getJSONObject(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Lcom/jingdong/common/utils/JSONObjectProxy;

    iget-object v1, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public bridge synthetic getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObject(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    return-object v0
.end method

.method public getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;
    .locals 4
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v2, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    :goto_0
    return-object v1

    .line 115
    :cond_0
    :try_start_0
    new-instance v2, Lcom/jingdong/common/utils/JSONObjectProxy;

    iget-object v3, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Lorg/json/JSONException;
    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-object v2, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    :goto_0
    return-object v1

    .line 130
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Lorg/json/JSONException;
    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringOrNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v2, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    :goto_0
    return-object v1

    .line 148
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Lorg/json/JSONException;
    goto :goto_0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isNull(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public keys()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    return v0
.end method

.method public names()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public opt(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public optBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public optBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "name"
    .parameter "fallback"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public optDouble(Ljava/lang/String;)D
    .locals 2
    .parameter "name"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public optDouble(Ljava/lang/String;D)D
    .locals 2
    .parameter "name"
    .parameter "fallback"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public optInt(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public optInt(Ljava/lang/String;I)I
    .locals 1
    .parameter "name"
    .parameter "fallback"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1
    .parameter "name"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .parameter "name"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public optLong(Ljava/lang/String;)J
    .locals 2
    .parameter "name"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(Ljava/lang/String;J)J
    .locals 2
    .parameter "name"
    .parameter "fallback"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public optString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .parameter "fallback"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;D)Lorg/json/JSONObject;
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toJSONArray(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 1
    .parameter "names"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->toJSONArray(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .parameter "indentSpaces"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/jingdong/common/utils/JSONObjectProxy;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
