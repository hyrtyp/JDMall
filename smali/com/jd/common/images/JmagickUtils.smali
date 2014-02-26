.class public Lcom/jd/common/images/JmagickUtils;
.super Ljava/lang/Object;
.source "JmagickUtils.java"


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-string v0, "jmagick.systemclassloader"

    const-string v1, "no"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    const-class v0, Lcom/jd/common/images/JmagickUtils;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/jd/common/images/JmagickUtils;->log:Lorg/apache/commons/logging/Log;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forceResize(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 2
    .parameter "in"
    .parameter "out"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 31
    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cann\'t height or width is less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/jd/common/images/JmagickUtils;->resize(Ljava/lang/String;Ljava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method public static resize(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 1
    .parameter "in"
    .parameter "out"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/jd/common/images/JmagickUtils;->resize(Ljava/lang/String;Ljava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method private static resize(Ljava/lang/String;Ljava/lang/String;IIZ)Z
    .locals 16
    .parameter "in"
    .parameter "out"
    .parameter "width"
    .parameter "height"
    .parameter "proportion"

    .prologue
    .line 53
    if-gtz p2, :cond_0

    if-gtz p3, :cond_0

    .line 54
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Cann\'t both height and width is less than 0"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 56
    :cond_0
    const/4 v4, 0x0

    .line 57
    .local v4, image:Lmagick/MagickImage;
    const/4 v7, 0x0

    .line 59
    .local v7, scaled:Lmagick/MagickImage;
    :try_start_0
    new-instance v6, Lmagick/ImageInfo;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lmagick/ImageInfo;-><init>(Ljava/lang/String;)V

    .line 60
    .local v6, info:Lmagick/ImageInfo;
    new-instance v5, Lmagick/MagickImage;

    invoke-direct {v5, v6}, Lmagick/MagickImage;-><init>(Lmagick/ImageInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lmagick/MagickException; {:try_start_0 .. :try_end_0} :catch_2

    .line 61
    .end local v4           #image:Lmagick/MagickImage;
    .local v5, image:Lmagick/MagickImage;
    :try_start_1
    invoke-virtual {v5}, Lmagick/MagickImage;->getDimension()Ljava/awt/Dimension;

    move-result-object v2

    .line 62
    .local v2, dimension:Ljava/awt/Dimension;
    if-eqz p4, :cond_1

    .line 63
    if-gtz p2, :cond_4

    .line 64
    move/from16 v0, p3

    int-to-double v12, v0

    invoke-virtual {v2}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v14

    div-double/2addr v12, v14

    invoke-virtual {v2}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-int v0, v12

    move/from16 p2, v0

    .line 79
    :cond_1
    :goto_0
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v5, v0, v1}, Lmagick/MagickImage;->scaleImage(II)Lmagick/MagickImage;

    move-result-object v7

    .line 80
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lmagick/MagickImage;->setFileName(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v7, v6}, Lmagick/MagickImage;->writeImage(Lmagick/ImageInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lmagick/MagickException; {:try_start_1 .. :try_end_1} :catch_5

    move-result v12

    .line 85
    if-eqz v7, :cond_2

    .line 87
    :try_start_2
    invoke-virtual {v7}, Lmagick/MagickImage;->destroyImages()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 92
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    .line 94
    :try_start_3
    invoke-virtual {v5}, Lmagick/MagickImage;->destroyImages()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 81
    :cond_3
    :goto_2
    return v12

    .line 65
    :cond_4
    if-gtz p3, :cond_5

    .line 66
    move/from16 v0, p2

    int-to-double v12, v0

    :try_start_4
    invoke-virtual {v2}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v14

    div-double/2addr v12, v14

    invoke-virtual {v2}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-int v0, v12

    move/from16 p3, v0

    goto :goto_0

    .line 68
    :cond_5
    move/from16 v0, p2

    int-to-double v12, v0

    invoke-virtual {v2}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v14

    div-double v10, v12, v14

    .line 69
    .local v10, sw:D
    move/from16 v0, p3

    int-to-double v12, v0

    invoke-virtual {v2}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v14

    div-double v8, v12, v14

    .line 71
    .local v8, sh:D
    cmpl-double v12, v10, v8

    if-lez v12, :cond_6

    .line 72
    invoke-virtual {v2}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v12

    mul-double/2addr v12, v8

    double-to-int v0, v12

    move/from16 p2, v0

    goto :goto_0

    .line 73
    :cond_6
    cmpl-double v12, v8, v10

    if-lez v12, :cond_1

    .line 74
    invoke-virtual {v2}, Ljava/awt/Dimension;->getHeight()D
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lmagick/MagickException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-wide v12

    mul-double/2addr v12, v10

    double-to-int v0, v12

    move/from16 p3, v0

    goto :goto_0

    .line 88
    .end local v8           #sh:D
    .end local v10           #sw:D
    :catch_0
    move-exception v3

    .line 89
    .local v3, e:Ljava/lang/Exception;
    sget-object v13, Lcom/jd/common/images/JmagickUtils;->log:Lorg/apache/commons/logging/Log;

    const-string v14, "destroyImages error!"

    invoke-interface {v13, v14, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 95
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 96
    .restart local v3       #e:Ljava/lang/Exception;
    sget-object v13, Lcom/jd/common/images/JmagickUtils;->log:Lorg/apache/commons/logging/Log;

    const-string v14, "destroyImages error!"

    invoke-interface {v13, v14, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 82
    .end local v2           #dimension:Ljava/awt/Dimension;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #image:Lmagick/MagickImage;
    .end local v6           #info:Lmagick/ImageInfo;
    .restart local v4       #image:Lmagick/MagickImage;
    :catch_2
    move-exception v3

    .line 83
    .local v3, e:Lmagick/MagickException;
    :goto_3
    :try_start_5
    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "resize error!"

    invoke-direct {v12, v13, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 84
    .end local v3           #e:Lmagick/MagickException;
    :catchall_0
    move-exception v12

    .line 85
    :goto_4
    if-eqz v7, :cond_7

    .line 87
    :try_start_6
    invoke-virtual {v7}, Lmagick/MagickImage;->destroyImages()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 92
    :cond_7
    :goto_5
    if-eqz v4, :cond_8

    .line 94
    :try_start_7
    invoke-virtual {v4}, Lmagick/MagickImage;->destroyImages()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 99
    :cond_8
    :goto_6
    throw v12

    .line 88
    :catch_3
    move-exception v3

    .line 89
    .local v3, e:Ljava/lang/Exception;
    sget-object v13, Lcom/jd/common/images/JmagickUtils;->log:Lorg/apache/commons/logging/Log;

    const-string v14, "destroyImages error!"

    invoke-interface {v13, v14, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 95
    .end local v3           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 96
    .restart local v3       #e:Ljava/lang/Exception;
    sget-object v13, Lcom/jd/common/images/JmagickUtils;->log:Lorg/apache/commons/logging/Log;

    const-string v14, "destroyImages error!"

    invoke-interface {v13, v14, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 84
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #image:Lmagick/MagickImage;
    .restart local v5       #image:Lmagick/MagickImage;
    .restart local v6       #info:Lmagick/ImageInfo;
    :catchall_1
    move-exception v12

    move-object v4, v5

    .end local v5           #image:Lmagick/MagickImage;
    .restart local v4       #image:Lmagick/MagickImage;
    goto :goto_4

    .line 82
    .end local v4           #image:Lmagick/MagickImage;
    .restart local v5       #image:Lmagick/MagickImage;
    :catch_5
    move-exception v3

    move-object v4, v5

    .end local v5           #image:Lmagick/MagickImage;
    .restart local v4       #image:Lmagick/MagickImage;
    goto :goto_3
.end method
