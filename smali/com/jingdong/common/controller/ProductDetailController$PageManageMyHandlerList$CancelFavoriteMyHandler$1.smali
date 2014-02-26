.class Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler$1;
.super Ljava/lang/Object;
.source "ProductDetailController.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler;


# direct methods
.method constructor <init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler;

    .line 1985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 5
    .parameter "httpResponse"

    .prologue
    .line 1997
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 1998
    .local v1, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v3, "message"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1999
    .local v2, msg:Ljava/lang/String;
    const-string v3, "flag"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 2000
    .local v0, flag:Ljava/lang/Boolean;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2001
    iget-object v3, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v3}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v3

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v3}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v3

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v3}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/jingdong/common/entity/Product;->setAddFavoriteMsg(Ljava/lang/String;)V

    .line 2003
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2004
    iget-object v3, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v3}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v3

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v3}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v3

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v3}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/Product;->setFavorited(Z)V

    .line 2008
    :cond_1
    iget-object v3, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v3}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->doNext()V

    .line 2009
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 1992
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler$1;->this$2:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->doNext()V

    .line 1993
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 1988
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 2013
    return-void
.end method
