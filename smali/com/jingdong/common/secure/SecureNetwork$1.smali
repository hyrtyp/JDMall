.class Lcom/jingdong/common/secure/SecureNetwork$1;
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
    iput-object p1, p0, Lcom/jingdong/common/secure/SecureNetwork$1;->this$0:Lcom/jingdong/common/secure/SecureNetwork;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 3
    .parameter "httpResponse"

    .prologue
    .line 222
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 223
    .local v0, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    iget-object v1, p0, Lcom/jingdong/common/secure/SecureNetwork$1;->this$0:Lcom/jingdong/common/secure/SecureNetwork;

    const-string v2, "pubKey"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jingdong/common/secure/SecureNetwork;->mPublicKey:Ljava/lang/String;

    .line 227
    iget-object v1, p0, Lcom/jingdong/common/secure/SecureNetwork$1;->this$0:Lcom/jingdong/common/secure/SecureNetwork;

    #calls: Lcom/jingdong/common/secure/SecureNetwork;->loadSessionKey()V
    invoke-static {v1}, Lcom/jingdong/common/secure/SecureNetwork;->access$1(Lcom/jingdong/common/secure/SecureNetwork;)V

    .line 228
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/jingdong/common/secure/SecureNetwork$1;->this$0:Lcom/jingdong/common/secure/SecureNetwork;

    const/4 v1, 0x3

    #calls: Lcom/jingdong/common/secure/SecureNetwork;->complete(I)V
    invoke-static {v0, v1}, Lcom/jingdong/common/secure/SecureNetwork;->access$0(Lcom/jingdong/common/secure/SecureNetwork;I)V

    .line 218
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 213
    return-void
.end method
