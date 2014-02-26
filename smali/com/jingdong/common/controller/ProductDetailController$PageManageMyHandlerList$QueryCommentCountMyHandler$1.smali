.class Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCommentCountMyHandler$1;
.super Ljava/lang/Object;
.source "ProductDetailController.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCommentCountMyHandler;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCommentCountMyHandler;


# direct methods
.method constructor <init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCommentCountMyHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCommentCountMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCommentCountMyHandler;

    .line 1747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    .line 1760
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    const-string v2, "scoreList"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 1761
    .local v0, jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    iget-object v1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCommentCountMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCommentCountMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCommentCountMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCommentCountMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCommentCountMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v1

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v1

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v1}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/jingdong/common/entity/CommentCount;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/Product;->setCommentCountList(Ljava/util/ArrayList;)V

    .line 1763
    iget-object v1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCommentCountMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCommentCountMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCommentCountMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCommentCountMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCommentCountMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    #calls: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->onFinish(IZ)V
    invoke-static {v1, v2, v3}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;IZ)V

    .line 1764
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCommentCountMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCommentCountMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCommentCountMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCommentCountMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCommentCountMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    #calls: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->onFinish(IZ)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;IZ)V

    .line 1756
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 1751
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1768
    return-void
.end method
