.class Lcom/jingdong/common/lbs/ProductInfoUtil$1;
.super Ljava/lang/Object;
.source "ProductInfoUtil.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/lbs/ProductInfoUtil;->queryProductInfo(Landroid/content/Context;DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/lbs/ProductInfoUtil;


# direct methods
.method constructor <init>(Lcom/jingdong/common/lbs/ProductInfoUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/lbs/ProductInfoUtil$1;->this$0:Lcom/jingdong/common/lbs/ProductInfoUtil;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 11
    .parameter "httpResponse"

    .prologue
    const/4 v10, 0x0

    .line 75
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v7

    .line 80
    .local v7, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v0, "provinceId"

    invoke-virtual {v7, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/jingdong/common/lbs/ProductInfoUtil$1;->this$0:Lcom/jingdong/common/lbs/ProductInfoUtil;

    const-string v1, "provinceId"

    invoke-virtual {v7, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/lbs/ProductInfoUtil;->setProviceId(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/jingdong/common/lbs/ProductInfoUtil$1;->this$0:Lcom/jingdong/common/lbs/ProductInfoUtil;

    const-string v1, "cityId"

    invoke-virtual {v7, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/lbs/ProductInfoUtil;->setCityId(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/jingdong/common/lbs/ProductInfoUtil$1;->this$0:Lcom/jingdong/common/lbs/ProductInfoUtil;

    const-string v1, "districtId"

    invoke-virtual {v7, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/lbs/ProductInfoUtil;->setDistrictId(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/jingdong/common/lbs/ProductInfoUtil$1;->this$0:Lcom/jingdong/common/lbs/ProductInfoUtil;

    const-string v1, "provinceName"

    invoke-virtual {v7, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/lbs/ProductInfoUtil;->setProviceName(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/jingdong/common/lbs/ProductInfoUtil$1;->this$0:Lcom/jingdong/common/lbs/ProductInfoUtil;

    const-string v1, "cityName"

    invoke-virtual {v7, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/lbs/ProductInfoUtil;->setCityName(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/jingdong/common/lbs/ProductInfoUtil$1;->this$0:Lcom/jingdong/common/lbs/ProductInfoUtil;

    const-string v1, "districtName"

    invoke-virtual {v7, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/lbs/ProductInfoUtil;->setDistrictName(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/jingdong/common/lbs/ProductInfoUtil$1;->this$0:Lcom/jingdong/common/lbs/ProductInfoUtil;

    #getter for: Lcom/jingdong/common/lbs/ProductInfoUtil;->localListener:Lcom/jingdong/common/lbs/ProductInfoUtil$UpdateDataListener;
    invoke-static {v0}, Lcom/jingdong/common/lbs/ProductInfoUtil;->access$0(Lcom/jingdong/common/lbs/ProductInfoUtil;)Lcom/jingdong/common/lbs/ProductInfoUtil$UpdateDataListener;

    move-result-object v9

    new-instance v0, Lcom/jingdong/common/lbs/ProductInfoUtil;

    iget-object v1, p0, Lcom/jingdong/common/lbs/ProductInfoUtil$1;->this$0:Lcom/jingdong/common/lbs/ProductInfoUtil;

    invoke-virtual {v1}, Lcom/jingdong/common/lbs/ProductInfoUtil;->getProviceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/common/lbs/ProductInfoUtil$1;->this$0:Lcom/jingdong/common/lbs/ProductInfoUtil;

    invoke-virtual {v2}, Lcom/jingdong/common/lbs/ProductInfoUtil;->getCityId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/common/lbs/ProductInfoUtil$1;->this$0:Lcom/jingdong/common/lbs/ProductInfoUtil;

    invoke-virtual {v3}, Lcom/jingdong/common/lbs/ProductInfoUtil;->getDistrictId()Ljava/lang/String;

    move-result-object v3

    .line 102
    iget-object v4, p0, Lcom/jingdong/common/lbs/ProductInfoUtil$1;->this$0:Lcom/jingdong/common/lbs/ProductInfoUtil;

    invoke-virtual {v4}, Lcom/jingdong/common/lbs/ProductInfoUtil;->getProviceName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jingdong/common/lbs/ProductInfoUtil$1;->this$0:Lcom/jingdong/common/lbs/ProductInfoUtil;

    invoke-virtual {v5}, Lcom/jingdong/common/lbs/ProductInfoUtil;->getCityName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/jingdong/common/lbs/ProductInfoUtil$1;->this$0:Lcom/jingdong/common/lbs/ProductInfoUtil;

    invoke-virtual {v6}, Lcom/jingdong/common/lbs/ProductInfoUtil;->getDistrictName()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/common/lbs/ProductInfoUtil;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-interface {v9, v0, v10}, Lcom/jingdong/common/lbs/ProductInfoUtil$UpdateDataListener;->onFinish(Lcom/jingdong/common/lbs/ProductInfoUtil;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string v0, "msg"

    invoke-virtual {v7, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, msg:Ljava/lang/String;
    iget-object v0, p0, Lcom/jingdong/common/lbs/ProductInfoUtil$1;->this$0:Lcom/jingdong/common/lbs/ProductInfoUtil;

    #getter for: Lcom/jingdong/common/lbs/ProductInfoUtil;->localListener:Lcom/jingdong/common/lbs/ProductInfoUtil$UpdateDataListener;
    invoke-static {v0}, Lcom/jingdong/common/lbs/ProductInfoUtil;->access$0(Lcom/jingdong/common/lbs/ProductInfoUtil;)Lcom/jingdong/common/lbs/ProductInfoUtil$UpdateDataListener;

    move-result-object v0

    invoke-interface {v0, v10, v8}, Lcom/jingdong/common/lbs/ProductInfoUtil$UpdateDataListener;->onFinish(Lcom/jingdong/common/lbs/ProductInfoUtil;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jingdong/common/lbs/ProductInfoUtil$1;->this$0:Lcom/jingdong/common/lbs/ProductInfoUtil;

    #getter for: Lcom/jingdong/common/lbs/ProductInfoUtil;->localListener:Lcom/jingdong/common/lbs/ProductInfoUtil$UpdateDataListener;
    invoke-static {v0}, Lcom/jingdong/common/lbs/ProductInfoUtil;->access$0(Lcom/jingdong/common/lbs/ProductInfoUtil;)Lcom/jingdong/common/lbs/ProductInfoUtil$UpdateDataListener;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/jingdong/common/res/StringUtil;->gps_location_fail:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/jingdong/common/lbs/ProductInfoUtil$UpdateDataListener;->onFinish(Lcom/jingdong/common/lbs/ProductInfoUtil;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 66
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method
