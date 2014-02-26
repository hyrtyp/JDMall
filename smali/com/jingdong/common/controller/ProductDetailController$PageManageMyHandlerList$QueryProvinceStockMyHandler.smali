.class Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;
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
    name = "QueryProvinceStockMyHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;


# direct methods
.method private constructor <init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)V
    .locals 0
    .parameter

    .prologue
    .line 1491
    iput-object p1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    .locals 1
    .parameter

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 1496
    iget-object v2, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    iget v2, v2, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->event:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    iget v2, v2, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->event:I

    if-eq v2, v6, :cond_0

    .line 1497
    iget-object v2, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-virtual {v2}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->doNext()V

    .line 1562
    :goto_0
    return-void

    .line 1502
    :cond_0
    iget-object v2, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v2}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v2

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v2}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getProvinceStockMode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v7, :cond_1

    .line 1503
    iget-object v2, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-virtual {v2}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->doNext()V

    goto :goto_0

    .line 1507
    :cond_1
    iget-object v2, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    iget v2, v2, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->event:I

    if-ne v2, v6, :cond_2

    .line 1511
    iget-object v2, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v2}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v3}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v3

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v3}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/Product;->getProvinceID()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/jingdong/common/controller/ProductDetailController;->setProvinceIDToSharedPreferences(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/jingdong/common/controller/ProductDetailController;->access$17(Lcom/jingdong/common/controller/ProductDetailController;Ljava/lang/String;)V

    .line 1512
    iget-object v2, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v2}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v3}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v3

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v3}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/Product;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/jingdong/common/controller/ProductDetailController;->setProvinceNameToSharedPreferences(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/jingdong/common/controller/ProductDetailController;->access$18(Lcom/jingdong/common/controller/ProductDetailController;Ljava/lang/String;)V

    .line 1519
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1521
    .local v1, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "skuId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v4}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v4

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->id:J
    invoke-static {v4}, Lcom/jingdong/common/controller/ProductDetailController;->access$3(Lcom/jingdong/common/controller/ProductDetailController;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1522
    const-string v2, "provinceId"

    iget-object v3, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v3}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v3

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v3}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/Product;->getProvinceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1528
    :goto_1
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 1529
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v2, "stock"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 1530
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 1531
    iget-object v2, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    iget v2, v2, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->event:I

    if-ne v2, v6, :cond_3

    .line 1532
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 1534
    :cond_3
    new-instance v2, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler$1;

    invoke-direct {v2, p0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler$1;-><init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;)V

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 1559
    invoke-virtual {v0, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 1560
    invoke-virtual {v0, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setAlertErrorDialogType(I)V

    .line 1561
    iget-object v2, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v2}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v2

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;
    invoke-static {v2}, Lcom/jingdong/common/controller/ProductDetailController;->access$7(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto/16 :goto_0

    .line 1523
    .end local v0           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :catch_0
    move-exception v2

    goto :goto_1
.end method
