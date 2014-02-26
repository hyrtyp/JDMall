.class Lcom/jingdong/app/mall/personel/PersonelActivity$22;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->queryBalanceAndJingBean(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

.field private final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$22;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$22;->val$type:Ljava/lang/String;

    .line 2153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$22;)Lcom/jingdong/app/mall/personel/PersonelActivity;
    .locals 1
    .parameter

    .prologue
    .line 2153
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$22;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 7
    .parameter "httpResponse"

    .prologue
    const/4 v6, 0x0

    .line 2171
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    .line 2176
    .local v3, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v5, "subItemList"

    invoke-virtual {v3, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 2178
    .local v0, array:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 2179
    invoke-virtual {v0, v6}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 2180
    .local v2, json:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-nez v2, :cond_0

    .line 2181
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$22;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->isQuerying:Z
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$55(Lcom/jingdong/app/mall/personel/PersonelActivity;Z)V

    .line 2232
    .end local v2           #json:Lcom/jingdong/common/utils/JSONObjectProxy;
    :goto_0
    return-void

    .line 2184
    .restart local v2       #json:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_0
    const-string v5, "url"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2185
    .local v4, tempUrl:Ljava/lang/String;
    const-string v5, "functionId"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2192
    .local v1, functionId:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2194
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$22;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    new-instance v6, Lcom/jingdong/app/mall/personel/PersonelActivity$22$1;

    invoke-direct {v6, p0, v4, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$22$1;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity$22;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/personel/PersonelActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2225
    :cond_1
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$22;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->isQuerying:Z
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$55(Lcom/jingdong/app/mall/personel/PersonelActivity;Z)V

    goto :goto_0

    .line 2229
    .end local v1           #functionId:Ljava/lang/String;
    .end local v2           #json:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v4           #tempUrl:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$22;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->isQuerying:Z
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$55(Lcom/jingdong/app/mall/personel/PersonelActivity;Z)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$22;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->isQuerying:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$55(Lcom/jingdong/app/mall/personel/PersonelActivity;Z)V

    .line 2163
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 2
    .parameter "httpSettingParams"

    .prologue
    .line 2157
    const-string v0, "type"

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$22;->val$type:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2158
    return-void
.end method
