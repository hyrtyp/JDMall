.class Lcom/jingdong/app/mall/product/ProductDetailActivity$5;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$5;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 342
    sput-boolean v0, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    .line 343
    sput-boolean v0, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    .line 344
    sput-boolean v0, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    .line 345
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$5;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->mSource:Lcom/jingdong/common/entity/SourceEntity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$11(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/SourceEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$5;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$7(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$5;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$7(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$5;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->mSource:Lcom/jingdong/common/entity/SourceEntity;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$11(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/SourceEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/Product;->setSourceEntity(Lcom/jingdong/common/entity/SourceEntity;)V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$5;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$5;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$7(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingController;->addOneProduct(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/Product;Ljava/lang/Runnable;)V

    .line 350
    return-void
.end method
