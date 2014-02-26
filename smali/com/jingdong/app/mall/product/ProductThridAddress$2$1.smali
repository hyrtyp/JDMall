.class Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;
.super Ljava/lang/Object;
.source "ProductThridAddress.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductThridAddress$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$2;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductThridAddress$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$2;

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;)Lcom/jingdong/app/mall/product/ProductThridAddress$2;
    .locals 1
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$2;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$2;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mProductDetailController:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$13(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;-><init>(Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/controller/ProductDetailController;->queryThirdAddressCounty(ZLcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V

    .line 373
    return-void
.end method
