.class public Lcom/jd/lottery/lib/model/TokenInfo;
.super Lcom/jd/droidlib/model/Model;
.source "TokenInfo.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public code:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field public tokenKey:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/jd/droidlib/model/Model;-><init>()V

    return-void
.end method

.method public static parseModel(Lorg/json/JSONObject;)Lcom/jd/lottery/lib/model/TokenInfo;
    .locals 3
    .parameter "jsonObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lcom/jd/droidlib/persist/json/JSONSerializer;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/jd/droidlib/persist/json/JSONSerializer;-><init>(Landroid/content/Context;)V

    .line 25
    .local v0, jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;
    const-class v2, Lcom/jd/lottery/lib/model/TokenInfo;

    .line 24
    invoke-virtual {v0, p0, v2}, Lcom/jd/droidlib/persist/json/JSONSerializer;->deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/jd/droidlib/model/Model;

    move-result-object v1

    check-cast v1, Lcom/jd/lottery/lib/model/TokenInfo;

    .line 26
    .local v1, r:Lcom/jd/lottery/lib/model/TokenInfo;
    return-object v1
.end method
