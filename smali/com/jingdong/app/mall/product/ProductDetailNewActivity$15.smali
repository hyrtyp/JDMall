.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->initCollectButton()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity;
    .locals 1
    .parameter

    .prologue
    .line 906
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 910
    sput-boolean v5, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->hasCacelFavorite:Z

    .line 912
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;)V

    .line 972
    .local v0, runnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->getInstance()Lcom/jingdong/app/mall/utils/LoginUser;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    const v4, 0x7f0701ee

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3, v5}, Lcom/jingdong/app/mall/utils/LoginUser;->executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;Ljava/lang/String;Z)V

    .line 973
    return-void
.end method
