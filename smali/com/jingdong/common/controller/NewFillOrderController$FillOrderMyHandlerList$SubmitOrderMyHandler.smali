.class Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;
.super Ljava/lang/Object;
.source "NewFillOrderController.java"

# interfaces
.implements Lcom/jingdong/common/utils/MyHandlerList$MyHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubmitOrderMyHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;


# direct methods
.method private constructor <init>(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;-><init>(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    .locals 1
    .parameter

    .prologue
    .line 474
    iget-object v0, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 479
    iget-object v6, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    iget v6, v6, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->event:I

    const/4 v7, 0x6

    if-eq v6, v7, :cond_0

    .line 480
    iget-object v6, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    invoke-virtual {v6}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->doNext()V

    .line 579
    :goto_0
    return-void

    .line 484
    :cond_0
    const-string v2, "submitOrder"

    .line 486
    .local v2, functionID:Ljava/lang/String;
    new-instance v3, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 487
    .local v3, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v3, v8}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPost(Z)V

    .line 488
    invoke-virtual {v3, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 490
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 493
    .local v4, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "SupportJdBean"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 494
    const-string v6, "OrderStr"

    iget-object v7, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v7}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v7

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v7}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jingdong/common/entity/NewCurrentOrder;->toOrderStr()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 495
    const-string v6, "CartStr"

    iget-object v7, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v7}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v7

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;
    invoke-static {v7}, Lcom/jingdong/common/controller/NewFillOrderController;->access$5(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/cart/CartResponseInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->toCheckedCartStr()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 496
    const-string v6, "statisticsStr"

    iget-object v7, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v7}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v7

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;
    invoke-static {v7}, Lcom/jingdong/common/controller/NewFillOrderController;->access$5(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/cart/CartResponseInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->toCheckedStatisticsStr()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 497
    const-string v6, "totalPrice"

    iget-object v7, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v7}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v7

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v7}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jingdong/common/entity/NewCurrentOrder;->getTotalPrice()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :goto_1
    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 506
    const-string v6, "syntype"

    const-string v7, "1"

    invoke-virtual {v3, v6, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 507
    const-string v6, "cartuuid"

    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->readCartUUID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 510
    iget-object v6, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v6}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v6

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v6}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/common/entity/NewCurrentOrder;->getMiaoSha()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 511
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMddHHmmss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 512
    .local v5, sFormat:Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, date:Ljava/lang/String;
    const-string v6, "sign"

    iget-object v7, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #calls: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->miaoShaoMd5Encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v2, v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 514
    const-string v6, "timestamp"

    invoke-virtual {v3, v6, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 517
    .end local v0           #date:Ljava/lang/String;
    .end local v5           #sFormat:Ljava/text/SimpleDateFormat;
    :cond_1
    invoke-virtual {v3, v8}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 519
    iget-object v6, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v6}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v6

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v6}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/common/entity/NewCurrentOrder;->getSubmitOrderInfo()Lcom/jingdong/common/entity/SubmitOrderInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/common/entity/SubmitOrderInfo;->getCaptchaCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 520
    const-string v6, "resultCode"

    iget-object v7, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v7}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v7

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v7}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jingdong/common/entity/NewCurrentOrder;->getSubmitOrderInfo()Lcom/jingdong/common/entity/SubmitOrderInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jingdong/common/entity/SubmitOrderInfo;->getCaptchaCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 522
    :cond_2
    iget-object v6, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v6}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v6

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v6}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/common/entity/NewCurrentOrder;->getSubmitOrderInfo()Lcom/jingdong/common/entity/SubmitOrderInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/common/entity/SubmitOrderInfo;->getCaptchaKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 523
    const-string v6, "key"

    iget-object v7, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v7}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v7

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v7}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jingdong/common/entity/NewCurrentOrder;->getSubmitOrderInfo()Lcom/jingdong/common/entity/SubmitOrderInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jingdong/common/entity/SubmitOrderInfo;->getCaptchaKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 527
    :cond_3
    iget-object v6, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v6}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v6

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v6}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/common/entity/NewCurrentOrder;->getUsid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 528
    const-string v6, "usid"

    iget-object v7, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v7}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v7

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v7}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jingdong/common/entity/NewCurrentOrder;->getUsid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putMapParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_4
    new-instance v6, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler$1;

    invoke-direct {v6, p0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler$1;-><init>(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;)V

    invoke-virtual {v3, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 578
    iget-object v6, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v6}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v6

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;
    invoke-static {v6}, Lcom/jingdong/common/controller/NewFillOrderController;->access$9(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto/16 :goto_0

    .line 499
    :catch_0
    move-exception v1

    .line 500
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1
.end method
