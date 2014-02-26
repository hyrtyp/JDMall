.class Lcom/jingdong/app/mall/product/ProductDetailActivity$11;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProductForEasyBuy()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$11;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 457
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$11;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$7(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->isCanEasyBuy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$11;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->easyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$18(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 459
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$11;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->easyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$18(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$11;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailActivity;->isCanBuy()Z
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$12(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$11;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->easyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$18(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 469
    :goto_0
    return-void

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$11;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->easyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$18(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$11;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->easyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$18(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 467
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$11;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->easyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$18(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
