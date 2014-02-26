.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$26;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductForDeliver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$26;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    .line 1697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1701
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$26;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$10(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getDeliver()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1702
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$26;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailDeliverLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$67(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1703
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$26;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDeliverView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$37(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1704
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$26;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDeliverImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$68(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1705
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$26;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDeliverView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$37(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$26;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$10(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getDeliver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1706
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$26;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productNameViewLine:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$69(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1715
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$26;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$10(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getPostByJd()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1716
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$26;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productJDDeliverImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$70(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1721
    :goto_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$26;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->isDeliverShowed:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$71(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Z)V

    .line 1722
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$26;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->refreshXJZDIcon()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$64(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    .line 1723
    return-void

    .line 1708
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$26;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailDeliverLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$67(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1709
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$26;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDeliverView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$37(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1710
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$26;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productNameViewLine:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$69(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1711
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$26;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDeliverImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$68(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1718
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$26;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productJDDeliverImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$70(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
