.class Lcom/jingdong/app/mall/product/ProductDetailActivity$31;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProductForPacks()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$31;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    .line 1389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1393
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$31;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->id:J
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$17(Lcom/jingdong/app/mall/product/ProductDetailActivity;)J

    move-result-wide v1

    sput-wide v1, Lcom/jingdong/common/constant/Constants;->packMainProdId:J

    .line 1394
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$31;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    const-class v2, Lcom/jingdong/app/mall/shopping/PacksListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1396
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "source"

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$31;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->mSource:Lcom/jingdong/common/entity/SourceEntity;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$11(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/SourceEntity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1397
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$31;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 1398
    return-void
.end method
