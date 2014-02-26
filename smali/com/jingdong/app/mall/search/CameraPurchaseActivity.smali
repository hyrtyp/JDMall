.class public Lcom/jingdong/app/mall/search/CameraPurchaseActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "CameraPurchaseActivity.java"


# static fields
.field public static final INTENT_EXTRAS_CAMERA_PATH:Ljava/lang/String; = "cameraPath"

.field public static final INTENT_EXTRAS_CATEGORY_ARRAY:Ljava/lang/String; = "categoryTypeArray"

.field public static final INTENT_EXTRAS_CATEGORY_INDEX:Ljava/lang/String; = "categoryTypeIndex"

.field public static final INTENT_EXTRAS_GALLERY_DATA:Ljava/lang/String; = "galleryData"

.field public static final INTENT_EXTRAS_IS_CAMERA_FILE:Ljava/lang/String; = "isCameraFile"

.field public static final REQUEST_CODE_CAMERA:I = 0xb

.field public static final REQUEST_CODE_GALLERY:I = 0xc

.field private static final TAG:Ljava/lang/String;

.field public static category_name_array:[Ljava/lang/String;

.field public static category_selected_index:I

.field public static category_type_array:[Ljava/lang/String;


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private cameraRebootPath:Ljava/lang/String;

.field private categoryList:Landroid/widget/ListView;

.field private categoryTypeArray:Ljava/lang/String;

.field private galleryRebootData:Landroid/content/Intent;

.field private needDrawRect:Ljava/lang/String;

.field private tagText:Landroid/widget/TextView;

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->TAG:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->categoryTypeArray:Ljava/lang/String;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->categoryTypeArray:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->categoryTypeArray:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->uri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->cameraRebootPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;Landroid/content/Intent;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->goEditor(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->galleryRebootData:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->galleryRebootData:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->tagText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->categoryList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->needDrawRect:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->showDialog()V

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->takePhoto()V

    return-void
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->openGallery()V

    return-void
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->cameraRebootPath:Ljava/lang/String;

    return-object v0
.end method

.method private cursorQuery(Landroid/content/Intent;Landroid/net/Uri;)Z
    .locals 12
    .parameter "intent"
    .parameter "uri"

    .prologue
    .line 412
    const/4 v9, 0x0

    .local v9, imgNo:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, imgPath:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, imgSize:Ljava/lang/String;
    const/4 v8, 0x0

    .line 414
    .local v8, imgName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 415
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 416
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 417
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 418
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 419
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 426
    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_0
    invoke-direct {p0, v10}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->validateExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    const-string v0, "data"

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 429
    const/4 v0, 0x1

    .line 431
    :goto_1
    return v0

    .line 420
    :catch_0
    move-exception v7

    .line 421
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 431
    .end local v7           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 106
    const v0, 0x7f0c0090

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->categoryList:Landroid/widget/ListView;

    .line 107
    const v0, 0x7f0c008f

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->tagText:Landroid/widget/TextView;

    .line 108
    return-void
.end method

.method private getKillerData()V
    .locals 4

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 88
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 90
    const-string v3, "cameraPath"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->cameraRebootPath:Ljava/lang/String;

    .line 91
    const-string v3, "galleryData"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->galleryRebootData:Landroid/content/Intent;

    .line 92
    const-string v3, "categoryTypeArray"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->categoryTypeArray:Ljava/lang/String;

    .line 94
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->categoryTypeArray:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->toArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->category_type_array:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    sget-object v3, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->category_type_array:[Ljava/lang/String;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->category_type_array:[Ljava/lang/String;

    array-length v3, v3

    if-nez v3, :cond_0

    .line 103
    :cond_0
    return-void

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getWareType()V
    .locals 3

    .prologue
    .line 119
    :try_start_0
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 120
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v2, "getWareType"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 121
    const-string v2, "paiHost"

    invoke-static {v2}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, HOST:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setHost(Ljava/lang/String;)V

    .line 123
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 124
    new-instance v2, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;-><init>(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 229
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v0           #HOST:Ljava/lang/String;
    .end local v1           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private goEditor(Landroid/content/Intent;I)V
    .locals 7
    .parameter "data"
    .parameter "requestCode"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 355
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/jingdong/app/mall/search/EditorActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->needDrawRect:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->needDrawRect:Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 357
    .local v3, isNeedDrawRect:Z
    :goto_0
    const-string v4, "needDrawRect"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 358
    const-string v4, "com.360buy:navigationDisplayFlag"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    const/16 v4, 0xc

    if-ne p2, v4, :cond_4

    .line 361
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->parserUri(Landroid/content/Intent;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 362
    :cond_0
    const v4, 0x7f0703f0

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 389
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #isNeedDrawRect:Z
    :cond_1
    :goto_1
    return-void

    .restart local v2       #intent:Landroid/content/Intent;
    :cond_2
    move v3, v4

    .line 356
    goto :goto_0

    .line 365
    .restart local v3       #isNeedDrawRect:Z
    :cond_3
    const-string v4, "isCameraFile"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 366
    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 386
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #isNeedDrawRect:Z
    :catch_0
    move-exception v0

    .line 387
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 367
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #isNeedDrawRect:Z
    :cond_4
    const/16 v4, 0xb

    if-ne p2, v4, :cond_1

    .line 368
    if-eqz p1, :cond_5

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->cursorQuery(Landroid/content/Intent;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 369
    :cond_5
    const-string v4, "data"

    iget-object v5, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    iget-object v4, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 372
    :cond_6
    const-string v4, "isCameraFile"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 373
    if-eqz v3, :cond_7

    .line 374
    new-instance v1, Lcom/jingdong/common/utils/DefaultEffectHandle;

    invoke-direct {v1, p0}, Lcom/jingdong/common/utils/DefaultEffectHandle;-><init>(Lcom/jingdong/common/frame/IMyActivity;)V

    .line 375
    .local v1, effectHandle:Lcom/jingdong/common/utils/DefaultEffectHandle;
    invoke-virtual {v1}, Lcom/jingdong/common/utils/DefaultEffectHandle;->addModal()V

    .line 376
    new-instance v4, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$3;

    invoke-direct {v4, p0, v2, v1}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$3;-><init>(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;Landroid/content/Intent;Lcom/jingdong/common/utils/DefaultEffectHandle;)V

    .line 381
    const/16 v5, 0x7d0

    .line 376
    invoke-virtual {p0, v4, v5}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->post(Ljava/lang/Runnable;I)V

    goto :goto_1

    .line 383
    .end local v1           #effectHandle:Lcom/jingdong/common/utils/DefaultEffectHandle;
    :cond_7
    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private openGallery()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 299
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 301
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 320
    .local v1, parent:Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {p0, v1, v0, v3}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->startActivityForResultNoExceptionStatic(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 328
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-virtual {p0, v0, v3}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->startActivityForResultNoException(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private parserUri(Landroid/content/Intent;Landroid/net/Uri;)Z
    .locals 3
    .parameter "intent"
    .parameter "uri"

    .prologue
    .line 392
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, strUri:Ljava/lang/String;
    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->validateExtension(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    const-string v1, "data"

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 400
    const/4 v1, 0x1

    .line 405
    :goto_0
    return v1

    .line 402
    :cond_0
    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->cursorQuery(Landroid/content/Intent;Landroid/net/Uri;)Z

    move-result v1

    goto :goto_0

    .line 405
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showDialog()V
    .locals 8

    .prologue
    const v7, 0x7f070369

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 238
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 239
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f070378

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 242
    const-string v3, "photoShut"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jingdong/common/config/Configuration;->getBooleanProperty(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    new-array v2, v6, [Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 244
    .local v2, items1:[Ljava/lang/String;
    move-object v1, v2

    .line 250
    .local v1, items:[Ljava/lang/String;
    :goto_0
    new-instance v3, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$2;

    invoke-direct {v3, p0, v1}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$2;-><init>(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 265
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 266
    return-void

    .line 246
    .end local v1           #items:[Ljava/lang/String;
    .end local v2           #items1:[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const v3, 0x7f070368

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 247
    .restart local v2       #items1:[Ljava/lang/String;
    move-object v1, v2

    .restart local v1       #items:[Ljava/lang/String;
    goto :goto_0
.end method

.method private takePhoto()V
    .locals 8

    .prologue
    .line 273
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v2, intent:Landroid/content/Intent;
    const/4 v5, 0x3

    invoke-static {v5}, Lcom/jingdong/common/utils/FileService;->getDirectory(I)Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v0

    .line 276
    .local v0, dir:Lcom/jingdong/common/utils/FileService$Directory;
    if-nez v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0703eb

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 292
    .end local v0           #dir:Lcom/jingdong/common/utils/FileService$Directory;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 280
    .restart local v0       #dir:Lcom/jingdong/common/utils/FileService$Directory;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/FileService$Directory;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/cameratemp.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    .local v4, tmpFile:Ljava/io/File;
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 284
    .local v3, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "cameraFilePath"

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 286
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->uri:Landroid/net/Uri;

    .line 287
    const-string v5, "output"

    iget-object v6, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 288
    const/16 v5, 0xb

    invoke-virtual {p0, v2, v5}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->startActivityForResultNoException(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    .end local v0           #dir:Lcom/jingdong/common/utils/FileService$Directory;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #sharedPreferences:Landroid/content/SharedPreferences;
    .end local v4           #tmpFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 290
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private toArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private validateExtension(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    const/4 v0, 0x0

    .line 437
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 443
    :cond_0
    :goto_0
    return v0

    .line 440
    :cond_1
    const-string v1, ".png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".jpg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".PNG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".JPG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 332
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/app/mall/utils/MyActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 334
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 335
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v4, "cameraFilePath"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, url:Ljava/lang/String;
    const-string v4, "photoType"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, type:Ljava/lang/String;
    const-string v4, "photoTypeIndex"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 338
    .local v0, index:I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 339
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "cameraFilePath"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 341
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 342
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "photoType"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 344
    :cond_1
    if-gez v0, :cond_2

    .line 345
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "photoTypeIndex"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 347
    :cond_2
    if-ne p2, v6, :cond_3

    .line 348
    invoke-direct {p0, p3, p1}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->goEditor(Landroid/content/Intent;I)V

    .line 351
    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v1, 0x7f030011

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->setContentView(I)V

    .line 78
    invoke-direct {p0}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->findView()V

    .line 79
    invoke-direct {p0}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->getWareType()V

    .line 80
    const v1, 0x7f0c007e

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    .local v0, titleView:Landroid/widget/TextView;
    const v1, 0x7f0703ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    invoke-direct {p0}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->getKillerData()V

    .line 83
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 448
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 449
    new-instance v0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$4;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$4;-><init>(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->post(Ljava/lang/Runnable;)V

    .line 464
    return-void
.end method
