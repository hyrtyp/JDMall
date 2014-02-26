.class Lcom/jingdong/app/mall/product/ProductThridAddress$4;
.super Ljava/lang/Object;
.source "ProductThridAddress.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/product/ProductThridAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductThridAddress;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "selectId"

    .prologue
    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->clickTime:J
    invoke-static {v8}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x258

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 451
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    #setter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->clickTime:J
    invoke-static {v6, v7, v8}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$1(Lcom/jingdong/app/mall/product/ProductThridAddress;J)V

    .line 457
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #setter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mCountySelectId:I
    invoke-static {v6, p2}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$41(Lcom/jingdong/app/mall/product/ProductThridAddress;I)V

    .line 458
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->countyList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$29(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mCountySelectId:I
    invoke-static {v8}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$42(Lcom/jingdong/app/mall/product/ProductThridAddress;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jingdong/common/entity/AddressBaseMode;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/AddressBaseMode;->getId()Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->countyID:Ljava/lang/String;
    invoke-static {v7, v6}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$43(Lcom/jingdong/app/mall/product/ProductThridAddress;Ljava/lang/String;)V

    .line 460
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$8(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/entity/Product;

    move-result-object v6

    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->countyID:Ljava/lang/String;
    invoke-static {v7}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$39(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jingdong/common/entity/Product;->setCountyID(Ljava/lang/String;)V

    .line 461
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$8(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/entity/Product;

    move-result-object v7

    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->countyList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$29(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mCountySelectId:I
    invoke-static {v8}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$42(Lcom/jingdong/app/mall/product/ProductThridAddress;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jingdong/common/entity/AddressBaseMode;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/AddressBaseMode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/jingdong/common/entity/Product;->setCountyName(Ljava/lang/String;)V

    .line 462
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$8(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/entity/Product;

    move-result-object v7

    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->countyList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$29(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mCountySelectId:I
    invoke-static {v8}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$42(Lcom/jingdong/app/mall/product/ProductThridAddress;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jingdong/common/entity/AddressBaseMode;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/AddressBaseMode;->getFunctionId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/jingdong/common/entity/Product;->setStockFunction(Ljava/lang/String;)V

    .line 464
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$8(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/entity/Product;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Lcom/jingdong/common/entity/Product;->setTownID(Ljava/lang/String;)V

    .line 465
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$8(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/entity/Product;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/jingdong/common/entity/Product;->setTownName(Ljava/lang/String;)V

    .line 467
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->countyList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$29(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mCountySelectId:I
    invoke-static {v7}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$42(Lcom/jingdong/app/mall/product/ProductThridAddress;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jingdong/common/entity/AddressBaseMode;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/AddressBaseMode;->getFlag()Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, flag:Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 470
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->countyList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$29(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mCountySelectId:I
    invoke-static {v7}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$42(Lcom/jingdong/app/mall/product/ProductThridAddress;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jingdong/common/entity/AddressBaseMode;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/AddressBaseMode;->getSkuId()Ljava/lang/String;

    move-result-object v4

    .line 472
    .local v4, productId:Ljava/lang/String;
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$8(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/entity/Product;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/common/entity/Product;->getSkuId()Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, oldProductId:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 475
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$8(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/entity/Product;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/jingdong/common/entity/Product;->setSkuId(Ljava/lang/String;)V

    .line 478
    :cond_0
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$8(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/entity/Product;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/common/entity/Product;->getSkuId()Ljava/lang/String;

    move-result-object v5

    .line 481
    .local v5, productIdNew:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 482
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 483
    .local v2, prodctID:J
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->updataUIListener:Lcom/jingdong/app/mall/product/ProductThridAddress$ProductDetailUpdataUIListener;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$40(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/app/mall/product/ProductThridAddress$ProductDetailUpdataUIListener;

    move-result-object v6

    const/16 v7, 0x15

    invoke-interface {v6, v7, v2, v3}, Lcom/jingdong/app/mall/product/ProductThridAddress$ProductDetailUpdataUIListener;->onFinish(IJ)V

    .line 485
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #calls: Lcom/jingdong/app/mall/product/ProductThridAddress;->closeDialog()V
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$14(Lcom/jingdong/app/mall/product/ProductThridAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .end local v2           #prodctID:J
    :goto_0
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->provinceID:Ljava/lang/String;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$9(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/jingdong/app/mall/utils/CommonUtil;->setProvinceIDToSharedPreferences(Ljava/lang/String;)V

    .line 496
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->cityID:Ljava/lang/String;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$27(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/jingdong/app/mall/utils/CommonUtil;->setCityIDToSharedPreferences(Ljava/lang/String;)V

    .line 497
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->countyID:Ljava/lang/String;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$39(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/jingdong/app/mall/utils/CommonUtil;->setDistrictIdToSharedPreferences(Ljava/lang/String;)V

    .line 499
    invoke-static {}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$10()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/jingdong/app/mall/utils/CommonUtil;->setTownIdToSharedPreferences(Ljava/lang/String;)V

    .line 503
    .end local v0           #flag:Ljava/lang/String;
    .end local v1           #oldProductId:Ljava/lang/String;
    .end local v4           #productId:Ljava/lang/String;
    .end local v5           #productIdNew:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 487
    .restart local v0       #flag:Ljava/lang/String;
    .restart local v1       #oldProductId:Ljava/lang/String;
    .restart local v4       #productId:Ljava/lang/String;
    .restart local v5       #productIdNew:Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    const/4 v7, 0x1

    #calls: Lcom/jingdong/app/mall/product/ProductThridAddress;->handleStock(Z)V
    invoke-static {v6, v7}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$11(Lcom/jingdong/app/mall/product/ProductThridAddress;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 489
    :catch_0
    move-exception v6

    goto :goto_0

    .line 500
    .end local v1           #oldProductId:Ljava/lang/String;
    .end local v4           #productId:Ljava/lang/String;
    .end local v5           #productIdNew:Ljava/lang/String;
    :cond_3
    const-string v6, "0"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 501
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #calls: Lcom/jingdong/app/mall/product/ProductThridAddress;->queryTown()V
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$44(Lcom/jingdong/app/mall/product/ProductThridAddress;)V

    goto :goto_1
.end method
