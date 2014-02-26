.class Lcom/jingdong/app/mall/home/slide/SlideScreen$9;
.super Ljava/lang/Object;
.source "SlideScreen.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/slide/SlideScreen;->setDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

.field private final synthetic val$imagerView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/slide/SlideScreen;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$9;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    iput-object p2, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$9;->val$imagerView:Landroid/widget/ImageView;

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 5
    .parameter "httpResponse"

    .prologue
    const/4 v3, 0x0

    .line 460
    invoke-static {p1}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->createInputWay(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Lcom/jingdong/common/utils/ImageUtil$InputWay;

    move-result-object v2

    invoke-static {v2, v3, v3}, Lcom/jingdong/common/utils/ImageUtil;->createBitmap(Lcom/jingdong/common/utils/ImageUtil$InputWay;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 461
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 462
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$9;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$0(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v2

    new-instance v3, Lcom/jingdong/app/mall/home/slide/SlideScreen$9$1;

    iget-object v4, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$9;->val$imagerView:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v1, v4}, Lcom/jingdong/app/mall/home/slide/SlideScreen$9$1;-><init>(Lcom/jingdong/app/mall/home/slide/SlideScreen$9;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 471
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 453
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 446
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 476
    return-void
.end method
