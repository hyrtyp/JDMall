.class Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;
.super Ljava/lang/Object;
.source "NewFillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->messageAfterSubmit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field sOrderNo:Ljava/lang/String;

.field sPayWay:Ljava/lang/String;

.field sTotalMoney:Ljava/lang/String;

.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    .line 1376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;)V
    .locals 0
    .parameter

    .prologue
    .line 1391
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->gotoEdidtCurrentAndNewAddress()V

    return-void
.end method

.method private declared-synchronized clearCart()V
    .locals 2

    .prologue
    .line 1421
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/jingdong/common/utils/DBHelperUtil;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    invoke-direct {v0, v1}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    .line 1423
    .local v0, dbCart:Lcom/jingdong/common/utils/DBHelperUtil;
    invoke-virtual {v0}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllCart()V

    .line 1424
    invoke-virtual {v0}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllPacksCart()V

    .line 1425
    const/4 v1, 0x1

    sput-boolean v1, Lcom/jingdong/common/constant/Constants;->hasNewTocart:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1427
    monitor-exit p0

    return-void

    .line 1421
    .end local v0           #dbCart:Lcom/jingdong/common/utils/DBHelperUtil;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private doOnlinePay()V
    .locals 2

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->sOrderNo:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/pay/PayUtils;->doPay(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1438
    return-void
.end method

.method private gotoEdidtCurrentAndNewAddress()V
    .locals 3

    .prologue
    .line 1393
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->toOldModelForUserInfo()Lcom/jingdong/common/entity/UserInfo;

    move-result-object v1

    sput-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    .line 1395
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    const-class v2, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1396
    .local v0, t:Landroid/content/Intent;
    const-string v1, "PageType"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1397
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1398
    return-void
.end method

.method private isOnlinePay(Ljava/lang/Boolean;)Z
    .locals 2
    .parameter "allowOnlinePay"

    .prologue
    .line 1382
    if-nez p1, :cond_0

    .line 1383
    const-string v0, "\u5728\u7ebf\u652f\u4ed8"

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->sPayWay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1385
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method private resetCoupon()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1404
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/jingdong/common/constant/Constants;->dongSel:Lorg/json/JSONObject;

    .line 1405
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/jingdong/common/constant/Constants;->jinSelArray:Lorg/json/JSONArray;

    .line 1406
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/jingdong/common/constant/Constants;->liSelArray:Lorg/json/JSONArray;

    .line 1407
    const-string v0, ""

    sput-object v0, Lcom/jingdong/common/constant/Constants;->nSelectDongQuanId:Ljava/lang/String;

    .line 1408
    sput-object v2, Lcom/jingdong/common/constant/Constants;->nselectJingQuanIDs:Ljava/util/ArrayList;

    .line 1409
    sput-object v2, Lcom/jingdong/common/constant/Constants;->nSelectLipinIDs:Ljava/util/ArrayList;

    .line 1410
    sput-boolean v1, Lcom/jingdong/common/constant/Constants;->jSelected:Z

    .line 1411
    sput-boolean v1, Lcom/jingdong/common/constant/Constants;->dSelected:Z

    .line 1412
    sput-boolean v1, Lcom/jingdong/common/constant/Constants;->liSelected:Z

    .line 1413
    sput-object v2, Lcom/jingdong/common/constant/Constants;->skusOfSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 1414
    new-instance v0, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    sput-object v0, Lcom/jingdong/common/constant/Constants;->skusOfSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 1415
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    .line 1443
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/common/entity/NewCurrentOrder;->getSubmitOrderInfo()Lcom/jingdong/common/entity/SubmitOrderInfo;

    move-result-object v2

    .line 1445
    .local v2, info:Lcom/jingdong/common/entity/SubmitOrderInfo;
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdPaymentType()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 1446
    const-string v6, "\u8d27\u5230\u4ed8\u6b3e"

    iput-object v6, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->sPayWay:Ljava/lang/String;

    .line 1457
    :goto_0
    invoke-virtual {v2}, Lcom/jingdong/common/entity/SubmitOrderInfo;->getOrderId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->sOrderNo:Ljava/lang/String;

    .line 1460
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->sOrderNo:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "0"

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->sOrderNo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1461
    invoke-virtual {v2}, Lcom/jingdong/common/entity/SubmitOrderInfo;->getIsOnlinePay()Ljava/lang/Boolean;

    move-result-object v0

    .line 1467
    .local v0, allowOnlinePay:Ljava/lang/Boolean;
    invoke-virtual {v2}, Lcom/jingdong/common/entity/SubmitOrderInfo;->getPrice()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1468
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/jingdong/common/entity/SubmitOrderInfo;->getPrice()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->sTotalMoney:Ljava/lang/String;

    .line 1472
    :cond_0
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdPaymentType()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v8, :cond_6

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->isOnlinePay(Ljava/lang/Boolean;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1473
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->sTotalMoney:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->sTotalMoney:Ljava/lang/String;

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1474
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->doOnlinePay()V

    .line 1475
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->resetCoupon()V

    .line 1523
    .end local v0           #allowOnlinePay:Ljava/lang/Boolean;
    :cond_1
    :goto_1
    return-void

    .line 1447
    :cond_2
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdPaymentType()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 1448
    const-string v6, "\u90ae\u5c40\u6c47\u6b3e"

    iput-object v6, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->sPayWay:Ljava/lang/String;

    goto :goto_0

    .line 1449
    :cond_3
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdPaymentType()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    .line 1450
    const-string v6, "\u4eac\u4e1c\u81ea\u63d0"

    iput-object v6, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->sPayWay:Ljava/lang/String;

    goto/16 :goto_0

    .line 1451
    :cond_4
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdPaymentType()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v8, :cond_5

    .line 1452
    const-string v6, "\u5728\u7ebf\u652f\u4ed8"

    iput-object v6, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->sPayWay:Ljava/lang/String;

    goto/16 :goto_0

    .line 1454
    :cond_5
    const-string v6, "\u516c\u53f8\u8f6c\u8d26"

    iput-object v6, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->sPayWay:Ljava/lang/String;

    goto/16 :goto_0

    .line 1479
    .restart local v0       #allowOnlinePay:Ljava/lang/Boolean;
    :cond_6
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->clearCart()V

    .line 1482
    new-instance v4, Landroid/content/Intent;

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    const-class v7, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1483
    .local v4, it:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1484
    .local v1, bundle:Landroid/os/Bundle;
    const-string v6, "order_no"

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->sOrderNo:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    const-string v6, "order_money"

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->sTotalMoney:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    const-string v6, "order_way"

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->sPayWay:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    const-string v6, "is_Easy_Buy"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1489
    invoke-virtual {v2}, Lcom/jingdong/common/entity/SubmitOrderInfo;->getFeedBackMsg()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1490
    const-string v6, "order_msg"

    invoke-virtual {v2}, Lcom/jingdong/common/entity/SubmitOrderInfo;->getFeedBackMsg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    :goto_2
    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1495
    new-instance v6, Lcom/jingdong/common/entity/UserInfo;

    invoke-direct {v6}, Lcom/jingdong/common/entity/UserInfo;-><init>()V

    sput-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    .line 1496
    new-instance v6, Lcom/jingdong/common/entity/PaymentInfo;

    invoke-direct {v6}, Lcom/jingdong/common/entity/PaymentInfo;-><init>()V

    sput-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    .line 1497
    new-instance v6, Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-direct {v6}, Lcom/jingdong/common/entity/InvoiceInfo;-><init>()V

    sput-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    .line 1498
    new-instance v6, Lcom/jingdong/common/entity/YouHuiQuan;

    invoke-direct {v6}, Lcom/jingdong/common/entity/YouHuiQuan;-><init>()V

    sput-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mYouhuiQuan:Lcom/jingdong/common/entity/YouHuiQuan;

    .line 1499
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v6

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    invoke-virtual {v6, v7, v4}, Lcom/jingdong/app/mall/utils/CommonUtil;->startActivityInFrame(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1501
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->resetCoupon()V

    goto/16 :goto_1

    .line 1492
    :cond_7
    const-string v6, "order_msg"

    const-string v7, " "

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1504
    .end local v0           #allowOnlinePay:Ljava/lang/Boolean;
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #it:Landroid/content/Intent;
    :cond_8
    if-eqz v2, :cond_1

    .line 1505
    invoke-virtual {v2}, Lcom/jingdong/common/entity/SubmitOrderInfo;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 1506
    .local v5, msg:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/jingdong/common/entity/SubmitOrderInfo;->getIsIdTown()Ljava/lang/Boolean;

    move-result-object v3

    .line 1508
    .local v3, isNoIdTown:Ljava/lang/Boolean;
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_c

    .line 1509
    :cond_9
    if-eqz v5, :cond_a

    const-string v6, "null"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_a
    const-string v5, "\u8ba2\u5355\u63d0\u4ea4\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\u3002"

    .end local v5           #msg:Ljava/lang/String;
    :cond_b
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    invoke-static {v5, v6}, Lcom/jingdong/common/constant/Constants;->ShowMsg(Ljava/lang/String;Lcom/jingdong/common/frame/IMyActivity;)V

    goto/16 :goto_1

    .line 1511
    .restart local v5       #msg:Ljava/lang/String;
    :cond_c
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    .line 1512
    if-eqz v5, :cond_d

    const-string v7, "null"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_d
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    const v8, 0x7f070500

    invoke-virtual {v7, v8}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1513
    .end local v5           #msg:Ljava/lang/String;
    :cond_e
    new-instance v7, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17$1;

    invoke-direct {v7, p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17$1;-><init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;)V

    .line 1511
    invoke-static {v6, v5, v7}, Lcom/jingdong/common/utils/DialogUtils;->showDailog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1
.end method
