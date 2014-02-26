.class Lcom/jingdong/common/secure/SecureAPI$1;
.super Ljava/lang/Object;
.source "SecureAPI.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/secure/SecureAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/secure/SecureAPI;


# direct methods
.method constructor <init>(Lcom/jingdong/common/secure/SecureAPI;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/secure/SecureAPI$1;->this$0:Lcom/jingdong/common/secure/SecureAPI;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    .line 159
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 161
    .local v1, modulesJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v2, "code"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, code:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/jingdong/common/secure/SecureAPI$1;->this$0:Lcom/jingdong/common/secure/SecureAPI;

    const-string v3, "modules"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    iput-object v3, v2, Lcom/jingdong/common/secure/SecureAPI;->jsonApiInfos:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 165
    iget-object v2, p0, Lcom/jingdong/common/secure/SecureAPI$1;->this$0:Lcom/jingdong/common/secure/SecureAPI;

    iget-object v2, v2, Lcom/jingdong/common/secure/SecureAPI;->jsonApiInfos:Lcom/jingdong/common/utils/JSONObjectProxy;

    if-eqz v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/jingdong/common/secure/SecureAPI$1;->this$0:Lcom/jingdong/common/secure/SecureAPI;

    const/4 v3, 0x2

    #calls: Lcom/jingdong/common/secure/SecureAPI;->complete(I)V
    invoke-static {v2, v3}, Lcom/jingdong/common/secure/SecureAPI;->access$0(Lcom/jingdong/common/secure/SecureAPI;I)V

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/jingdong/common/secure/SecureAPI$1;->this$0:Lcom/jingdong/common/secure/SecureAPI;

    const/4 v3, 0x3

    #calls: Lcom/jingdong/common/secure/SecureAPI;->complete(I)V
    invoke-static {v2, v3}, Lcom/jingdong/common/secure/SecureAPI;->access$0(Lcom/jingdong/common/secure/SecureAPI;I)V

    .line 171
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/jingdong/common/secure/SecureAPI$1;->this$0:Lcom/jingdong/common/secure/SecureAPI;

    const/4 v1, 0x3

    #calls: Lcom/jingdong/common/secure/SecureAPI;->complete(I)V
    invoke-static {v0, v1}, Lcom/jingdong/common/secure/SecureAPI;->access$0(Lcom/jingdong/common/secure/SecureAPI;I)V

    .line 155
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 150
    return-void
.end method
