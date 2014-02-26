.class Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPacksMyHandler$1;
.super Ljava/lang/Object;
.source "ProductDetailController.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPacksMyHandler;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPacksMyHandler;


# direct methods
.method constructor <init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPacksMyHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPacksMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPacksMyHandler;

    .line 1677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 6
    .parameter "httpResponse"

    .prologue
    const/4 v5, 0x1

    .line 1695
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 1696
    .local v2, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    .line 1698
    .local v1, jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1699
    iget-object v3, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPacksMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPacksMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPacksMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v3}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPacksMyHandler;->access$0(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPacksMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v3

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v3}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v3

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v3}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/Product;->setHasPacks(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1707
    .end local v1           #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v2           #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :goto_0
    iget-object v3, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPacksMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPacksMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPacksMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v3}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPacksMyHandler;->access$0(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPacksMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v3

    const/4 v4, 0x5

    #calls: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->onFinish(IZ)V
    invoke-static {v3, v4, v5}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;IZ)V

    .line 1708
    return-void

    .line 1701
    .restart local v1       #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .restart local v2       #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPacksMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPacksMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPacksMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v3}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPacksMyHandler;->access$0(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPacksMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v3

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v3}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v3

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v3}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/Product;->setHasPacks(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1703
    .end local v1           #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v2           #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :catch_0
    move-exception v0

    .line 1704
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPacksMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPacksMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPacksMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPacksMyHandler;->access$0(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPacksMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    #calls: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->onFinish(IZ)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;IZ)V

    .line 1686
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 1690
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1681
    return-void
.end method
