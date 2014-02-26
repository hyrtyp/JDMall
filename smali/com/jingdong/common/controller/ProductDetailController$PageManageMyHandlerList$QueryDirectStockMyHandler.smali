.class Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler;
.super Ljava/lang/Object;
.source "ProductDetailController.java"

# interfaces
.implements Lcom/jingdong/common/utils/MyHandlerList$MyHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryDirectStockMyHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;


# direct methods
.method private constructor <init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)V
    .locals 0
    .parameter

    .prologue
    .line 1373
    iput-object p1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1373
    invoke-direct {p0, p1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler;-><init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    .locals 1
    .parameter

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    .line 1378
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    iget v10, v10, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->event:I

    if-eq v10, v12, :cond_0

    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    iget v10, v10, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->event:I

    if-eqz v10, :cond_0

    .line 1379
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-virtual {v10}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->doNext()V

    .line 1481
    :goto_0
    return-void

    .line 1383
    :cond_0
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v10

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jingdong/common/entity/Product;->getStockFunction()Ljava/lang/String;

    move-result-object v8

    .line 1389
    .local v8, stockFunction:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v10

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jingdong/common/entity/Product;->getCheckNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1390
    :cond_1
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-virtual {v10}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->doNext()V

    goto :goto_0

    .line 1394
    :cond_2
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v10

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jingdong/common/entity/Product;->getSkuId()Ljava/lang/String;

    move-result-object v7

    .line 1399
    .local v7, skuOld:Ljava/lang/String;
    new-instance v3, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler$1;

    invoke-direct {v3, p0, v8, v7}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler$1;-><init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    .local v3, onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v10

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jingdong/common/entity/Product;->getProvinceID()Ljava/lang/String;

    move-result-object v6

    .line 1451
    .local v6, provinceId:Ljava/lang/String;
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v10

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jingdong/common/entity/Product;->getCityId()Ljava/lang/String;

    move-result-object v0

    .line 1452
    .local v0, cityId:Ljava/lang/String;
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v10

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jingdong/common/entity/Product;->getCountyID()Ljava/lang/String;

    move-result-object v1

    .line 1453
    .local v1, countyId:Ljava/lang/String;
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v10

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jingdong/common/entity/Product;->getTownID()Ljava/lang/String;

    move-result-object v9

    .line 1455
    .local v9, townId:Ljava/lang/String;
    const-string v4, ""

    .line 1456
    .local v4, productIdString:Ljava/lang/String;
    const-string v5, ""

    .line 1457
    .local v5, productProvince:Ljava/lang/String;
    const-string v10, "stock"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1458
    const-string v4, "skuId"

    .line 1459
    const-string v5, "provinceId"

    .line 1465
    :cond_3
    :goto_1
    new-instance v2, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 1466
    .local v2, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v2, v8}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 1467
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v11}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v11

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v11}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v4, v10}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1468
    if-nez v6, :cond_4

    const-string v6, "0"

    .end local v6           #provinceId:Ljava/lang/String;
    :cond_4
    invoke-virtual {v2, v5, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1469
    const-string v10, "idCity"

    if-nez v0, :cond_5

    const-string v0, "0"

    .end local v0           #cityId:Ljava/lang/String;
    :cond_5
    invoke-virtual {v2, v10, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1470
    const-string v10, "idCounty"

    if-nez v1, :cond_6

    const-string v1, "0"

    .end local v1           #countyId:Ljava/lang/String;
    :cond_6
    invoke-virtual {v2, v10, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1471
    const-string v10, "idTown"

    if-nez v9, :cond_7

    const-string v9, "0"

    .end local v9           #townId:Ljava/lang/String;
    :cond_7
    invoke-virtual {v2, v10, v9}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1472
    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 1473
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 1474
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    iget v10, v10, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->event:I

    if-ne v10, v12, :cond_8

    .line 1475
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 1477
    :cond_8
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v10

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->isClick:Z
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$13(Lcom/jingdong/common/controller/ProductDetailController;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 1478
    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setAlertErrorDialogType(I)V

    .line 1480
    :cond_9
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v10

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$7(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto/16 :goto_0

    .line 1460
    .end local v2           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    .restart local v0       #cityId:Ljava/lang/String;
    .restart local v1       #countyId:Ljava/lang/String;
    .restart local v6       #provinceId:Ljava/lang/String;
    .restart local v9       #townId:Ljava/lang/String;
    :cond_a
    const-string v10, "directStock"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1461
    const-string v4, "wareId"

    .line 1462
    const-string v5, "idProvince"

    goto/16 :goto_1
.end method
