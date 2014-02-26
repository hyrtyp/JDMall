.class Lcom/jingdong/common/utils/JDImageUtils$2;
.super Ljava/lang/Object;
.source "JDImageUtils.java"

# interfaces
.implements Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/JDImageUtils;->setViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Lcom/jingdong/common/utils/HttpGroup;Ljava/lang/String;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$imageUrl:Ljava/lang/String;

.field private final synthetic val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

.field private final synthetic val$roundPx:I

.field private final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;Lcom/jingdong/common/frame/IMyActivity;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/JDImageUtils$2;->val$view:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/jingdong/common/utils/JDImageUtils$2;->val$imageUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/common/utils/JDImageUtils$2;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    iput p4, p0, Lcom/jingdong/common/utils/JDImageUtils$2;->val$roundPx:I

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)V
    .locals 0
    .parameter "bitmapDigest"

    .prologue
    .line 198
    return-void
.end method

.method public onProgress(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;II)V
    .locals 0
    .parameter "bitmapDigest"
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 194
    return-void
.end method

.method public onStart(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)V
    .locals 0
    .parameter "bitmapDigest"

    .prologue
    .line 190
    return-void
.end method

.method public onSuccess(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmapDigest"
    .parameter "bitmap"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/jingdong/common/utils/JDImageUtils$2;->val$view:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/utils/JDImageUtils$2;->val$view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jingdong/common/utils/JDImageUtils$2;->val$imageUrl:Ljava/lang/String;

    #calls: Lcom/jingdong/common/utils/JDImageUtils;->canRefreshImage(Landroid/view/View;Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/jingdong/common/utils/JDImageUtils;->access$0(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/jingdong/common/utils/JDImageUtils$2;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    iget-object v1, p0, Lcom/jingdong/common/utils/JDImageUtils$2;->val$view:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jingdong/common/utils/JDImageUtils$2;->val$imageUrl:Ljava/lang/String;

    iget v3, p0, Lcom/jingdong/common/utils/JDImageUtils$2;->val$roundPx:I

    invoke-static {v0, v1, p2, v2, v3}, Lcom/jingdong/common/utils/JDImageUtils;->drawViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    goto :goto_0
.end method
