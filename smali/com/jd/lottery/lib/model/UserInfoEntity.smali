.class public Lcom/jd/lottery/lib/model/UserInfoEntity;
.super Lcom/jd/droidlib/model/Entity;
.source "UserInfoEntity.java"


# static fields
.field private static final serialVersionUID:J = 0x3f8ab89883ea164bL


# instance fields
.field public fullname:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation

    .annotation runtime Lcom/jd/droidlib/annotation/sql/Column;
    .end annotation
.end field

.field public idcardnumber:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation

    .annotation runtime Lcom/jd/droidlib/annotation/sql/Column;
    .end annotation
.end field

.field public mobile:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation

    .annotation runtime Lcom/jd/droidlib/annotation/sql/Column;
    .end annotation
.end field

.field public usertype:Ljava/lang/Integer;
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
    .line 13
    invoke-direct {p0}, Lcom/jd/droidlib/model/Entity;-><init>()V

    return-void
.end method

.method public static parseModel(Lorg/json/JSONObject;)Lcom/jd/lottery/lib/model/UserInfoEntity;
    .locals 4
    .parameter "jsonObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/jd/lottery/lib/exception/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 40
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

    .line 41
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "digest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    invoke-static {p0}, Lcom/jd/lottery/lib/model/EncryptEntity;->parseModel(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    .line 45
    :goto_0
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

    .line 46
    new-instance v0, Lcom/jd/droidlib/persist/json/JSONSerializer;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/jd/droidlib/persist/json/JSONSerializer;-><init>(Landroid/content/Context;)V

    .line 48
    .local v0, jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;
    const-class v2, Lcom/jd/lottery/lib/model/UserInfoEntity;

    .line 47
    invoke-virtual {v0, p0, v2}, Lcom/jd/droidlib/persist/json/JSONSerializer;->deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/jd/droidlib/model/Model;

    move-result-object v1

    check-cast v1, Lcom/jd/lottery/lib/model/UserInfoEntity;

    .line 49
    .local v1, r:Lcom/jd/lottery/lib/model/UserInfoEntity;
    iget-object v2, v1, Lcom/jd/lottery/lib/model/UserInfoEntity;->usertype:Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 50
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/jd/lottery/lib/model/UserInfoEntity;->usertype:Ljava/lang/Integer;

    .line 51
    :cond_0
    return-object v1

    .line 44
    .end local v0           #jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;
    .end local v1           #r:Lcom/jd/lottery/lib/model/UserInfoEntity;
    :cond_1
    invoke-static {p0}, Lcom/jd/lottery/lib/model/ResultModel;->parseModel(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0
.end method
