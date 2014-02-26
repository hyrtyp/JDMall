.class Lcom/jingdong/app/mall/shopping/OrderCommodityActivity$2;
.super Ljava/lang/Object;
.source "OrderCommodityActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->initDate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 5
    .parameter "httpResponse"

    .prologue
    .line 235
    if-eqz p1, :cond_1

    .line 236
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 237
    .local v2, jsonRoot:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v3, "imageDomain"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, imageDomain:Ljava/lang/String;
    const-string v3, "commodities"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 240
    .local v0, commodityList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->listData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->access$0(Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 241
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->listData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->access$0(Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 243
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->listData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->access$0(Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1}, Lcom/jingdong/common/entity/OrderCommodity;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 247
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;

    #calls: Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->refreshLayout()V
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->access$1(Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;)V

    .line 250
    .end local v0           #commodityList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v1           #imageDomain:Ljava/lang/String;
    .end local v2           #jsonRoot:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_1
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 231
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 227
    return-void
.end method
