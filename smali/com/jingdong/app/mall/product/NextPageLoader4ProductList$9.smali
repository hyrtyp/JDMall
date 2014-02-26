.class Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$9;
.super Ljava/lang/Object;
.source "NextPageLoader4ProductList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

.field private final synthetic val$httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$9;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$9;->val$httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    .line 947
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 949
    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$9;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    #getter for: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isFinishing:Z
    invoke-static {v1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$0(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 952
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$9;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$9;->val$httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->toList(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Ljava/util/ArrayList;

    move-result-object v0

    .line 953
    .local v0, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$9;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    iget-object v1, v1, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showItemList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$9;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    iget-object v1, v1, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_4

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_4

    .line 954
    :cond_3
    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$9;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showEmpty(Z)V

    goto :goto_0

    .line 957
    :cond_4
    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$9;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showEmpty(Z)V

    .line 958
    if-nez v0, :cond_5

    .line 960
    const-string v1, "NextPageLoader"

    const-string v2, "onEnd--->showError"

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$9;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showError()V

    goto :goto_0

    .line 964
    :cond_5
    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$9;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    #setter for: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->nextItemList:Ljava/util/ArrayList;
    invoke-static {v1, v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$11(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Ljava/util/ArrayList;)V

    .line 965
    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$9;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    #calls: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->loadedShow()Z
    invoke-static {v1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$12(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 970
    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$9;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    #calls: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showNextPage(Ljava/util/ArrayList;)V
    invoke-static {v1, v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$13(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
