.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$5;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->initCartButton()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$5;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$5;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity;
    .locals 1
    .parameter

    .prologue
    .line 716
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$5;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 722
    sput-boolean v0, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    .line 723
    sput-boolean v0, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    .line 724
    sput-boolean v0, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    .line 725
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$5;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->mSource:Lcom/jingdong/common/entity/SourceEntity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$18(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/SourceEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$5;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$10(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$5;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$10(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$5;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->mSource:Lcom/jingdong/common/entity/SourceEntity;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$18(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/SourceEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/Product;->setSourceEntity(Lcom/jingdong/common/entity/SourceEntity;)V

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$5;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$5;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$10(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v1

    new-instance v2, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$5$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$5$1;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$5;)V

    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingController;->addOneProduct(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/Product;Ljava/lang/Runnable;)V

    .line 736
    return-void
.end method
