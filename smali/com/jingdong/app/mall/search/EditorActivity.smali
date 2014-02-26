.class public Lcom/jingdong/app/mall/search/EditorActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "EditorActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private cameraFile:Ljava/io/File;

.field private imagePath:Ljava/lang/String;

.field private isCameraFile:Z

.field private isDrawRect:Z

.field private jdImage:Lcom/jingdong/app/mall/search/JDImageView;

.field private submit:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 34
    const-string v0, "EditorActivity"

    iput-object v0, p0, Lcom/jingdong/app/mall/search/EditorActivity;->TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/search/EditorActivity;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jingdong/app/mall/search/EditorActivity;->cameraFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/search/EditorActivity;)Lcom/jingdong/app/mall/search/JDImageView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jingdong/app/mall/search/EditorActivity;->jdImage:Lcom/jingdong/app/mall/search/JDImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/search/EditorActivity;Landroid/graphics/Bitmap;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    invoke-direct/range {p0 .. p5}, Lcom/jingdong/app/mall/search/EditorActivity;->doPhotoSearch(Landroid/graphics/Bitmap;IIII)V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/search/EditorActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jingdong/app/mall/search/EditorActivity;->submit:Landroid/widget/Button;

    return-object v0
.end method

.method private clear()V
    .locals 2

    .prologue
    .line 357
    :try_start_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/search/EditorActivity;->removeCameraFile()V

    .line 358
    iget-object v1, p0, Lcom/jingdong/app/mall/search/EditorActivity;->jdImage:Lcom/jingdong/app/mall/search/JDImageView;

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/jingdong/app/mall/search/EditorActivity;->jdImage:Lcom/jingdong/app/mall/search/JDImageView;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/search/JDImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 360
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private doPhotoSearch(Landroid/graphics/Bitmap;IIII)V
    .locals 9
    .parameter "bmp"
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 203
    :try_start_0
    iget-object v7, p0, Lcom/jingdong/app/mall/search/EditorActivity;->submit:Landroid/widget/Button;

    if-eqz v7, :cond_0

    .line 204
    iget-object v7, p0, Lcom/jingdong/app/mall/search/EditorActivity;->submit:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setClickable(Z)V

    .line 208
    :cond_0
    const-string v7, "discussUploadImageQuality"

    invoke-static {v7}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 209
    .local v5, quality:I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 212
    .local v1, code:Ljava/lang/String;
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v7, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 213
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 219
    .local v2, data:[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 220
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 222
    invoke-static {v2}, Lcom/jingdong/common/secure/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-eqz v7, :cond_1

    .line 318
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #code:Ljava/lang/String;
    .end local v2           #data:[B
    .end local v5           #quality:I
    :goto_0
    return-void

    .line 226
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #code:Ljava/lang/String;
    .restart local v5       #quality:I
    :catch_0
    move-exception v3

    .line 227
    .local v3, e:Ljava/lang/Throwable;
    const v7, 0x7f0703ee

    const/4 v8, 0x0

    :try_start_2
    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 228
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/EditorActivity;->finish()V

    goto :goto_0

    .line 312
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #code:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Throwable;
    .end local v5           #quality:I
    :catch_1
    move-exception v7

    goto :goto_0

    .line 232
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #code:Ljava/lang/String;
    .restart local v2       #data:[B
    .restart local v5       #quality:I
    :cond_1
    new-instance v4, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 233
    .local v4, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v7, "paiHost"

    invoke-static {v7}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setHost(Ljava/lang/String;)V

    .line 234
    const-string v7, "visualSearch"

    invoke-virtual {v4, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 235
    const/4 v6, 0x0

    .line 237
    .local v6, type:Ljava/lang/String;
    :try_start_3
    sget-object v7, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->category_type_array:[Ljava/lang/String;

    sget v8, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->category_selected_index:I

    aget-object v6, v7, v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 244
    :goto_1
    :try_start_4
    const-string v7, "type"

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v6, "others"

    .end local v6           #type:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, v7, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putMapParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v7, "picStream"

    invoke-virtual {v4, v7, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    const-string v7, "x1"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 247
    const-string v7, "y1"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    const-string v7, "x2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    const-string v7, "y2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 250
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 251
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setAttempts(I)V

    .line 252
    new-instance v7, Lcom/jingdong/app/mall/search/EditorActivity$3;

    invoke-direct {v7, p0}, Lcom/jingdong/app/mall/search/EditorActivity$3;-><init>(Lcom/jingdong/app/mall/search/EditorActivity;)V

    invoke-virtual {v4, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 311
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/EditorActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto/16 :goto_0

    .line 238
    .restart local v6       #type:Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 239
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method

.method private init()V
    .locals 6

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/EditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 86
    .local v0, data:Landroid/content/Intent;
    const-string v3, "needDrawRect"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/jingdong/app/mall/search/EditorActivity;->isDrawRect:Z

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/search/EditorActivity;->imagePath:Ljava/lang/String;

    .line 88
    iget-object v3, p0, Lcom/jingdong/app/mall/search/EditorActivity;->imagePath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    const v3, 0x7f0703f6

    const/4 v4, -0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 90
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/EditorActivity;->finish()V

    .line 149
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/jingdong/app/mall/search/EditorActivity;->imagePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/jingdong/app/mall/search/EditorActivity;->cameraFile:Ljava/io/File;

    .line 94
    iget-boolean v3, p0, Lcom/jingdong/app/mall/search/EditorActivity;->isDrawRect:Z

    if-eqz v3, :cond_1

    .line 95
    const v3, 0x7f03000d

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/search/EditorActivity;->setContentView(I)V

    .line 96
    const v3, 0x7f0c007f

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/search/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/jingdong/app/mall/search/EditorActivity;->submit:Landroid/widget/Button;

    .line 97
    const v3, 0x7f0c0081

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/search/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/jingdong/app/mall/search/JDImageView;

    iput-object v3, p0, Lcom/jingdong/app/mall/search/EditorActivity;->jdImage:Lcom/jingdong/app/mall/search/JDImageView;

    .line 98
    iget-object v4, p0, Lcom/jingdong/app/mall/search/EditorActivity;->jdImage:Lcom/jingdong/app/mall/search/JDImageView;

    const-string v3, "vibrator"

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/search/EditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    invoke-virtual {v4, v3}, Lcom/jingdong/app/mall/search/JDImageView;->setVibrator(Landroid/os/Vibrator;)V

    .line 99
    iget-object v3, p0, Lcom/jingdong/app/mall/search/EditorActivity;->jdImage:Lcom/jingdong/app/mall/search/JDImageView;

    iget-boolean v4, p0, Lcom/jingdong/app/mall/search/EditorActivity;->isDrawRect:Z

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/search/JDImageView;->setDrawRect(Z)V

    .line 100
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "isCameraFile"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/jingdong/app/mall/search/EditorActivity;->isCameraFile:Z

    .line 101
    iget-object v3, p0, Lcom/jingdong/app/mall/search/EditorActivity;->submit:Landroid/widget/Button;

    new-instance v4, Lcom/jingdong/app/mall/search/EditorActivity$2;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/search/EditorActivity$2;-><init>(Lcom/jingdong/app/mall/search/EditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 119
    :cond_1
    const v3, 0x7f03000e

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/search/EditorActivity;->setContentView(I)V

    .line 120
    const v3, 0x7f0c007e

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/search/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 121
    .local v2, title:Landroid/widget/TextView;
    const v3, 0x7f0703e6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    .end local v2           #title:Landroid/widget/TextView;
    :catch_0
    move-exception v1

    .line 123
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initBitmap(Ljava/io/File;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jingdong/app/mall/search/EditorActivity;->initBitmap(Ljava/io/File;Z)V

    .line 199
    return-void
.end method

.method private initBitmap(Ljava/io/File;Z)V
    .locals 7
    .parameter "file"
    .parameter "isSubmit"

    .prologue
    .line 153
    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    invoke-static {p1}, Lcom/jingdong/app/mall/search/ImageTools;->checkFileSizeIsBig(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const v0, 0x7f0703ec

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 156
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/EditorActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    :goto_0
    return-void

    .line 160
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/jingdong/app/mall/search/ImageTools;->zoomImg(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 161
    .local v1, bm:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 162
    if-eqz p2, :cond_1

    .line 163
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/search/EditorActivity;->doPhotoSearch(Landroid/graphics/Bitmap;IIII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 170
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v6

    .line 174
    .local v6, e:Ljava/lang/Throwable;
    const v0, 0x7f0703f6

    const/4 v2, -0x1

    :try_start_2
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 175
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/EditorActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 184
    .end local v6           #e:Ljava/lang/Throwable;
    :catch_1
    move-exception v6

    .line 188
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/EditorActivity;->finish()V

    goto :goto_0

    .line 165
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/jingdong/app/mall/search/EditorActivity;->jdImage:Lcom/jingdong/app/mall/search/JDImageView;

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/search/JDImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 168
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 180
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :cond_3
    const v0, 0x7f0703fe

    const/4 v2, -0x1

    :try_start_4
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 181
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/EditorActivity;->finish()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0
.end method

.method private removeCameraFile()V
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/jingdong/app/mall/search/EditorActivity;->isCameraFile:Z

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lcom/jingdong/app/mall/search/EditorActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/search/EditorActivity$1;-><init>(Lcom/jingdong/app/mall/search/EditorActivity;)V

    .line 80
    invoke-virtual {v0}, Lcom/jingdong/app/mall/search/EditorActivity$1;->start()V

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/jingdong/app/mall/search/EditorActivity;->clear()V

    .line 349
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->finish()V

    .line 350
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    :try_start_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/search/EditorActivity;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/EditorActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 374
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onDestroy()V

    .line 375
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/EditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 376
    .local v0, group:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 377
    const/4 v0, 0x0

    .line 378
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jingdong/app/mall/search/EditorActivity;->jdImage:Lcom/jingdong/app/mall/search/JDImageView;

    .line 379
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 325
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/search/EditorActivity;->cameraFile:Ljava/io/File;

    if-nez v1, :cond_0

    .line 328
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/jingdong/app/mall/search/EditorActivity;->imagePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jingdong/app/mall/search/EditorActivity;->cameraFile:Ljava/io/File;

    .line 330
    :cond_0
    iget-boolean v1, p0, Lcom/jingdong/app/mall/search/EditorActivity;->isDrawRect:Z

    if-eqz v1, :cond_2

    .line 331
    iget-object v1, p0, Lcom/jingdong/app/mall/search/EditorActivity;->jdImage:Lcom/jingdong/app/mall/search/JDImageView;

    if-eqz v1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/jingdong/app/mall/search/EditorActivity;->cameraFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/search/EditorActivity;->initBitmap(Ljava/io/File;)V

    .line 344
    :cond_1
    :goto_0
    return-void

    .line 335
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/search/EditorActivity;->cameraFile:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/jingdong/app/mall/search/EditorActivity;->initBitmap(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 341
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/EditorActivity;->finish()V

    goto :goto_0
.end method
