.class Lcom/jingdong/app/mall/product/ProductDetailActivity$3;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailActivity;->onResume()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/jingdong/common/entity/Product;IZ)V
    .locals 1
    .parameter "resultProduct"
    .parameter "resultCode"
    .parameter "isSucceed"

    .prologue
    .line 257
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProductForEasyBuy()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$10(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    .line 260
    :cond_0
    return-void
.end method
