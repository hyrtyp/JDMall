.class Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCouponsMyHandler;
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
    name = "QueryCouponsMyHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;


# direct methods
.method private constructor <init>(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCouponsMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCouponsMyHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCouponsMyHandler;-><init>(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCouponsMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    .locals 1
    .parameter

    .prologue
    .line 362
    iget-object v0, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCouponsMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 366
    iget-object v1, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCouponsMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    iget v1, v1, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->event:I

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCouponsMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    invoke-virtual {v1}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->doNext()V

    .line 414
    :goto_0
    return-void

    .line 371
    :cond_0
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 372
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "usedElecCoupons"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 373
    const-string v1, "pin"

    iget-object v2, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCouponsMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v2}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v2

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v2}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 374
    const-string v1, "CartStr"

    iget-object v2, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCouponsMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v2}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v2

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;
    invoke-static {v2}, Lcom/jingdong/common/controller/NewFillOrderController;->access$5(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/cart/CartResponseInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->toCheckedCartStr()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 375
    const-string v1, "OrderStr"

    iget-object v2, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCouponsMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v2}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v2

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v2}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->toOrderStr()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 376
    new-instance v1, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCouponsMyHandler$1;

    invoke-direct {v1, p0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCouponsMyHandler$1;-><init>(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCouponsMyHandler;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 411
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 412
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 413
    iget-object v1, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCouponsMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v1}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v1

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;
    invoke-static {v1}, Lcom/jingdong/common/controller/NewFillOrderController;->access$9(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0
.end method
