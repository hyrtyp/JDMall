.class Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler$1;
.super Ljava/lang/Object;
.source "ProductDetailController.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;


# direct methods
.method constructor <init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;

    .line 1534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    const/4 v3, 0x1

    .line 1547
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 1548
    .local v0, object:Lcom/jingdong/common/utils/JSONObjectProxy;
    iget-object v1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;->access$0(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v1

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v1

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v1}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v1

    const-string v2, "stockStatus"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/Product;->setProvinceStockContent(Ljava/lang/String;)V

    .line 1549
    iget-object v1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;->access$0(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v1

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v1

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v1}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v1

    const-string v2, "flag"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/Product;->setProvinceStockFlag(Ljava/lang/Boolean;)V

    .line 1551
    iget-object v1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;->access$0(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->doNext()V

    .line 1552
    iget-object v1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;->access$0(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v1

    #calls: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->onFinish(IZ)V
    invoke-static {v1, v3, v3}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;IZ)V

    .line 1553
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;->access$0(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->doNext()V

    .line 1542
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 1537
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1557
    return-void
.end method
