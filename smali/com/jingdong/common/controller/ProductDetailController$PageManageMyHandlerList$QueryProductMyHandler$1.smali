.class Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler$1;
.super Ljava/lang/Object;
.source "ProductDetailController.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;


# direct methods
.method constructor <init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 9
    .parameter "httpResponse"

    .prologue
    .line 561
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 562
    .local v1, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    if-nez v5, :cond_0

    .line 563
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v5

    new-instance v6, Lcom/jingdong/common/entity/Product;

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-direct {v6, v1, v7, v8}, Lcom/jingdong/common/entity/Product;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;Lorg/json/JSONArray;I)V

    #setter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5, v6}, Lcom/jingdong/common/controller/ProductDetailController;->access$6(Lcom/jingdong/common/controller/ProductDetailController;Lcom/jingdong/common/entity/Product;)V

    .line 568
    :goto_0
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jingdong/common/entity/Product;->getProductDetailDefaultAddress()Lcom/jingdong/common/entity/DefaultAddressMode;

    move-result-object v2

    .line 569
    .local v2, productDetailDefaultAddress:Lcom/jingdong/common/entity/DefaultAddressMode;
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    invoke-virtual {v2}, Lcom/jingdong/common/entity/DefaultAddressMode;->getProvinceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/Product;->setProvinceName(Ljava/lang/String;)V

    .line 570
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    invoke-virtual {v2}, Lcom/jingdong/common/entity/DefaultAddressMode;->getCityName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/Product;->setCityName(Ljava/lang/String;)V

    .line 571
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    invoke-virtual {v2}, Lcom/jingdong/common/entity/DefaultAddressMode;->getCountyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/Product;->setCountyName(Ljava/lang/String;)V

    .line 572
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    invoke-virtual {v2}, Lcom/jingdong/common/entity/DefaultAddressMode;->getTownName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/Product;->setTownName(Ljava/lang/String;)V

    .line 574
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jingdong/common/entity/Product;->getProductDetailBasicInfo()Lcom/jingdong/common/entity/ProductDetailBasicInfo;

    move-result-object v0

    .line 575
    .local v0, basicInfo:Lcom/jingdong/common/entity/ProductDetailBasicInfo;
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    invoke-virtual {v0}, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->getStock()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/Product;->setProvinceStockContent(Ljava/lang/String;)V

    .line 576
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    invoke-virtual {v0}, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->isCartFlag()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/Product;->setProvinceStockFlag(Ljava/lang/Boolean;)V

    .line 578
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jingdong/common/entity/Product;->getProductDetailJprice()Lcom/jingdong/common/entity/ProductDetailPrice;

    move-result-object v3

    .line 579
    .local v3, productDetailJprice:Lcom/jingdong/common/entity/ProductDetailPrice;
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    invoke-virtual {v3}, Lcom/jingdong/common/entity/ProductDetailPrice;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/Product;->setJdPrice(Ljava/lang/String;)V

    .line 581
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jingdong/common/entity/Product;->getProductDetailMprice()Lcom/jingdong/common/entity/ProductDetailPrice;

    move-result-object v4

    .line 582
    .local v4, productDetailMprice:Lcom/jingdong/common/entity/ProductDetailPrice;
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    invoke-virtual {v4}, Lcom/jingdong/common/entity/ProductDetailPrice;->getDisplay()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/Product;->setShowMarketPrice(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    .end local v0           #basicInfo:Lcom/jingdong/common/entity/ProductDetailBasicInfo;
    .end local v1           #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v2           #productDetailDefaultAddress:Lcom/jingdong/common/entity/DefaultAddressMode;
    .end local v3           #productDetailJprice:Lcom/jingdong/common/entity/ProductDetailPrice;
    .end local v4           #productDetailMprice:Lcom/jingdong/common/entity/ProductDetailPrice;
    :goto_1
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->doNext()V

    .line 591
    return-void

    .line 565
    .restart local v1       #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v5, v1, v6, v7}, Lcom/jingdong/common/entity/Product;->update(Lcom/jingdong/common/utils/JSONObjectProxy;Lorg/json/JSONArray;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 584
    .end local v1           #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 552
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 547
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 595
    return-void
.end method
