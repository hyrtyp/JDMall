.class public Lcom/jd/lottery/lib/model/EncryptEntity;
.super Lcom/jd/droidlib/model/Model;
.source "EncryptEntity.java"


# static fields
.field private static final serialVersionUID:J = -0x27420773bdaadb3cL


# instance fields
.field public digest:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field public msg:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/jd/droidlib/model/Model;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "digestString"
    .parameter "msgString"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/jd/droidlib/model/Model;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/jd/lottery/lib/model/EncryptEntity;->digest:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/jd/lottery/lib/model/EncryptEntity;->msg:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static getEncryptUri(Lcom/jd/droidlib/model/Model;)Landroid/net/Uri;
    .locals 11
    .parameter "model"

    .prologue
    const/4 v8, 0x0

    .line 36
    new-instance v4, Lcom/jd/droidlib/persist/json/JSONSerializer;

    invoke-direct {v4, v8}, Lcom/jd/droidlib/persist/json/JSONSerializer;-><init>(Landroid/content/Context;)V

    .line 39
    .local v4, jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;
    :try_start_0
    invoke-virtual {v4, p0}, Lcom/jd/droidlib/persist/json/JSONSerializer;->serialize(Lcom/jd/droidlib/model/Model;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 45
    .local v6, modelString:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "@@@@@@@@@@@@"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 48
    :try_start_1
    invoke-static {v6}, Lcom/jd/lottery/lib/utils/Des3;->encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 56
    .local v7, msgString:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "@@@@@@@@@@@@"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 57
    new-instance v5, Lcom/jd/common/security/MD5;

    invoke-direct {v5}, Lcom/jd/common/security/MD5;-><init>()V

    .line 58
    .local v5, md5:Lcom/jd/common/security/MD5;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "LLz7aFEIAjf+OKuKoq3EXtlDFhkQgOMx"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/jd/common/security/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, digest:Ljava/lang/String;
    new-instance v3, Lcom/jd/lottery/lib/model/EncryptEntity;

    invoke-direct {v3, v0, v7}, Lcom/jd/lottery/lib/model/EncryptEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .local v3, encryptEntity:Lcom/jd/lottery/lib/model/EncryptEntity;
    invoke-static {v3}, Lcom/jd/lottery/lib/net/LotteryUri;->getUri(Lcom/jd/droidlib/model/Model;)Landroid/net/Uri;

    move-result-object v8

    .end local v0           #digest:Ljava/lang/String;
    .end local v3           #encryptEntity:Lcom/jd/lottery/lib/model/EncryptEntity;
    .end local v5           #md5:Lcom/jd/common/security/MD5;
    .end local v6           #modelString:Ljava/lang/String;
    .end local v7           #msgString:Ljava/lang/String;
    :goto_0
    return-object v8

    .line 40
    :catch_0
    move-exception v2

    .line 42
    .local v2, e1:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 49
    .end local v2           #e1:Lorg/json/JSONException;
    .restart local v6       #modelString:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 51
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseModel(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 9
    .parameter "jsonObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 82
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "@@@@@@@@@@@@"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 83
    new-instance v1, Lcom/jd/droidlib/persist/json/JSONSerializer;

    invoke-direct {v1, v5}, Lcom/jd/droidlib/persist/json/JSONSerializer;-><init>(Landroid/content/Context;)V

    .line 85
    .local v1, jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;
    const-class v6, Lcom/jd/lottery/lib/model/ResultModel;

    .line 84
    invoke-virtual {v1, p0, v6}, Lcom/jd/droidlib/persist/json/JSONSerializer;->deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/jd/droidlib/model/Model;

    move-result-object v3

    check-cast v3, Lcom/jd/lottery/lib/model/ResultModel;

    .line 86
    .local v3, result:Lcom/jd/lottery/lib/model/ResultModel;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "@@@@@@@@@@@@"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/jd/lottery/lib/model/ResultModel;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 87
    iget v6, v3, Lcom/jd/lottery/lib/model/ResultModel;->resultCode:I

    if-nez v6, :cond_0

    .line 88
    new-instance v4, Lorg/json/JSONObject;

    iget-object v6, v3, Lcom/jd/lottery/lib/model/ResultModel;->result:Ljava/lang/String;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    .local v4, results:Lorg/json/JSONObject;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "@@@@@@@@@@@@"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 91
    const-class v6, Lcom/jd/lottery/lib/model/EncryptEntity;

    .line 90
    invoke-virtual {v1, v4, v6}, Lcom/jd/droidlib/persist/json/JSONSerializer;->deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/jd/droidlib/model/Model;

    move-result-object v2

    check-cast v2, Lcom/jd/lottery/lib/model/EncryptEntity;

    .line 92
    .local v2, r:Lcom/jd/lottery/lib/model/EncryptEntity;
    iget-object v6, v2, Lcom/jd/lottery/lib/model/EncryptEntity;->digest:Ljava/lang/String;

    iget-object v7, v2, Lcom/jd/lottery/lib/model/EncryptEntity;->msg:Ljava/lang/String;

    .line 93
    const-string v8, "LLz7aFEIAjf+OKuKoq3EXtlDFhkQgOMx"

    .line 92
    invoke-static {v6, v7, v8}, Lcom/jd/lottery/lib/utils/Encrypt;->verifyAndDecrypter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, decryptString:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "@@@@@@@@@@@@"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 95
    if-nez v0, :cond_1

    .line 99
    .end local v0           #decryptString:Ljava/lang/String;
    .end local v2           #r:Lcom/jd/lottery/lib/model/EncryptEntity;
    .end local v4           #results:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v5

    .line 97
    .restart local v0       #decryptString:Ljava/lang/String;
    .restart local v2       #r:Lcom/jd/lottery/lib/model/EncryptEntity;
    .restart local v4       #results:Lorg/json/JSONObject;
    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "results"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    goto :goto_0
.end method
