.class Lcom/jingdong/app/mall/product/ProductDetailActivity$37;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailActivity;->updateImageCount(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

.field private final synthetic val$count:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$37;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$37;->val$count:Ljava/lang/String;

    .line 1557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$37;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->imageCountTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$59(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$37;->val$count:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1563
    return-void
.end method
