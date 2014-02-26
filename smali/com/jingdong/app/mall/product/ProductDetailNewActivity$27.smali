.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$27;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductForOptoins()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$27;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    .line 1765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$27;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showOptionsRunnable()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$72(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    .line 1769
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$27;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->updateColorAndSizeTextView()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$12(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    .line 1770
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$27;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->isStrecth:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$15(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1771
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$27;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOptionsView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$16(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1772
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$27;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->stretchButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$17(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020252

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1774
    :cond_0
    return-void
.end method
