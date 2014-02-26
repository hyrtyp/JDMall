.class public Lcom/jingdong/app/mall/product/PriceReportActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "PriceReportActivity.java"


# instance fields
.field private final SCAN_PICTURE:I

.field private final TAG:Ljava/lang/String;

.field private final TAKE_PICTURE:I

.field private alertDialog:Landroid/app/AlertDialog;

.field private myDiscussImage:Lcom/jingdong/common/entity/DiscussImage;

.field private nameAndAwordView:Landroid/widget/TextView;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private product:Lcom/jingdong/common/entity/Product;

.field private productPriceView:Landroid/widget/TextView;

.field private shopNameEditText:Landroid/widget/EditText;

.field private shopPriceEditText:Landroid/widget/EditText;

.field private submit:Landroid/widget/Button;

.field private takeImag:Landroid/widget/ImageButton;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 48
    const-string v0, "PriceReportActivity"

    iput-object v0, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->TAG:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/jingdong/app/mall/product/PriceReportActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/PriceReportActivity$1;-><init>(Lcom/jingdong/app/mall/product/PriceReportActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->onClickListener:Landroid/view/View$OnClickListener;

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->TAKE_PICTURE:I

    .line 149
    const/4 v0, 0x1

    iput v0, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->SCAN_PICTURE:I

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/PriceReportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/PriceReportActivity;->showDialog()V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/product/PriceReportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/PriceReportActivity;->validate()V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/product/PriceReportActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/product/PriceReportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/PriceReportActivity;->getFromCamera()V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/product/PriceReportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/PriceReportActivity;->getFromLocal()V

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/product/PriceReportActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->takeImag:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/product/PriceReportActivity;)Lcom/jingdong/common/entity/DiscussImage;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->myDiscussImage:Lcom/jingdong/common/entity/DiscussImage;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/product/PriceReportActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/PriceReportActivity;->showDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/product/PriceReportActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->submit:Landroid/widget/Button;

    return-object v0
.end method

