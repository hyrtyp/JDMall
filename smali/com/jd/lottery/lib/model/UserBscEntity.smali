.class public Lcom/jd/lottery/lib/model/UserBscEntity;
.super Lcom/jd/droidlib/model/Entity;
.source "UserBscEntity.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public balance:D
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation

    .annotation runtime Lcom/jd/droidlib/annotation/sql/Column;
    .end annotation
.end field

.field public beans:I
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation

    .annotation runtime Lcom/jd/droidlib/annotation/sql/Column;
    .end annotation
.end field

.field public coupon:[Lcom/jd/lottery/lib/model/CouponInfo;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        optional = true
    .end annotation

    .annotation runtime Lcom/jd/droidlib/annotation/sql/Column;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/jd/droidlib/model/Entity;-><init>()V

    return-void
.end method

.method public static parseModel(Lorg/json/JSONObject;)Lcom/jd/lottery/lib/model/UserBscEntity;
    .locals 4
    .parameter "jsonObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 29
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

    .line 35
    new-instance v0, Lcom/jd/droidlib/persist/json/JSONSerializer;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/jd/droidlib/persist/json/JSONSerializer;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;
    const-class v2, Lcom/jd/lottery/lib/model/UserBscEntity;

    .line 36
    invoke-virtual {v0, p0, v2}, Lcom/jd/droidlib/persist/json/JSONSerializer;->deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/jd/droidlib/model/Model;

    move-result-object v1

    check-cast v1, Lcom/jd/lottery/lib/model/UserBscEntity;

    .line 38
    .local v1, r:Lcom/jd/lottery/lib/model/UserBscEntity;
    return-object v1
.end method
