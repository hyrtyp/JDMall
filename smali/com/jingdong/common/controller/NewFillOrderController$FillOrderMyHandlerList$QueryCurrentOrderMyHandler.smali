.class Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;
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
    name = "QueryCurrentOrderMyHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;


# direct methods
.method private constructor <init>(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;-><init>(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    .locals 1
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 242
    iget-object v3, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    iget v3, v3, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->event:I

    if-eqz v3, :cond_0

    .line 243
    iget-object v3, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    invoke-virtual {v3}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->doNext()V

    .line 359
    :goto_0
    return-void

    .line 247
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 250
    .local v2, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "isLastOrder"

    iget-object v4, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v4

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->isLastOrder:Z
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController;->access$0(Lcom/jingdong/common/controller/NewFillOrderController;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 252
    iget-object v3, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v3}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v3

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->modifyType:I
    invoke-static {v3}, Lcom/jingdong/common/controller/NewFillOrderController;->access$1(Lcom/jingdong/common/controller/NewFillOrderController;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 270
    :goto_1
    const-string v3, "balanceChangeFlag"

    iget-object v4, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v4

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->balanceChangeFlag:Z
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController;->access$2(Lcom/jingdong/common/controller/NewFillOrderController;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 271
    const-string v3, "jdBeanChangeFlag"

    iget-object v4, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v4

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->jdBeanChangeFlag:Z
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController;->access$3(Lcom/jingdong/common/controller/NewFillOrderController;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 272
    const-string v3, "liPinKaChangeFlag"

    iget-object v4, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v4

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/entity/NewCurrentOrder;->isChangeLipin()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 273
    const-string v3, "couponChangeFlag"

    iget-object v4, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v4

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/entity/NewCurrentOrder;->isChangeJingOrDongQuan()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 276
    iget-object v3, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v3}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v3

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->isLastOrder:Z
    invoke-static {v3}, Lcom/jingdong/common/controller/NewFillOrderController;->access$0(Lcom/jingdong/common/controller/NewFillOrderController;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 277
    const-string v3, "OrderStr"

    iget-object v4, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v4

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/entity/NewCurrentOrder;->toOrderStr()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    :cond_1
    sget-boolean v3, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v3, :cond_2

    .line 281
    sget-object v3, Lcom/jingdong/common/controller/NewFillOrderController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " QueryCurrentOrderMyHandler -->> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v5}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v5

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v5}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdInvoiceContentTypeBook()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_2
    iget-object v3, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v3}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v3

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;
    invoke-static {v3}, Lcom/jingdong/common/controller/NewFillOrderController;->access$5(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/cart/CartResponseInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 286
    const-string v3, "CartStr"

    iget-object v4, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v4

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController;->access$5(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/cart/CartResponseInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->toCheckedCartStr()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v3}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v3

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->isLastOrder:Z
    invoke-static {v3}, Lcom/jingdong/common/controller/NewFillOrderController;->access$0(Lcom/jingdong/common/controller/NewFillOrderController;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 294
    iget-object v3, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v3}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v3

    const/4 v4, 0x0

    #setter for: Lcom/jingdong/common/controller/NewFillOrderController;->isLastOrder:Z
    invoke-static {v3, v4}, Lcom/jingdong/common/controller/NewFillOrderController;->access$6(Lcom/jingdong/common/controller/NewFillOrderController;Z)V

    .line 297
    :cond_4
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 298
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v3, "currentOrder"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 300
    new-instance v3, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler$1;

    invoke-direct {v3, p0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler$1;-><init>(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;)V

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 356
    invoke-virtual {v1, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 357
    iget-object v3, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v3}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v3

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;
    invoke-static {v3}, Lcom/jingdong/common/controller/NewFillOrderController;->access$9(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto/16 :goto_0

    .line 254
    .end local v1           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :pswitch_0
    :try_start_1
    const-string v3, "consigneeChangeFlag"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 258
    .end local v0           #e:Lorg/json/JSONException;
    :pswitch_1
    :try_start_2
    const-string v3, "paymentShipmentChangeFlag"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 262
    :pswitch_2
    const-string v3, "invoiceChangeFlag"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
