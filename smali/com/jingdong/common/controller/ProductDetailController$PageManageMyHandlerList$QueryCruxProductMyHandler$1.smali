.class Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler$1;
.super Ljava/lang/Object;
.source "ProductDetailController.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;

.field private final synthetic val$skuOld:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;

    iput-object p2, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler$1;->val$skuOld:Ljava/lang/String;

    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 9
    .parameter "httpResponse"

    .prologue
    .line 660
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 661
    .local v2, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v5, "basicInfo"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObject(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    .line 662
    .local v3, jsonProduct:Lcom/jingdong/common/utils/JSONObjectProxy;
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    if-nez v5, :cond_1

    .line 663
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v5

    new-instance v6, Lcom/jingdong/common/entity/Product;

    const/4 v7, 0x0

    const/16 v8, 0x1c

    invoke-direct {v6, v3, v7, v8}, Lcom/jingdong/common/entity/Product;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;Lorg/json/JSONArray;I)V

    #setter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5, v6}, Lcom/jingdong/common/controller/ProductDetailController;->access$6(Lcom/jingdong/common/controller/ProductDetailController;Lcom/jingdong/common/entity/Product;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    .end local v2           #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v3           #jsonProduct:Lcom/jingdong/common/utils/JSONObjectProxy;
    :goto_0
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/Product;->setCheckNext(Z)V

    .line 674
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jingdong/common/entity/Product;->getProductDetailCruxBasicInfo()Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;

    move-result-object v1

    .line 676
    .local v1, cruxBasicInfo:Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    invoke-virtual {v1}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->isStore()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/Product;->setFavorited(Z)V

    .line 677
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    invoke-virtual {v1}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->getIsPostByJd()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/Product;->setPostByJd(Ljava/lang/Boolean;)V

    .line 678
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    invoke-virtual {v1}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->getService()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/Product;->setDeliver(Ljava/lang/String;)V

    .line 679
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    invoke-virtual {v1}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->getProInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/Product;->setPromotionInfo(Ljava/lang/String;)V

    .line 680
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    invoke-virtual {v1}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->getProTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/Product;->setPromotionTitle(Ljava/lang/String;)V

    .line 681
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jingdong/common/entity/Product;->getProductDetailBasicInfo()Lcom/jingdong/common/entity/ProductDetailBasicInfo;

    move-result-object v0

    .line 682
    .local v0, basicInfo:Lcom/jingdong/common/entity/ProductDetailBasicInfo;
    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {v0}, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->getWareId()Ljava/lang/String;

    move-result-object v4

    .line 685
    .local v4, skuNew:Ljava/lang/String;
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    iget-object v6, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler$1;->val$skuOld:Ljava/lang/String;

    #calls: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->handleNewBusiness(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v4}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$0(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    .end local v4           #skuNew:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->doNext()V

    .line 689
    return-void

    .line 665
    .end local v0           #basicInfo:Lcom/jingdong/common/entity/ProductDetailBasicInfo;
    .end local v1           #cruxBasicInfo:Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;
    .restart local v2       #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v3       #jsonProduct:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x1c

    invoke-virtual {v5, v3, v6, v7}, Lcom/jingdong/common/entity/Product;->update(Lcom/jingdong/common/utils/JSONObjectProxy;Lorg/json/JSONArray;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 667
    .end local v2           #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v3           #jsonProduct:Lcom/jingdong/common/utils/JSONObjectProxy;
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 651
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 646
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 693
    return-void
.end method
