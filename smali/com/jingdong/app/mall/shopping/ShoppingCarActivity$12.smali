.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->updateCartItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    .line 1398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    .locals 1
    .parameter

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 10
    .parameter "httpResponse"

    .prologue
    .line 1442
    :try_start_0
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    const/4 v7, 0x0

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v6, v7}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$8(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 1443
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    new-instance v7, Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v8

    const-string v9, "cartInfo"

    invoke-virtual {v8, v9}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObject(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v6, v7}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$8(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 1444
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v7

    const-string v8, "message"

    invoke-virtual {v7, v8}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->yunFee:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$9(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Ljava/lang/String;)V

    .line 1448
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$10(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v7

    const-string v8, "Skus"

    invoke-virtual {v7, v8}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v7

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonSkusInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v6, v7}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$11(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 1450
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    const/4 v7, 0x0

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonPacksInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v6, v7}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$12(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 1451
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    new-instance v7, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v7}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonPacksInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v6, v7}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$12(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 1455
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$10(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    const-string v7, "Suits"

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v3

    .line 1456
    .local v3, jsonSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;
    new-instance v2, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    .line 1457
    .local v2, jsonSkusOfSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v3, :cond_0

    .line 1458
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    const/4 v7, 0x0

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonManZengInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v6, v7}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$13(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 1459
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    new-instance v7, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v7}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonManZengInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v6, v7}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$13(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 1460
    const/4 v6, 0x0

    sput-object v6, Lcom/jingdong/common/constant/Constants;->skusOfSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 1461
    new-instance v6, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v6}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    sput-object v6, Lcom/jingdong/common/constant/Constants;->skusOfSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 1462
    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    invoke-virtual {v3}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v6

    if-lt v4, v6, :cond_5

    .line 1497
    .end local v4           #k:I
    :cond_0
    const/4 v2, 0x0

    .line 1498
    const/4 v3, 0x0

    .line 1499
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonSkusInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$14(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$10(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    const-string v7, "Gifts"

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonPacksInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$16(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v6

    if-nez v6, :cond_c

    .line 1501
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->setEmptyView()V
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$17(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V

    .line 1502
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 1503
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    if-nez v6, :cond_1

    .line 1504
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    new-instance v7, Lcom/jingdong/common/utils/DBHelperUtil;

    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    invoke-direct {v7, v8}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    iput-object v7, v6, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    .line 1506
    :cond_1
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllCart()V

    .line 1507
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1508
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    .line 1509
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    .line 1511
    :cond_2
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 1512
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    if-nez v6, :cond_3

    .line 1513
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    new-instance v7, Lcom/jingdong/common/utils/DBHelperUtil;

    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    invoke-direct {v7, v8}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    iput-object v7, v6, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    .line 1515
    :cond_3
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllCart()V

    .line 1516
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1540
    .end local v2           #jsonSkusOfSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v3           #jsonSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_4
    :goto_1
    return-void

    .line 1469
    .restart local v2       #jsonSkusOfSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .restart local v3       #jsonSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .restart local v4       #k:I
    :cond_5
    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    const-string v7, "SuitType"

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    const-string v7, "SuitType"

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_a

    .line 1471
    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    const-string v7, "Skus"

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    .line 1472
    if-eqz v2, :cond_8

    .line 1473
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonSkusInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$14(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v6

    if-nez v6, :cond_6

    .line 1474
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    new-instance v7, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v7}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonSkusInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v6, v7}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$11(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 1476
    :cond_6
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonManZengInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$15(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v6

    if-nez v6, :cond_7

    .line 1477
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    new-instance v7, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v7}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonManZengInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v6, v7}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$13(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 1479
    :cond_7
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    invoke-virtual {v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v6

    if-lt v1, v6, :cond_9

    .line 1489
    .end local v1           #j:I
    :cond_8
    :goto_3
    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    const-string v7, "Skus"

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    .line 1490
    const/4 v1, 0x0

    .restart local v1       #j:I
    :goto_4
    invoke-virtual {v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v6

    if-lt v1, v6, :cond_b

    .line 1494
    const/4 v2, 0x0

    .line 1462
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1480
    :cond_9
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonSkusInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$14(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v6

    invoke-virtual {v2, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/JSONArrayPoxy;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1481
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonManZengInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$15(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v6

    invoke-virtual {v2, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/JSONArrayPoxy;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1479
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1487
    .end local v1           #j:I
    :cond_a
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonPacksInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$16(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v6

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/JSONArrayPoxy;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1535
    .end local v2           #jsonSkusOfSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v3           #jsonSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v4           #k:I
    :catch_0
    move-exception v0

    .line 1537
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 1492
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #j:I
    .restart local v2       #jsonSkusOfSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .restart local v3       #jsonSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .restart local v4       #k:I
    :cond_b
    :try_start_1
    sget-object v6, Lcom/jingdong/common/constant/Constants;->skusOfSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-virtual {v2, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v7

    const-string v8, "Id"

    invoke-virtual {v7, v8}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/JSONArrayPoxy;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1490
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1520
    .end local v1           #j:I
    .end local v4           #k:I
    :cond_c
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonPacksInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$16(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->checkPacks(Lcom/jingdong/common/utils/JSONArrayPoxy;)Z

    move-result v5

    .line 1521
    .local v5, smae:Z
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonPacksInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$16(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonPacksInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$16(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v6

    if-lez v6, :cond_d

    if-eqz v5, :cond_d

    .line 1522
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonPacksInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$16(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v7

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->showPacksView(Lcom/jingdong/common/utils/JSONArrayPoxy;)V
    invoke-static {v6, v7}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$18(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 1524
    :cond_d
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$10(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    const-string v7, "Gifts"

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 1525
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getGifts()V
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$19(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V

    .line 1529
    :cond_e
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$10(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    const-string v7, "Gifts"

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v6

    if-nez v6, :cond_f

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonSkusInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$14(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1530
    :cond_f
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->updateCartList()V
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$25(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 1414
    return-void
.end method

.method public onProgress(II)V
    .locals 2
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    new-instance v1, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12$1;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->post(Ljava/lang/Runnable;)V

    .line 1436
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1406
    return-void
.end method
