.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$36;
.super Ljava/lang/Object;
.source "ShoppingCartNewActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->createSingleView(Lcom/jingdong/common/entity/cart/CartResponseSku;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

.field private final synthetic val$singeImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$36;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$36;->val$singeImage:Landroid/widget/ImageView;

    .line 1416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)V
    .locals 0
    .parameter "bitmapDigest"

    .prologue
    .line 1442
    return-void
.end method

.method public onProgress(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;II)V
    .locals 0
    .parameter "bitmapDigest"
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 1437
    return-void
.end method

.method public onStart(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)V
    .locals 0
    .parameter "bitmapDigest"

    .prologue
    .line 1432
    return-void
.end method

.method public onSuccess(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmapDigest"
    .parameter "bitmap"

    .prologue
    .line 1420
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$36;->val$singeImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1422
    .local v1, imagePostion:I
    invoke-virtual {p1}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->getPosition()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1423
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$36;->val$singeImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;

    .line 1424
    .local v0, hrbDrawable:Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;
    invoke-virtual {v0, p2}, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1425
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$36;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    invoke-static {v2, v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$32(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Landroid/graphics/drawable/Drawable;)V

    .line 1427
    .end local v0           #hrbDrawable:Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;
    :cond_0
    return-void
.end method
