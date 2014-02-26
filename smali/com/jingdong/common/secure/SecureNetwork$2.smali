.class Lcom/jingdong/common/secure/SecureNetwork$2;
.super Ljava/lang/Object;
.source "SecureNetwork.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/secure/SecureNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/secure/SecureNetwork;


# direct methods
.method constructor <init>(Lcom/jingdong/common/secure/SecureNetwork;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/secure/SecureNetwork$2;->this$0:Lcom/jingdong/common/secure/SecureNetwork;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 6
    .parameter "httpResponse"

    .prologue
    const/4 v5, 0x3

    .line 258
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 259
    .local v0, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    iget-object v1, p0, Lcom/jingdong/common/secure/SecureNetwork$2;->this$0:Lcom/jingdong/common/secure/SecureNetwork;

    const-string v2, "sessionKey"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jingdong/common/secure/SecureNetwork;->mSessionKey:Ljava/lang/String;

    .line 260
    iget-object v1, p0, Lcom/jingdong/common/secure/SecureNetwork$2;->this$0:Lcom/jingdong/common/secure/SecureNetwork;

    iget-object v1, v1, Lcom/jingdong/common/secure/SecureNetwork;->mSessionKey:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/jingdong/common/secure/SecureNetwork$2;->this$0:Lcom/jingdong/common/secure/SecureNetwork;

    #calls: Lcom/jingdong/common/secure/SecureNetwork;->complete(I)V
    invoke-static {v1, v5}, Lcom/jingdong/common/secure/SecureNetwork;->access$0(Lcom/jingdong/common/secure/SecureNetwork;I)V

    .line 277
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/jingdong/common/secure/SecureNetwork$2;->this$0:Lcom/jingdong/common/secure/SecureNetwork;

    iget-object v2, p0, Lcom/jingdong/common/secure/SecureNetwork$2;->this$0:Lcom/jingdong/common/secure/SecureNetwork;

    iget-object v2, v2, Lcom/jingdong/common/secure/SecureNetwork;->mSessionKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/jingdong/common/secure/SecureNetwork$2;->this$0:Lcom/jingdong/common/secure/SecureNetwork;

    iget-object v3, v3, Lcom/jingdong/common/secure/SecureNetwork;->mRandomKey:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-static {v2, v3, v4}, Lcom/jingdong/common/secure/DesUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jingdong/common/secure/SecureNetwork;->mTrueKey:Ljava/lang/String;

    .line 272
    iget-object v1, p0, Lcom/jingdong/common/secure/SecureNetwork$2;->this$0:Lcom/jingdong/common/secure/SecureNetwork;

    iget-object v1, v1, Lcom/jingdong/common/secure/SecureNetwork;->mTrueKey:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/jingdong/common/secure/SecureNetwork$2;->this$0:Lcom/jingdong/common/secure/SecureNetwork;

    #calls: Lcom/jingdong/common/secure/SecureNetwork;->complete(I)V
    invoke-static {v1, v5}, Lcom/jingdong/common/secure/SecureNetwork;->access$0(Lcom/jingdong/common/secure/SecureNetwork;I)V

    goto :goto_0

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/jingdong/common/secure/SecureNetwork$2;->this$0:Lcom/jingdong/common/secure/SecureNetwork;

    const/4 v2, 0x2

    #calls: Lcom/jingdong/common/secure/SecureNetwork;->complete(I)V
    invoke-static {v1, v2}, Lcom/jingdong/common/secure/SecureNetwork;->access$0(Lcom/jingdong/common/secure/SecureNetwork;I)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/jingdong/common/secure/SecureNetwork$2;->this$0:Lcom/jingdong/common/secure/SecureNetwork;

    const/4 v1, 0x3

    #calls: Lcom/jingdong/common/secure/SecureNetwork;->complete(I)V
    invoke-static {v0, v1}, Lcom/jingdong/common/secure/SecureNetwork;->access$0(Lcom/jingdong/common/secure/SecureNetwork;I)V

    .line 254
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 3
    .parameter "httpSettingParams"

    .prologue
    .line 239
    :try_start_0
    const-string v1, "loginInfo"

    iget-object v2, p0, Lcom/jingdong/common/secure/SecureNetwork$2;->this$0:Lcom/jingdong/common/secure/SecureNetwork;

    invoke-virtual {v2}, Lcom/jingdong/common/secure/SecureNetwork;->encryptionKeyData()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Lorg/json/JSONException;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;->setReady(Z)V

    goto :goto_0
.end method
