.class public Lcom/jd/common/images/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field public static final POS_TYPE_CENTER:I = 0x5

.field public static final POS_TYPE_LEFT_BOTTOM:I = 0x3

.field public static final POS_TYPE_LEFT_TOP:I = 0x1

.field public static final POS_TYPE_RIGHT_BOTTOM:I = 0x4

.field public static final POS_TYPE_RIGHT_TOP:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bufferedBothMark(Ljava/awt/Image;Ljava/lang/String;Ljava/lang/String;III)Ljava/awt/image/BufferedImage;
    .locals 18
    .parameter "theImg"
    .parameter "watermark"
    .parameter "text"
    .parameter "x"
    .parameter "y"
    .parameter "align"

    .prologue
    .line 68
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v5

    .line 69
    .local v5, sourceWidth:I
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v4

    .line 72
    .local v4, sourceHeight:I
    new-instance v2, Ljava/awt/image/BufferedImage;

    const/4 v14, 0x1

    invoke-direct {v2, v5, v4, v14}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 74
    .local v2, bimage:Ljava/awt/image/BufferedImage;
    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v3

    .line 76
    .local v3, graphics2D:Ljava/awt/Graphics2D;
    sget-object v14, Ljava/awt/Color;->white:Ljava/awt/Color;

    invoke-virtual {v3, v14}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    .line 78
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v14, v15, v1}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    .line 79
    const/16 v14, 0xa

    const/high16 v15, 0x3f80

    invoke-static {v14, v15}, Ljava/awt/AlphaComposite;->getInstance(IF)Ljava/awt/AlphaComposite;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    .line 80
    if-eqz p1, :cond_3

    .line 81
    new-instance v8, Ljavax/swing/ImageIcon;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljavax/swing/ImageIcon;-><init>(Ljava/lang/String;)V

    .line 82
    .local v8, waterIcon:Ljavax/swing/ImageIcon;
    invoke-virtual {v8}, Ljavax/swing/ImageIcon;->getImage()Ljava/awt/Image;

    move-result-object v9

    .line 84
    .local v9, waterImg:Ljava/awt/Image;
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v11

    .line 85
    .local v11, waterImgWidth:I
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v10

    .line 88
    .local v10, waterImgHeight:I
    move/from16 v0, p3

    move/from16 v1, p5

    invoke-static {v5, v11, v0, v1}, Lcom/jd/common/images/ImageUtils;->calcWatermarkPosX(IIII)I

    move-result v12

    .line 89
    .local v12, waterX:I
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v4, v10, v0, v1}, Lcom/jd/common/images/ImageUtils;->calcWatermarkPosY(IIII)I

    move-result v13

    .line 91
    .local v13, waterY:I
    const/4 v14, 0x0

    invoke-virtual {v3, v9, v12, v13, v14}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    .line 93
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1

    .line 94
    new-instance v14, Ljava/awt/Font;

    const-string v15, "\u5b8b\u4f53"

    const/16 v16, 0x0

    add-int/lit8 v17, v10, -0xa

    invoke-direct/range {v14 .. v17}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v14}, Ljava/awt/Graphics2D;->setFont(Ljava/awt/Font;)V

    .line 96
    const/4 v14, 0x1

    move/from16 v0, p5

    if-eq v0, v14, :cond_0

    const/4 v14, 0x3

    move/from16 v0, p5

    if-ne v0, v14, :cond_2

    .line 97
    :cond_0
    add-int v14, v12, v11

    add-int v6, v14, p3

    .line 98
    .local v6, textX:I
    add-int v14, v13, v10

    add-int/lit8 v7, v14, -0xa

    .line 104
    .local v7, textY:I
    :goto_0
    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v6, v7}, Ljava/awt/Graphics2D;->drawString(Ljava/lang/String;II)V

    .line 115
    .end local v6           #textX:I
    .end local v7           #textY:I
    .end local v8           #waterIcon:Ljavax/swing/ImageIcon;
    .end local v9           #waterImg:Ljava/awt/Image;
    .end local v10           #waterImgHeight:I
    .end local v11           #waterImgWidth:I
    .end local v12           #waterX:I
    .end local v13           #waterY:I
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/awt/Graphics2D;->dispose()V

    .line 116
    return-object v2

    .line 100
    .restart local v8       #waterIcon:Ljavax/swing/ImageIcon;
    .restart local v9       #waterImg:Ljava/awt/Image;
    .restart local v10       #waterImgHeight:I
    .restart local v11       #waterImgWidth:I
    .restart local v12       #waterX:I
    .restart local v13       #waterY:I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    mul-int/2addr v14, v10

    sub-int v14, v12, v14

    sub-int v6, v14, p3

    .line 101
    .restart local v6       #textX:I
    add-int/lit8 v14, v10, -0xa

    add-int v7, v13, v14

    .restart local v7       #textY:I
    goto :goto_0

    .line 108
    .end local v6           #textX:I
    .end local v7           #textY:I
    .end local v8           #waterIcon:Ljavax/swing/ImageIcon;
    .end local v9           #waterImg:Ljava/awt/Image;
    .end local v10           #waterImgHeight:I
    .end local v11           #waterImgWidth:I
    .end local v12           #waterX:I
    .end local v13           #waterY:I
    :cond_3
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1

    .line 109
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    mul-int/lit8 v14, v14, 0xf

    move/from16 v0, p3

    move/from16 v1, p5

    invoke-static {v5, v14, v0, v1}, Lcom/jd/common/images/ImageUtils;->calcWatermarkPosX(IIII)I

    move-result v12

    .line 110
    .restart local v12       #waterX:I
    const/16 v14, 0xf

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v4, v14, v0, v1}, Lcom/jd/common/images/ImageUtils;->calcWatermarkPosY(IIII)I

    move-result v13

    .line 111
    .restart local v13       #waterY:I
    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v12, v13}, Ljava/awt/Graphics2D;->drawString(Ljava/lang/String;II)V

    goto :goto_1
