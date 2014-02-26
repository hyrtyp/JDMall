.class public Lcom/jd/lottery/lib/model/LotteryEntity;
.super Lcom/jd/lottery/lib/model/IssueEntity;
.source "LotteryEntity.java"


# annotations
.annotation runtime Lcom/jd/droidlib/annotation/sql/Table;
    name = "lottery_issue"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/jd/lottery/lib/model/IssueEntity;-><init>()V

    return-void
.end method

.method public static parseModel(Lorg/json/JSONObject;)Lcom/jd/lottery/lib/model/LotteryEntity;
    .locals 4
    .parameter "jsonObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/jd/lottery/lib/exception/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@@@@@@@@@@@@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 20
    invoke-static {p0}, Lcom/jd/lottery/lib/model/ResultModel;->parseModel(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "issue"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@@@@@@@@@@@@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 22
    new-instance v0, Lcom/jd/droidlib/persist/json/JSONSerializer;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/jd/droidlib/persist/json/JSONSerializer;-><init>(Landroid/content/Context;)V

    .line 24
    .local v0, jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;
    const-class v2, Lcom/jd/lottery/lib/model/LotteryEntity;

    .line 23
    invoke-virtual {v0, p0, v2}, Lcom/jd/droidlib/persist/json/JSONSerializer;->deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/jd/droidlib/model/Model;

    move-result-object v1

    check-cast v1, Lcom/jd/lottery/lib/model/LotteryEntity;

    .line 25
    .local v1, r:Lcom/jd/lottery/lib/model/LotteryEntity;
    return-object v1
.end method
