.class Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler$1;
.super Ljava/lang/Object;
.source "NewFillOrderController.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;


# direct methods
.method constructor <init>(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 7
    .parameter "httpResponse"

    .prologue
    .line 551
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 552
    .local v2, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    iget-object v4, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v4

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v4

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/entity/NewCurrentOrder;->getSubmitOrderInfo()Lcom/jingdong/common/entity/SubmitOrderInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/jingdong/common/entity/SubmitOrderInfo;->update(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 555
    iget-object v4, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v4

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v4

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/entity/NewCurrentOrder;->getSubmitOrderInfo()Lcom/jingdong/common/entity/SubmitOrderInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/entity/SubmitOrderInfo;->getCaptchaUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 556
    iget-object v4, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    #calls: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->onFinish(IZ)V
    invoke-static {v4, v5, v6}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$0(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    .end local v2           #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->doNext()V

    .line 576
    return-void

    .line 559
    .restart local v2       #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v4

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v4

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/entity/NewCurrentOrder;->getSubmitOrderInfo()Lcom/jingdong/common/entity/SubmitOrderInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/entity/SubmitOrderInfo;->getOrderId()Ljava/lang/String;

    move-result-object v3

    .line 560
    .local v3, orderId:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 562
    new-instance v0, Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    .line 563
    .local v0, dbCart:Lcom/jingdong/common/utils/DBHelperUtil;
    invoke-virtual {v0}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllCart()V

    .line 564
    invoke-virtual {v0}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllPacksCart()V

    .line 567
    .end local v0           #dbCart:Lcom/jingdong/common/utils/DBHelperUtil;
    :cond_2
    iget-object v4, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    #calls: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->onFinish(IZ)V
    invoke-static {v4, v5, v6}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$0(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 569
    .end local v2           #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v3           #orderId:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 570
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v4, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v4, :cond_0

    .line 571
    sget-object v4, Lcom/jingdong/common/controller/NewFillOrderController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "submitOrder JSONException -->> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 538
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v0, :cond_0

    .line 539
    sget-object v0, Lcom/jingdong/common/controller/NewFillOrderController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SubmitOrderTask error -->> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    #calls: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->onFinish(IZ)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$0(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;IZ)V

    .line 542
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 546
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 534
    return-void
.end method
