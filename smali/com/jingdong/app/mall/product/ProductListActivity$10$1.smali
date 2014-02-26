.class Lcom/jingdong/app/mall/product/ProductListActivity$10$1;
.super Ljava/lang/Object;
.source "ProductListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductListActivity$10;->showEmpty(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

.field private final synthetic val$isShow:Z


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductListActivity$10;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$1;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    iput-boolean p2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$1;->val$isShow:Z

    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1024
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$1;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->loadingViewPb:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$29(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$1;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->loadingViewPb:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$29(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1027
    :cond_0
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$1;->val$isShow:Z

    if-eqz v0, :cond_3

    .line 1028
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$1;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->mNoDataView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$35(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1029
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$1;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->mNoDataView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$35(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$1;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->wareInfoList:Landroid/widget/AdapterView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$36(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/AdapterView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1032
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$1;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->wareInfoList:Landroid/widget/AdapterView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$36(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/AdapterView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 1034
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$1;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->fadeOutSwitchButton()V

    .line 1044
    :goto_0
    return-void

    .line 1036
    :cond_3
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$1;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->mNoDataView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$35(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1037
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$1;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->mNoDataView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$35(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1039
    :cond_4
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$1;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->wareInfoList:Landroid/widget/AdapterView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$36(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/AdapterView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1040
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$1;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->wareInfoList:Landroid/widget/AdapterView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$36(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/AdapterView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 1042
    :cond_5
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$1;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->fadeInSwitchButton()V

    goto :goto_0
.end method
