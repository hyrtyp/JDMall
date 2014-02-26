.class Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler$1;
.super Ljava/lang/Object;
.source "NewFillOrderController.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;


# direct methods
.method constructor <init>(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 8
    .parameter "httpResponse"

    .prologue
    const/4 v7, 0x1

    .line 446
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    const-string v5, "getGiftCard"

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObject(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 447
    .local v2, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v4, "GiftCards"

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    .line 448
    .local v1, jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/jingdong/common/entity/GiftCartInfo;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 449
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/GiftCartInfo;>;"
    if-eqz v3, :cond_0

    .line 450
    iget-object v4, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v4

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v4

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/jingdong/common/entity/NewCurrentOrder;->setGiftInfo(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    .end local v1           #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v2           #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/GiftCartInfo;>;"
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v4

    const/4 v5, 0x2

    #calls: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->onFinish(IZ)V
    invoke-static {v4, v5, v7}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$0(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;IZ)V

    .line 461
    iget-object v4, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v4}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->doNext()V

    .line 462
    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v4, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v4, :cond_0

    .line 454
    sget-object v4, Lcom/jingdong/common/controller/NewFillOrderController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GetCouponInfoListTask JSONException -->> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    #calls: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->onFinish(IZ)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$0(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;IZ)V

    .line 440
    iget-object v0, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->doNext()V

    .line 441
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 435
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 466
    return-void
.end method
