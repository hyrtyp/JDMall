.class public Lcom/jingdong/common/utils/adapter/MyBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "MyBitmapDrawable.java"


# instance fields
.field private digest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

.field private isGc:Z

.field private subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "res"
    .parameter "subViewHolder"
    .parameter "digest"
    .parameter "bitmap"

    .prologue
    .line 52
    invoke-direct {p0, p1, p4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 53
    iput-object p2, p0, Lcom/jingdong/common/utils/adapter/MyBitmapDrawable;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    .line 54
    iput-object p3, p0, Lcom/jingdong/common/utils/adapter/MyBitmapDrawable;->digest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    .line 55
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 126
    :try_start_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/jingdong/common/utils/adapter/MyBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/jingdong/common/utils/adapter/MyBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 132
    iget-boolean v5, p0, Lcom/jingdong/common/utils/adapter/MyBitmapDrawable;->isGc:Z

    if-nez v5, :cond_0

    .line 141
    iget-object v5, p0, Lcom/jingdong/common/utils/adapter/MyBitmapDrawable;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    invoke-virtual {v5}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getAdapter()Lcom/jingdong/common/utils/SimpleBeanAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->getViewBinder()Lcom/jingdong/common/utils/SubViewBinder;

    move-result-object v4

    .line 142
    .local v4, svb:Lcom/jingdong/common/utils/SubViewBinder;
    instance-of v5, v4, Lcom/jingdong/common/utils/SimpleSubViewBinder;

    if-eqz v5, :cond_0

    move-object v2, v4

    .line 143
    check-cast v2, Lcom/jingdong/common/utils/SimpleSubViewBinder;

    .line 144
    .local v2, ssvb:Lcom/jingdong/common/utils/SimpleSubViewBinder;
    invoke-virtual {v2}, Lcom/jingdong/common/utils/SimpleSubViewBinder;->getSimpleImageProcessor()Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;

    move-result-object v1

    .line 145
    .local v1, processor:Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;
    iget-object v5, p0, Lcom/jingdong/common/utils/adapter/MyBitmapDrawable;->digest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    invoke-static {v5}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getImageState(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

    move-result-object v3

    .line 146
    .local v3, state:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;
    invoke-virtual {v3}, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;->none()V

    .line 147
    iget-object v5, p0, Lcom/jingdong/common/utils/adapter/MyBitmapDrawable;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    invoke-virtual {v1, v5, v3}, Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;->show(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)V

    .line 148
    invoke-virtual {p0}, Lcom/jingdong/common/utils/adapter/MyBitmapDrawable;->gc()V

    goto :goto_0
.end method

.method public gc()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lcom/jingdong/common/utils/adapter/MyBitmapDrawable;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    .line 199
    iput-object v0, p0, Lcom/jingdong/common/utils/adapter/MyBitmapDrawable;->digest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/utils/adapter/MyBitmapDrawable;->isGc:Z

    .line 201
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/graphics/drawable/BitmapDrawable;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/graphics/drawable/BitmapDrawable;->getGravity()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Landroid/graphics/drawable/BitmapDrawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/graphics/drawable/BitmapDrawable;->getTileModeX()Landroid/graphics/Shader$TileMode;

    move-result-object v0

    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Landroid/graphics/drawable/BitmapDrawable;->getTileModeY()Landroid/graphics/Shader$TileMode;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/BitmapDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 177
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Landroid/graphics/drawable/BitmapDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "bounds"

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 121
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 159
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 0
    .parameter "aa"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 73
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 165
    return-void
.end method

.method public setDither(Z)V
    .locals 0
    .parameter "dither"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 85
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 79
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .parameter "gravity"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 67
    return-void
.end method

.method public setTargetDensity(I)V
    .locals 0
    .parameter "density"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    .line 49
    return-void
.end method

.method public setTargetDensity(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/graphics/Canvas;)V

    .line 37
    return-void
.end method

.method public setTargetDensity(Landroid/util/DisplayMetrics;)V
    .locals 0
    .parameter "metrics"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 43
    return-void
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 103
    return-void
.end method

.method public setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 0
    .parameter "xmode"
    .parameter "ymode"

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 109
    return-void
.end method
