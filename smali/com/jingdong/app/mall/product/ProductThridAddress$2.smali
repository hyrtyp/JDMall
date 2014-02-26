.class Lcom/jingdong/app/mall/product/ProductThridAddress$2;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2;)Lcom/jingdong/app/mall/product/ProductThridAddress;
    .locals 1
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "selectId"

    .prologue
    const/4 v5, 0x1

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->clickTime:J
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x258

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #setter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->clickTime:J
    invoke-static {v1, v2, v3}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$1(Lcom/jingdong/app/mall/product/ProductThridAddress;J)V

    .line 290
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->isCityClicked:Z
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$22(Lcom/jingdong/app/mall/product/ProductThridAddress;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #setter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->isCityClicked:Z
    invoke-static {v1, v5}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$23(Lcom/jingdong/app/mall/product/ProductThridAddress;Z)V

    .line 297
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #setter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mCitySelectId:I
    invoke-static {v1, p2}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$24(Lcom/jingdong/app/mall/product/ProductThridAddress;I)V

    .line 298
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->cityList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$16(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mCitySelectId:I
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$25(Lcom/jingdong/app/mall/product/ProductThridAddress;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/AddressBaseMode;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/AddressBaseMode;->getId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->cityID:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$26(Lcom/jingdong/app/mall/product/ProductThridAddress;Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$8(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/entity/Product;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->cityID:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$27(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/Product;->setCityId(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$8(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/entity/Product;

    move-result-object v2

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->cityList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$16(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mCitySelectId:I
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$25(Lcom/jingdong/app/mall/product/ProductThridAddress;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/AddressBaseMode;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/AddressBaseMode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/jingdong/common/entity/Product;->setCityName(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$8(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/entity/Product;

    move-result-object v2

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->cityList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$16(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mCitySelectId:I
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$25(Lcom/jingdong/app/mall/product/ProductThridAddress;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/AddressBaseMode;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/AddressBaseMode;->getFunctionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/jingdong/common/entity/Product;->setStockFunction(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$8(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/entity/Product;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/Product;->setCountyID(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$8(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/entity/Product;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/Product;->setCountyName(Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$8(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/entity/Product;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/Product;->setTownID(Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$8(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/entity/Product;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/Product;->setTownName(Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->cityList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$16(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mCitySelectId:I
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$25(Lcom/jingdong/app/mall/product/ProductThridAddress;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/AddressBaseMode;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/AddressBaseMode;->getFlag()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, flag:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->provinceID:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$9(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->setProvinceIDToSharedPreferences(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->cityID:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$27(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->setCityIDToSharedPreferences(Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$10()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->setDistrictIdToSharedPreferences(Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$10()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->setTownIdToSharedPreferences(Ljava/lang/String;)V

    .line 317
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #calls: Lcom/jingdong/app/mall/product/ProductThridAddress;->handleStock(Z)V
    invoke-static {v1, v5}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$11(Lcom/jingdong/app/mall/product/ProductThridAddress;Z)V

    .line 319
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #calls: Lcom/jingdong/app/mall/product/ProductThridAddress;->closeDialog()V
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$14(Lcom/jingdong/app/mall/product/ProductThridAddress;)V

    .line 376
    .end local v0           #flag:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 320
    .restart local v0       #flag:Ljava/lang/String;
    :cond_1
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$12(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v1

    new-instance v2, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;-><init>(Lcom/jingdong/app/mall/product/ProductThridAddress$2;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
