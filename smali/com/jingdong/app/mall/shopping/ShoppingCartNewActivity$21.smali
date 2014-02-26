.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$21;
.super Ljava/lang/Object;
.source "ShoppingCartNewActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->createPackView(Lcom/jingdong/common/entity/cart/CartResponseSuit;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

.field private final synthetic val$childImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$21;->val$childImage:Landroid/widget/ImageView;

    .line 841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)V
    .locals 0
    .parameter "bitmapDigest"

    .prologue
    .line 856
    return-void
.end method

.method public onProgress(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;II)V
    .locals 0
    .parameter "bitmapDigest"
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 851
    return-void
.end method

.method public onStart(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)V
    .locals 0
    .parameter "bitmapDigest"

    .prologue
    .line 846
    return-void
.end method

.method public onSuccess(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmapDigest"
    .parameter "bitmap"

    .prologue
    .line 860
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$21;->val$childImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;

    .line 861
    .local v0, hrbDrawable:Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;
    invoke-virtual {v0, p2}, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 862
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    invoke-static {v1, v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$32(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Landroid/graphics/drawable/Drawable;)V

    .line 863
    return-void
.end method
