.class public Lcom/jingdong/app/mall/personel/UserPhotoUpload;
.super Ljava/lang/Object;
.source "UserPhotoUpload.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static PHOTO_ZOOM:I = 0x0

.field private static RROM_CAMERA:I = 0x0

.field private static RROM_LOCAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UserPhotoUpload"

.field private static instance:Lcom/jingdong/app/mall/personel/UserPhotoUpload;


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private mFirstUploadSucess:Z

.field private mHeadRelativeLayout:Landroid/widget/RelativeLayout;

.field private mUserImageView:Landroid/widget/ImageView;

.field private mView:Landroid/view/View;

.field private myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private final userPhotoDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    sput v0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->RROM_LOCAL:I

    .line 45
    const/4 v0, 0x2

    sput v0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->RROM_CAMERA:I

    .line 46
    const/4 v0, 0x3

    sput v0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->PHOTO_ZOOM:I

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/view/View;)V
    .locals 2
    .parameter "myActivity"
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->mUserImageView:Landroid/widget/ImageView;

    .line 53
    const-string v0, "/jingdong/userphoto"

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->userPhotoDir:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->alertDialog:Landroid/app/AlertDialog;

    .line 67
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 68
    iput-object p2, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->mView:Landroid/view/View;

    .line 69
    return-void
.end method

.method private Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .parameter "bm"

    .prologue
    .line 430
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 431
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 432
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private ShowPickDialog()V
    .locals 5

    .prologue
    .line 100
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    const v3, 0x7f070490

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/utils/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 102
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    const v4, 0x7f070491

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/utils/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    const v4, 0x7f070492

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/utils/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 104
    .local v1, items:[Ljava/lang/String;
    new-instance v2, Lcom/jingdong/app/mall/personel/UserPhotoUpload$1;

    invoke-direct {v2, p0, v1}, Lcom/jingdong/app/mall/personel/UserPhotoUpload$1;-><init>(Lcom/jingdong/app/mall/personel/UserPhotoUpload;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->alertDialog:Landroid/app/AlertDialog;

    .line 121
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/UserPhotoUpload;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/personel/UserPhotoUpload;)Lcom/jingdong/app/mall/utils/MyActivity;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/personel/UserPhotoUpload;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->recycleBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/personel/UserPhotoUpload;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->showAlertDialogDialog()V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/personel/UserPhotoUpload;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->mUserImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/personel/UserPhotoUpload;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->mHeadRelativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/personel/UserPhotoUpload;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->ShowPickDialog()V

    return-void
.end method

.method public static getInstance(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/view/View;)Lcom/jingdong/app/mall/personel/UserPhotoUpload;
    .locals 1
    .parameter "myActivity"
    .parameter "view"

    .prologue
    .line 59
    sget-object v0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->instance:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/view/View;)V

    sput-object v0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->instance:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    .line 63
    :cond_0
    sget-object v0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->instance:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    return-object v0
.end method

.method public static getPhotoFromCache(Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .parameter "pin"

    .prologue
    const/4 v5, 0x0

    .line 484
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/jingdong/common/utils/FileService;->getDirectory(I)Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v1

    .line 485
    .local v1, directory:Lcom/jingdong/common/utils/FileService$Directory;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->getUserName()Ljava/lang/String;

    move-result-object v4

    .line 486
    .local v4, userPath:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    if-nez v4, :cond_3

    :cond_0
    move-object v2, v5

    .line 522
    :cond_1
    :goto_1
    return-object v2

    .end local v4           #userPath:Ljava/lang/String;
    :cond_2
    move-object v4, p0

    .line 485
    goto :goto_0

    .line 490
    .restart local v4       #userPath:Ljava/lang/String;
    :cond_3
    if-eqz v4, :cond_4

    .line 491
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".image"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 494
    :cond_4
    invoke-virtual {v1}, Lcom/jingdong/common/utils/FileService$Directory;->getDir()Ljava/io/File;

    move-result-object v0

    .line 508
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v1}, Lcom/jingdong/common/utils/FileService$Directory;->getPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 509
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/FileService$Directory;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v7, Ljava/io/File;->separatorChar:C

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 511
    .local v3, filePath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 515
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .end local v2           #file:Ljava/io/File;
    .end local v3           #filePath:Ljava/lang/String;
    :cond_5
    move-object v2, v5

    .line 522
    goto :goto_1
