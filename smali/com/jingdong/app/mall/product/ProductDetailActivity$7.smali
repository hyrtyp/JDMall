.class Lcom/jingdong/app/mall/product/ProductDetailActivity$7;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailActivity;->initFreeReadButton()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$7;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 391
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$7;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->freeReadLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$14(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$7;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->freeReadLine:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$15(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$7;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->freeReadButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$16(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 395
    return-void
.end method
