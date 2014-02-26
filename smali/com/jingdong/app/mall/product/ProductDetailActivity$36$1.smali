.class Lcom/jingdong/app/mall/product/ProductDetailActivity$36$1;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailActivity$36;->onSuccess(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/ProductDetailActivity$36;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$image:Lcom/jingdong/common/entity/Image;

.field private final synthetic val$imageView:Landroid/widget/ImageView;

.field private final synthetic val$position:I

.field private final synthetic val$progressBar:Landroid/widget/ProgressBar;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailActivity$36;Landroid/widget/ProgressBar;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Ljava/lang/String;Lcom/jingdong/common/entity/Image;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailActivity$36;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36$1;->val$progressBar:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36$1;->val$url:Ljava/lang/String;

    iput-object p6, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36$1;->val$image:Lcom/jingdong/common/entity/Image;

    iput p7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36$1;->val$position:I

    .line 1491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductDetailActivity$36$1;)Lcom/jingdong/app/mall/product/ProductDetailActivity$36;
    .locals 1
    .parameter

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailActivity$36;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1494
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36$1;->val$progressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1496
    new-instance v0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailActivity$36;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity$36;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductDetailActivity$36;->access$0(Lcom/jingdong/app/mall/product/ProductDetailActivity$36;)Lcom/jingdong/app/mall/product/ProductDetailActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Lcom/jingdong/common/frame/IMyActivity;)V

    .line 1497
    .local v0, bitmapDrawable:Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailActivity$36;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity$36;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductDetailActivity$36;->access$0(Lcom/jingdong/app/mall/product/ProductDetailActivity$36;)Lcom/jingdong/app/mall/product/ProductDetailActivity;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->getHttpGroupaAsynPool(I)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->initLoad(Landroid/widget/ImageView;Lcom/jingdong/common/utils/HttpGroup;Ljava/lang/String;)V

    .line 1499
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1502
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36$1;->val$imageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/jingdong/app/mall/product/ProductDetailActivity$36$1$1;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36$1;->val$image:Lcom/jingdong/common/entity/Image;

    iget v4, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36$1;->val$position:I

    invoke-direct {v2, p0, v3, v4}, Lcom/jingdong/app/mall/product/ProductDetailActivity$36$1$1;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity$36$1;Lcom/jingdong/common/entity/Image;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1519
    return-void
.end method
