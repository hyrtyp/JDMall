.class Lcom/jingdong/app/mall/product/ProductListActivity$10$2;
.super Ljava/lang/Object;
.source "ProductListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductListActivity$10;->showError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductListActivity$10;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    .line 1053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10$2;)Lcom/jingdong/app/mall/product/ProductListActivity$10;
    .locals 1
    .parameter

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1057
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonPrice:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$37(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1058
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonSales:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$38(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1059
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonAddTime:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$39(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1060
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonComment:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$40(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1061
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->searchCateText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$41(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->name:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$42(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1063
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->loadingViewPb:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$29(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1065
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->filterButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$43(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1067
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    iget-object v0, v0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->showItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1068
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->fadeOutSwitchButton()V

    .line 1069
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->wareInfoList:Landroid/widget/AdapterView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$36(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/AdapterView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->wareInfoList:Landroid/widget/AdapterView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$36(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/AdapterView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->errorView:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$44(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1073
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->errorLoadingBut:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$45(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/product/ProductListActivity$10$2$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductListActivity$10$2$1;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity$10$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1096
    :cond_1
    :goto_0
    return-void

    .line 1091
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->fadeInSwitchButton()V

    .line 1092
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->wareInfoList:Landroid/widget/AdapterView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$36(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/AdapterView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1093
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->wareInfoList:Landroid/widget/AdapterView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$36(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/AdapterView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->setVisibility(I)V

    goto :goto_0
.end method
