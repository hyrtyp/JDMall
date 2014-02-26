.class Lcom/jingdong/app/mall/product/ProductDetailActivity$14;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailActivity;->initCollectButton()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$14;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductDetailActivity$14;)Lcom/jingdong/app/mall/product/ProductDetailActivity;
    .locals 1
    .parameter

    .prologue
    .line 511
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$14;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 514
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity$14;)V

    .line 549
    .local v0, runnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->getInstance()Lcom/jingdong/app/mall/utils/LoginUser;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$14;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$14;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    const v4, 0x7f0701ee

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/jingdong/app/mall/utils/LoginUser;->executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;Ljava/lang/String;Z)V

    .line 550
    return-void
.end method
