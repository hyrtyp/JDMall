.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;->this$2:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;

    .line 943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;
    .locals 1
    .parameter

    .prologue
    .line 943
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;->this$2:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;

    return-object v0
.end method


# virtual methods
.method public onFinish(Lcom/jingdong/common/entity/Product;IZ)V
    .locals 4
    .parameter "resultProduct"
    .parameter "resultCode"
    .parameter "isSucceed"

    .prologue
    .line 946
    invoke-virtual {p1}, Lcom/jingdong/common/entity/Product;->getAddFavoriteMsg()Ljava/lang/String;

    move-result-object v1

    .line 947
    .local v1, msg:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/jingdong/common/entity/Product;->isFavorited()Z

    move-result v0

    .line 948
    .local v0, isFavorited:Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 949
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;->this$2:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    move-result-object v2

    new-instance v3, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2$1;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->post(Ljava/lang/Runnable;)V

    .line 965
    :cond_0
    return-void
.end method
