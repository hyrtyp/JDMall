.class public Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;
.super Ljava/lang/Object;
.source "BitmapDiskCache.java"


# static fields
.field private static final DEFAULT_DIR:Ljava/lang/String; = "img"

.field private static instance:Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;


# instance fields
.field private final cacheDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .parameter "cacheDir"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;->cacheDir:Ljava/io/File;

    .line 60
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 61
    return-void
.end method

.method private getCachedFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "key"

    .prologue
    .line 125
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;->cacheDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDefaultInstance(Landroid/content/Context;)Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;
    .locals 4
    .parameter "ctx"

    .prologue
    .line 45
    sget-object v1, Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;->instance:Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 47
    .local v0, cacheDir:Ljava/io/File;
    if-eqz v0, :cond_1

    .line 48
    new-instance v1, Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;

    new-instance v2, Ljava/io/File;

    const-string v3, "img"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;-><init>(Ljava/io/File;)V

    sput-object v1, Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;->instance:Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;

    .line 53
    .end local v0           #cacheDir:Ljava/io/File;
    :cond_0
    :goto_0
    sget-object v1, Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;->instance:Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;

    return-object v1

    .line 50
    .restart local v0       #cacheDir:Ljava/io/File;
    :cond_1
    const-string v1, "External cache dir null. Lacking \'android.permission.WRITE_EXTERNAL_STORAGE\' permission?"

    invoke-static {v1}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)Landroid/util/Pair;
    .locals 10
    .parameter "key"
    .parameter "reqWidth"
    .parameter "reqHeight"
    .parameter "config"
    .parameter "inBitmap"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/graphics/Bitmap$Config;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, bmData:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;>;"
    invoke-direct {p0, p1}, Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 97
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 98
    const/4 v4, 0x0

    .line 100
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v4           #fis:Ljava/io/FileInputStream;
    .local v5, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v5}, Lcom/jd/droidlib/util/IOUtils;->readToByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 102
    .local v1, data:[B
    invoke-static {v1, p2, p3, p4, p5}, Lcom/jd/droidlib/inner/BitmapFactoryUtils;->decodeScaled([BIILandroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)Landroid/util/Pair;

    move-result-object v0

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    new-array v6, v9, [Ljava/io/Closeable;

    .line 108
    aput-object v5, v6, v8

    invoke-static {v6}, Lcom/jd/droidlib/util/IOUtils;->silentlyClose([Ljava/io/Closeable;)V

    .line 111
    .end local v1           #data:[B
    .end local v5           #fis:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v6, "DiskCache "

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_1

    const-string v6, "miss"

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for \'%s\'."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    .line 112
    aput-object p1, v7, v8

    .line 111
    invoke-static {v6, v7}, Lcom/jd/droidlib/util/L;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    return-object v0

    .line 105
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 106
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-static {v2}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    new-array v6, v9, [Ljava/io/Closeable;

    .line 108
    aput-object v4, v6, v8

    invoke-static {v6}, Lcom/jd/droidlib/util/IOUtils;->silentlyClose([Ljava/io/Closeable;)V

    goto :goto_0

    .line 107
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    new-array v7, v9, [Ljava/io/Closeable;

    .line 108
    aput-object v4, v7, v8

    invoke-static {v7}, Lcom/jd/droidlib/util/IOUtils;->silentlyClose([Ljava/io/Closeable;)V

    .line 109
    throw v6

    .line 111
    .end local v4           #fis:Ljava/io/FileInputStream;
    :cond_1
    const-string v6, "hit"

    goto :goto_1

    .line 107
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 105
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public purgeFilesAccessedBefore(J)V
    .locals 4
    .parameter "timestamp"

    .prologue
    .line 117
    iget-object v1, p0, Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;->cacheDir:Ljava/io/File;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/jd/droidlib/util/IOUtils;->getFileList(Ljava/io/File;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 122
    return-void

    .line 117
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 118
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/util/Pair;)Z
    .locals 6
    .parameter "key"
    .parameter "bm"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Bitmap$CompressFormat;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, cacheFormat:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/Integer;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 67
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap$CompressFormat;

    iget-object v3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 68
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 72
    new-array v3, v5, [Ljava/io/Closeable;

    .line 73
    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/jd/droidlib/util/IOUtils;->silentlyClose([Ljava/io/Closeable;)V

    .line 71
    :goto_0
    return v2

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    new-array v2, v5, [Ljava/io/Closeable;

    .line 73
    aput-object v0, v2, v4

    invoke-static {v2}, Lcom/jd/droidlib/util/IOUtils;->silentlyClose([Ljava/io/Closeable;)V

    move v2, v4

    .line 71
    goto :goto_0

    .line 72
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    new-array v3, v5, [Ljava/io/Closeable;

    .line 73
    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/jd/droidlib/util/IOUtils;->silentlyClose([Ljava/io/Closeable;)V

    .line 74
    throw v2
.end method

.method public put(Ljava/lang/String;[B)Z
    .locals 8
    .parameter "key"
    .parameter "bmArr"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 78
    invoke-direct {p0, p1}, Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 79
    .local v3, file:Ljava/io/File;
    const/4 v0, 0x0

    .line 81
    .local v0, bos:Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 82
    const/16 v7, 0x2000

    .line 81
    invoke-direct {v1, v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .local v1, bos:Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    new-array v6, v4, [Ljava/io/Closeable;

    .line 89
    aput-object v1, v6, v5

    invoke-static {v6}, Lcom/jd/droidlib/util/IOUtils;->silentlyClose([Ljava/io/Closeable;)V

    move-object v0, v1

    .line 87
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    :goto_0
    return v4

    .line 85
    :catch_0
    move-exception v2

    .line 86
    .local v2, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-static {v2}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    new-array v4, v4, [Ljava/io/Closeable;

    .line 89
    aput-object v0, v4, v5

    invoke-static {v4}, Lcom/jd/droidlib/util/IOUtils;->silentlyClose([Ljava/io/Closeable;)V

    move v4, v5

    .line 87
    goto :goto_0

    .line 88
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_2
    new-array v4, v4, [Ljava/io/Closeable;

    .line 89
    aput-object v0, v4, v5

    invoke-static {v4}, Lcom/jd/droidlib/util/IOUtils;->silentlyClose([Ljava/io/Closeable;)V

    .line 90
    throw v6

    .line 88
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_2

    .line 85
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method
