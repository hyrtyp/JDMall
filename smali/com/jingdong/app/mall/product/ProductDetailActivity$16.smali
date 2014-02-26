.class Lcom/jingdong/app/mall/product/ProductDetailActivity$16;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailActivity;->showQuerying()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    const/16 v3, 0x8

    .line 624
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productPromotionView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$29(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 625
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productDeliverView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$30(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 626
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsView:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$31(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 627
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsline:Landroid/view/View;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$32(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 628
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->easyButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$18(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 629
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->packsLinear:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$33(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 630
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->packsLinearNderline:Landroid/view/View;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$34(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 633
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->commentCountLinear:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$35(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/product/ProductDetailActivity;->removeAllTextView(Landroid/view/ViewGroup;)V
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$36(Lcom/jingdong/app/mall/product/ProductDetailActivity;Landroid/view/ViewGroup;)V

    .line 634
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 635
    .local v0, productnNoCommentTextView:Landroid/widget/TextView;
    const v1, 0x7f0701f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 636
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->commentCountLinear:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$35(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f80

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 637
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->commentCountLinear:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$35(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 639
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productConsultationCountTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$37(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    const v3, 0x7f0701f9

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOrderCommentCountTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$38(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0701f7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 642
    return-void
.end method
