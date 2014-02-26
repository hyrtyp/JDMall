.class Lcom/jingdong/app/mall/product/ProductListActivity$12;
.super Ljava/lang/Object;
.source "ProductListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductListActivity;->hidefloatLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$12;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    .line 1870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1873
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$12;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->productListSearchFloatLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$18(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1874
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$12;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->historyList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$25(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1875
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$12;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->productListSearchFilterBut:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$20(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 1876
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$12;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #setter for: Lcom/jingdong/app/mall/product/ProductListActivity;->hasShowSearchFloat:Z
    invoke-static {v0, v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$21(Lcom/jingdong/app/mall/product/ProductListActivity;Z)V

    .line 1877
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$12;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$2(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setCursorVisible(Z)V

    .line 1878
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$12;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/app/mall/product/ProductListActivity;->CURR_STATE:I
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$19(Lcom/jingdong/app/mall/product/ProductListActivity;I)V

    .line 1879
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$12;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->productListSearchFilterBut:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$20(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f070342

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1880
    return-void
.end method
