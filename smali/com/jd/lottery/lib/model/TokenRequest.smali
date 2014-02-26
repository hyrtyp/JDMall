.class public Lcom/jd/lottery/lib/model/TokenRequest;
.super Lcom/jd/droidlib/model/Model;
.source "TokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jd/lottery/lib/model/TokenRequest$Body;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private body:Lcom/jd/lottery/lib/model/TokenRequest$Body;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        optional = true
    .end annotation
.end field

.field private brand:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        optional = true
    .end annotation
.end field

.field private clientVersion:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        optional = true
    .end annotation
.end field

.field private model:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        optional = true
    .end annotation
.end field

.field private nettype:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        optional = true
    .end annotation
.end field

.field private osVersion:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        optional = true
    .end annotation
.end field

.field private partner:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        optional = true
    .end annotation
.end field

.field private platform:I
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        optional = true
    .end annotation
.end field

.field private screen:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        optional = true
    .end annotation
.end field

.field private uuid:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        optional = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/jd/droidlib/model/Model;-><init>()V

    .line 18
    return-void
.end method

.method public static getUriFromJson(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .parameter "jsonString"
    .parameter "action"

    .prologue
    const/4 v4, 0x0

    .line 43
    new-instance v2, Lcom/jd/droidlib/persist/json/JSONSerializer;

    invoke-direct {v2, v4}, Lcom/jd/droidlib/persist/json/JSONSerializer;-><init>(Landroid/content/Context;)V

    .line 45
    .local v2, jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, json:Lorg/json/JSONObject;
    const-class v5, Lcom/jd/lottery/lib/model/TokenRequest;

    .line 46
    invoke-virtual {v2, v1, v5}, Lcom/jd/droidlib/persist/json/JSONSerializer;->deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/jd/droidlib/model/Model;

    move-result-object v3

    check-cast v3, Lcom/jd/lottery/lib/model/TokenRequest;

    .line 48
    .local v3, request:Lcom/jd/lottery/lib/model/TokenRequest;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "@@@@@@@@@@@2"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/jd/lottery/lib/model/TokenRequest;->toQueryString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 49
    new-instance v5, Lcom/jd/lottery/lib/model/TokenRequest$Body;

    invoke-direct {v5, p1}, Lcom/jd/lottery/lib/model/TokenRequest$Body;-><init>(Ljava/lang/String;)V

    iput-object v5, v3, Lcom/jd/lottery/lib/model/TokenRequest;->body:Lcom/jd/lottery/lib/model/TokenRequest$Body;

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/jd/lottery/lib/data/Constants;->REQUEST_URL_GET_TOKEN:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 52
    invoke-virtual {v3}, Lcom/jd/lottery/lib/model/TokenRequest;->toQueryString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 52
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 53
    const-string v6, "functionId"

    const-string v7, "genToken"

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 59
    .end local v1           #json:Lorg/json/JSONObject;
    .end local v3           #request:Lcom/jd/lottery/lib/model/TokenRequest;
    :goto_0
    return-object v4

    .line 55
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
