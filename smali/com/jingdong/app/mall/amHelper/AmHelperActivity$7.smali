.class Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;
.super Ljava/lang/Object;
.source "AmHelperActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->setDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

.field private final synthetic val$icon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;->val$icon:Landroid/widget/ImageView;

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;)Lcom/jingdong/app/mall/amHelper/AmHelperActivity;
    .locals 1
    .parameter

    .prologue
    .line 410
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 5
    .parameter "httpResponse"

    .prologue
    const/4 v3, 0x0

    .line 436
    invoke-static {p1}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->createInputWay(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Lcom/jingdong/common/utils/ImageUtil$InputWay;

    move-result-object v2

    invoke-static {v2, v3, v3}, Lcom/jingdong/common/utils/ImageUtil;->createBitmap(Lcom/jingdong/common/utils/ImageUtil$InputWay;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 437
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 438
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    new-instance v3, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7$2;

    iget-object v4, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;->val$icon:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v1, v4}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7$2;-><init>(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->post(Ljava/lang/Runnable;)V

    .line 447
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    new-instance v1, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;->val$icon:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7$1;-><init>(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->post(Ljava/lang/Runnable;)V

    .line 429
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 415
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 452
    return-void
.end method
