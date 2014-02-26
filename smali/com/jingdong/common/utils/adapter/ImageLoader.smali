.class public Lcom/jingdong/common/utils/adapter/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# instance fields
.field private imageProcessor:Lcom/jingdong/common/utils/MySimpleAdapter$ImageProcessor;

.field private imageState:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

.field private manualGetImage:Ljava/lang/Boolean;

.field private subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;Lcom/jingdong/common/utils/MySimpleAdapter$ImageProcessor;)V
    .locals 3
    .parameter "subViewHolder"
    .parameter "imageState"
    .parameter "imageProcessor"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->manualGetImage:Ljava/lang/Boolean;

    .line 29
    iput-object p2, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->imageState:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

    .line 30
    iput-object p3, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->imageProcessor:Lcom/jingdong/common/utils/MySimpleAdapter$ImageProcessor;

    .line 31
    new-instance v1, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    invoke-direct {v1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;-><init>()V

    iput-object v1, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    .line 34
    iget-object v1, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    invoke-virtual {p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getAdapter()Lcom/jingdong/common/utils/SimpleBeanAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->setAdapter(Lcom/jingdong/common/utils/SimpleBeanAdapter;)V

    .line 35
    iget-object v1, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    invoke-virtual {p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->setPosition(I)V

    .line 36
    iget-object v1, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    invoke-virtual {p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getSubViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->setSubViewId(I)V

    .line 37
    iget-object v1, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    invoke-virtual {p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getItemData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->setItemData(Ljava/lang/Object;)V

    .line 38
    iget-object v1, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    invoke-virtual {p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getSubData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->setSubData(Ljava/lang/Object;)V

    .line 40
    const-string v1, "manualGetImage"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getMoreParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 41
    .local v0, o:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 42
    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #o:Ljava/lang/Object;
    iput-object v0, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->manualGetImage:Ljava/lang/Boolean;

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public gc()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->imageState:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

    .line 165
    iput-object v0, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->imageProcessor:Lcom/jingdong/common/utils/MySimpleAdapter$ImageProcessor;

    .line 166
    iput-object v0, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    .line 167
    return-void
.end method

.method public load()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 50
    iget-object v4, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->imageState:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

    invoke-static {v4}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getBitmapDigest(Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    move-result-object v1

    .line 51
    .local v1, bitmapDigest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;
    if-nez v1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v4, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->imageState:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;->loading()V

    .line 57
    invoke-virtual {v1}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, url:Ljava/lang/String;
    iget-object v4, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getAdapter()Lcom/jingdong/common/utils/SimpleBeanAdapter;

    move-result-object v0

    .line 64
    .local v0, adapter:Lcom/jingdong/common/utils/SimpleBeanAdapter;
    new-instance v2, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 65
    .local v2, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 66
    invoke-virtual {v0}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->isForeverCacheImage()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setForeverCache(Z)V

    .line 67
    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 69
    iget-object v4, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->manualGetImage:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->allowNoImageAndIsNoImage()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    invoke-virtual {v2, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setCacheMode(I)V

    .line 71
    iget-object v4, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    const-string v5, "localLoadImage"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->putMoreParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    :cond_1
    invoke-virtual {v0}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->isAssetsCache()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 75
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setCacheMode(I)V

    .line 78
    :cond_2
    invoke-virtual {v2, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 80
    invoke-virtual {v0}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->getAdapterHelper()Lcom/jingdong/common/utils/AdapterHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/utils/AdapterHelper;->getImageHttpGroup()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0
.end method

.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 5
    .parameter "httpResponse"

    .prologue
    .line 116
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->imageState:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

    invoke-static {v2}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getBitmapDigest(Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 120
    .local v1, bitmapDigest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;
    if-nez v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/jingdong/common/utils/adapter/ImageLoader;->gc()V

    .line 154
    :goto_0
    return-void

    .line 130
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->imageProcessor:Lcom/jingdong/common/utils/MySimpleAdapter$ImageProcessor;

    invoke-static {p1}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->createInputWay(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Lcom/jingdong/common/utils/ImageUtil$InputWay;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/jingdong/common/utils/MySimpleAdapter$ImageProcessor;->create(Lcom/jingdong/common/utils/ImageUtil$InputWay;Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 139
    iget-object v2, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->imageState:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;->none()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    invoke-virtual {p0}, Lcom/jingdong/common/utils/adapter/ImageLoader;->gc()V

    goto :goto_0

    .line 142
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->imageState:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

    invoke-virtual {v2, v0}, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;->success(Landroid/graphics/Bitmap;)V

    .line 147
    iget-object v2, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    const-string v3, "loaded"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->putMoreParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    iget-object v2, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->imageProcessor:Lcom/jingdong/common/utils/MySimpleAdapter$ImageProcessor;

    iget-object v3, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    iget-object v4, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->imageState:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

    invoke-interface {v2, v3, v4}, Lcom/jingdong/common/utils/MySimpleAdapter$ImageProcessor;->show(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    invoke-virtual {p0}, Lcom/jingdong/common/utils/adapter/ImageLoader;->gc()V

    goto :goto_0

    .line 150
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #bitmapDigest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;
    :catchall_0
    move-exception v2

    .line 151
    invoke-virtual {p0}, Lcom/jingdong/common/utils/adapter/ImageLoader;->gc()V

    .line 152
    throw v2
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->imageState:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;->failure()V

    .line 100
    iget-object v0, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    const-string v1, "loaded"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->putMoreParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->imageProcessor:Lcom/jingdong/common/utils/MySimpleAdapter$ImageProcessor;

    iget-object v1, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    iget-object v2, p0, Lcom/jingdong/common/utils/adapter/ImageLoader;->imageState:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

    invoke-interface {v0, v1, v2}, Lcom/jingdong/common/utils/MySimpleAdapter$ImageProcessor;->show(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-virtual {p0}, Lcom/jingdong/common/utils/adapter/ImageLoader;->gc()V

    .line 106
    return-void

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    invoke-virtual {p0}, Lcom/jingdong/common/utils/adapter/ImageLoader;->gc()V

    .line 105
    throw v0
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 158
    return-void
.end method
