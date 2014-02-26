.class Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailActivity$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/ProductDetailActivity$14;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailActivity$14;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailActivity$14;

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1;)Lcom/jingdong/app/mall/product/ProductDetailActivity$14;
    .locals 1
    .parameter

    .prologue
    .line 514
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailActivity$14;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 518
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailActivity$14;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity$14;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$14;->access$0(Lcom/jingdong/app/mall/product/ProductDetailActivity$14;)Lcom/jingdong/app/mall/product/ProductDetailActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$7(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->isFavorited()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailActivity$14;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity$14;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$14;->access$0(Lcom/jingdong/app/mall/product/ProductDetailActivity$14;)Lcom/jingdong/app/mall/product/ProductDetailActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$7(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailActivity$14;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity$14;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$14;->access$0(Lcom/jingdong/app/mall/product/ProductDetailActivity$14;)Lcom/jingdong/app/mall/product/ProductDetailActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->mProductDetailController:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$20(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailActivity$14;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity$14;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity$14;->access$0(Lcom/jingdong/app/mall/product/ProductDetailActivity$14;)Lcom/jingdong/app/mall/product/ProductDetailActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$7(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v3, Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1$1;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1$1;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/jingdong/common/controller/ProductDetailController;->addFavorite(JLcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V

    .line 546
    :cond_0
    return-void
.end method
