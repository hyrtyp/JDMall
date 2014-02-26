.class Lcom/jingdong/app/mall/login/LoginActivity$17;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/login/LoginActivity;->queryAccountSecurity(Lcom/jingdong/app/mall/utils/MyActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Lcom/jingdong/app/mall/utils/MyActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/MyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/login/LoginActivity$17;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 1350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 8
    .parameter "httpResponse"

    .prologue
    .line 1368
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    .line 1373
    .local v3, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v5, "subItemList"

    invoke-virtual {v3, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 1375
    .local v0, array:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 1376
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 1377
    .local v2, json:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v5, "url"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1378
    .local v4, tempUrl:Ljava/lang/String;
    const-string v5, "functionId"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1380
    .local v1, functionId:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1382
    iget-object v5, p0, Lcom/jingdong/app/mall/login/LoginActivity$17;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v6, Lcom/jingdong/app/mall/login/LoginActivity$17$1;

    iget-object v7, p0, Lcom/jingdong/app/mall/login/LoginActivity$17;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-direct {v6, p0, v4, v1, v7}, Lcom/jingdong/app/mall/login/LoginActivity$17$1;-><init>(Lcom/jingdong/app/mall/login/LoginActivity$17;Ljava/lang/String;Ljava/lang/String;Lcom/jingdong/app/mall/utils/MyActivity;)V

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 1411
    .end local v1           #functionId:Ljava/lang/String;
    .end local v2           #json:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v4           #tempUrl:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 1360
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 2
    .parameter "httpSettingParams"

    .prologue
    .line 1354
    const-string v0, "type"

    const-string v1, "AccountSecurity"

    invoke-interface {p1, v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1355
    return-void
.end method