.end method

.method private static calcWatermarkPosX(IIII)I
    .locals 2
    .parameter "sourceImageWidth"
    .parameter "waterImgWidth"
    .parameter "x"
    .parameter "type"

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, result:I
    packed-switch p3, :pswitch_data_0

    .line 146
    :goto_0
    if-ltz v0, :cond_0

    .line 147
    :goto_1
    return v0

    .line 135
    :pswitch_0
    move v0, p2

    .line 136
    goto :goto_0

    .line 139
    :pswitch_1
    add-int v1, p1, p2

    sub-int v0, p0, v1

    .line 140
    goto :goto_0

    .line 142
    :pswitch_2
    sub-int v1, p0, p1

    div-int/lit8 v0, v1, 0x2

    goto :goto_0

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static calcWatermarkPosY(IIII)I
    .locals 2
    .parameter "sourceImageHeight"
    .parameter "waterImgHeight"
    .parameter "y"
    .parameter "type"

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, result:I
    packed-switch p3, :pswitch_data_0

    .line 177
    :goto_0
    if-ltz v0, :cond_0

    .line 178
    :goto_1
    return v0

    .line 166
    :pswitch_0
    move v0, p2

    .line 167
    goto :goto_0

    .line 170
    :pswitch_1
    add-int v1, p1, p2

    sub-int v0, p0, v1

    .line 171
    goto :goto_0

    .line 173
    :pswitch_2
    sub-int v1, p0, p1

    div-int/lit8 v0, v1, 0x2

    goto :goto_0

    .line 177
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static crop(Ljava/awt/image/BufferedImage;Ljava/awt/Rectangle;)Ljava/awt/image/BufferedImage;
    .locals 4
    .parameter "srcImage"
    .parameter "rect"

    .prologue
    .line 331
    iget v0, p1, Ljava/awt/Rectangle;->x:I

    iget v1, p1, Ljava/awt/Rectangle;->y:I

    iget v2, p1, Ljava/awt/Rectangle;->width:I

    iget v3, p1, Ljava/awt/Rectangle;->height:I

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/awt/image/BufferedImage;->getSubimage(IIII)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public static generateMark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Z
    .locals 8
    .parameter "sourceFile"
    .parameter "watermark"
    .parameter "targetFile"
    .parameter "x"
    .parameter "y"
    .parameter "align"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v7, Ljavax/swing/ImageIcon;

    invoke-direct {v7, p0}, Ljavax/swing/ImageIcon;-><init>(Ljava/lang/String;)V

    .line 49
    .local v7, imageIcon:Ljavax/swing/ImageIcon;
    invoke-virtual {v7}, Ljavax/swing/ImageIcon;->getImage()Ljava/awt/Image;

    move-result-object v0

    .line 50
    .local v0, theImg:Ljava/awt/Image;
    const/4 v2, 0x0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/jd/common/images/ImageUtils;->bufferedBothMark(Ljava/awt/Image;Ljava/lang/String;Ljava/lang/String;III)Ljava/awt/image/BufferedImage;

    move-result-object v6

    .line 51
    .local v6, bimage:Ljava/awt/image/BufferedImage;
    invoke-static {v6, p2}, Lcom/jd/common/images/ImageUtils;->write(Ljava/awt/image/BufferedImage;Ljava/lang/String;)V

    .line 52
    const/4 v1, 0x1

    return v1
