.class Lcom/jingdong/app/mall/product/ProductDetailActivity$36;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailActivity;->loadProductPicture(Ljava/util/List;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

.field private final synthetic val$image:Lcom/jingdong/common/entity/Image;

.field private final synthetic val$imageList:Ljava/util/List;

.field private final synthetic val$imageView:Landroid/widget/ImageView;

.field private final synthetic val$itemView:Landroid/view/View;

.field private final synthetic val$position:I

.field private final synthetic val$progressBar:Landroid/widget/ProgressBar;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Ljava/lang/String;Lcom/jingdong/common/entity/Image;ILjava/util/List;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36;->val$progressBar:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36;->val$imageView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36;->val$image:Lcom/jingdong/common/entity/Image;

    iput p6, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36;->val$position:I

    iput-object p7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36;->val$imageList:Ljava/util/List;

    iput-object p8, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36;->val$itemView:Landroid/view/View;

    .line 1487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductDetailActivity$36;)Lcom/jingdong/app/mall/product/ProductDetailActivity;
    .locals 1
    .parameter

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    return-object v0
.end method


# virtual methods
.method public onError(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)V
    .locals 8
    .parameter "bitmapDigest"

    .prologue
    .line 1533
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36$2;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36;->val$progressBar:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36;->val$imageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36;->val$imageList:Ljava/util/List;

    iget v5, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36;->val$position:I

    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36;->val$itemView:Landroid/view/View;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/product/ProductDetailActivity$36$2;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity$36;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Ljava/util/List;ILandroid/view/View;)V

    invoke-virtual {v7, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 1549
    return-void
.end method

.method public onProgress(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;II)V
    .locals 0
    .parameter "bitmapDigest"
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 1529
    return-void
.end method

.method public onStart(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)V
    .locals 0
    .parameter "bitmapDigest"

    .prologue
    .line 1525
    return-void
.end method

.method public onSuccess(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "bitmapDigest"
    .parameter "bitmap"

    .prologue
    .line 1491
    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36;->val$progressBar:Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36;->val$imageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36;->val$url:Ljava/lang/String;

    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36;->val$image:Lcom/jingdong/common/entity/Image;

    iget v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36;->val$position:I

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/jingdong/app/mall/product/ProductDetailActivity$36$1;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity$36;Landroid/widget/ProgressBar;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Ljava/lang/String;Lcom/jingdong/common/entity/Image;I)V

    invoke-virtual {v8, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 1521
    return-void
.end method
