.class public Lcom/jd/lottery/lib/model/ResultModel;
.super Lcom/jd/droidlib/model/Model;
.source "ResultModel.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public result:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        optional = true
    .end annotation
.end field

.field public resultCode:I
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/jd/droidlib/model/Model;-><init>()V

    return-void
.end method

.method public static parseModel(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 7
    .parameter "jsonObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/jd/lottery/lib/exception/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcom/jd/droidlib/persist/json/JSONSerializer;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/jd/droidlib/persist/json/JSONSerializer;-><init>(Landroid/content/Context;)V

    .line 26
    .local v0, jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;
    const-class v3, Lcom/jd/lottery/lib/model/ResultModel;

    .line 25
    invoke-virtual {v0, p0, v3}, Lcom/jd/droidlib/persist/json/JSONSerializer;->deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/jd/droidlib/model/Model;

    move-result-object v1

    check-cast v1, Lcom/jd/lottery/lib/model/ResultModel;

    .line 27
    .local v1, result:Lcom/jd/lottery/lib/model/ResultModel;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "@@@@@@@@@@@@"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/jd/lottery/lib/model/ResultModel;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 28
    iget v3, v1, Lcom/jd/lottery/lib/model/ResultModel;->resultCode:I

    if-nez v3, :cond_0

    .line 29
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, v1, Lcom/jd/lottery/lib/model/ResultModel;->result:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    const-string v4, "results"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 31
    .local v2, results:Lorg/json/JSONObject;
    const-string v3, "@@@@@@@@@@@@%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    return-object v2

    .line 34
    .end local v2           #results:Lorg/json/JSONObject;
    :cond_0
    new-instance v3, Lcom/jd/lottery/lib/exception/ErrorCodeException;

    iget v4, v1, Lcom/jd/lottery/lib/model/ResultModel;->resultCode:I

    invoke-static {v4}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->valueOf(I)Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/jd/lottery/lib/exception/ErrorCodeException;-><init>(Lcom/jd/lottery/lib/data/Constants$API_ERROR;)V

    throw v3
.end method
