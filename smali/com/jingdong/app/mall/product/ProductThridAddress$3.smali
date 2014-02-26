.class Lcom/jingdong/app/mall/product/ProductThridAddress$3;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "selectId"

    .prologue
    const/4 v9, 0x1

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->clickTime:J
    invoke-static {v7}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x258

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 390
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    #setter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->clickTime:J
    invoke-static {v5, v6, v7}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$1(Lcom/jingdong/app/mall/product/ProductThridAddress;J)V

    .line 395
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->isTownClicked:Z
    invoke-static {v5}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$32(Lcom/jingdong/app/mall/product/ProductThridAddress;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 396
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #setter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->isTownClicked:Z
    invoke-static {v5, v9}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$33(Lcom/jingdong/app/mall/product/ProductThridAddress;Z)V

    .line 402
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #setter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mTownSelectId:I
    invoke-static {v5, p2}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$34(Lcom/jingdong/app/mall/product/ProductThridAddress;I)V

    .line 403
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->townList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$35(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mTownSelectId:I
    invoke-static {v7}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$36(Lcom/jingdong/app/mall/product/ProductThridAddress;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/AddressBaseMode;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/AddressBaseMode;->getId()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->townID:Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$37(Lcom/jingdong/app/mall/product/ProductThridAddress;Ljava/lang/String;)V

    .line 405
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$8(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->townID:Ljava/lang/String;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$38(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/Product;->setTownID(Ljava/lang/String;)V

    .line 406
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$8(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/entity/Product;

    move-result-object v6

    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->townList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$35(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mTownSelectId:I
    invoke-static {v7}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$36(Lcom/jingdong/app/mall/product/ProductThridAddress;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/AddressBaseMode;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/AddressBaseMode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/jingdong/common/entity/Product;->setTownName(Ljava/lang/String;)V

    .line 407
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$8(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/entity/Product;

    move-result-object v6

    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->townList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$35(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mTownSelectId:I
    invoke-static {v7}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$36(Lcom/jingdong/app/mall/product/ProductThridAddress;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/AddressBaseMode;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/AddressBaseMode;->getFunctionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/jingdong/common/entity/Product;->setStockFunction(Ljava/lang/String;)V

    .line 409
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->townList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$35(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mTownSelectId:I
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$36(Lcom/jingdong/app/mall/product/ProductThridAddress;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/AddressBaseMode;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/AddressBaseMode;->getSkuId()Ljava/lang/String;

    move-result-object v3

    .line 410
    .local v3, productId:Ljava/lang/String;
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$8(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jingdong/common/entity/Product;->getSkuId()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, oldProductId:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 413
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$8(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/jingdong/common/entity/Product;->setSkuId(Ljava/lang/String;)V

    .line 415
    :cond_0
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$8(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jingdong/common/entity/Product;->getSkuId()Ljava/lang/String;

    move-result-object v4

    .line 417
    .local v4, productIdNew:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->provinceID:Ljava/lang/String;
    invoke-static {v5}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$9(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jingdong/app/mall/utils/CommonUtil;->setProvinceIDToSharedPreferences(Ljava/lang/String;)V

    .line 418
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->cityID:Ljava/lang/String;
    invoke-static {v5}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$27(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jingdong/app/mall/utils/CommonUtil;->setCityIDToSharedPreferences(Ljava/lang/String;)V

    .line 419
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->countyID:Ljava/lang/String;
    invoke-static {v5}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$39(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jingdong/app/mall/utils/CommonUtil;->setDistrictIdToSharedPreferences(Ljava/lang/String;)V

    .line 420
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->townID:Ljava/lang/String;
    invoke-static {v5}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$38(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jingdong/app/mall/utils/CommonUtil;->setTownIdToSharedPreferences(Ljava/lang/String;)V

    .line 422
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 423
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 425
    .local v1, prodctID:J
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #calls: Lcom/jingdong/app/mall/product/ProductThridAddress;->closeDialog()V
    invoke-static {v5}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$14(Lcom/jingdong/app/mall/product/ProductThridAddress;)V

    .line 426
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->updataUIListener:Lcom/jingdong/app/mall/product/ProductThridAddress$ProductDetailUpdataUIListener;
    invoke-static {v5}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$40(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/app/mall/product/ProductThridAddress$ProductDetailUpdataUIListener;

    move-result-object v5

    const/16 v6, 0x15

    invoke-interface {v5, v6, v1, v2}, Lcom/jingdong/app/mall/product/ProductThridAddress$ProductDetailUpdataUIListener;->onFinish(IJ)V

    .line 427
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    const/4 v6, 0x0

    #setter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->isTownClicked:Z
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$33(Lcom/jingdong/app/mall/product/ProductThridAddress;Z)V

    .line 437
    .end local v0           #oldProductId:Ljava/lang/String;
    .end local v1           #prodctID:J
    .end local v3           #productId:Ljava/lang/String;
    .end local v4           #productIdNew:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 429
    .restart local v0       #oldProductId:Ljava/lang/String;
    .restart local v3       #productId:Ljava/lang/String;
    .restart local v4       #productIdNew:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    const/4 v6, 0x1

    #calls: Lcom/jingdong/app/mall/product/ProductThridAddress;->handleStock(Z)V
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$11(Lcom/jingdong/app/mall/product/ProductThridAddress;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 432
    :catch_0
    move-exception v5

    goto :goto_0
.end method
