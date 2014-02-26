.class Lcom/jingdong/app/mall/product/ProductDetailActivity$13;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$13;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$13;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->collectButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$19(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 507
    return-void
.end method
