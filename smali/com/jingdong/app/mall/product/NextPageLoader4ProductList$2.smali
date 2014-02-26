.class Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$2;
.super Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;
.source "NextPageLoader4ProductList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showNextPage(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p2, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$2;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;-><init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;)V

    return-void
.end method


# virtual methods
.method public onScrollFling()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$2;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isFling:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$4(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Z)V

    .line 353
    return-void
.end method

.method public onScrollIdle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 357
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$2;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    #setter for: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isHolding:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$5(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Z)V

    .line 358
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$2;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    #setter for: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isFling:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$4(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Z)V

    .line 359
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$2;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    #getter for: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isFinishing:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$0(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$2;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    #getter for: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->hasNotify:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$6(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$2;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    #setter for: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->hasNotify:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$7(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Z)V

    .line 364
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$2;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    #getter for: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$8(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$2;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    #getter for: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$8(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 368
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$2;->checkLast()V

    goto :goto_0
.end method

.method public onScrollLast()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$2;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    #getter for: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isFinishing:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$0(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$2;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isLoadedLastPage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$2;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    #calls: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->tryShowNextPage()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$1(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)V

    goto :goto_0
.end method
