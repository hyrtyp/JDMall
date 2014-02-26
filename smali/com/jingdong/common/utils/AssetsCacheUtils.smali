.class public Lcom/jingdong/common/utils/AssetsCacheUtils;
.super Ljava/lang/Object;
.source "AssetsCacheUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AssetsCacheUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBitmapOpt(I)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .parameter "length"

    .prologue
    const/4 v1, 0x1

    .line 88
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 89
    .local v0, opt:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 90
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 91
    const/high16 v1, 0x1

    if-le p0, v1, :cond_0

    .line 92
    const/4 v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 94
    :cond_0
    return-object v0
.end method

.method public static open(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .parameter "name"
    .parameter "extName"

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 76
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/MyApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jdcache"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 84
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readImage(Ljava/lang/String;II)Landroid/graphics/drawable/BitmapDrawable;
    .locals 8
    .parameter "name"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".image"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 32
    const/4 v0, 0x0

    .line 37
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/MyApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "jdcache"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 38
    .local v2, inputStream:Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 39
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/jingdong/common/utils/IOUtil;->readAsBytes(Ljava/io/InputStream;Lcom/jingdong/common/utils/IOUtil$ProgressListener;)[B

    move-result-object v1

    .line 41
    .local v1, inBytes:[B
    new-instance v3, Lcom/jingdong/common/utils/ImageUtil$InputWay;

    invoke-direct {v3}, Lcom/jingdong/common/utils/ImageUtil$InputWay;-><init>()V

    .line 42
    .local v3, inputWay:Lcom/jingdong/common/utils/ImageUtil$InputWay;
    invoke-virtual {v3, v1}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->setByteArray([B)V

    .line 44
    invoke-static {v3, p1, p2}, Lcom/jingdong/common/utils/ImageUtil;->createBitmap(Lcom/jingdong/common/utils/ImageUtil$InputWay;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v1           #inBytes:[B
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v3           #inputWay:Lcom/jingdong/common/utils/ImageUtil$InputWay;
    :goto_0
    return-object v4

    .line 51
    :catch_0
    move-exception v4

    :cond_0
    move-object v4, v5

    .line 58
    goto :goto_0
.end method
