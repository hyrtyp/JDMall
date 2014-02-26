.class public Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;
.super Lcom/jingdong/common/ui/ExceptionDrawable;
.source "HandlerRecycleBitmapDrawable.java"

# interfaces
.implements Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapRect:Landroid/graphics/Rect;

.field private group:Lcom/jingdong/common/utils/HttpGroup;

.field private myActivity:Lcom/jingdong/common/frame/IMyActivity;

.field private needPadding:Z

.field private np:Landroid/graphics/NinePatch;

.field private url:Ljava/lang/String;

.field private view:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 3
    .parameter "bitmap"
    .parameter "myActivity"

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-interface {p2}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/jingdong/common/res/StringUtil;->app_name:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/jingdong/common/ui/ExceptionDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    iput-object v2, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 24
    iput-object v2, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 26
    iput-object v2, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->bitmapRect:Landroid/graphics/Rect;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->needPadding:Z

    .line 37
    invoke-virtual {p0, p1}, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 38
    iput-object p2, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->bitmapRect:Landroid/graphics/Rect;

    .line 40
    return-void
.end method


# virtual methods
.method public declared-synchronized draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 69
    iget-object v2, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->np:Landroid/graphics/NinePatch;

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->np:Landroid/graphics/NinePatch;

    invoke-virtual {p0}, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 74
    invoke-virtual {p0}, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 75
    .local v1, rect:Landroid/graphics/Rect;
    iget-boolean v2, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->needPadding:Z

    if-eqz v2, :cond_2

    .line 76
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x2

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, -0x2

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 80
    :goto_0
    iget-object v2, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->bitmapRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 83
    iget-object v2, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->bitmapRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    .end local v1           #rect:Landroid/graphics/Rect;
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 78
    .restart local v1       #rect:Landroid/graphics/Rect;
    :cond_2
    :try_start_2
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 67
    .end local v1           #rect:Landroid/graphics/Rect;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 85
    .restart local v1       #rect:Landroid/graphics/Rect;
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/Throwable;
    :try_start_3
    sget-boolean v2, Lcom/jingdong/cloud/msg/util/Log;->E:Z

    if-eqz v2, :cond_1

    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 91
    .end local v0           #e:Ljava/lang/Throwable;
    .end local v1           #rect:Landroid/graphics/Rect;
    :cond_3
    iget-object v2, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    iget-object v3, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->view:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->group:Lcom/jingdong/common/utils/HttpGroup;

    iget-object v5, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->url:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, p0}, Lcom/jingdong/common/utils/ImageUtil;->setViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/view/View;Lcom/jingdong/common/utils/HttpGroup;Ljava/lang/String;Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public initLoad(Landroid/widget/ImageView;Lcom/jingdong/common/utils/HttpGroup;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "group"
    .parameter "url"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->view:Landroid/widget/ImageView;

    .line 61
    iput-object p2, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->group:Lcom/jingdong/common/utils/HttpGroup;

    .line 62
    iput-object p3, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->url:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)V
    .locals 0
    .parameter "bitmapDigest"

    .prologue
    .line 138
    return-void
.end method

.method public onProgress(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;II)V
    .locals 0
    .parameter "bitmapDigest"
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 142
    return-void
.end method

.method public onStart(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)V
    .locals 0
    .parameter "bitmapDigest"

    .prologue
    .line 121
    return-void
.end method

.method public onSuccess(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmapDigest"
    .parameter "bitmap"

    .prologue
    .line 124
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p0, p2}, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 128
    iget-object v0, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    new-instance v1, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable$1;

    invoke-direct {v1, p0}, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable$1;-><init>(Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;)V

    invoke-interface {v0, v1}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 107
    return-void
.end method

.method public setBackGround(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bg"

    .prologue
    const/4 v2, 0x0

    .line 97
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Landroid/graphics/NinePatch;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v0, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->np:Landroid/graphics/NinePatch;

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iput-object v2, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->np:Landroid/graphics/NinePatch;

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 48
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 112
    return-void
.end method

.method public setNeedPadding(Z)V
    .locals 0
    .parameter "needPadding"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->needPadding:Z

    .line 146
    return-void
.end method