.end method

.method public static getUserBitmapPhotoFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "userName"

    .prologue
    .line 456
    invoke-static {p0}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->getPhotoFromCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 457
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 460
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getUserName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 441
    const/4 v1, 0x0

    .line 443
    .local v1, userPath:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #userPath:Ljava/lang/String;
    .local v2, userPath:Ljava/lang/String;
    move-object v1, v2

    .line 448
    .end local v2           #userPath:Ljava/lang/String;
    .restart local v1       #userPath:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "photo"

    .prologue
    .line 296
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 299
    :cond_0
    return-void
.end method

.method private showAlertDialogDialog()V
    .locals 3

    .prologue
    .line 305
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 306
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0703c6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 307
    const v1, 0x7f070493

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 309
    const v1, 0x7f0701a1

    new-instance v2, Lcom/jingdong/app/mall/personel/UserPhotoUpload$4;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/UserPhotoUpload$4;-><init>(Lcom/jingdong/app/mall/personel/UserPhotoUpload;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 315
    const v1, 0x7f0701b1

    new-instance v2, Lcom/jingdong/app/mall/personel/UserPhotoUpload$5;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/UserPhotoUpload$5;-><init>(Lcom/jingdong/app/mall/personel/UserPhotoUpload;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 323
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v2, Lcom/jingdong/app/mall/personel/UserPhotoUpload$6;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/app/mall/personel/UserPhotoUpload$6;-><init>(Lcom/jingdong/app/mall/personel/UserPhotoUpload;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 329
    return-void
.end method

.method private uploadBitmap(Landroid/graphics/Bitmap;)V
    .locals 8
    .parameter "photo"

    .prologue
    const/4 v7, 0x1

    .line 196
    const-string v5, "discussUploadImageQuality"

    invoke-static {v5}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 197
    .local v4, quality:I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 198
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v5, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 200
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 204
    .local v2, data:[B
    invoke-static {v2}, Lcom/jingdong/common/secure/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, code:Ljava/lang/String;
    new-instance v3, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 207
    .local v3, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v5, "image"

    invoke-virtual {v3, v5, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    const-string v5, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    const-string v5, "uploadImage"

    invoke-virtual {v3, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v3, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPost(Z)V

    .line 211
    new-instance v5, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;

    invoke-direct {v5, p0, p1}, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;-><init>(Lcom/jingdong/app/mall/personel/UserPhotoUpload;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 285
    invoke-virtual {v3, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 286
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v5}, Lcom/jingdong/app/mall/utils/MyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 287
    return-void
.end method


# virtual methods
.method public getFirstUploadSucess()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->mFirstUploadSucess:Z

    return v0
.end method

.method public getFromCamera()V
    .locals 4

    .prologue
    .line 160
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->checkSDcard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "output"

    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->getUserPhotoFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 163
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    sget v3, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->RROM_CAMERA:I

    invoke-virtual {v2, v1, v3}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityForResultNoException(Landroid/content/Intent;I)V

    .line 177
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 165
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 166
    .local v0, hintDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f07037d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 167
    const v2, 0x7f07037e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 168
    const v2, 0x7f07037c

    new-instance v3, Lcom/jingdong/app/mall/personel/UserPhotoUpload$2;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/personel/UserPhotoUpload$2;-><init>(Lcom/jingdong/app/mall/personel/UserPhotoUpload;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 175
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public getFromLocal()V
    .locals 3

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 185
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    sget v2, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->RROM_LOCAL:I

    invoke-virtual {v1, v0, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 187
    return-void
.end method

.method public getPhotoFromCache()Ljava/io/File;
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->getPhotoFromCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getUserPhotoFile()Ljava/io/File;
    .locals 6

    .prologue
    .line 376
    const/4 v2, 0x0

    .line 378
    .local v2, imageFile:Ljava/io/File;
    :try_start_0
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->checkSDcard()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 379
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/jingdong/userphoto"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 381
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 383
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/android_user_no_image.jpg"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #imageFile:Ljava/io/File;
    .local v3, imageFile:Ljava/io/File;
    move-object v2, v3

    .end local v1           #file:Ljava/io/File;
    .end local v3           #imageFile:Ljava/io/File;
    .restart local v2       #imageFile:Ljava/io/File;
    :cond_1
    move-object v3, v2

    .line 389
    .end local v2           #imageFile:Ljava/io/File;
    .restart local v3       #imageFile:Ljava/io/File;
    :goto_0
    return-object v3

    .line 386
    .end local v3           #imageFile:Ljava/io/File;
    .restart local v2       #imageFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 387
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v2

    .line 389
    .end local v2           #imageFile:Ljava/io/File;
    .restart local v3       #imageFile:Ljava/io/File;
    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->mView:Landroid/view/View;

    const v1, 0x7f0c04b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->mUserImageView:Landroid/widget/ImageView;

    .line 76
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->mUserImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->mView:Landroid/view/View;

    const v1, 0x7f0c04b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->mHeadRelativeLayout:Landroid/widget/RelativeLayout;

    .line 79
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_0
    return-void

    .line 88
    :pswitch_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->ShowPickDialog()V

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x7f0c04b8
        :pswitch_0
    .end packed-switch
.end method

.method public savePhotoToCache(Landroid/graphics/Bitmap;)Ljava/lang/Boolean;
    .locals 8
    .parameter "bitmap"

    .prologue
    .line 400
    const/4 v3, 0x0

    .line 401
    .local v3, fileName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 402
    .local v4, result:Z
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/jingdong/common/utils/FileService;->getDirectory(I)Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v0

    .line 403
    .local v0, directory:Lcom/jingdong/common/utils/FileService$Directory;
    if-eqz v0, :cond_0

    .line 405
    :try_start_0
    invoke-static {}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->getUserName()Ljava/lang/String;

    move-result-object v5

    .line 410
    .local v5, userPath:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 411
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".image"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 412
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->Bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 413
    .local v2, fileContent:[B
    invoke-static {v0, v3, v2}, Lcom/jingdong/common/utils/FileService;->saveToSDCard(Lcom/jingdong/common/utils/FileService$Directory;Ljava/lang/String;[B)Z

    move-result v4

    .line 414
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 420
    .end local v2           #fileContent:[B
    .end local v5           #userPath:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 416
    :catch_0
    move-exception v1

    .line 417
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 420
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0
.end method

.method public setFirstUploadSucess(Z)V
    .locals 0
    .parameter "firstUpload"

    .prologue
    .line 367
    iput-boolean p1, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->mFirstUploadSucess:Z

    .line 368
    return-void
.end method

.method public setPicToView(Landroid/content/Intent;)V
    .locals 3
    .parameter "picdata"

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 150
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 151
    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 152
    .local v1, photo:Landroid/graphics/Bitmap;
    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->uploadBitmap(Landroid/graphics/Bitmap;)V

    .line 154
    .end local v1           #photo:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public startPhotoZoom(Landroid/net/Uri;)V
    .locals 5
    .parameter "uri"

    .prologue
    const/16 v4, 0x96

    const/4 v3, 0x1

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    sget v2, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->PHOTO_ZOOM:I

    invoke-virtual {v1, v0, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityForResultNoException(Landroid/content/Intent;I)V

    .line 141
    return-void
.end method

.method public toMergePhoto(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/LayerDrawable;
    .locals 11
    .parameter "bgBitmap"
    .parameter "drawable"

    .prologue
    .line 342
    move-object v7, p2

    .line 343
    .local v7, firstBitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 345
    .local v9, userImagePrompt:Landroid/graphics/Bitmap;
    const/4 v1, 0x3

    new-array v6, v1, [Landroid/graphics/drawable/Drawable;

    .line 346
    .local v6, array:[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v6, v1

    .line 347
    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v6, v1

    .line 348
    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v6, v1

    .line 349
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 351
    .local v0, la:Landroid/graphics/drawable/LayerDrawable;
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 352
    .local v8, padding:I
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 353
    .local v10, userImagePromptSize:I
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 354
    const/4 v1, 0x1

    move v2, v8

    move v3, v8

    move v4, v8

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 355
    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, v10

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 356
    return-object v0
.end method
