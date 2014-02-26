.class public Lcom/jingdong/common/entity/DiscussImage;
.super Ljava/lang/Object;
.source "DiscussImage.java"


# static fields
.field static final LIMIT_IMAGE_SIZE:J = 0xc800L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private path:Landroid/net/Uri;

.field private picture:Landroid/graphics/drawable/BitmapDrawable;

.field private rotate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/jingdong/common/entity/DiscussImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/common/entity/DiscussImage;->TAG:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDiscussImage(Landroid/content/Context;Landroid/net/Uri;)Lcom/jingdong/common/entity/DiscussImage;
    .locals 22
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 47
    const/4 v9, 0x0

    .line 134
    :goto_0
    return-object v9

    .line 51
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 52
    .local v19, resolver:Landroid/content/ContentResolver;
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 53
    .local v16, opts:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jingdong/common/entity/DiscussImage;->getFileSampleSize(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 55
    const/4 v2, 0x0

    .line 56
    .local v2, bm:Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 57
    .local v12, inputStream:Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 58
    .local v13, inputStream2:Ljava/io/InputStream;
    const/16 v20, 0x0

    .line 61
    .local v20, rotate:I
    :try_start_0
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/drew/imaging/jpeg/JpegProcessingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v12

    .line 64
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, v16

    invoke-static {v12, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/high16 v4, 0x42c8

    invoke-static {v4}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v4

    const/high16 v5, 0x42c8

    invoke-static {v5}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/drew/imaging/jpeg/JpegProcessingException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 71
    :goto_1
    :try_start_2
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v13

    .line 72
    invoke-static {v13}, Lcom/drew/imaging/jpeg/JpegMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object v15

    .line 73
    .local v15, metadata:Lcom/drew/metadata/Metadata;
    const-class v3, Lcom/drew/metadata/exif/ExifDirectory;

    invoke-virtual {v15, v3}, Lcom/drew/metadata/Metadata;->getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v11

    .line 74
    .local v11, exif:Lcom/drew/metadata/Directory;
    const/16 v3, 0x112

    invoke-virtual {v11, v3}, Lcom/drew/metadata/Directory;->getDescription(I)Ljava/lang/String;

    move-result-object v17

    .line 79
    .local v17, orientationAll:Ljava/lang/String;
    if-eqz v17, :cond_1

    .line 80
    const-string v3, "(\\d{1,3})"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v18

    .line 81
    .local v18, pattern:Ljava/util/regex/Pattern;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 82
    .local v14, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    .line 84
    .local v21, rotateStr:Ljava/lang/String;
    if-eqz v21, :cond_1

    .line 85
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 90
    .end local v14           #matcher:Ljava/util/regex/Matcher;
    .end local v18           #pattern:Ljava/util/regex/Pattern;
    .end local v21           #rotateStr:Ljava/lang/String;
    :cond_1
    if-eqz v20, :cond_2

    .line 91
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 92
    .local v7, matrix:Landroid/graphics/Matrix;
    move/from16 v0, v20

    int-to-float v3, v0

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->setRotate(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/drew/imaging/jpeg/JpegProcessingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    .line 95
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/drew/imaging/jpeg/JpegProcessingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v2

    .line 112
    .end local v7           #matrix:Landroid/graphics/Matrix;
    :cond_2
    :goto_2
    if-eqz v12, :cond_3

    .line 114
    :try_start_4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    .line 119
    :cond_3
    :goto_3
    if-eqz v13, :cond_4

    .line 121
    :try_start_5
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b

    .line 129
    .end local v11           #exif:Lcom/drew/metadata/Directory;
    .end local v15           #metadata:Lcom/drew/metadata/Metadata;
    .end local v17           #orientationAll:Ljava/lang/String;
    :cond_4
    :goto_4
    new-instance v9, Lcom/jingdong/common/entity/DiscussImage;

    invoke-direct {v9}, Lcom/jingdong/common/entity/DiscussImage;-><init>()V

    .line 130
    .local v9, discussImage:Lcom/jingdong/common/entity/DiscussImage;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v3}, Lcom/jingdong/common/entity/DiscussImage;->setPicture(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 131
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/jingdong/common/entity/DiscussImage;->setPath(Landroid/net/Uri;)V

    .line 132
    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/jingdong/common/entity/DiscussImage;->setRotate(I)V

    goto/16 :goto_0

    .line 65
    .end local v9           #discussImage:Lcom/jingdong/common/entity/DiscussImage;
    :catch_0
    move-exception v10

    .line 66
    .local v10, e:Ljava/lang/Throwable;
    :try_start_6
    invoke-static {}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getLruBitmapCache()Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cleanMost()V

    .line 67
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-static {v12, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/high16 v4, 0x42c8

    invoke-static {v4}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v4

    const/high16 v5, 0x42c8

    invoke-static {v5}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_1

    .line 96
    .end local v10           #e:Ljava/lang/Throwable;
    .restart local v7       #matrix:Landroid/graphics/Matrix;
    .restart local v11       #exif:Lcom/drew/metadata/Directory;
    .restart local v15       #metadata:Lcom/drew/metadata/Metadata;
    .restart local v17       #orientationAll:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 97
    .restart local v10       #e:Ljava/lang/Throwable;
    invoke-static {}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getLruBitmapCache()Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cleanMost()V

    .line 98
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/drew/imaging/jpeg/JpegProcessingException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v2

    goto :goto_2

    .line 102
    .end local v7           #matrix:Landroid/graphics/Matrix;
    .end local v10           #e:Ljava/lang/Throwable;
    .end local v11           #exif:Lcom/drew/metadata/Directory;
    .end local v15           #metadata:Lcom/drew/metadata/Metadata;
    .end local v17           #orientationAll:Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 112
    if-eqz v12, :cond_5

    .line 114
    :try_start_7
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 119
    :cond_5
    :goto_5
    if-eqz v13, :cond_4

    .line 121
    :try_start_8
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4

    .line 122
    :catch_3
    move-exception v10

    .line 123
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 115
    .end local v10           #e:Ljava/io/IOException;
    :catch_4
    move-exception v10

    .line 116
    .restart local v10       #e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 106
    .end local v10           #e:Ljava/io/IOException;
    :catch_5
    move-exception v10

    .line 112
    .local v10, e:Ljava/lang/Throwable;
    if-eqz v12, :cond_6

    .line 114
    :try_start_9
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 119
    .end local v10           #e:Ljava/lang/Throwable;
    :cond_6
    :goto_6
    if-eqz v13, :cond_7

    .line 121
    :try_start_a
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 110
    :cond_7
    :goto_7
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 115
    .restart local v10       #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v10

    .line 116
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 122
    .end local v10           #e:Ljava/io/IOException;
    :catch_7
    move-exception v10

    .line 123
    .restart local v10       #e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 111
    .end local v10           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 112
    if-eqz v12, :cond_8

    .line 114
    :try_start_b
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 119
    :cond_8
    :goto_8
    if-eqz v13, :cond_9

    .line 121
    :try_start_c
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 127
    :cond_9
    :goto_9
    throw v3

    .line 115
    :catch_8
    move-exception v10

    .line 116
    .restart local v10       #e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 122
    .end local v10           #e:Ljava/io/IOException;
    :catch_9
    move-exception v10

    .line 123
    .restart local v10       #e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 115
    .end local v10           #e:Ljava/io/IOException;
    .restart local v11       #exif:Lcom/drew/metadata/Directory;
    .restart local v15       #metadata:Lcom/drew/metadata/Metadata;
    .restart local v17       #orientationAll:Ljava/lang/String;
    :catch_a
    move-exception v10

    .line 116
    .restart local v10       #e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 122
    .end local v10           #e:Ljava/io/IOException;
    :catch_b
    move-exception v10

    .line 123
    .restart local v10       #e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4
.end method

.method private static getFileSampleSize(Ljava/lang/String;)I
    .locals 5
    .parameter "filePath"

    .prologue
    .line 145
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0xc800

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 149
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method


# virtual methods
.method public getPath()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/jingdong/common/entity/DiscussImage;->path:Landroid/net/Uri;

    return-object v0
.end method

.method public getPicture()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/jingdong/common/entity/DiscussImage;->picture:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getRotate()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/jingdong/common/entity/DiscussImage;->rotate:I

    return v0
.end method

.method public setPath(Landroid/net/Uri;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/jingdong/common/entity/DiscussImage;->path:Landroid/net/Uri;

    .line 170
    return-void
.end method

.method public setPicture(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .parameter "picture"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/jingdong/common/entity/DiscussImage;->picture:Landroid/graphics/drawable/BitmapDrawable;

    .line 162
    return-void
.end method

.method public setRotate(I)V
    .locals 0
    .parameter "rotate"

    .prologue
    .line 177
    iput p1, p0, Lcom/jingdong/common/entity/DiscussImage;->rotate:I

    .line 178
    return-void
.end method