.end method

.method public static getBufferedImage(Ljava/lang/String;)Ljava/awt/image/BufferedImage;
    .locals 5
    .parameter "picFrom"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    const/4 v1, 0x0

    .line 437
    .local v1, input:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 439
    .local v0, bufferedImage:Ljava/awt/image/BufferedImage;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    .end local v1           #input:Ljava/io/InputStream;
    .local v2, input:Ljava/io/InputStream;
    :try_start_1
    invoke-static {v2}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 442
    if-eqz v2, :cond_0

    .line 444
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 450
    :cond_0
    :goto_0
    return-object v0

    .line 441
    .end local v2           #input:Ljava/io/InputStream;
    .restart local v1       #input:Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    .line 442
    :goto_1
    if-eqz v1, :cond_1

    .line 444
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 449
    :cond_1
    :goto_2
    throw v3

    .line 445
    :catch_0
    move-exception v4

    goto :goto_2

    .end local v1           #input:Ljava/io/InputStream;
    .restart local v2       #input:Ljava/io/InputStream;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 441
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #input:Ljava/io/InputStream;
    .restart local v1       #input:Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 11
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 460
    .local v2, start:J
    const-string v6, "F:\\test-pic\\ccc.png"

    const-string v7, "F:\\test-pic\\reccc.jpg"

    const-string v8, "F:\\test-pic\\ware.png"

    const/16 v9, 0x2e7

    const/16 v10, 0x320

    invoke-static {v6, v7, v8, v9, v10}, Lcom/jd/common/images/ImageUtils;->resizeMaxAndMarkCenter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    .line 461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 462
    .local v0, end:J
    sub-long v4, v0, v2

    .line 463
    .local v4, used:J
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "used = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method public static resize(Ljava/io/InputStream;Ljava/lang/String;II)Z
    .locals 3
    .parameter "input"
    .parameter "to"
    .parameter "scaledW"
    .parameter "scaledH"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-static {p0}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    .line 226
    .local v0, bufferedImage:Ljava/awt/image/BufferedImage;
    if-nez v0, :cond_0

    .line 232
    :goto_0
    return v2

    .line 229
    :cond_0
    invoke-static {v0, p2, p3, v2}, Lcom/jd/common/images/ImageUtils;->resizeBuffered(Ljava/awt/image/BufferedImage;IIZ)Ljava/awt/image/BufferedImage;

    move-result-object v1

    .line 230
    .local v1, writeBuffered:Ljava/awt/image/BufferedImage;
    invoke-static {v1, p1}, Lcom/jd/common/images/ImageUtils;->write(Ljava/awt/image/BufferedImage;Ljava/lang/String;)V

    .line 232
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static resize(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 4
    .parameter "picFrom"
    .parameter "picTo"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 195
    .local v0, input:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    .end local v0           #input:Ljava/io/FileInputStream;
    .local v1, input:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v1, p1, p2, p3}, Lcom/jd/common/images/ImageUtils;->resize(Ljava/io/InputStream;Ljava/lang/String;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 198
    if-eqz v1, :cond_0

    .line 200
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 196
    :cond_0
    :goto_0
    return v2

    .line 197
    .end local v1           #input:Ljava/io/FileInputStream;
    .restart local v0       #input:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v2

    .line 198
    :goto_1
    if-eqz v0, :cond_1

    .line 200
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 205
    :cond_1
    :goto_2
    throw v2

    .line 201
    .end local v0           #input:Ljava/io/FileInputStream;
    .restart local v1       #input:Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v1           #input:Ljava/io/FileInputStream;
    .restart local v0       #input:Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    goto :goto_2

    .line 197
    .end local v0           #input:Ljava/io/FileInputStream;
    .restart local v1       #input:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #input:Ljava/io/FileInputStream;
    .restart local v0       #input:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static resizeAndBothMark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 6
    .parameter "picFrom"
    .parameter "picTo"
    .parameter "mark"
    .parameter "text"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x0

    .line 425
    invoke-static {p0}, Lcom/jd/common/images/ImageUtils;->getBufferedImage(Ljava/lang/String;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    .line 426
    .local v0, bufferedImage:Ljava/awt/image/BufferedImage;
    if-nez v0, :cond_0

    .line 432
    :goto_0
    return v1

    .line 429
    :cond_0
    invoke-static {v0, p4, p5, v1}, Lcom/jd/common/images/ImageUtils;->resizeBuffered(Ljava/awt/image/BufferedImage;IIZ)Ljava/awt/image/BufferedImage;

    move-result-object v0

    .line 430
    const/4 v5, 0x4

    move-object v1, p2

    move-object v2, p3

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/jd/common/images/ImageUtils;->bufferedBothMark(Ljava/awt/Image;Ljava/lang/String;Ljava/lang/String;III)Ljava/awt/image/BufferedImage;

    move-result-object v0

    .line 431
    invoke-static {v0, p1}, Lcom/jd/common/images/ImageUtils;->write(Ljava/awt/image/BufferedImage;Ljava/lang/String;)V

    .line 432
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static resizeAndMark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 6
    .parameter "picFrom"
    .parameter "picTo"
    .parameter "mark"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x0

    .line 340
    invoke-static {p0}, Lcom/jd/common/images/ImageUtils;->getBufferedImage(Ljava/lang/String;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    .line 341
    .local v0, bufferedImage:Ljava/awt/image/BufferedImage;
    if-nez v0, :cond_0

    .line 347
    :goto_0
    return v1

    .line 344
    :cond_0
    invoke-static {v0, p3, p4, v1}, Lcom/jd/common/images/ImageUtils;->resizeBuffered(Ljava/awt/image/BufferedImage;IIZ)Ljava/awt/image/BufferedImage;

    move-result-object v0

    .line 345
    const/4 v2, 0x0

    const/4 v5, 0x4

    move-object v1, p2

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/jd/common/images/ImageUtils;->bufferedBothMark(Ljava/awt/Image;Ljava/lang/String;Ljava/lang/String;III)Ljava/awt/image/BufferedImage;

    move-result-object v0

    .line 346
    invoke-static {v0, p1}, Lcom/jd/common/images/ImageUtils;->write(Ljava/awt/image/BufferedImage;Ljava/lang/String;)V

    .line 347
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static resizeAndTextMark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 6
    .parameter "picFrom"
    .parameter "picTo"
    .parameter "text"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x0

    .line 408
    invoke-static {p0}, Lcom/jd/common/images/ImageUtils;->getBufferedImage(Ljava/lang/String;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    .line 409
    .local v0, bufferedImage:Ljava/awt/image/BufferedImage;
    if-nez v0, :cond_0

    .line 415
    :goto_0
    return v1

    .line 412
    :cond_0
    invoke-static {v0, p3, p4, v1}, Lcom/jd/common/images/ImageUtils;->resizeBuffered(Ljava/awt/image/BufferedImage;IIZ)Ljava/awt/image/BufferedImage;

    move-result-object v0

    .line 413
    const/4 v1, 0x0

    const/4 v5, 0x4

    move-object v2, p2

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/jd/common/images/ImageUtils;->bufferedBothMark(Ljava/awt/Image;Ljava/lang/String;Ljava/lang/String;III)Ljava/awt/image/BufferedImage;

    move-result-object v0

    .line 414
    invoke-static {v0, p1}, Lcom/jd/common/images/ImageUtils;->write(Ljava/awt/image/BufferedImage;Ljava/lang/String;)V

    .line 415
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static resizeBuffered(Ljava/awt/image/BufferedImage;IIZ)Ljava/awt/image/BufferedImage;
    .locals 12
    .parameter "bufferedImage"
    .parameter "scaledW"
    .parameter "scaledH"
    .parameter "cut"

    .prologue
    const/4 v11, 0x0

    const/high16 v9, 0x42c8

    .line 237
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v7

    int-to-float v4, v7

    .line 238
    .local v4, fromWidth:F
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v7

    int-to-float v2, v7

    .line 239
    .local v2, fromHeight:F
    int-to-float v7, p1

    int-to-float v8, p2

    div-float v6, v7, v8

    .line 240
    .local v6, percent:F
    div-float v3, v4, v2

    .line 242
    .local v3, fromPercent:F
    mul-float v7, v3, v9

    float-to-int v7, v7

    mul-float v8, v6, v9

    float-to-int v8, v8

    if-eq v7, v8, :cond_0

    .line 243
    cmpl-float v7, v3, v6

    if-lez v7, :cond_2

    .line 244
    if-eqz p3, :cond_1

    .line 245
    mul-float v1, v2, v6

    .line 246
    .local v1, dstWidth:F
    new-instance v7, Ljava/awt/Rectangle;

    sub-float v8, v4, v1

    float-to-int v8, v8

    div-int/lit8 v8, v8, 0x2

    float-to-int v9, v1

    float-to-int v10, v2

    invoke-direct {v7, v8, v11, v9, v10}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-static {p0, v7}, Lcom/jd/common/images/ImageUtils;->crop(Ljava/awt/image/BufferedImage;Ljava/awt/Rectangle;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    .line 260
    .end local v1           #dstWidth:F
    :cond_0
    :goto_0
    const/4 v7, 0x4

    invoke-virtual {p0, p1, p2, v7}, Ljava/awt/image/BufferedImage;->getScaledInstance(III)Ljava/awt/Image;

    move-result-object v5

    .line 262
    .local v5, img:Ljava/awt/Image;
    invoke-static {v5, p1, p2}, Lcom/jd/common/images/ImageUtils;->toBufferedImage(Ljava/awt/Image;II)Ljava/awt/image/BufferedImage;

    move-result-object v7

    return-object v7

    .line 248
    .end local v5           #img:Ljava/awt/Image;
    :cond_1
    int-to-float v7, p1

    div-float v7, v4, v7

    div-float v7, v2, v7

    float-to-int p2, v7

    goto :goto_0

    .line 251
    :cond_2
    if-eqz p3, :cond_3

    .line 252
    div-float v0, v4, v6

    .line 253
    .local v0, dstHeight:F
    new-instance v7, Ljava/awt/Rectangle;

    sub-float v8, v2, v0

    float-to-int v8, v8

    div-int/lit8 v8, v8, 0x2

    float-to-int v9, v4

    float-to-int v10, v0

    invoke-direct {v7, v11, v8, v9, v10}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-static {p0, v7}, Lcom/jd/common/images/ImageUtils;->crop(Ljava/awt/image/BufferedImage;Ljava/awt/Rectangle;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    goto :goto_0

    .line 255
    .end local v0           #dstHeight:F
    :cond_3
    int-to-float v7, p2

    div-float v7, v2, v7

    div-float v7, v4, v7

    float-to-int p1, v7

    goto :goto_0
.end method

.method public static resizeMaxAndMarkCenter(Ljava/awt/image/BufferedImage;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 8
    .parameter "bufferedImage"
    .parameter "picTo"
    .parameter "mark"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x5

    .line 386
    if-nez p0, :cond_0

    .line 396
    :goto_0
    return v0

    .line 389
    :cond_0
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    int-to-float v7, v1

    .line 390
    .local v7, fromWidth:F
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    int-to-float v6, v1

    .line 391
    .local v6, fromHeight:F
    int-to-float v1, p3

    cmpl-float v1, v7, v1

    if-gtz v1, :cond_1

    int-to-float v1, p4

    cmpl-float v1, v6, v1

    if-lez v1, :cond_2

    .line 392
    :cond_1
    invoke-static {p0, p3, p4, v0}, Lcom/jd/common/images/ImageUtils;->resizeBuffered(Ljava/awt/image/BufferedImage;IIZ)Ljava/awt/image/BufferedImage;

    move-result-object p0

    .line 394
    :cond_2
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/jd/common/images/ImageUtils;->bufferedBothMark(Ljava/awt/Image;Ljava/lang/String;Ljava/lang/String;III)Ljava/awt/image/BufferedImage;

    move-result-object p0

    .line 395
    invoke-static {p0, p1}, Lcom/jd/common/images/ImageUtils;->write(Ljava/awt/image/BufferedImage;Ljava/lang/String;)V

    .line 396
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static resizeMaxAndMarkCenter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 8
    .parameter "picFrom"
    .parameter "picTo"
    .parameter "mark"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x5

    .line 361
    invoke-static {p0}, Lcom/jd/common/images/ImageUtils;->getBufferedImage(Ljava/lang/String;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    .line 362
    .local v0, bufferedImage:Ljava/awt/image/BufferedImage;
    if-nez v0, :cond_0

    .line 372
    :goto_0
    return v1

    .line 365
    :cond_0
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    int-to-float v7, v2

    .line 366
    .local v7, fromWidth:F
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    int-to-float v6, v2

    .line 367
    .local v6, fromHeight:F
    int-to-float v2, p3

    cmpl-float v2, v7, v2

    if-gtz v2, :cond_1

    int-to-float v2, p4

    cmpl-float v2, v6, v2

    if-lez v2, :cond_2

    .line 368
    :cond_1
    invoke-static {v0, p3, p4, v1}, Lcom/jd/common/images/ImageUtils;->resizeBuffered(Ljava/awt/image/BufferedImage;IIZ)Ljava/awt/image/BufferedImage;

    move-result-object v0

    .line 370
    :cond_2
    const/4 v2, 0x0

    move-object v1, p2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/jd/common/images/ImageUtils;->bufferedBothMark(Ljava/awt/Image;Ljava/lang/String;Ljava/lang/String;III)Ljava/awt/image/BufferedImage;

    move-result-object v0

    .line 371
    invoke-static {v0, p1}, Lcom/jd/common/images/ImageUtils;->write(Ljava/awt/image/BufferedImage;Ljava/lang/String;)V

    .line 372
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static toBufferedImage(Ljava/awt/Image;II)Ljava/awt/image/BufferedImage;
    .locals 4
    .parameter "image"
    .parameter "scaledW"
    .parameter "scaledH"

    .prologue
    const/4 v3, 0x0

    .line 310
    instance-of v1, p0, Ljava/awt/image/BufferedImage;

    if-eqz v1, :cond_0

    .line 311
    check-cast p0, Ljava/awt/image/BufferedImage;

    .line 318
    .end local p0
    :goto_0
    return-object p0

    .line 315
    .restart local p0
    :cond_0
    new-instance v0, Ljava/awt/image/BufferedImage;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 316
    .local v0, bufferedImage:Ljava/awt/image/BufferedImage;
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getGraphics()Ljava/awt/Graphics;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v3, v3, v2}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    move-object p0, v0

    .line 318
    goto :goto_0
.end method

.method public static write(Ljava/awt/image/BufferedImage;Ljava/lang/String;)V
    .locals 7
    .parameter "bi"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 273
    const/4 v2, 0x0

    .line 274
    .local v2, ios:Ljavax/imageio/stream/ImageOutputStream;
    const/4 v3, 0x0

    .line 276
    .local v3, iw:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljavax/imageio/ImageIO;->createImageOutputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object v2

    .line 277
    const-string v5, "jpeg"

    invoke-static {v5}, Ljavax/imageio/ImageIO;->getImageWritersBySuffix(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;

    move-object v3, v0

    .line 278
    invoke-virtual {v3, v2}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->setOutput(Ljava/lang/Object;)V

    .line 281
    invoke-virtual {v3}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->getDefaultWriteParam()Ljavax/imageio/ImageWriteParam;

    move-result-object v4

    check-cast v4, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;

    .line 282
    .local v4, p:Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->setOptimizeHuffmanTables(Z)V

    .line 283
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->setCompressionMode(I)V

    .line 284
    const v5, 0x3f666666

    invoke-virtual {v4, v5}, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->setCompressionQuality(F)V

    .line 285
    new-instance v1, Ljavax/imageio/IIOImage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v1, p0, v5, v6}, Ljavax/imageio/IIOImage;-><init>(Ljava/awt/image/RenderedImage;Ljava/util/List;Ljavax/imageio/metadata/IIOMetadata;)V

    .line 286
    .local v1, i:Ljavax/imageio/IIOImage;
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v1, v4}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->write(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    if-eqz v2, :cond_0

    .line 290
    :try_start_1
    invoke-interface {v2}, Ljavax/imageio/stream/ImageOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 295
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 296
    invoke-virtual {v3}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->dispose()V

    .line 299
    :cond_1
    return-void

    .line 287
    .end local v1           #i:Ljavax/imageio/IIOImage;
    .end local v4           #p:Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;
    :catchall_0
    move-exception v5

    .line 288
    if-eqz v2, :cond_2

    .line 290
    :try_start_2
    invoke-interface {v2}, Ljavax/imageio/stream/ImageOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 295
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 296
    invoke-virtual {v3}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->dispose()V

    .line 298
    :cond_3
    throw v5

    .line 291
    :catch_0
    move-exception v6

    goto :goto_1

    .restart local v1       #i:Ljavax/imageio/IIOImage;
    .restart local v4       #p:Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;
    :catch_1
    move-exception v5

    goto :goto_0
.end method
