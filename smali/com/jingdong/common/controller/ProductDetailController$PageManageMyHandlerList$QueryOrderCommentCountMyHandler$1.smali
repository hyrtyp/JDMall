.class Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryOrderCommentCountMyHandler$1;
.super Ljava/lang/Object;
.source "ProductDetailController.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryOrderCommentCountMyHandler;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryOrderCommentCountMyHandler;


# direct methods
.method constructor <init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryOrderCommentCountMyHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryOrderCommentCountMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryOrderCommentCountMyHandler;

    .line 1869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 3
    .parameter "httpResponse"

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryOrderCommentCountMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryOrderCommentCountMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryOrderCommentCountMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryOrderCommentCountMyHandler;->access$0(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryOrderCommentCountMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    const-string v2, "totalCount"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/Product;->setOrderCommentCount(Ljava/lang/String;)V

    .line 1884
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryOrderCommentCountMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryOrderCommentCountMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryOrderCommentCountMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryOrderCommentCountMyHandler;->access$0(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryOrderCommentCountMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    #calls: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->onFinish(IZ)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;IZ)V

    .line 1885
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryOrderCommentCountMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryOrderCommentCountMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryOrderCommentCountMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryOrderCommentCountMyHandler;->access$0(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryOrderCommentCountMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    #calls: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->onFinish(IZ)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;IZ)V

    .line 1878
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 1873
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1889
    return-void
.end method
