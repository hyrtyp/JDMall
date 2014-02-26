.class public Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "AmCheckinActivity.java"


# instance fields
.field private final SHAKE_SOUND_MAX:I

.field private TAG:Ljava/lang/String;

.field private mShakeIsStop:Z

.field private mShakeListener:Lcom/jingdong/app/mall/shake/ShakeListener;

.field private mVibrator:Landroid/os/Vibrator;

.field private sndPool:Landroid/media/SoundPool;

.field private soundId:Ljava/lang/Integer;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 46
    const-class v0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->mShakeIsStop:Z

    .line 51
    const/4 v0, 0x3

    iput v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->SHAKE_SOUND_MAX:I

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->mShakeIsStop:Z

    return v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->stopShakeListener()V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->doCheckin()V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;)Lcom/jingdong/app/mall/shake/ShakeListener;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->mShakeListener:Lcom/jingdong/app/mall/shake/ShakeListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->token:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-direct {p0, p1, p2, p3}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private doCheckin()V
    .locals 3

    .prologue
    .line 191
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 192
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 193
    const-string v1, "checkinAnnual"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 194
    const-string v2, "tk"

    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->token:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    new-instance v1, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;-><init>(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 250
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 251
    return-void

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->token:Ljava/lang/String;

    goto :goto_0
.end method

.method private findView()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 71
    const-string v8, "vibrator"

    invoke-virtual {p0, v8}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Vibrator;

    iput-object v8, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->mVibrator:Landroid/os/Vibrator;

    .line 72
    new-instance v8, Landroid/media/SoundPool;

    const/4 v9, 0x3

    const/4 v10, 0x5

    invoke-direct {v8, v9, v11, v10}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v8, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->sndPool:Landroid/media/SoundPool;

    .line 74
    :try_start_0
    iget-object v8, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->sndPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string v10, "sound/shakeing.mp3"

    invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->soundId:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    const v8, 0x7f0c0072

    invoke-virtual {p0, v8}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 80
    .local v2, layout:Landroid/widget/RelativeLayout;
    :try_start_1
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    const v9, 0x7f020096

    invoke-static {p0, v9}, Lcom/jingdong/common/utils/JDImageUtils;->getBitmapWithJpg16(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 87
    :goto_1
    const v8, 0x7f0c0073

    invoke-virtual {p0, v8}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 88
    .local v7, userName:Landroid/widget/TextView;
    const v8, 0x7f0c0077

    invoke-virtual {p0, v8}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 89
    .local v0, checkinBtn:Landroid/widget/ImageView;
    const v8, 0x7f0c0076

    invoke-virtual {p0, v8}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 90
    .local v4, rock:Landroid/widget/ImageView;
    const v8, 0x7f0c0075

    invoke-virtual {p0, v8}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 92
    .local v5, rockBg:Landroid/widget/ImageView;
    :try_start_2
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0200a8

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->scaleImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 93
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0200a9

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->scaleImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 97
    :goto_2
    new-instance v8, Lcom/jingdong/app/mall/shake/ShakeListener;

    invoke-direct {v8, p0}, Lcom/jingdong/app/mall/shake/ShakeListener;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->mShakeListener:Lcom/jingdong/app/mall/shake/ShakeListener;

    .line 98
    iget-object v8, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->mShakeListener:Lcom/jingdong/app/mall/shake/ShakeListener;

    new-instance v9, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$1;

    invoke-direct {v9, p0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$1;-><init>(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;)V

    invoke-virtual {v8, v9}, Lcom/jingdong/app/mall/shake/ShakeListener;->setOnShakeListener(Lcom/jingdong/app/mall/shake/ShakeListener$OnShakeListener;)V

    .line 116
    iget-object v8, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->mShakeListener:Lcom/jingdong/app/mall/shake/ShakeListener;

    invoke-virtual {v8}, Lcom/jingdong/app/mall/shake/ShakeListener;->start()V

    .line 117
    new-instance v8, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$2;

    invoke-direct {v8, p0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$2;-><init>(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "name"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, user:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v6, "\u4eac\u4e1c\u4eba"

    .end local v6           #user:Ljava/lang/String;
    :cond_0
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, name:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\u60a8\u597d\uff01"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->getUserName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-static {p0, v4, v5}, Lcom/jingdong/app/mall/shake/ShakeAnimationUtils;->startBottomAnim(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    .line 132
    return-void

    .line 75
    .end local v0           #checkinBtn:Landroid/widget/ImageView;
    .end local v2           #layout:Landroid/widget/RelativeLayout;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #rock:Landroid/widget/ImageView;
    .end local v5           #rockBg:Landroid/widget/ImageView;
    .end local v7           #userName:Landroid/widget/TextView;
    :catch_0
    move-exception v1

    .line 76
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 94
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #checkinBtn:Landroid/widget/ImageView;
    .restart local v2       #layout:Landroid/widget/RelativeLayout;
    .restart local v4       #rock:Landroid/widget/ImageView;
    .restart local v5       #rockBg:Landroid/widget/ImageView;
    .restart local v7       #userName:Landroid/widget/TextView;
    :catch_1
    move-exception v1

    .line 95
    .local v1, e:Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 81
    .end local v0           #checkinBtn:Landroid/widget/ImageView;
    .end local v1           #e:Ljava/lang/Throwable;
    .end local v4           #rock:Landroid/widget/ImageView;
    .end local v5           #rockBg:Landroid/widget/ImageView;
    .end local v7           #userName:Landroid/widget/TextView;
    :catch_2
    move-exception v8

    goto/16 :goto_1
.end method

.method private getUserName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "text"
    .parameter "userName"

    .prologue
    const/16 v4, 0x21

    const/4 v3, 0x0

    .line 135
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 136
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const/16 v2, -0x500

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 137
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const v2, 0x3fb851ec

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 138
    return-object v0
.end method

.method private scaleImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x0

    .line 270
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 271
    .local v3, bmpWidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 272
    .local v4, bmpHeight:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 273
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x4434

    div-float v9, v0, v2

    .line 274
    .local v9, w:F
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x44a0

    div-float v7, v0, v2

    .line 275
    .local v7, h:F
    invoke-virtual {v5, v9, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 276
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 277
    .local v8, resizeBmp:Landroid/graphics/Bitmap;
    return-object v8
.end method

.method private showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "msg"
    .parameter "token"

    .prologue
    .line 281
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 282
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 283
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 284
    const v1, 0x7f070223

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$4;

    invoke-direct {v2, p0, p3}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$4;-><init>(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 296
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 297
    return-void
.end method

.method private startShakeListener()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->mShakeListener:Lcom/jingdong/app/mall/shake/ShakeListener;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->mShakeListener:Lcom/jingdong/app/mall/shake/ShakeListener;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shake/ShakeListener;->start()V

    .line 179
    :cond_0
    return-void
.end method

.method private startShakeSound()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f00

    .line 167
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->sndPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->soundId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->sndPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->soundId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v6, 0x3f80

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 170
    :cond_0
    return-void
.end method

.method private stopShakeListener()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->mShakeListener:Lcom/jingdong/app/mall/shake/ShakeListener;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->mShakeListener:Lcom/jingdong/app/mall/shake/ShakeListener;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shake/ShakeListener;->stop()V

    .line 188
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f03000a

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->setContentView(Landroid/view/View;)V

    .line 59
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->findView()V

    .line 61
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->token:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/jingdong/app/mall/amHelper/AmHelper;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->token:Ljava/lang/String;

    .line 68
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 256
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->startShakeListener()V

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->mShakeIsStop:Z

    .line 258
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 262
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onStop()V

    .line 263
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->stopShakeListener()V

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->mShakeIsStop:Z

    .line 265
    return-void
.end method

.method protected startToShake()V
    .locals 0

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->startVibrato()V

    .line 150
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->startShakeSound()V

    .line 152
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->doCheckin()V

    .line 154
    return-void
.end method

.method public startVibrato()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->mVibrator:Landroid/os/Vibrator;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 161
    return-void

    .line 160
    nop

    :array_0
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
