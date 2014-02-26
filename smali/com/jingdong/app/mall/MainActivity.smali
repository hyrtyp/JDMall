.class public Lcom/jingdong/app/mall/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private final INTERVAL:I

.field private final START_IMAGE_NAME:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private modal:Landroid/widget/RelativeLayout;

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const-string v0, "startimage.image"

    iput-object v0, p0, Lcom/jingdong/app/mall/MainActivity;->START_IMAGE_NAME:Ljava/lang/String;

    .line 48
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/jingdong/app/mall/MainActivity;->INTERVAL:I

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/MainActivity;->handler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/MainActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/jingdong/app/mall/MainActivity;->startTime:J

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/jingdong/app/mall/MainActivity;->startMainFrameActivity()V

    return-void
.end method

.method private init()V
    .locals 11

    .prologue
    .line 186
    new-instance v9, Landroid/widget/RelativeLayout;

    invoke-direct {v9, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/jingdong/app/mall/MainActivity;->modal:Landroid/widget/RelativeLayout;

    .line 188
    const/4 v6, 0x0

    .line 189
    .local v6, loadStartImageErrorOccurs:Z
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainActivity;->isStartImageBetweenDate()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 190
    const/4 v4, 0x0

    .line 191
    .local v4, imageData:[B
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 192
    .local v1, defaultPreference:Landroid/content/SharedPreferences;
    const-string v9, "imagepath"

    const-string v10, ""

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 193
    .local v8, startImagePath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "startimage.image"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .local v3, file:Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 197
    .local v5, inStream:Ljava/io/FileInputStream;
    new-instance v9, Lcom/jingdong/common/utils/FileService;

    invoke-direct {v9}, Lcom/jingdong/common/utils/FileService;-><init>()V

    invoke-virtual {v9, v5}, Lcom/jingdong/common/utils/FileService;->readInputStream(Ljava/io/FileInputStream;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 204
    .end local v5           #inStream:Ljava/io/FileInputStream;
    :goto_0
    if-eqz v4, :cond_0

    .line 207
    const/4 v9, 0x0

    :try_start_1
    array-length v10, v4

    invoke-static {v4, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 208
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 209
    .local v7, newDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v9, p0, Lcom/jingdong/app/mall/MainActivity;->modal:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v7}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #defaultPreference:Landroid/content/SharedPreferences;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #imageData:[B
    .end local v7           #newDrawable:Landroid/graphics/drawable/Drawable;
    .end local v8           #startImagePath:Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    .line 228
    invoke-direct {p0}, Lcom/jingdong/app/mall/MainActivity;->setNewStartImage()V

    .line 231
    :cond_1
    iget-object v9, p0, Lcom/jingdong/app/mall/MainActivity;->modal:Landroid/widget/RelativeLayout;

    new-instance v10, Lcom/jingdong/app/mall/MainActivity$3;

    invoke-direct {v10, p0}, Lcom/jingdong/app/mall/MainActivity$3;-><init>(Lcom/jingdong/app/mall/MainActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 237
    iget-object v9, p0, Lcom/jingdong/app/mall/MainActivity;->modal:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v9}, Lcom/jingdong/app/mall/MainActivity;->setContentView(Landroid/view/View;)V

    .line 238
    return-void

    .line 198
    .restart local v1       #defaultPreference:Landroid/content/SharedPreferences;
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #imageData:[B
    .restart local v8       #startImagePath:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 202
    .local v2, e:Ljava/lang/Throwable;
    const/4 v6, 0x1

    goto :goto_0

    .line 210
    .end local v2           #e:Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 211
    .restart local v2       #e:Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1

    .line 223
    .end local v1           #defaultPreference:Landroid/content/SharedPreferences;
    .end local v2           #e:Ljava/lang/Throwable;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #imageData:[B
    .end local v8           #startImagePath:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/jingdong/app/mall/MainActivity;->setNewStartImage()V

    goto :goto_1
.end method

.method private initPlug()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/jingdong/app/mall/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/MainActivity$2;-><init>(Lcom/jingdong/app/mall/MainActivity;)V

    .line 180
    .local v0, listener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;
    invoke-static {v0}, Lcom/jingdong/app/mall/plug/PlugManager;->initPlugStatus(Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V

    .line 181
    return-void
.end method

.method private setNewStartImage()V
    .locals 23

    .prologue
    .line 242
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v6

    .line 243
    .local v6, allHeight:I
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v7

    .line 244
    .local v7, allWidth:I
    const/high16 v19, 0x42fe

    invoke-static/range {v19 .. v19}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v13

    .line 245
    .local v13, logoHeight:I
    const/high16 v19, 0x4327

    invoke-static/range {v19 .. v19}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v18

    .line 246
    .local v18, logoWidth:I
    const/high16 v19, 0x42c8

    invoke-static/range {v19 .. v19}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v9

    .line 247
    .local v9, loadingBgWidth:I
    const v15, 0x3e99999a

    .line 248
    .local v15, logoMarginTop:F
    const/high16 v19, 0x4100

    invoke-static/range {v19 .. v19}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v14

    .line 249
    .local v14, logoLoadingMarginTop:I
    const/16 v4, 0x9c4

    .line 256
    .local v4, DURATION:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/MainActivity;->modal:Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f020218

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    new-instance v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 259
    .local v16, logoView:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f02021b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 260
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v1, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 261
    .local v17, logoViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const v19, 0x3e99999a

    int-to-float v0, v6

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 262
    sub-int v19, v7, v18

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 263
    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/MainActivity;->modal:Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 266
    new-instance v8, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 267
    .local v8, loadingBgView:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020219

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v19, 0x4160

    invoke-static/range {v19 .. v19}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v19

    move/from16 v0, v19

    invoke-direct {v12, v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 269
    .local v12, loadingbgLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move/from16 v19, v0

    add-int v19, v19, v14

    add-int v19, v19, v13

    move/from16 v0, v19

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 270
    sub-int v19, v7, v9

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 271
    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/MainActivity;->modal:Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 274
    new-instance v10, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 275
    .local v10, loadingView:Landroid/widget/ImageView;
    const v19, 0x7f02021a

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 277
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, -0x2

    const/high16 v20, 0x4120

    invoke-static/range {v20 .. v20}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 278
    .local v11, loadingViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move/from16 v19, v0

    const/high16 v20, 0x4020

    invoke-static/range {v20 .. v20}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 279
    iget v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move/from16 v19, v0

    const/high16 v20, 0x41a0

    invoke-static/range {v20 .. v20}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 280
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    const/16 v19, 0x0

    const/high16 v20, 0x4220

    invoke-static/range {v20 .. v20}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v20

    sub-int v20, v9, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 282
    .local v5, a1:Landroid/view/animation/Animation;
    const-wide/16 v19, 0x9c4

    move-wide/from16 v0, v19

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 283
    new-instance v19, Lcom/jingdong/app/mall/MainActivity$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/jingdong/app/mall/MainActivity$4;-><init>(Lcom/jingdong/app/mall/MainActivity;Landroid/widget/ImageView;)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/MainActivity;->modal:Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 308
    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 309
    return-void
.end method

.method private declared-synchronized startMainFrameActivity()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x7d0

    .line 87
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/jingdong/app/mall/MainActivity;->startTime:J

    sub-long v2, v4, v6

    .line 89
    .local v2, time:J
    const-wide/16 v0, 0x0

    .line 91
    .local v0, interval:J
    cmp-long v4, v2, v8

    if-gez v4, :cond_0

    .line 92
    sub-long v0, v8, v2

    .line 95
    :cond_0
    iget-object v4, p0, Lcom/jingdong/app/mall/MainActivity;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/jingdong/app/mall/MainActivity$1;

    invoke-direct {v5, p0}, Lcom/jingdong/app/mall/MainActivity$1;-><init>(Lcom/jingdong/app/mall/MainActivity;)V

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 87
    .end local v0           #interval:J
    .end local v2           #time:J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method


# virtual methods
.method public isStartImageBetweenDate()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 319
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 320
    .local v0, defaultPreference:Landroid/content/SharedPreferences;
    const-string v8, "endTime"

    const-string v9, ""

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, endDateString:Ljava/lang/String;
    const-string v8, "beginTime"

    const-string v9, ""

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 323
    .local v6, startDateString:Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 339
    :cond_0
    :goto_0
    return v7

    .line 325
    :cond_1
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 326
    .local v4, nowDate:Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v3, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 327
    .local v3, myFormatter:Ljava/text/SimpleDateFormat;
    const/4 v5, 0x0

    .line 328
    .local v5, startDate:Ljava/util/Date;
    const/4 v1, 0x0

    .line 330
    .local v1, endDate:Ljava/util/Date;
    :try_start_0
    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 331
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 336
    :goto_1
    if-eqz v1, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 337
    const/4 v7, 0x1

    goto :goto_0

    .line 332
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    sget v0, Lcom/jingdong/app/mall/MyApplication;->runCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/jingdong/app/mall/MyApplication;->runCount:I

    .line 80
    invoke-direct {p0}, Lcom/jingdong/app/mall/MainActivity;->init()V

    .line 82
    invoke-direct {p0}, Lcom/jingdong/app/mall/MainActivity;->initPlug()V

    .line 83
    return-void
.end method
