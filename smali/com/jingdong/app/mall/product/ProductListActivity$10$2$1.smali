.class Lcom/jingdong/app/mall/product/ProductListActivity$10$2$1;
.super Ljava/lang/Object;
.source "ProductListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/product/ProductListActivity$10$2;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductListActivity$10$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2$1;->this$2:Lcom/jingdong/app/mall/product/ProductListActivity$10$2;

    .line 1073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 1077
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2$1;->this$2:Lcom/jingdong/app/mall/product/ProductListActivity$10$2;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10$2;)Lcom/jingdong/app/mall/product/ProductListActivity$10;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/product/ProductListActivity;->mNextPageLoader:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2$1;->this$2:Lcom/jingdong/app/mall/product/ProductListActivity$10$2;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10$2;)Lcom/jingdong/app/mall/product/ProductListActivity$10;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/product/ProductListActivity;->mNextPageLoader:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    invoke-virtual {v0, v2}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showPageOne(Z)V

    .line 1079
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2$1;->this$2:Lcom/jingdong/app/mall/product/ProductListActivity$10$2;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10$2;)Lcom/jingdong/app/mall/product/ProductListActivity$10;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->loadingViewPb:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$29(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1080
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2$1;->this$2:Lcom/jingdong/app/mall/product/ProductListActivity$10$2;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10$2;)Lcom/jingdong/app/mall/product/ProductListActivity$10;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->errorView:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$44(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1081
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2$1;->this$2:Lcom/jingdong/app/mall/product/ProductListActivity$10$2;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10$2;)Lcom/jingdong/app/mall/product/ProductListActivity$10;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonPrice:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$37(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1082
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2$1;->this$2:Lcom/jingdong/app/mall/product/ProductListActivity$10$2;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10$2;)Lcom/jingdong/app/mall/product/ProductListActivity$10;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonSales:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$38(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1083
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2$1;->this$2:Lcom/jingdong/app/mall/product/ProductListActivity$10$2;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10$2;)Lcom/jingdong/app/mall/product/ProductListActivity$10;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonAddTime:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$39(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1084
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2$1;->this$2:Lcom/jingdong/app/mall/product/ProductListActivity$10$2;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10$2;)Lcom/jingdong/app/mall/product/ProductListActivity$10;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonComment:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$40(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1086
    :cond_0
    return-void
.end method
