.class Lcom/jingdong/app/mall/product/ProductDetailActivity$10;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 440
    sput-boolean v1, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    .line 441
    sput-boolean v1, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    .line 442
    sput-boolean v1, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    .line 443
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->id:J
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$17(Lcom/jingdong/app/mall/product/ProductDetailActivity;)J

    move-result-wide v1

    sput-wide v1, Lcom/jingdong/common/constant/Constants;->easyBuyProdId:J

    .line 445
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    const-class v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 446
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "isEasyBuy"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 447
    const-string v1, "easyBuySource"

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->mSource:Lcom/jingdong/common/entity/SourceEntity;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$11(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/SourceEntity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 448
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 450
    return-void
.end method
