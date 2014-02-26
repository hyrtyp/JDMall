.class Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler$1;
.super Ljava/lang/Object;
.source "NewFillOrderController.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;


# direct methods
.method constructor <init>(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 5
    .parameter "httpResponse"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 315
    if-eqz p1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/jingdong/common/entity/NewCurrentOrder;->update(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->setChangeJingOrDongQuan(Z)V

    .line 323
    iget-object v0, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->setChangeLipin(Z)V

    .line 324
    iget-object v0, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v0

    #setter for: Lcom/jingdong/common/controller/NewFillOrderController;->balanceChangeFlag:Z
    invoke-static {v0, v2}, Lcom/jingdong/common/controller/NewFillOrderController;->access$7(Lcom/jingdong/common/controller/NewFillOrderController;Z)V

    .line 325
    iget-object v0, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v0

    #setter for: Lcom/jingdong/common/controller/NewFillOrderController;->jdBeanChangeFlag:Z
    invoke-static {v0, v2}, Lcom/jingdong/common/controller/NewFillOrderController;->access$8(Lcom/jingdong/common/controller/NewFillOrderController;Z)V

    .line 328
    iget-object v0, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdProvince()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v1}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v1

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v1}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v1

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v1}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdProvince()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/common/utils/CommonUtil;->setProvinceIDToSharedPreferences(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdCity()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v1}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v1

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v1}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v1

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v1}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdCity()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/common/utils/CommonUtil;->setCityIDToSharedPreferences(Ljava/lang/String;)V

    .line 335
    :goto_0
    iget-object v0, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdArea()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v1}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v1

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v1}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v1

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v1}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdArea()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/common/utils/CommonUtil;->setDistrictIdToSharedPreferences(Ljava/lang/String;)V

    .line 340
    :goto_1
    iget-object v0, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdTown()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_4

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v1}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v1

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v1}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v1

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v1}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdTown()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/common/utils/CommonUtil;->setTownIdToSharedPreferences(Ljava/lang/String;)V

    .line 347
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v0

    #calls: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->onFinish(IZ)V
    invoke-static {v0, v3, v3}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$0(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;IZ)V

    .line 349
    iget-object v0, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->doNext()V

    .line 350
    return-void

    .line 333
    :cond_2
    invoke-static {v4}, Lcom/jingdong/common/utils/CommonUtil;->setCityIDToSharedPreferences(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 338
    :cond_3
    invoke-static {v4}, Lcom/jingdong/common/utils/CommonUtil;->setDistrictIdToSharedPreferences(Ljava/lang/String;)V

    goto :goto_1

    .line 343
    :cond_4
    invoke-static {v4}, Lcom/jingdong/common/utils/CommonUtil;->setTownIdToSharedPreferences(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler$1;->this$2:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
    invoke-static {v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;->access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;)Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    #calls: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->onFinish(IZ)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$0(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;IZ)V

    .line 310
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 304
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method
