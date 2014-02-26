.class Lcom/jingdong/app/mall/product/ProductDetailActivity$6;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailActivity;->initCartButton()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$6;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$6;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailActivity;->isCanBuy()Z
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$12(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$6;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->cartButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$13(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$6;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->cartButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$13(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
