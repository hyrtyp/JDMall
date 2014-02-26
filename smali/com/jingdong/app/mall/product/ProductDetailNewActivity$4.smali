.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$4;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->handleFoldAndUnfold()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$4;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 693
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$4;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->isStrecth:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$15(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$4;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOptionsView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$16(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$4;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->stretchButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$17(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020251

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 696
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$4;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #setter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->isStrecth:Z
    invoke-static {v0, v2}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$1(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Z)V

    .line 702
    :goto_0
    return-void

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$4;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOptionsView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$16(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 699
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$4;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->stretchButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$17(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020252

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 700
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$4;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->isStrecth:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$1(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Z)V

    goto :goto_0
.end method
