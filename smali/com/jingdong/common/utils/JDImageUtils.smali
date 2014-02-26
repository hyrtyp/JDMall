.class public Lcom/jingdong/common/utils/JDImageUtils;
.super Ljava/lang/Object;
.source "JDImageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/view/View;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 300
    invoke-static {p0, p1}, Lcom/jingdong/common/utils/JDImageUtils;->canRefreshImage(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 275
    invoke-static {p0, p1, p2, p3}, Lcom/jingdong/common/utils/JDImageUtils;->reallyDraw(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method private static canRefreshImage(Landroid/view/View;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "imageUrl"

    .prologue
    .line 301
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 307
    .local v0, object:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 308
    check-cast v1, Ljava/lang/String;

    .line 309
    .local v1, url:Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    const/4 v2, 0x1

    .line 314
    .end local v1           #url:Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static drawViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .parameter "myActivity"
    .parameter "view"
    .parameter "source"
    .parameter "url"

    .prologue
    .line 214
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/jingdong/common/utils/JDImageUtils;->drawViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    .line 215
    return-void
.end method

.method public static drawViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 5
    .parameter "myActivity"
    .parameter "view"
    .parameter "source"
    .parameter "url"
    .parameter "roundPx"

    .prologue
    .line 227
    const/4 v2, 0x0

    .line 229
    .local v2, temp:Landroid/graphics/Bitmap;
    if-lez p4, :cond_0

    .line 231
    int-to-float v4, p4

    :try_start_0
    invoke-static {p2, v4}, Lcom/jingdong/common/utils/ImageUtil;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 249
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 250
    move-object v1, v2

    .line 255
    .local v1, result:Landroid/graphics/Bitmap;
    :goto_1
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/MyApplication;->getUiThread()Ljava/lang/Thread;

    move-result-object v3

    .line 257
    .local v3, uiThread:Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v4, v3, :cond_2

    .line 261
    invoke-static {p0, p1, v1, p3}, Lcom/jingdong/common/utils/JDImageUtils;->reallyDraw(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 273
    :goto_2
    return-void

    .line 232
    .end local v1           #result:Landroid/graphics/Bitmap;
    .end local v3           #uiThread:Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .line 236
    .local v0, e:Ljava/lang/Throwable;
    invoke-static {}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getLruBitmapCache()Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->clean()V

    .line 238
    int-to-float v4, p4

    :try_start_1
    invoke-static {p2, v4}, Lcom/jingdong/common/utils/ImageUtil;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 252
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_1
    move-object v1, p2

    .restart local v1       #result:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 263
    .restart local v3       #uiThread:Ljava/lang/Thread;
    :cond_2
    new-instance v4, Lcom/jingdong/common/utils/JDImageUtils$3;

    invoke-direct {v4, p1, p0, v1, p3}, Lcom/jingdong/common/utils/JDImageUtils$3;-><init>(Landroid/widget/ImageView;Lcom/jingdong/common/frame/IMyActivity;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {p0, v4}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 239
    .end local v1           #result:Landroid/graphics/Bitmap;
    .end local v3           #uiThread:Ljava/lang/Thread;
    .restart local v0       #e:Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static getBitmapWithJpg(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 348
    if-eqz p0, :cond_0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    .line 349
    :cond_0
    const/4 v1, 0x0

    .line 354
    :goto_0
    return-object v1

    .line 352
    :cond_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 353
    .local v0, newOpts:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 354
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static getBitmapWithJpg16(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 327
    if-eqz p0, :cond_0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    .line 328
    :cond_0
    const/4 v1, 0x0

    .line 334
    :goto_0
    return-object v1

    .line 331
    :cond_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 332
    .local v0, newOpts:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 333
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 334
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method private static reallyDraw(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .parameter "myActivity"
    .parameter "view"
    .parameter "result"
    .parameter "url"

    .prologue
    .line 276
    invoke-static {p1, p3}, Lcom/jingdong/common/utils/JDImageUtils;->canRefreshImage(Landroid/view/View;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 291
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 282
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 283
    check-cast v0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;

    .line 284
    .local v0, bitmapDrawable:Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;
    invoke-virtual {v0, p2}, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 285
    invoke-virtual {v0}, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->invalidateSelf()V

    .line 290
    :goto_1
    const/16 v2, 0x1388

    invoke-interface {p0, v2}, Lcom/jingdong/common/frame/IMyActivity;->getHttpGroupaAsynPool(I)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    invoke-virtual {v0, p1, v2, p3}, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->initLoad(Landroid/widget/ImageView;Lcom/jingdong/common/utils/HttpGroup;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    .end local v0           #bitmapDrawable:Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;
    :cond_1
    new-instance v0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;

    invoke-direct {v0, p2, p0}, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Lcom/jingdong/common/frame/IMyActivity;)V

    .line 288
    .restart local v0       #bitmapDrawable:Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public static declared-synchronized setViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/view/View;Lcom/jingdong/common/utils/HttpGroup;Ljava/lang/String;Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;)V
    .locals 4
    .parameter "myActivity"
    .parameter "view"
    .parameter "group"
    .parameter "imageUrl"
    .parameter "loadListener"

    .prologue
    .line 35
    const-class v3, Lcom/jingdong/common/utils/JDImageUtils;

    monitor-enter v3

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 39
    :cond_1
    :try_start_1
    new-instance v0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    invoke-direct {v0, p3}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, bd:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->setWidth(I)V

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->setHeight(I)V

    .line 43
    invoke-static {v0}, Lcom/jingdong/common/utils/ImageUtil;->loadImageWithCache(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 45
    .local v1, imageBitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_2

    .line 46
    invoke-static {p2, v0, p4}, Lcom/jingdong/common/utils/ImageUtil;->loadImageWithUrl(Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 35
    .end local v0           #bd:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;
    .end local v1           #imageBitmap:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 48
    .restart local v0       #bd:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;
    .restart local v1       #imageBitmap:Landroid/graphics/Bitmap;
    :cond_2
    if-eqz p4, :cond_0

    .line 49
    :try_start_2
    invoke-interface {p4, v0, v1}, Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;->onSuccess(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static setViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Lcom/jingdong/common/utils/HttpGroup;Ljava/lang/String;I)V
    .locals 7
    .parameter "myActivity"
    .parameter "view"
    .parameter "group"
    .parameter "imageUrl"
    .parameter "roundPx"

    .prologue
    .line 102
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Lcom/jingdong/common/utils/JDImageUtils;->setViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Lcom/jingdong/common/utils/HttpGroup;Ljava/lang/String;ZII)V

    .line 103
    return-void
.end method

.method public static declared-synchronized setViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Lcom/jingdong/common/utils/HttpGroup;Ljava/lang/String;ZII)V
    .locals 7
    .parameter "myActivity"
    .parameter "view"
    .parameter "group"
    .parameter "imageUrl"
    .parameter "needDefalutDrawable"
    .parameter "roundPx"
    .parameter "priority"

    .prologue
    .line 138
    const-class v4, Lcom/jingdong/common/utils/JDImageUtils;

    monitor-enter v4

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    .line 142
    :cond_1
    :try_start_1
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 144
    new-instance v0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    invoke-direct {v0, p3}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, bd:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->setWidth(I)V

    .line 146
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->setHeight(I)V

    .line 148
    invoke-static {v0}, Lcom/jingdong/common/utils/ImageUtil;->loadImageWithCache(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 150
    .local v1, imageBitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_4

    .line 152
    if-eqz p4, :cond_2

    .line 153
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/MyApplication;->getUiThread()Ljava/lang/Thread;

    move-result-object v2

    .line 155
    .local v2, uiThread:Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v3, v2, :cond_3

    .line 159
    new-instance v3, Lcom/jingdong/common/ui/ExceptionDrawable;

    invoke-interface {p0}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v5

    sget-object v6, Lcom/jingdong/common/res/StringUtil;->app_name:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Lcom/jingdong/common/ui/ExceptionDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    .end local v2           #uiThread:Ljava/lang/Thread;
    :cond_2
    :goto_1
    new-instance v3, Lcom/jingdong/common/utils/JDImageUtils$2;

    invoke-direct {v3, p1, p3, p0, p5}, Lcom/jingdong/common/utils/JDImageUtils$2;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Lcom/jingdong/common/frame/IMyActivity;I)V

    invoke-static {p2, v0, v3, p6}, Lcom/jingdong/common/utils/ImageUtil;->loadImageWithUrl(Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    .end local v0           #bd:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;
    .end local v1           #imageBitmap:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 161
    .restart local v0       #bd:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;
    .restart local v1       #imageBitmap:Landroid/graphics/Bitmap;
    .restart local v2       #uiThread:Ljava/lang/Thread;
    :cond_3
    :try_start_2
    new-instance v3, Lcom/jingdong/common/utils/JDImageUtils$1;

    invoke-direct {v3, p1, p0}, Lcom/jingdong/common/utils/JDImageUtils$1;-><init>(Landroid/widget/ImageView;Lcom/jingdong/common/frame/IMyActivity;)V

    invoke-interface {p0, v3}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 201
    .end local v2           #uiThread:Ljava/lang/Thread;
    :cond_4
    invoke-static {p0, p1, v1, p3, p5}, Lcom/jingdong/common/utils/JDImageUtils;->drawViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static setViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .parameter "myActivity"
    .parameter "view"
    .parameter "imageUrl"

    .prologue
    .line 62
    const/16 v0, 0x1388

    invoke-static {v0}, Lcom/jingdong/common/utils/HttpGroupUtils;->getHttpGroupaAsynPool(I)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, p2, v1}, Lcom/jingdong/common/utils/JDImageUtils;->setViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Lcom/jingdong/common/utils/HttpGroup;Ljava/lang/String;I)V

    .line 63
    return-void
.end method

.method public static setViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 1
    .parameter "myActivity"
    .parameter "view"
    .parameter "imageUrl"
    .parameter "roundPx"

    .prologue
    .line 89
    const/16 v0, 0x1388

    invoke-static {v0}, Lcom/jingdong/common/utils/HttpGroupUtils;->getHttpGroupaAsynPool(I)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/jingdong/common/utils/JDImageUtils;->setViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Lcom/jingdong/common/utils/HttpGroup;Ljava/lang/String;I)V

    .line 90
    return-void
.end method

.method public static setViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Ljava/lang/String;ZI)V
    .locals 7
    .parameter "myActivity"
    .parameter "view"
    .parameter "imageUrl"
    .parameter "needDefalutDrawable"
    .parameter "roundPx"

    .prologue
    .line 113
    const/16 v0, 0x1388

    invoke-static {v0}, Lcom/jingdong/common/utils/HttpGroupUtils;->getHttpGroupaAsynPool(I)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Lcom/jingdong/common/utils/JDImageUtils;->setViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Lcom/jingdong/common/utils/HttpGroup;Ljava/lang/String;ZII)V

    .line 114
    return-void
.end method

.method public static setViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Ljava/lang/String;ZII)V
    .locals 7
    .parameter "myActivity"
    .parameter "view"
    .parameter "imageUrl"
    .parameter "needDefalutDrawable"
    .parameter "roundPx"
    .parameter "priority"

    .prologue
    .line 124
    const/16 v0, 0x1388

    invoke-static {v0}, Lcom/jingdong/common/utils/HttpGroupUtils;->getHttpGroupaAsynPool(I)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/jingdong/common/utils/JDImageUtils;->setViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Lcom/jingdong/common/utils/HttpGroup;Ljava/lang/String;ZII)V

    .line 125
    return-void
.end method

.method public static setViewImageWithPriority(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 7
    .parameter "myActivity"
    .parameter "view"
    .parameter "imageUrl"
    .parameter "prority"

    .prologue
    .line 75
    const/16 v0, 0x1388

    invoke-static {v0}, Lcom/jingdong/common/utils/HttpGroupUtils;->getHttpGroupaAsynPool(I)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/jingdong/common/utils/JDImageUtils;->setViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Lcom/jingdong/common/utils/HttpGroup;Ljava/lang/String;ZII)V

    .line 76
    return-void
.end method
