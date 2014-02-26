.class Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$6;
.super Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;
.source "NextPageLoader4ProductList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showCurrentPage(I)V
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
    iput-object p2, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$6;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    .line 550
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;-><init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;)V

    return-void
.end method


# virtual methods
.method public onScrollFling()V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$6;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isFling:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$4(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Z)V

    .line 564
    return-void
.end method

.method public onScrollIdle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 568
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$6;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    #setter for: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isHolding:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$5(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Z)V

    .line 569
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$6;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    #setter for: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isFling:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$4(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Z)V

    .line 570
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$6;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    #getter for: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isFinishing:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$0(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    :goto_0
    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$6;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    #getter for: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->hasNotify:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$6(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$6;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    #setter for: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->hasNotify:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$7(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Z)V

    .line 575
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$6;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    #getter for: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$8(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$6;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    #getter for: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$8(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 579
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$6;->checkLast()V

    goto :goto_0
.end method

.method public onScrollLast()V
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$6;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    #getter for: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isFinishing:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$0(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$6;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isLoadedLastPage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$6;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    #calls: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->tryShowNextPage()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$1(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)V

    goto :goto_0
.end method