.method private getFromCamera()V
    .locals 7

    .prologue
    .line 153
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->checkSDcard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
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

    .line 158
    .local v2, tmpFile:Ljava/io/File;
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->uri:Landroid/net/Uri;

    .line 159
    const-string v3, "output"

    iget-object v4, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 161
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/jingdong/app/mall/product/PriceReportActivity;->startActivityForResultNoException(Landroid/content/Intent;I)V

    .line 175
    .end local v1           #mIntent:Landroid/content/Intent;
    .end local v2           #tmpFile:Ljava/io/File;
    :goto_0
    return-void

    .line 163
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 164
    .local v0, hintDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f07037d

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 165
    const v3, 0x7f07037e

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 166
    const v3, 0x7f07037c

    new-instance v4, Lcom/jingdong/app/mall/product/PriceReportActivity$2;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/product/PriceReportActivity$2;-><init>(Lcom/jingdong/app/mall/product/PriceReportActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 173
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private getFromLocal()V
    .locals 2

    .prologue
    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/jingdong/app/mall/product/PriceReportActivity;->startActivityForResultNoException(Landroid/content/Intent;I)V

    .line 182
    return-void
.end method

.method private showDialog()V
    .locals 8

    .prologue
    const v7, 0x7f070369

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 199
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 200
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f070378

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 203
    const-string v3, "photoShut"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jingdong/common/config/Configuration;->getBooleanProperty(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    new-array v2, v6, [Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/product/PriceReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 205
    .local v2, items1:[Ljava/lang/String;
    move-object v1, v2

    .line 211
    .local v1, items:[Ljava/lang/String;
    :goto_0
    new-instance v3, Lcom/jingdong/app/mall/product/PriceReportActivity$4;

    invoke-direct {v3, p0, v1}, Lcom/jingdong/app/mall/product/PriceReportActivity$4;-><init>(Lcom/jingdong/app/mall/product/PriceReportActivity;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 226
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 227
    return-void

    .line 207
    .end local v1           #items:[Ljava/lang/String;
    .end local v2           #items1:[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const v3, 0x7f070368

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/product/PriceReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/product/PriceReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 208
    .restart local v2       #items1:[Ljava/lang/String;
    move-object v1, v2

    .restart local v1       #items:[Ljava/lang/String;
    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 185
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 186
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0701a9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 188
    const v1, 0x7f07014d

    new-instance v2, Lcom/jingdong/app/mall/product/PriceReportActivity$3;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/product/PriceReportActivity$3;-><init>(Lcom/jingdong/app/mall/product/PriceReportActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 195
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 196
    return-void
.end method

.method private submit(JLjava/lang/String;Ljava/lang/String;Lcom/jingdong/common/entity/DiscussImage;)V
    .locals 31
    .parameter "productId"
    .parameter "price"
    .parameter "shopName"
    .parameter "discussImage"

    .prologue
    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/product/PriceReportActivity;->hideSoftInput()V

    .line 280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/product/PriceReportActivity;->submit:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 281
    const/4 v11, 0x0

    .line 284
    .local v11, code:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/product/PriceReportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lcom/jingdong/common/entity/DiscussImage;->getPath()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    check-cast v14, Ljava/io/FileInputStream;

    .line 285
    .local v14, fileInput:Ljava/io/FileInputStream;
    new-instance v22, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 286
    .local v22, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x2

    move-object/from16 v0, v22

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 287
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-static {v14, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 288
    .local v2, temp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p5 .. p5}, Lcom/jingdong/common/entity/DiscussImage;->getRotate()I

    move-result v24

    .line 289
    .local v24, rotate:I
    if-eqz v24, :cond_0

    .line 290
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 291
    .local v7, matrix:Landroid/graphics/Matrix;
    move/from16 v0, v24

    int-to-float v3, v0

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 292
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 294
    .end local v7           #matrix:Landroid/graphics/Matrix;
    :cond_0
    if-eqz v14, :cond_1

    .line 295
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 300
    :cond_1
    const/4 v10, 0x0

    .line 301
    .local v10, bm:Landroid/graphics/Bitmap;
    const-string v3, "discussUploadImageWidth"

    invoke-static {v3}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v29

    .line 302
    .local v29, targetWidth:F
    const-string v3, "discussUploadImageHeight"

    invoke-static {v3}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v28

    .line 303
    .local v28, targetHeight:F
    const/4 v3, 0x0

    cmpg-float v3, v3, v29

    if-gez v3, :cond_4

    const/4 v3, 0x0

    cmpg-float v3, v3, v28

    if-gez v3, :cond_4

    .line 304
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    .line 305
    .local v27, sourceWidth:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    .line 313
    .local v26, sourceHeight:I
    move/from16 v0, v27

    move/from16 v1, v26

    if-le v0, v1, :cond_3

    .line 314
    move/from16 v0, v27

    int-to-float v3, v0

    div-float v25, v29, v3

    .line 318
    .local v25, scale:F
    :goto_0
    move/from16 v0, v27

    int-to-float v3, v0

    mul-float v3, v3, v25

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v30

    .line 319
    .local v30, width:I
    move/from16 v0, v26

    int-to-float v3, v0

    mul-float v3, v3, v25

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 327
    .local v15, height:I
    const/4 v3, 0x0

    move/from16 v0, v30

    invoke-static {v2, v0, v15, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 328
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 334
    .end local v15           #height:I
    .end local v25           #scale:F
    .end local v26           #sourceHeight:I
    .end local v27           #sourceWidth:I
    .end local v30           #width:I
    :goto_1
    const-string v3, "discussUploadImageQuality"

    invoke-static {v3}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 335
    .local v23, quality:I
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 336
    .local v9, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, v23

    invoke-virtual {v10, v3, v0, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 337
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 338
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .line 344
    .local v12, data:[B
    invoke-static {v12}, Lcom/jingdong/common/secure/Base64;->encodeBytes([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 349
    .end local v2           #temp:Landroid/graphics/Bitmap;
    .end local v9           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v10           #bm:Landroid/graphics/Bitmap;
    .end local v12           #data:[B
    .end local v14           #fileInput:Ljava/io/FileInputStream;
    .end local v22           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v23           #quality:I
    .end local v24           #rotate:I
    .end local v28           #targetHeight:F
    .end local v29           #targetWidth:F
    :goto_2
    new-instance v17, Lorg/json/JSONArray;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONArray;-><init>()V

    .line 350
    .local v17, jsonArray:Lorg/json/JSONArray;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 351
    sget-wide v18, Lcom/jingdong/common/lbs/LocManager;->lati:D

    .line 352
    .local v18, lat:D
    sget-wide v20, Lcom/jingdong/common/lbs/LocManager;->longi:D

    .line 353
    .local v20, lng:D
    new-instance v16, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct/range {v16 .. v16}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 354
    .local v16, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v3, "skuId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 355
    const-string v3, "price"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    const-string v3, "shopName"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 357
    const-string v3, "imageData"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    const-wide/16 v3, 0x0

    cmpl-double v3, v18, v3

    if-eqz v3, :cond_2

    const-wide/16 v3, 0x0

    cmpl-double v3, v20, v3

    if-eqz v3, :cond_2

    .line 359
    const-string v3, "lng"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 360
    const-string v3, "lat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    :cond_2
    const-string v3, "priceReport"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 365
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPost(Z)V

    .line 367
    new-instance v3, Lcom/jingdong/app/mall/product/PriceReportActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/jingdong/app/mall/product/PriceReportActivity$6;-><init>(Lcom/jingdong/app/mall/product/PriceReportActivity;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/product/PriceReportActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 449
    return-void

    .line 316
    .end local v16           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    .end local v17           #jsonArray:Lorg/json/JSONArray;
    .end local v18           #lat:D
    .end local v20           #lng:D
    .restart local v2       #temp:Landroid/graphics/Bitmap;
    .restart local v10       #bm:Landroid/graphics/Bitmap;
    .restart local v14       #fileInput:Ljava/io/FileInputStream;
    .restart local v22       #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v24       #rotate:I
    .restart local v26       #sourceHeight:I
    .restart local v27       #sourceWidth:I
    .restart local v28       #targetHeight:F
    .restart local v29       #targetWidth:F
    :cond_3
    move/from16 v0, v26

    int-to-float v3, v0

    div-float v25, v28, v3

    .restart local v25       #scale:F
    goto/16 :goto_0

    .line 330
    .end local v25           #scale:F
    .end local v26           #sourceHeight:I
    .end local v27           #sourceWidth:I
    :cond_4
    move-object v10, v2

    goto/16 :goto_1

    .line 345
    .end local v2           #temp:Landroid/graphics/Bitmap;
    .end local v10           #bm:Landroid/graphics/Bitmap;
    .end local v14           #fileInput:Ljava/io/FileInputStream;
    .end local v22           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v24           #rotate:I
    .end local v28           #targetHeight:F
    .end local v29           #targetWidth:F
    :catch_0
    move-exception v13

    .line 346
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

.method private validate()V
    .locals 8

    .prologue
    const/4 v1, -0x1

    .line 118
    iget-object v0, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->product:Lcom/jingdong/common/entity/Product;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v7

    .line 120
    .local v7, productId:Ljava/lang/Long;
    if-nez v7, :cond_1

    .line 121
    const v0, 0x7f070451

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 145
    .end local v7           #productId:Ljava/lang/Long;
    :cond_0
    :goto_0
    return-void

    .line 125
    .restart local v7       #productId:Ljava/lang/Long;
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->myDiscussImage:Lcom/jingdong/common/entity/DiscussImage;

    if-nez v0, :cond_2

    .line 126
    const v0, 0x7f070454

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->shopNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, shopName:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    const v0, 0x7f070452

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->shopPriceEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, price:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v5, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->myDiscussImage:Lcom/jingdong/common/entity/DiscussImage;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/product/PriceReportActivity;->submit(JLjava/lang/String;Ljava/lang/String;Lcom/jingdong/common/entity/DiscussImage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v6

    .line 142
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 232
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    const/4 v0, 0x0

    .line 238
    .local v0, discussImage:Lcom/jingdong/common/entity/DiscussImage;
    packed-switch p1, :pswitch_data_0

    .line 259
    :goto_1
    if-eqz v0, :cond_0

    .line 264
    iput-object v0, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->myDiscussImage:Lcom/jingdong/common/entity/DiscussImage;

    .line 265
    new-instance v1, Lcom/jingdong/app/mall/product/PriceReportActivity$5;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/PriceReportActivity$5;-><init>(Lcom/jingdong/app/mall/product/PriceReportActivity;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/PriceReportActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 242
    :pswitch_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 243
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->uri:Landroid/net/Uri;

    .line 245
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->uri:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/jingdong/common/entity/DiscussImage;->createDiscussImage(Landroid/content/Context;Landroid/net/Uri;)Lcom/jingdong/common/entity/DiscussImage;

    move-result-object v0

    .line 248
    goto :goto_1

    .line 252
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->uri:Landroid/net/Uri;

    .line 253
    iget-object v1, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->uri:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/jingdong/common/entity/DiscussImage;->createDiscussImage(Landroid/content/Context;Landroid/net/Uri;)Lcom/jingdong/common/entity/DiscussImage;

    move-result-object v0

    goto :goto_1

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v4, 0x7f0300d0

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/product/PriceReportActivity;->setContentView(I)V

    .line 63
    const v4, 0x7f0c007e

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/product/PriceReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 64
    .local v3, topTitle:Landroid/widget/TextView;
    const v4, 0x7f0c071c

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/product/PriceReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 65
    .local v2, topRightBtn:Landroid/widget/Button;
    const v4, 0x7f070446

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 66
    const v4, 0x7f070448

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(I)V

    .line 67
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 68
    iget-object v4, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v4, 0x7f0c0500

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/product/PriceReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->nameAndAwordView:Landroid/widget/TextView;

    .line 71
    const v4, 0x7f0c0501

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/product/PriceReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->productPriceView:Landroid/widget/TextView;

    .line 72
    const v4, 0x7f0c050a

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/product/PriceReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->takeImag:Landroid/widget/ImageButton;

    .line 73
    const v4, 0x7f0c050f

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/product/PriceReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->shopNameEditText:Landroid/widget/EditText;

    .line 74
    const v4, 0x7f0c0511

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/product/PriceReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->shopPriceEditText:Landroid/widget/EditText;

    .line 75
    const v4, 0x7f0c0513

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/product/PriceReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->submit:Landroid/widget/Button;

    .line 77
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/PriceReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 78
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "product"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/Product;

    iput-object v4, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->product:Lcom/jingdong/common/entity/Product;

    .line 79
    new-instance v1, Lcom/jingdong/app/mall/utils/ProductShow;

    iget-object v4, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-direct {v1, p0, v4}, Lcom/jingdong/app/mall/utils/ProductShow;-><init>(Landroid/content/Context;Lcom/jingdong/common/entity/Product;)V

    .line 80
    .local v1, productShow:Lcom/jingdong/app/mall/utils/ProductShow;
    iget-object v4, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->nameAndAwordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/ProductShow;->getNameAndAdWord()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v4, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->productPriceView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/ProductShow;->getJdPrice()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v4, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->takeImag:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v4, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->submit:Landroid/widget/Button;

    iget-object v5, p0, Lcom/jingdong/app/mall/product/PriceReportActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method
