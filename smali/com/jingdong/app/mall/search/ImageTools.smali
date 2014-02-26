.class public Lcom/jingdong/app/mall/search/ImageTools;
.super Ljava/lang/Object;
.source "ImageTools.java"


# static fields
.field private static count:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    sput v0, Lcom/jingdong/app/mall/search/ImageTools;->count:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFileSizeIsBig(Ljava/io/File;)Z
    .locals 5
    .parameter "file"

    .prologue
    .line 32
    const/high16 v0, 0x7d

    .line 33
    .local v0, LIMIT_IMAGE_SIZE:I
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x7d0000

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 34
    const/4 v1, 0x1

    .line 36
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static correctOrientation(Ljava/io/File;)I
    .locals 8
    .parameter "file"

    .prologue
    .line 126
    const/4 v5, 0x0

    .line 129
    .local v5, rotate:I
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v7}, Lcom/drew/imaging/jpeg/JpegMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object v2

    .line 130
    .local v2, metadata:Lcom/drew/metadata/Metadata;
    const-class v7, Lcom/drew/metadata/exif/ExifDirectory;

    invoke-virtual {v2, v7}, Lcom/drew/metadata/Metadata;->getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v0

    .line 131
    .local v0, exif:Lcom/drew/metadata/Directory;
    const/16 v7, 0x112

    invoke-virtual {v0, v7}, Lcom/drew/metadata/Directory;->getDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, orientationAll:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 133
    const-string v7, "(\\d{1,3})"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 134
    .local v4, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 135
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 136
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, rotateStr:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 138
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 148
    .end local v0           #exif:Lcom/drew/metadata/Directory;
    .end local v1           #matcher:Ljava/util/regex/Matcher;
    .end local v2           #metadata:Lcom/drew/metadata/Metadata;
    .end local v3           #orientationAll:Ljava/lang/String;
    .end local v4           #pattern:Ljava/util/regex/Pattern;
    .end local v6           #rotateStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 143
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public static reduce(Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "res"
    .parameter "id"
    .parameter "inSampleSize"

    .prologue
    const/4 v4, 0x1

    .line 239
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 240
    .local v3, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 241
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 242
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 243
    const/16 v5, 0x4000

    new-array v5, v5, [B

    iput-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 244
    if-gtz p2, :cond_0

    move p2, v4

    .end local p2
    :cond_0
    iput p2, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 246
    const/4 v0, 0x0

    .line 251
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 271
    :cond_1
    :goto_0
    return-object v0

    .line 252
    :catch_0
    move-exception v1

    .line 260
    .local v1, e:Ljava/lang/Throwable;
    if-nez v0, :cond_1

    .line 261
    :try_start_1
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 262
    invoke-static {p0, p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 264
    :catch_1
    move-exception v2

    .line 265
    .local v2, e2:Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static reduce(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "file"

    .prologue
    const/4 v13, 0x1

    .line 163
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 164
    .local v8, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v13, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 165
    const/4 v3, 0x0

    .line 170
    .local v3, fs:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v3           #fs:Ljava/io/FileInputStream;
    .local v4, fs:Ljava/io/FileInputStream;
    const/4 v11, 0x0

    :try_start_1
    invoke-static {v4, v11, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a

    .line 177
    if-eqz v4, :cond_4

    .line 179
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 180
    const/4 v3, 0x0

    .line 191
    .end local v4           #fs:Ljava/io/FileInputStream;
    .restart local v3       #fs:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    iget v11, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v12, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 192
    .local v5, min:I
    const/4 v10, 0x1

    .line 198
    .local v10, sampleSize:I
    div-int/lit16 v10, v5, 0x258

    .line 200
    if-gtz v10, :cond_1

    .line 201
    const/4 v10, 0x1

    .line 202
    :cond_1
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 203
    .local v9, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x0

    iput-boolean v11, v9, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 204
    iput-boolean v13, v9, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 205
    iput-boolean v13, v9, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 206
    const/16 v11, 0x4000

    new-array v11, v11, [B

    iput-object v11, v9, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 207
    iput v10, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 212
    .local v6, nfs:Ljava/io/FileInputStream;
    :try_start_3
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 213
    .end local v6           #nfs:Ljava/io/FileInputStream;
    .local v7, nfs:Ljava/io/FileInputStream;
    const/4 v11, 0x0

    :try_start_4
    invoke-static {v7, v11, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_9

    move-result-object v0

    .line 227
    if-eqz v7, :cond_7

    .line 229
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    move-object v6, v7

    .line 235
    .end local v7           #nfs:Ljava/io/FileInputStream;
    .restart local v6       #nfs:Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    return-object v0

    .line 172
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #min:I
    .end local v6           #nfs:Ljava/io/FileInputStream;
    .end local v9           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v10           #sampleSize:I
    :catch_0
    move-exception v11

    .line 177
    :goto_2
    if-eqz v3, :cond_0

    .line 179
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 180
    const/4 v3, 0x0

    goto :goto_0

    .line 181
    :catch_1
    move-exception v1

    .line 182
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 176
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 177
    :goto_3
    if-eqz v3, :cond_3

    .line 179
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 180
    const/4 v3, 0x0

    .line 185
    :cond_3
    :goto_4
    throw v11

    .line 181
    :catch_2
    move-exception v1

    .line 182
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 181
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fs:Ljava/io/FileInputStream;
    .restart local v4       #fs:Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .line 182
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    move-object v3, v4

    .end local v4           #fs:Ljava/io/FileInputStream;
    .restart local v3       #fs:Ljava/io/FileInputStream;
    goto :goto_0

    .line 214
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #min:I
    .restart local v6       #nfs:Ljava/io/FileInputStream;
    .restart local v9       #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v10       #sampleSize:I
    :catch_4
    move-exception v1

    .line 219
    .local v1, e:Ljava/lang/Throwable;
    :goto_5
    if-nez v0, :cond_5

    .line 220
    :try_start_8
    iget v11, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 221
    const/4 v11, 0x0

    invoke-static {v6, v11, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    move-result-object v0

    .line 227
    :cond_5
    :goto_6
    if-eqz v6, :cond_2

    .line 229
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_1

    .line 230
    :catch_5
    move-exception v1

    .line 231
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 223
    .local v1, e:Ljava/lang/Throwable;
    :catch_6
    move-exception v2

    .line 224
    .local v2, e2:Ljava/lang/Throwable;
    :try_start_a
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_6

    .line 226
    .end local v1           #e:Ljava/lang/Throwable;
    .end local v2           #e2:Ljava/lang/Throwable;
    :catchall_1
    move-exception v11

    .line 227
    :goto_7
    if-eqz v6, :cond_6

    .line 229
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 234
    :cond_6
    :goto_8
    throw v11

    .line 230
    :catch_7
    move-exception v1

    .line 231
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 230
    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #nfs:Ljava/io/FileInputStream;
    .restart local v7       #nfs:Ljava/io/FileInputStream;
    :catch_8
    move-exception v1

    .line 231
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1           #e:Ljava/io/IOException;
    :cond_7
    move-object v6, v7

    .end local v7           #nfs:Ljava/io/FileInputStream;
    .restart local v6       #nfs:Ljava/io/FileInputStream;
    goto :goto_1

    .line 226
    .end local v6           #nfs:Ljava/io/FileInputStream;
    .restart local v7       #nfs:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v11

    move-object v6, v7

    .end local v7           #nfs:Ljava/io/FileInputStream;
    .restart local v6       #nfs:Ljava/io/FileInputStream;
    goto :goto_7

    .line 214
    .end local v6           #nfs:Ljava/io/FileInputStream;
    .restart local v7       #nfs:Ljava/io/FileInputStream;
    :catch_9
    move-exception v1

    move-object v6, v7

    .end local v7           #nfs:Ljava/io/FileInputStream;
    .restart local v6       #nfs:Ljava/io/FileInputStream;
    goto :goto_5

    .line 176
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #fs:Ljava/io/FileInputStream;
    .end local v5           #min:I
    .end local v6           #nfs:Ljava/io/FileInputStream;
    .end local v9           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v10           #sampleSize:I
    .restart local v4       #fs:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v11

    move-object v3, v4

    .end local v4           #fs:Ljava/io/FileInputStream;
    .restart local v3       #fs:Ljava/io/FileInputStream;
    goto :goto_3

    .line 172
    .end local v3           #fs:Ljava/io/FileInputStream;
    .restart local v4       #fs:Ljava/io/FileInputStream;
    :catch_a
    move-exception v11

    move-object v3, v4

    .end local v4           #fs:Ljava/io/FileInputStream;
    .restart local v3       #fs:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static zoomImg(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "file"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/jingdong/app/mall/search/ImageTools;->reduce(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 47
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 48
    const/4 v1, 0x0

    .line 116
    :goto_0
    return-object v1

    .line 51
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 52
    .local v3, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 54
    .local v4, height:I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 59
    .local v8, min:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 63
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-static {p0}, Lcom/jingdong/app/mall/search/ImageTools;->correctOrientation(Ljava/io/File;)I

    move-result v9

    .line 67
    .local v9, rotate:I
    const/4 v7, 0x0

    .line 68
    .local v7, isNewBitmap:Z
    sparse-switch v9, :sswitch_data_0

    .line 97
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    .line 102
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    :cond_2
    :goto_2
    const/4 p0, 0x0

    move-object v1, v0

    .line 116
    goto :goto_0

    .line 71
    :sswitch_0
    sget v1, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->category_selected_index:I

    if-nez v1, :cond_3

    if-le v3, v4, :cond_3

    .line 72
    const/high16 v1, 0x42b4

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 73
    const/4 v7, 0x1

    .line 77
    goto :goto_1

    :cond_3
    const/16 v1, 0xb4

    if-ne v9, v1, :cond_1

    .line 78
    int-to-float v1, v9

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 79
    const/4 v7, 0x1

    .line 81
    goto :goto_1

    .line 84
    :sswitch_1
    int-to-float v1, v9

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 85
    const/4 v7, 0x1

    .line 86
    goto :goto_1

    .line 106
    :catch_0
    move-exception v1

    goto :goto_2

    .line 68
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method
