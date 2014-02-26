.class public Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;
.super Ljava/lang/Object;
.source "SimpleImageProcessor.java"

# interfaces
.implements Lcom/jingdong/common/utils/MySimpleAdapter$ImageProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/jingdong/common/utils/ImageUtil$InputWay;Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "inputWay"
    .parameter "bd"

    .prologue
    .line 19
    invoke-static {p1, p2}, Lcom/jingdong/common/utils/ImageUtil;->createBitmap(Lcom/jingdong/common/utils/ImageUtil$InputWay;Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected loadImage(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)V
    .locals 1
    .parameter "subViewHolder"
    .parameter "is"

    .prologue
    .line 79
    new-instance v0, Lcom/jingdong/common/utils/adapter/ImageLoader;

    invoke-direct {v0, p1, p2, p0}, Lcom/jingdong/common/utils/adapter/ImageLoader;-><init>(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;Lcom/jingdong/common/utils/MySimpleAdapter$ImageProcessor;)V

    .line 80
    invoke-virtual {v0}, Lcom/jingdong/common/utils/adapter/ImageLoader;->load()V

    .line 81
    return-void
.end method

.method protected provideUIRunnable(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)Lcom/jingdong/common/utils/adapter/UIRunnable;
    .locals 1
    .parameter "subViewHolder"
    .parameter "imageState"

    .prologue
    .line 84
    new-instance v0, Lcom/jingdong/common/utils/adapter/UIRunnable;

    invoke-direct {v0, p1, p2}, Lcom/jingdong/common/utils/adapter/UIRunnable;-><init>(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)V

    return-object v0
.end method

.method public show(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)V
    .locals 5
    .parameter "subViewHolder"
    .parameter "is"

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getSubView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getAdapter()Lcom/jingdong/common/utils/SimpleBeanAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->getAdapterHelper()Lcom/jingdong/common/utils/AdapterHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/utils/AdapterHelper;->getAdapterView()Landroid/widget/AdapterView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 36
    const-wide/16 v3, 0xc8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :cond_0
    :goto_0
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/MyApplication;->getUiThread()Ljava/lang/Thread;

    move-result-object v2

    .line 43
    .local v2, uiThread:Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v3, v2, :cond_5

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;->provideUIRunnable(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)Lcom/jingdong/common/utils/adapter/UIRunnable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/utils/adapter/UIRunnable;->run()V

    .line 55
    :goto_1
    const/4 v0, 0x0

    .line 56
    .local v0, loaded:Z
    const-string v3, "loaded"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getMoreParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 57
    .local v1, o:Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 58
    check-cast v1, Ljava/lang/Boolean;

    .end local v1           #o:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 61
    :cond_1
    if-eqz v0, :cond_2

    .line 62
    const-string v3, "loaded"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->putMoreParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    :cond_2
    invoke-virtual {p2}, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;->getState()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    invoke-virtual {p2}, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;->getState()I

    move-result v4

    if-ne v3, v4, :cond_4

    :cond_3
    if-nez v0, :cond_4

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;->loadImage(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)V

    .line 76
    :cond_4
    return-void

    .line 52
    .end local v0           #loaded:Z
    :cond_5
    invoke-virtual {p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getAdapter()Lcom/jingdong/common/utils/SimpleBeanAdapter;

    move-result-object v3

    invoke-virtual {p0, p1, p2}, Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;->provideUIRunnable(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)Lcom/jingdong/common/utils/adapter/UIRunnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->UIWorkCentralized(Lcom/jingdong/common/utils/adapter/UIRunnable;)V

    goto :goto_1

    .line 37
    .end local v2           #uiThread:Ljava/lang/Thread;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
