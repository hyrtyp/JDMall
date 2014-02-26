.class Lcom/jingdong/app/mall/product/ProductListActivity$6;
.super Ljava/lang/Object;
.source "ProductListActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductListActivity;->initComponent(Landroid/content/Intent;)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$6;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 381
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v3, v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$6;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$2(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 383
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$6;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$2(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setCursorVisible(Z)V

    .line 384
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$6;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->productListSearchFloatLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$18(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$6;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->productListSearchFloatLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$18(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$6;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #setter for: Lcom/jingdong/app/mall/product/ProductListActivity;->CURR_STATE:I
    invoke-static {v0, v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$19(Lcom/jingdong/app/mall/product/ProductListActivity;I)V

    .line 387
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$6;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->productListSearchFilterBut:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$20(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0701cd

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 388
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$6;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #setter for: Lcom/jingdong/app/mall/product/ProductListActivity;->hasShowSearchFloat:Z
    invoke-static {v0, v3}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$21(Lcom/jingdong/app/mall/product/ProductListActivity;Z)V

    .line 391
    :cond_0
    return v2
.end method
