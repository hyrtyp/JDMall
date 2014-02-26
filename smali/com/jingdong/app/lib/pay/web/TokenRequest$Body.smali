.class Lcom/jingdong/app/lib/pay/web/TokenRequest$Body;
.super Lcom/jd/droidlib/model/Model;
.source "TokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/lib/pay/web/TokenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Body"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x643ce609b13cd4f0L


# instance fields
.field body:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/jd/droidlib/model/Model;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/jingdong/app/lib/pay/web/TokenRequest$Body;->body:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 33
    new-instance v1, Lcom/jd/droidlib/persist/json/JSONSerializer;

    invoke-direct {v1, v2}, Lcom/jd/droidlib/persist/json/JSONSerializer;-><init>(Landroid/content/Context;)V

    .line 35
    .local v1, jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/jd/droidlib/persist/json/JSONSerializer;->serialize(Lcom/jd/droidlib/model/Model;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 40
    :goto_0
    return-object v2

    .line 36
    :catch_0
    move-exception v0

    .line 38
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
