.class Lcom/jingdong/app/mall/utils/CouponUtil$1;
.super Ljava/lang/Object;
.source "CouponUtil.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/CouponUtil;->queryTakeCoupon(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$couponURL:Ljava/lang/String;

.field private final synthetic val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private final synthetic val$param:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/CouponUtil$1;->val$param:Ljava/lang/String;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/CouponUtil$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    iput-object p3, p0, Lcom/jingdong/app/mall/utils/CouponUtil$1;->val$couponURL:Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 11
    .parameter "httpResponse"

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v9

    .line 58
    .local v9, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v0, "subItemList"

    invoke-virtual {v9, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v7

    .line 59
    .local v7, array:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v8

    .line 61
    .local v8, json:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v0, "url"

    invoke-virtual {v8, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, toUrl:Ljava/lang/String;
    const-string v0, "functionId"

    invoke-virtual {v8, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, functionId:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v10, p0, Lcom/jingdong/app/mall/utils/CouponUtil$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v0, Lcom/jingdong/app/mall/utils/CouponUtil$1$1;

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/CouponUtil$1;->val$param:Ljava/lang/String;

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/CouponUtil$1;->val$couponURL:Ljava/lang/String;

    iget-object v6, p0, Lcom/jingdong/app/mall/utils/CouponUtil$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/utils/CouponUtil$1$1;-><init>(Lcom/jingdong/app/mall/utils/CouponUtil$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jingdong/app/mall/utils/MyActivity;)V

    invoke-virtual {v10, v0}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 106
    .end local v2           #toUrl:Ljava/lang/String;
    .end local v5           #functionId:Ljava/lang/String;
    .end local v8           #json:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_0
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 45
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 2
    .parameter "httpSettingParams"

    .prologue
    .line 39
    const-string v0, "type"

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/CouponUtil$1;->val$param:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    return-void
.end method
