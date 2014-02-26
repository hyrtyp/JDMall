.class public Lcom/jingdong/app/mall/personel/PhotoUtils;
.super Ljava/lang/Object;
.source "PhotoUtils.java"


# static fields
.field public static final SCAN_PICTURE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static final TAKE_PICTURE:I

.field private static hRadius:F

.field private static iterations:I

.field private static uri:Landroid/net/Uri;

.field private static vRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x4000

    .line 40
    const-class v0, Lcom/jingdong/app/mall/personel/PhotoUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/app/mall/personel/PhotoUtils;->TAG:Ljava/lang/String;

    .line 292
    sput v1, Lcom/jingdong/app/mall/personel/PhotoUtils;->hRadius:F

    .line 294
    sput v1, Lcom/jingdong/app/mall/personel/PhotoUtils;->vRadius:F

    .line 296
    const/4 v0, 0x2

    sput v0, Lcom/jingdong/app/mall/personel/PhotoUtils;->iterations:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BoxBlurFilter(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .parameter "bmp"

    .prologue
    const/4 v2, 0x0

    .line 302
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 303
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 304
    .local v7, height:I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 305
    .local v1, inPixels:[I
    mul-int v0, v3, v7

    new-array v11, v0, [I

    .line 306
    .local v11, outPixels:[I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .local v8, bitmap:Landroid/graphics/Bitmap;
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 307
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 308
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    sget v0, Lcom/jingdong/app/mall/personel/PhotoUtils;->iterations:I

    if-lt v10, v0, :cond_0

    .line 312
    sget v0, Lcom/jingdong/app/mall/personel/PhotoUtils;->hRadius:F

    invoke-static {v1, v11, v3, v7, v0}, Lcom/jingdong/app/mall/personel/PhotoUtils;->blurFractional([I[IIIF)V

    .line 313
    sget v0, Lcom/jingdong/app/mall/personel/PhotoUtils;->vRadius:F

    invoke-static {v11, v1, v7, v3, v0}, Lcom/jingdong/app/mall/personel/PhotoUtils;->blurFractional([I[IIIF)V

    move-object v0, v8

    move v4, v2

    move v5, v2

    move v6, v3

    .line 314
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 315
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 316
    .local v9, drawable:Landroid/graphics/drawable/Drawable;
    return-object v9

    .line 309
    .end local v9           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    sget v0, Lcom/jingdong/app/mall/personel/PhotoUtils;->hRadius:F

    invoke-static {v1, v11, v3, v7, v0}, Lcom/jingdong/app/mall/personel/PhotoUtils;->blur([I[IIIF)V

    .line 310
    sget v0, Lcom/jingdong/app/mall/personel/PhotoUtils;->vRadius:F

    invoke-static {v11, v1, v7, v3, v0}, Lcom/jingdong/app/mall/personel/PhotoUtils;->blur([I[IIIF)V

    .line 308
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/WebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    invoke-static {p0}, Lcom/jingdong/app/mall/personel/PhotoUtils;->startCamera(Lcom/jingdong/app/mall/WebActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/WebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    invoke-static {p0}, Lcom/jingdong/app/mall/personel/PhotoUtils;->loadFromLocal(Lcom/jingdong/app/mall/WebActivity;)V

    return-void
.end method

.method public static blur([I[IIIF)V
    .locals 22
    .parameter "in"
    .parameter "out"
    .parameter "width"
    .parameter "height"
    .parameter "radius"

    .prologue
    .line 320
    add-int/lit8 v17, p2, -0x1

    .line 321
    .local v17, widthMinus1:I
    move/from16 v0, p4

    float-to-int v8, v0

    .line 322
    .local v8, r:I
    mul-int/lit8 v20, v8, 0x2

    add-int/lit8 v13, v20, 0x1

    .line 323
    .local v13, tableSize:I
    mul-int/lit16 v0, v13, 0x100

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v2, v0, [I

    .line 325
    .local v2, divide:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    mul-int/lit16 v0, v13, 0x100

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v3, v0, :cond_0

    .line 328
    const/4 v6, 0x0

    .line 330
    .local v6, inIndex:I
    const/16 v19, 0x0

    .local v19, y:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, p3

    if-lt v0, v1, :cond_1

    .line 362
    return-void

    .line 326
    .end local v6           #inIndex:I
    .end local v19           #y:I
    :cond_0
    div-int v20, v3, v13

    aput v20, v2, v3

    .line 325
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 331
    .restart local v6       #inIndex:I
    .restart local v19       #y:I
    :cond_1
    move/from16 v7, v19

    .line 332
    .local v7, outIndex:I
    const/4 v12, 0x0

    .local v12, ta:I
    const/16 v16, 0x0

    .local v16, tr:I
    const/4 v15, 0x0

    .local v15, tg:I
    const/4 v14, 0x0

    .line 334
    .local v14, tb:I
    neg-int v3, v8

    :goto_2
    if-le v3, v8, :cond_2

    .line 342
    const/16 v18, 0x0

    .local v18, x:I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, p2

    if-lt v0, v1, :cond_3

    .line 360
    add-int v6, v6, p2

    .line 330
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 335
    .end local v18           #x:I
    :cond_2
    const/16 v20, 0x0

    add-int/lit8 v21, p2, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/jingdong/app/mall/personel/PhotoUtils;->clamp(III)I

    move-result v20

    add-int v20, v20, v6

    aget v9, p0, v20

    .line 336
    .local v9, rgb:I
    shr-int/lit8 v20, v9, 0x18

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    add-int v12, v12, v20

    .line 337
    shr-int/lit8 v20, v9, 0x10

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    add-int v16, v16, v20

    .line 338
    shr-int/lit8 v20, v9, 0x8

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    add-int v15, v15, v20

    .line 339
    and-int/lit16 v0, v9, 0xff

    move/from16 v20, v0

    add-int v14, v14, v20

    .line 334
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 343
    .end local v9           #rgb:I
    .restart local v18       #x:I
    :cond_3
    aget v20, v2, v12

    shl-int/lit8 v20, v20, 0x18

    aget v21, v2, v16

    shl-int/lit8 v21, v21, 0x10

    or-int v20, v20, v21

    aget v21, v2, v15

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    aget v21, v2, v14

    or-int v20, v20, v21

    aput v20, p1, v7

    .line 345
    add-int v20, v18, v8

    add-int/lit8 v4, v20, 0x1

    .line 346
    .local v4, i1:I
    move/from16 v0, v17

    if-le v4, v0, :cond_4

    .line 347
    move/from16 v4, v17

    .line 348
    :cond_4
    sub-int v5, v18, v8

    .line 349
    .local v5, i2:I
    if-gez v5, :cond_5

    .line 350
    const/4 v5, 0x0

    .line 351
    :cond_5
    add-int v20, v6, v4

    aget v10, p0, v20

    .line 352
    .local v10, rgb1:I
    add-int v20, v6, v5

    aget v11, p0, v20

    .line 354
    .local v11, rgb2:I
    shr-int/lit8 v20, v10, 0x18

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shr-int/lit8 v21, v11, 0x18

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    sub-int v20, v20, v21

    add-int v12, v12, v20

    .line 355
    const/high16 v20, 0xff

    and-int v20, v20, v10

    const/high16 v21, 0xff

    and-int v21, v21, v11

    sub-int v20, v20, v21

    shr-int/lit8 v20, v20, 0x10

    add-int v16, v16, v20

    .line 356
    const v20, 0xff00

    and-int v20, v20, v10

    const v21, 0xff00

    and-int v21, v21, v11

    sub-int v20, v20, v21

    shr-int/lit8 v20, v20, 0x8

    add-int v15, v15, v20

    .line 357
    and-int/lit16 v0, v10, 0xff

    move/from16 v20, v0

    and-int/lit16 v0, v11, 0xff

    move/from16 v21, v0

    sub-int v20, v20, v21

    add-int v14, v14, v20

    .line 358
    add-int v7, v7, p3

    .line 342
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3
.end method

.method public static blurFractional([I[IIIF)V
    .locals 26
    .parameter "in"
    .parameter "out"
    .parameter "width"
    .parameter "height"
    .parameter "radius"

    .prologue
    .line 365
    move/from16 v0, p4

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float p4, p4, v23

    .line 366
    const/high16 v23, 0x3f80

    const/high16 v24, 0x3f80

    const/high16 v25, 0x4000

    mul-float v25, v25, p4

    add-float v24, v24, v25

    div-float v8, v23, v24

    .line 367
    .local v8, f:F
    const/4 v13, 0x0

    .line 369
    .local v13, inIndex:I
    const/16 v22, 0x0

    .local v22, y:I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, p3

    if-lt v0, v1, :cond_0

    .line 406
    return-void

    .line 370
    :cond_0
    move/from16 v14, v22

    .line 372
    .local v14, outIndex:I
    const/16 v23, 0x0

    aget v23, p0, v23

    aput v23, p1, v14

    .line 373
    add-int v14, v14, p3

    .line 374
    const/16 v21, 0x1

    .local v21, x:I
    :goto_1
    add-int/lit8 v23, p2, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_1

    .line 403
    add-int/lit8 v23, p2, -0x1

    aget v23, p0, v23

    aput v23, p1, v14

    .line 404
    add-int v13, v13, p2

    .line 369
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 375
    :cond_1
    add-int v12, v13, v21

    .line 376
    .local v12, i:I
    add-int/lit8 v23, v12, -0x1

    aget v18, p0, v23

    .line 377
    .local v18, rgb1:I
    aget v19, p0, v12

    .line 378
    .local v19, rgb2:I
    add-int/lit8 v23, v12, 0x1

    aget v20, p0, v23

    .line 380
    .local v20, rgb3:I
    shr-int/lit8 v23, v18, 0x18

    move/from16 v0, v23

    and-int/lit16 v2, v0, 0xff

    .line 381
    .local v2, a1:I
    shr-int/lit8 v23, v18, 0x10

    move/from16 v0, v23

    and-int/lit16 v15, v0, 0xff

    .line 382
    .local v15, r1:I
    shr-int/lit8 v23, v18, 0x8

    move/from16 v0, v23

    and-int/lit16 v9, v0, 0xff

    .line 383
    .local v9, g1:I
    move/from16 v0, v18

    and-int/lit16 v5, v0, 0xff

    .line 384
    .local v5, b1:I
    shr-int/lit8 v23, v19, 0x18

    move/from16 v0, v23

    and-int/lit16 v3, v0, 0xff

    .line 385
    .local v3, a2:I
    shr-int/lit8 v23, v19, 0x10

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 386
    .local v16, r2:I
    shr-int/lit8 v23, v19, 0x8

    move/from16 v0, v23

    and-int/lit16 v10, v0, 0xff

    .line 387
    .local v10, g2:I
    move/from16 v0, v19

    and-int/lit16 v6, v0, 0xff

    .line 388
    .local v6, b2:I
    shr-int/lit8 v23, v20, 0x18

    move/from16 v0, v23

    and-int/lit16 v4, v0, 0xff

    .line 389
    .local v4, a3:I
    shr-int/lit8 v23, v20, 0x10

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 390
    .local v17, r3:I
    shr-int/lit8 v23, v20, 0x8

    move/from16 v0, v23

    and-int/lit16 v11, v0, 0xff

    .line 391
    .local v11, g3:I
    move/from16 v0, v20

    and-int/lit16 v7, v0, 0xff

    .line 392
    .local v7, b3:I
    add-int v23, v2, v4

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, p4

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v2, v3, v23

    .line 393
    add-int v23, v15, v17

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, p4

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v15, v16, v23

    .line 394
    add-int v23, v9, v11

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, p4

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v9, v10, v23

    .line 395
    add-int v23, v5, v7

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, p4

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v5, v6, v23

    .line 396
    int-to-float v0, v2

    move/from16 v23, v0

    mul-float v23, v23, v8

    move/from16 v0, v23

    float-to-int v2, v0

    .line 397
    int-to-float v0, v15

    move/from16 v23, v0

    mul-float v23, v23, v8

    move/from16 v0, v23

    float-to-int v15, v0

    .line 398
    int-to-float v0, v9

    move/from16 v23, v0

    mul-float v23, v23, v8

    move/from16 v0, v23

    float-to-int v9, v0

    .line 399
    int-to-float v0, v5

    move/from16 v23, v0

    mul-float v23, v23, v8

    move/from16 v0, v23

    float-to-int v5, v0

    .line 400
    shl-int/lit8 v23, v2, 0x18

    shl-int/lit8 v24, v15, 0x10

    or-int v23, v23, v24

    shl-int/lit8 v24, v9, 0x8

    or-int v23, v23, v24

    or-int v23, v23, v5

    aput v23, p1, v14

    .line 401
    add-int v14, v14, p3

    .line 374
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1
.end method

.method public static chooseUploadPhotoWay(Lcom/jingdong/app/mall/WebActivity;)V
    .locals 8
    .parameter "webActivity"

    .prologue
    const v7, 0x7f070369

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 252
    if-nez p0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 255
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 256
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f070378

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 259
    const-string v3, "photoShut"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jingdong/common/config/Configuration;->getBooleanProperty(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 260
    new-array v2, v6, [Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 261
    .local v2, items1:[Ljava/lang/String;
    move-object v1, v2

    .line 268
    .local v1, items:[Ljava/lang/String;
    :goto_1
    new-instance v3, Lcom/jingdong/app/mall/personel/PhotoUtils$4;

    invoke-direct {v3, v1, p0}, Lcom/jingdong/app/mall/personel/PhotoUtils$4;-><init>([Ljava/lang/String;Lcom/jingdong/app/mall/WebActivity;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 283
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 264
    .end local v1           #items:[Ljava/lang/String;
    .end local v2           #items1:[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const v3, 0x7f070368

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 265
    .restart local v2       #items1:[Ljava/lang/String;
    move-object v1, v2

    .restart local v1       #items:[Ljava/lang/String;
    goto :goto_1
.end method

.method public static clamp(III)I
    .locals 0
    .parameter "x"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 409
    if-ge p0, p1, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static getPhotoUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 287
    sget-object v0, Lcom/jingdong/app/mall/personel/PhotoUtils;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method private static loadFromLocal(Lcom/jingdong/app/mall/WebActivity;)V
    .locals 3
    .parameter "webActivity"

    .prologue
    .line 239
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 240
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/jingdong/app/mall/WebActivity;->startActivityForResultNoException(Landroid/content/Intent;I)V

    .line 242
    return-void
.end method

.method private static startCamera(Lcom/jingdong/app/mall/WebActivity;)V
    .locals 7
    .parameter "webActivity"

    .prologue
    .line 212
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->checkSDcard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v1, mIntent:Landroid/content/Intent;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 217
    .local v2, tmpFile:Ljava/io/File;
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/jingdong/app/mall/personel/PhotoUtils;->uri:Landroid/net/Uri;

    .line 218
    const-string v3, "output"

    sget-object v4, Lcom/jingdong/app/mall/personel/PhotoUtils;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 222
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/jingdong/app/mall/WebActivity;->startActivityForResultNoException(Landroid/content/Intent;I)V

    .line 236
    .end local v1           #mIntent:Landroid/content/Intent;
    .end local v2           #tmpFile:Ljava/io/File;
    :goto_0
    return-void

    .line 224
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 225
    .local v0, hintDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f07037d

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 226
    const v3, 0x7f07037e

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 227
    const v3, 0x7f07037c

    new-instance v4, Lcom/jingdong/app/mall/personel/PhotoUtils$3;

    invoke-direct {v4}, Lcom/jingdong/app/mall/personel/PhotoUtils$3;-><init>()V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 234
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public static submitPhoto(Landroid/webkit/WebView;Lcom/jingdong/app/mall/WebActivity;Lcom/jingdong/common/entity/DiscussImage;)V
    .locals 27
    .parameter "webView"
    .parameter "webActivity"
    .parameter "image"

    .prologue
    .line 54
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10}, Ljava/lang/String;-><init>()V

    .line 55
    .local v10, bitmapString:Ljava/lang/String;
    new-instance v17, Lorg/json/JSONArray;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONArray;-><init>()V

    .line 58
    .local v17, jsonArray:Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/app/mall/WebActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/jingdong/common/entity/DiscussImage;->getPath()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    check-cast v14, Ljava/io/FileInputStream;

    .line 59
    .local v14, fileInput:Ljava/io/FileInputStream;
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 60
    .local v18, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x2

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 61
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-static {v14, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 62
    .local v2, temp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p2 .. p2}, Lcom/jingdong/common/entity/DiscussImage;->getRotate()I

    move-result v20

    .line 63
    .local v20, rotate:I
    if-eqz v20, :cond_0

    .line 64
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 65
    .local v7, matrix:Landroid/graphics/Matrix;
    move/from16 v0, v20

    int-to-float v3, v0

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 66
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 68
    .end local v7           #matrix:Landroid/graphics/Matrix;
    :cond_0
    if-eqz v14, :cond_1

    .line 69
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 74
    :cond_1
    const/4 v11, 0x0

    .line 75
    .local v11, bm:Landroid/graphics/Bitmap;
    const-string v3, "discussUploadImageWidth"

    invoke-static {v3}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v25

    .line 76
    .local v25, targetWidth:F
    const-string v3, "discussUploadImageHeight"

    invoke-static {v3}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    .line 77
    .local v24, targetHeight:F
    const/4 v3, 0x0

    cmpg-float v3, v3, v25

    if-gez v3, :cond_3

    const/4 v3, 0x0

    cmpg-float v3, v3, v24

    if-gez v3, :cond_3

    .line 78
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    .line 79
    .local v23, sourceWidth:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    .line 87
    .local v22, sourceHeight:I
    move/from16 v0, v23

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    .line 88
    move/from16 v0, v23

    int-to-float v3, v0

    div-float v21, v25, v3

    .line 92
    .local v21, scale:F
    :goto_0
    move/from16 v0, v23

    int-to-float v3, v0

    mul-float v3, v3, v21

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v26

    .line 93
    .local v26, width:I
    move/from16 v0, v22

    int-to-float v3, v0

    mul-float v3, v3, v21

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 101
    .local v15, height:I
    const/4 v3, 0x0

    move/from16 v0, v26

    invoke-static {v2, v0, v15, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 102
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 108
    .end local v15           #height:I
    .end local v21           #scale:F
    .end local v22           #sourceHeight:I
    .end local v23           #sourceWidth:I
    .end local v26           #width:I
    :goto_1
    const-string v3, "discussUploadImageQuality"

    invoke-static {v3}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 109
    .local v19, quality:I
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 110
    .local v9, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, v19

    invoke-virtual {v11, v3, v0, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 111
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 112
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .line 117
    .local v12, data:[B
    invoke-static {v12}, Lcom/jingdong/common/secure/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v10

    .line 118
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v2           #temp:Landroid/graphics/Bitmap;
    .end local v9           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v11           #bm:Landroid/graphics/Bitmap;
    .end local v12           #data:[B
    .end local v14           #fileInput:Ljava/io/FileInputStream;
    .end local v18           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v19           #quality:I
    .end local v20           #rotate:I
    .end local v24           #targetHeight:F
    .end local v25           #targetWidth:F
    :goto_2
    new-instance v16, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct/range {v16 .. v16}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 124
    .local v16, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v3, "pictureStreams"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    const-string v3, "uploadRuturnBackImage"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 126
    const-string v3, "gw.m.jd.com"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setHost(Ljava/lang/String;)V

    .line 127
    new-instance v3, Lcom/jingdong/app/mall/personel/PhotoUtils$1;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1}, Lcom/jingdong/app/mall/personel/PhotoUtils$1;-><init>(Lcom/jingdong/app/mall/WebActivity;Landroid/webkit/WebView;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 188
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 189
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/app/mall/WebActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 190
    return-void

    .line 90
    .end local v16           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    .restart local v2       #temp:Landroid/graphics/Bitmap;
    .restart local v11       #bm:Landroid/graphics/Bitmap;
    .restart local v14       #fileInput:Ljava/io/FileInputStream;
    .restart local v18       #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v20       #rotate:I
    .restart local v22       #sourceHeight:I
    .restart local v23       #sourceWidth:I
    .restart local v24       #targetHeight:F
    .restart local v25       #targetWidth:F
    :cond_2
    move/from16 v0, v22

    int-to-float v3, v0

    div-float v21, v24, v3

    .restart local v21       #scale:F
    goto/16 :goto_0

    .line 104
    .end local v21           #scale:F
    .end local v22           #sourceHeight:I
    .end local v23           #sourceWidth:I
    :cond_3
    move-object v11, v2

    goto :goto_1

    .line 119
    .end local v2           #temp:Landroid/graphics/Bitmap;
    .end local v11           #bm:Landroid/graphics/Bitmap;
    .end local v14           #fileInput:Ljava/io/FileInputStream;
    .end local v18           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v20           #rotate:I
    .end local v24           #targetHeight:F
    .end local v25           #targetWidth:F
    :catch_0
    move-exception v13

    .line 120
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static updateWebView(Lcom/jingdong/app/mall/WebActivity;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "webActivity"
    .parameter "webView"
    .parameter "imageUrl"

    .prologue
    .line 193
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    new-instance v0, Lcom/jingdong/app/mall/personel/PhotoUtils$2;

    invoke-direct {v0, p1, p2}, Lcom/jingdong/app/mall/personel/PhotoUtils$2;-><init>(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/WebActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
