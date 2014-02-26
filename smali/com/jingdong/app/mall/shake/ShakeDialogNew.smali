.class public Lcom/jingdong/app/mall/shake/ShakeDialogNew;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "ShakeDialogNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DELAY_TIME:J = 0x258L

.field private static final SHAKE_ENTER:I = 0x1

.field private static final SHAKE_EXIT:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field public static instance:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

.field public static isOnResume:Z

.field public static isReceiveCouponed:Z


# instance fields
.field private clickTime:J

.field private couponComment:Landroid/widget/TextView;

.field private couponType:Landroid/widget/TextView;

.field private isReceiveCouponStatus:Z

.field private mAchieveMsg:Ljava/lang/String;

.field private mAchieveProgressView:Landroid/view/View;

.field private mAchieveType:Ljava/lang/String;

.field private mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private mCouponImage:Landroid/widget/ImageView;

.field private mCouponRelativeLayout:Landroid/widget/RelativeLayout;

.field private mCouponSucessRelativeLayout:Landroid/widget/RelativeLayout;

.field private mJLOGEvent:Ljava/lang/String;

.field private mJLOGKey:Ljava/lang/String;

.field private mJLOGValue:Ljava/lang/String;

.field private mPhoneAuth:Landroid/widget/EditText;

.field private mShakeData:Lcom/jingdong/common/entity/ShakeData;

.field private mShakeResult:Lcom/jingdong/common/entity/ShakeResult;

.field private mShakeType:Ljava/lang/String;

.field private mTypeValue:I

.field private receiveCoupon:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    const-class v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->TAG:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->instance:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    .line 69
    sput-boolean v1, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->isOnResume:Z

    .line 80
    sput-boolean v1, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->isReceiveCouponed:Z

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->isReceiveCouponStatus:Z

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGEvent:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGKey:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGValue:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mAchieveType:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mAchieveMsg:Ljava/lang/String;

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->clickTime:J

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Lcom/jingdong/app/mall/utils/MyActivity;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Lcom/jingdong/common/entity/ShakeData;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 935
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->setCustomButtonClick(Z)V

    return-void
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mCouponImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->isReceiveCouponStatus:Z

    return-void
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mCouponRelativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->couponComment:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mCouponSucessRelativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Z
    .locals 1
    .parameter

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->isSingerShake()Z

    move-result v0

    return v0
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mAchieveType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mAchieveType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$19(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mAchieveMsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->couponType:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$20(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mAchieveMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mAchieveProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->receiveCoupon:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 702
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->loadAchieveCoupon(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/Button;)V

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)V
    .locals 0
    .parameter

    .prologue
    .line 905
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->showProductDetailActivity()V

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGValue:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGEvent:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGEvent:Ljava/lang/String;

    return-object v0
.end method

.method private initContentView(I)I
    .locals 1
    .parameter "typeValue"

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, contentViewId:I
    packed-switch p1, :pswitch_data_0

    .line 300
    const v0, 0x7f030106

    .line 304
    :goto_0
    return v0

    .line 277
    :pswitch_0
    const v0, 0x7f030107

    .line 278
    goto :goto_0

    .line 281
    :pswitch_1
    const v0, 0x7f030103

    .line 282
    goto :goto_0

    .line 285
    :pswitch_2
    const v0, 0x7f030102

    .line 286
    goto :goto_0

    .line 289
    :pswitch_3
    const v0, 0x7f030106

    .line 290
    goto :goto_0

    .line 293
    :pswitch_4
    const v0, 0x7f030106

    .line 294
    goto :goto_0

    .line 297
    :pswitch_5
    const v0, 0x7f030108

    .line 298
    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private initCustomView(I)V
    .locals 19
    .parameter "typeValue"

    .prologue
    .line 311
    const v1, 0x7f0c064a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 312
    .local v18, titleImage:Landroid/widget/ImageView;
    const v1, 0x7f0c0654

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 313
    .local v9, closeBtn:Landroid/widget/Button;
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->isSingerShake()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    const v1, 0x7f0202c6

    invoke-virtual {v9, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 320
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeResult:Lcom/jingdong/common/entity/ShakeResult;

    if-nez v1, :cond_2

    .line 422
    :cond_0
    :goto_1
    return-void

    .line 317
    :cond_1
    const v1, 0x7f0202c5

    invoke-virtual {v9, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 323
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeResult:Lcom/jingdong/common/entity/ShakeResult;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/ShakeResult;->getData()Lcom/jingdong/common/entity/ShakeData;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    .line 325
    packed-switch p1, :pswitch_data_0

    .line 419
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->showMsg()V

    goto :goto_1

    .line 327
    :pswitch_0
    const v1, 0x7f0202f7

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->showProduct()V

    goto :goto_1

    .line 331
    :pswitch_1
    const v1, 0x7f0202f8

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 332
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->showProduct()V

    goto :goto_1

    .line 335
    :pswitch_2
    const v1, 0x7f0202f5

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 336
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->showProduct()V

    goto :goto_1

    .line 339
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->showCoupon()V

    goto :goto_1

    .line 343
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    if-eqz v1, :cond_0

    .line 346
    const v1, 0x7f0c064c

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 347
    .local v8, beanLayout:Landroid/widget/RelativeLayout;
    const v1, 0x7f0c064d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 348
    .local v7, beanIconLayout:Landroid/widget/RelativeLayout;
    const v1, 0x7f0c0651

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 349
    .local v13, line:Landroid/widget/ImageView;
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->isSingerShake()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 350
    const v1, 0x7f0202cc

    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 351
    const v1, 0x7f0202e9

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 352
    const v1, 0x7f0202ea

    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 360
    :goto_2
    const v1, 0x7f0c0655

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    const v1, 0x7f0c064e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mCouponImage:Landroid/widget/ImageView;

    .line 362
    const v1, 0x7f0c064f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->couponType:Landroid/widget/TextView;

    .line 363
    const v1, 0x7f0c0655

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->receiveCoupon:Landroid/widget/Button;

    .line 364
    const v1, 0x7f0c0656

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mAchieveProgressView:Landroid/view/View;

    .line 366
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/ShakeData;->getSubtype()Ljava/lang/String;

    move-result-object v3

    .line 367
    .local v3, bean:Ljava/lang/String;
    const v6, 0x7f090092

    .line 368
    .local v6, color:I
    const v2, 0x7f07054b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/ShakeData;->getTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/jingdong/common/utils/ShakeUtils;->handleColorString(Lcom/jingdong/common/frame/IMyActivity;ILjava/lang/String;Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;

    move-result-object v16

    .line 370
    .local v16, msg:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->couponType:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    const v1, 0x7f0c0652

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 374
    .local v10, hintTextView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->showHintComment(Landroid/widget/TextView;I)V

    goto/16 :goto_1

    .line 354
    .end local v3           #bean:Ljava/lang/String;
    .end local v6           #color:I
    .end local v10           #hintTextView:Landroid/widget/TextView;
    .end local v16           #msg:Landroid/text/SpannableStringBuilder;
    :cond_3
    const v1, 0x7f0202cb

    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 355
    const v1, 0x7f0202b9

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 356
    const v1, 0x7f0202cd

    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 378
    .end local v7           #beanIconLayout:Landroid/widget/RelativeLayout;
    .end local v8           #beanLayout:Landroid/widget/RelativeLayout;
    .end local v13           #line:Landroid/widget/ImageView;
    :pswitch_5
    const v1, 0x7f0c066b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout;

    .line 379
    .local v17, nothingLayout:Landroid/widget/RelativeLayout;
    const v1, 0x7f0c0666

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 380
    .local v11, iconImageView:Landroid/widget/ImageView;
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->isSingerShake()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 381
    const v1, 0x7f0202cc

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 388
    :goto_3
    const v1, 0x7f0202f6

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 389
    const v1, 0x7f0c0666

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0202ce

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 390
    const v1, 0x7f0c066c

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 391
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->showMsg()V

    goto/16 :goto_1

    .line 384
    :cond_4
    const v1, 0x7f0202cb

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 395
    .end local v11           #iconImageView:Landroid/widget/ImageView;
    .end local v17           #nothingLayout:Landroid/widget/RelativeLayout;
    :pswitch_6
    const v1, 0x7f0c066b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    .line 396
    .local v15, moreLayout:Landroid/widget/RelativeLayout;
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->isSingerShake()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 397
    const v1, 0x7f0202cc

    invoke-virtual {v15, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 402
    :goto_4
    const v1, 0x7f0c0666

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 403
    .local v12, imageView:Landroid/widget/ImageView;
    const v1, 0x7f0202f4

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 405
    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 406
    .local v14, linearParams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0127

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v14, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 407
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0128

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v14, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 408
    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    const v1, 0x7f0202d9

    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 410
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->showMsg()V

    goto/16 :goto_1

    .line 399
    .end local v12           #imageView:Landroid/widget/ImageView;
    .end local v14           #linearParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    const v1, 0x7f0202cb

    invoke-virtual {v15, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 414
    .end local v15           #moreLayout:Landroid/widget/RelativeLayout;
    :pswitch_7
    const v1, 0x7f0c0656

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mAchieveProgressView:Landroid/view/View;

    .line 415
    const v1, 0x7f0c0678

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->showSpecialProduct()V

    goto/16 :goto_1

    .line 325
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_7
    .end packed-switch
.end method

.method private isSingerShake()Z
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeType:Ljava/lang/String;

    const-string v1, "singer"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    const/4 v0, 0x1

    .line 428
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAchieveCoupon(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 5
    .parameter "phoneNum"
    .parameter "couponUuid"
    .parameter "couponTextView"
    .parameter "receiveCoupon"

    .prologue
    const/4 v4, 0x0

    .line 706
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeResult:Lcom/jingdong/common/entity/ShakeResult;

    if-nez v3, :cond_0

    .line 883
    :goto_0
    return-void

    .line 709
    :cond_0
    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->setAchieveProgressVisible(I)V

    .line 711
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeResult:Lcom/jingdong/common/entity/ShakeResult;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/ShakeResult;->getType()Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, achieveType:Ljava/lang/String;
    const-string v1, "achieveCoupon"

    .line 714
    .local v1, functionId:Ljava/lang/String;
    new-instance v2, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 715
    .local v2, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v2, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 716
    const-string v3, "couponUuid"

    invoke-virtual {v2, v3, p2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 718
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 719
    const-string v3, "phone"

    invoke-virtual {v2, v3, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 721
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 722
    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 723
    new-instance v3, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    invoke-direct {v3, p0, v0, p3, p4}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;-><init>(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/Button;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 880
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/utils/MyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 882
    invoke-direct {p0, v4}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->setCustomButtonClick(Z)V

    goto :goto_0
.end method

.method private loadProductImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .parameter "imageView"
    .parameter "imageUrl"

    .prologue
    const/16 v2, 0x1388

    .line 649
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    :goto_0
    return-void

    .line 653
    :cond_0
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 654
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setType(I)V

    .line 655
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPriority(I)V

    .line 656
    invoke-virtual {v0, p2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 657
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 658
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 659
    new-instance v1, Lcom/jingdong/app/mall/shake/ShakeDialogNew$2;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$2;-><init>(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 698
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->getHttpGroupaAsynPool(I)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0
.end method

.method private setCustomButtonClick(Z)V
    .locals 1
    .parameter "press"

    .prologue
    .line 936
    new-instance v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$4;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$4;-><init>(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Z)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->post(Ljava/lang/Runnable;)V

    .line 945
    return-void
.end method

.method private setJDPrice(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 8
    .parameter "jdPriceView"
    .parameter "jdPrice"

    .prologue
    const/16 v7, 0x21

    .line 577
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 590
    :goto_0
    return-void

    .line 580
    :cond_0
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v5}, Lcom/jingdong/app/mall/utils/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09008f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v0, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 581
    .local v0, colorSpanRed:Landroid/text/style/ForegroundColorSpan;
    iget-object v5, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v5}, Lcom/jingdong/app/mall/utils/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701e1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 582
    .local v2, label:Ljava/lang/CharSequence;
    new-instance v3, Landroid/text/SpannableStringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 584
    .local v3, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 585
    .local v4, start:I
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 587
    .local v1, end:I
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const/high16 v6, 0x3f80

    invoke-direct {v5, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 588
    invoke-virtual {v3, v0, v4, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 589
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showCoupon()V
    .locals 20

    .prologue
    .line 460
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    if-nez v1, :cond_0

    .line 531
    :goto_0
    return-void

    .line 463
    :cond_0
    const v1, 0x7f0c0657

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 464
    .local v9, couponLayout:Landroid/widget/RelativeLayout;
    const v1, 0x7f0c0658

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 465
    .local v8, couponIconLayout:Landroid/widget/RelativeLayout;
    const v1, 0x7f0c065f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 466
    .local v15, line:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->isSingerShake()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 467
    const v1, 0x7f0202cc

    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 468
    const v1, 0x7f0202e9

    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 469
    const v1, 0x7f0202ea

    invoke-virtual {v15, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 477
    :goto_1
    const v1, 0x7f0c0663

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    const v1, 0x7f0c065c

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mCouponRelativeLayout:Landroid/widget/RelativeLayout;

    .line 480
    const v1, 0x7f0c0661

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mCouponSucessRelativeLayout:Landroid/widget/RelativeLayout;

    .line 481
    const v1, 0x7f0c0659

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mCouponImage:Landroid/widget/ImageView;

    .line 483
    const v1, 0x7f0c0656

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mAchieveProgressView:Landroid/view/View;

    .line 485
    const v1, 0x7f0c065d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 486
    .local v11, couponScrop:Landroid/widget/TextView;
    const v1, 0x7f0c065e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 487
    .local v12, couponValid:Landroid/widget/TextView;
    const v1, 0x7f0c065a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->couponType:Landroid/widget/TextView;

    .line 488
    const v1, 0x7f0c0663

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->receiveCoupon:Landroid/widget/Button;

    .line 489
    const v1, 0x7f0c065b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->couponComment:Landroid/widget/TextView;

    .line 492
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/ShakeData;->getScope()Ljava/lang/String;

    move-result-object v16

    .line 493
    .local v16, scrop:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 494
    const/16 v1, 0x8

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 500
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/ShakeData;->getStartTime()Ljava/lang/String;

    move-result-object v17

    .line 501
    .local v17, startTime:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/ShakeData;->getEndTime()Ljava/lang/String;

    move-result-object v13

    .line 502
    .local v13, endTime:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f07052b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f07053c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 504
    .local v19, valid:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    .end local v19           #valid:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/ShakeData;->getTitle()Ljava/lang/String;

    move-result-object v18

    .line 508
    .local v18, title:Ljava/lang/String;
    const v1, 0x7f070536

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 509
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mCouponImage:Landroid/widget/ImageView;

    const v2, 0x7f0202bb

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 514
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/ShakeData;->getSubtype()Ljava/lang/String;

    move-result-object v3

    .line 515
    .local v3, couponScope:Ljava/lang/String;
    const v6, 0x7f090092

    .line 516
    .local v6, color:I
    const v2, 0x7f07054c

    const-string v4, ""

    const/4 v5, 0x4

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/jingdong/common/utils/ShakeUtils;->handleColorString(Lcom/jingdong/common/frame/IMyActivity;ILjava/lang/String;Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    .line 517
    .local v10, couponScopeSpannableStringBuilder:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->couponType:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/ShakeData;->getComment()Ljava/lang/String;

    move-result-object v7

    .line 521
    .local v7, comment:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 522
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->couponComment:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 529
    :goto_4
    const v1, 0x7f0c0660

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 530
    .local v14, hintTextView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->showHintComment(Landroid/widget/TextView;I)V

    goto/16 :goto_0

    .line 472
    .end local v3           #couponScope:Ljava/lang/String;
    .end local v6           #color:I
    .end local v7           #comment:Ljava/lang/String;
    .end local v10           #couponScopeSpannableStringBuilder:Landroid/text/SpannableStringBuilder;
    .end local v11           #couponScrop:Landroid/widget/TextView;
    .end local v12           #couponValid:Landroid/widget/TextView;
    .end local v13           #endTime:Ljava/lang/String;
    .end local v14           #hintTextView:Landroid/widget/TextView;
    .end local v16           #scrop:Ljava/lang/String;
    .end local v17           #startTime:Ljava/lang/String;
    .end local v18           #title:Ljava/lang/String;
    :cond_3
    const v1, 0x7f0202cb

    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 473
    const v1, 0x7f0202b9

    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 474
    const v1, 0x7f0202cd

    invoke-virtual {v15, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 496
    .restart local v11       #couponScrop:Landroid/widget/TextView;
    .restart local v12       #couponValid:Landroid/widget/TextView;
    .restart local v16       #scrop:Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f07052a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 510
    .restart local v13       #endTime:Ljava/lang/String;
    .restart local v17       #startTime:Ljava/lang/String;
    .restart local v18       #title:Ljava/lang/String;
    :cond_5
    const v1, 0x7f070535

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 511
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mCouponImage:Landroid/widget/ImageView;

    const v2, 0x7f0202bd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 524
    .restart local v3       #couponScope:Ljava/lang/String;
    .restart local v6       #color:I
    .restart local v7       #comment:Ljava/lang/String;
    .restart local v10       #couponScopeSpannableStringBuilder:Landroid/text/SpannableStringBuilder;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->couponComment:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->couponComment:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method

.method private showDialog()V
    .locals 5

    .prologue
    .line 601
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 602
    .local v0, alertDialog:Landroid/app/AlertDialog;
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    const v3, 0x7f07052e

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/utils/MyActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 603
    const v2, 0x7f07052d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 604
    new-instance v1, Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;-><init>(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)V

    .line 632
    .local v1, listener:Landroid/content/DialogInterface$OnClickListener;
    const/4 v2, -0x1

    .line 633
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    const v4, 0x7f07052f

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/utils/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 632
    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 637
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :goto_0
    return-void

    .line 638
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private showHintComment(Landroid/widget/TextView;I)V
    .locals 3
    .parameter "hintTextView"
    .parameter "color"

    .prologue
    .line 594
    if-eqz p1, :cond_0

    .line 595
    const v2, 0x7f070543

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, shakeHint:Ljava/lang/String;
    const v2, 0x7f070544

    invoke-static {p0, v2, v1, p2}, Lcom/jingdong/common/utils/ShakeUtils;->handleBeforeColorString(Lcom/jingdong/common/frame/IMyActivity;ILjava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 597
    .local v0, hintSpannableStringBuilder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    .end local v0           #hintSpannableStringBuilder:Landroid/text/SpannableStringBuilder;
    .end local v1           #shakeHint:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private showMsg()V
    .locals 2

    .prologue
    .line 568
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeResult:Lcom/jingdong/common/entity/ShakeResult;

    if-nez v1, :cond_0

    .line 573
    :goto_0
    return-void

    .line 571
    :cond_0
    const v1, 0x7f0c066d

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 572
    .local v0, productName:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeResult:Lcom/jingdong/common/entity/ShakeResult;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/ShakeResult;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showPopupAnim()V
    .locals 2

    .prologue
    .line 929
    invoke-static {}, Lcom/jingdong/common/utils/SDKUtils;->isSDKVersionMoreThan16()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    const v0, 0x7f040004

    const v1, 0x7f040005

    invoke-static {p0, v0, v1}, Lcom/jingdong/common/utils/ActivityUtils;->setOverridePendingTransition(Landroid/app/Activity;II)V

    .line 933
    :cond_0
    return-void
.end method

.method private showProduct()V
    .locals 7

    .prologue
    .line 433
    iget-object v6, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    if-nez v6, :cond_0

    .line 457
    :goto_0
    return-void

    .line 436
    :cond_0
    const v6, 0x7f0c066e

    invoke-virtual {p0, v6}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 437
    .local v3, productLayout:Landroid/widget/RelativeLayout;
    const v6, 0x7f0c0665

    invoke-virtual {p0, v6}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 438
    .local v1, productImageLayout:Landroid/widget/RelativeLayout;
    const v6, 0x7f0c0667

    invoke-virtual {p0, v6}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 439
    .local v0, line:Landroid/view/View;
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->isSingerShake()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 440
    const v6, 0x7f0202cc

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 441
    const v6, 0x7f0202f0

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 442
    const v6, 0x7f0202ea

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 449
    :goto_1
    const v6, 0x7f0c0672

    invoke-virtual {p0, v6}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    const v6, 0x7f0c066f

    invoke-virtual {p0, v6}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 451
    .local v4, productName:Landroid/widget/TextView;
    const v6, 0x7f0c0671

    invoke-virtual {p0, v6}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 452
    .local v5, productPrice:Landroid/widget/TextView;
    const v6, 0x7f0c0666

    invoke-virtual {p0, v6}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 453
    .local v2, productImageView:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/ShakeData;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->loadProductImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 455
    iget-object v6, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/ShakeData;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v6, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/ShakeData;->getJdPrice()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->setJDPrice(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 444
    .end local v2           #productImageView:Landroid/widget/ImageView;
    .end local v4           #productName:Landroid/widget/TextView;
    .end local v5           #productPrice:Landroid/widget/TextView;
    :cond_1
    const v6, 0x7f0202cb

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 445
    const v6, 0x7f0202e0

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 446
    const v6, 0x7f0202cd

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private showProductDetailActivity()V
    .locals 6

    .prologue
    .line 907
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    if-eqz v0, :cond_0

    .line 908
    invoke-static {}, Lcom/jingdong/common/utils/ShakeUtils;->shakeRunnableStop()V

    .line 910
    const-string v0, "shake_click_sku"

    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGEvent:Ljava/lang/String;

    .line 911
    const-string v0, "type"

    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGKey:Ljava/lang/String;

    .line 913
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeResult:Lcom/jingdong/common/entity/ShakeResult;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/ShakeResult;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGValue:Ljava/lang/String;

    .line 914
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGEvent:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getShakeParams()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jingdong/common/utils/ShakeUtils;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 916
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/ShakeData;->getId()Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/ShakeData;->getName()Ljava/lang/String;

    move-result-object v2

    .line 917
    new-instance v3, Lcom/jingdong/common/entity/SourceEntity;

    const-string v4, "shake"

    iget-object v5, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeResult:Lcom/jingdong/common/entity/ShakeResult;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/ShakeResult;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    invoke-static {v0, v1, v2, v3}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductDetailActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Lcom/jingdong/common/entity/SourceEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 919
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showSpecialProduct()V
    .locals 10

    .prologue
    const v9, 0x7f0202ea

    const v8, 0x7f0202cd

    .line 534
    iget-object v6, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    if-nez v6, :cond_0

    .line 562
    :goto_0
    return-void

    .line 537
    :cond_0
    const v6, 0x7f0c0673

    invoke-virtual {p0, v6}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 538
    .local v3, productLayout:Landroid/widget/RelativeLayout;
    const v6, 0x7f0c0665

    invoke-virtual {p0, v6}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 539
    .local v1, productBg:Landroid/widget/RelativeLayout;
    const v6, 0x7f0c0677

    invoke-virtual {p0, v6}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mPhoneAuth:Landroid/widget/EditText;

    .line 540
    const v6, 0x7f0c0667

    invoke-virtual {p0, v6}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 541
    .local v0, line:Landroid/widget/ImageView;
    const v6, 0x7f0c0651

    invoke-virtual {p0, v6}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 542
    .local v5, successLine:Landroid/widget/ImageView;
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->isSingerShake()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 544
    const v6, 0x7f0202cc

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 545
    iget-object v6, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mPhoneAuth:Landroid/widget/EditText;

    const v7, 0x7f0202df

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 546
    const v6, 0x7f0202f0

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 547
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 548
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 557
    :goto_1
    const v6, 0x7f0c0674

    invoke-virtual {p0, v6}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 558
    .local v4, productName:Landroid/widget/TextView;
    const v6, 0x7f0c0666

    invoke-virtual {p0, v6}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 559
    .local v2, productImageView:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/ShakeData;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->loadProductImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 561
    iget-object v6, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/ShakeData;->getComment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 550
    .end local v2           #productImageView:Landroid/widget/ImageView;
    .end local v4           #productName:Landroid/widget/TextView;
    :cond_1
    const v6, 0x7f0202cb

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 551
    iget-object v6, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mPhoneAuth:Landroid/widget/EditText;

    const v7, 0x7f0202e2

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 552
    const v6, 0x7f0202e0

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 553
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 554
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method


# virtual methods
.method public destroyAllData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 969
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeResult:Lcom/jingdong/common/entity/ShakeResult;

    .line 970
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    .line 971
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->receiveCoupon:Landroid/widget/Button;

    .line 972
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->couponType:Landroid/widget/TextView;

    .line 973
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->couponComment:Landroid/widget/TextView;

    .line 974
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mCouponRelativeLayout:Landroid/widget/RelativeLayout;

    .line 975
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mCouponSucessRelativeLayout:Landroid/widget/RelativeLayout;

    .line 976
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mCouponImage:Landroid/widget/ImageView;

    .line 977
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeType:Ljava/lang/String;

    .line 978
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mPhoneAuth:Landroid/widget/EditText;

    .line 979
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mAchieveProgressView:Landroid/view/View;

    .line 980
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 150
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->finish()V

    .line 151
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->showPopupAnim()V

    .line 152
    return-void
.end method

.method public getShakeParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 256
    .local v0, paramsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "shake_achieve"

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGEvent:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_0
    :goto_0
    return-object v0

    .line 258
    :cond_1
    const-string v1, "shake_click_sku"

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGEvent:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 260
    :cond_2
    const-string v1, "share_sns"

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGEvent:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    const-string v1, "from"

    const-string v2, "shake_achieve"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeResult:Lcom/jingdong/common/entity/ShakeResult;

    if-eqz v1, :cond_0

    .line 263
    const-string v1, "value"

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeResult:Lcom/jingdong/common/entity/ShakeResult;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/ShakeResult;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->clickTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x258

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->clickTime:J

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 168
    :sswitch_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->finish()V

    goto :goto_0

    .line 184
    :sswitch_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->showProductDetailActivity()V

    goto :goto_0

    .line 189
    :sswitch_2
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->hasLogin()Z

    move-result v3

    if-nez v3, :cond_1

    .line 190
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->showDialog()V

    goto :goto_0

    .line 192
    :cond_1
    iget-boolean v3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->isReceiveCouponStatus:Z

    if-nez v3, :cond_2

    .line 193
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/ShakeData;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->couponType:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->receiveCoupon:Landroid/widget/Button;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->loadAchieveCoupon(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/Button;)V

    goto :goto_0

    .line 195
    :cond_2
    const-string v1, ""

    .line 197
    .local v1, share:Ljava/lang/String;
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGValue:Ljava/lang/String;

    const-string v4, "bean"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/ShakeData;->getSubtype()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v4, 0x7f070553

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/ShakeData;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    :cond_3
    :goto_1
    const-string v3, "share_sns"

    iput-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGEvent:Ljava/lang/String;

    .line 205
    const-string v3, "shake_accept_share"

    invoke-static {v3}, Lcom/jingdong/common/utils/CommonBase;->getShakeShareText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, text:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 207
    const-string v3, "&"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 212
    :goto_2
    invoke-static {p0, v2}, Lcom/jingdong/common/utils/ShakeUtils;->handelShare(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;)V

    .line 213
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGEvent:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getShakeParams()Ljava/util/Map;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/jingdong/common/utils/ShakeUtils;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 199
    .end local v2           #text:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGValue:Ljava/lang/String;

    const-string v4, "coupon"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 200
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/ShakeData;->getSubtype()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 209
    .restart local v2       #text:Ljava/lang/String;
    :cond_5
    const v3, 0x7f070547

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 219
    .end local v1           #share:Ljava/lang/String;
    .end local v2           #text:Ljava/lang/String;
    :sswitch_3
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mPhoneAuth:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 222
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mPhoneAuth:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, phoneNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0}, Lcom/jingdong/common/utils/ShakeUtils;->isCellphone(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 224
    :cond_6
    const v3, 0x7f07054f

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/jingdong/common/utils/ShakeUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 226
    :cond_7
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->hasLogin()Z

    move-result v3

    if-nez v3, :cond_8

    .line 227
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->showDialog()V

    goto/16 :goto_0

    .line 228
    :cond_8
    iget-boolean v3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->isReceiveCouponStatus:Z

    if-nez v3, :cond_0

    .line 229
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/ShakeData;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->couponType:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->receiveCoupon:Landroid/widget/Button;

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->loadAchieveCoupon(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/Button;)V

    goto/16 :goto_0

    .line 236
    .end local v0           #phoneNumber:Ljava/lang/String;
    :sswitch_4
    const-string v3, "shake_accept_share"

    invoke-static {v3}, Lcom/jingdong/common/utils/CommonBase;->getShakeShareText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 237
    .restart local v2       #text:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    if-eqz v3, :cond_9

    .line 238
    const-string v3, "&"

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/ShakeData;->getSubtype()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 242
    :goto_3
    invoke-static {p0, v2}, Lcom/jingdong/common/utils/ShakeUtils;->handelShare(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;)V

    .line 244
    const-string v3, "share_sns"

    iput-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGEvent:Ljava/lang/String;

    .line 245
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGEvent:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getShakeParams()Ljava/util/Map;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/jingdong/common/utils/ShakeUtils;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 240
    :cond_9
    const v3, 0x7f07054e

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 166
    :sswitch_data_0
    .sparse-switch
        0x7f0c0654 -> :sswitch_0
        0x7f0c0655 -> :sswitch_2
        0x7f0c0663 -> :sswitch_2
        0x7f0c0672 -> :sswitch_1
        0x7f0c0678 -> :sswitch_3
        0x7f0c067e -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    iput-object p0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 92
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 93
    .local v1, shakeBundle:Landroid/os/Bundle;
    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/ShakeResult;

    iput-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeResult:Lcom/jingdong/common/entity/ShakeResult;

    .line 94
    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mTypeValue:I

    .line 95
    const-string v2, "shake_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeType:Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->showPopupAnim()V

    .line 99
    iget v2, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mTypeValue:I

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->initContentView(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->setContentView(I)V

    .line 100
    iget v2, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mTypeValue:I

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->initCustomView(I)V

    .line 101
    sput-object p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->instance:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    .line 103
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 104
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x30

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 105
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 106
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onDestroy()V

    .line 114
    const v0, 0x7f030105

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->setContentView(I)V

    .line 115
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jingdong/app/mall/shake/ShakeActivity;->hasPause:Z

    .line 124
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onPause()V

    .line 125
    invoke-static {}, Lcom/jingdong/common/utils/ShakeUtils;->shakeRunnableStop()V

    .line 126
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 133
    sput-boolean v0, Lcom/jingdong/app/mall/shake/ShakeActivity;->hasPause:Z

    .line 135
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 136
    invoke-static {}, Lcom/jingdong/common/utils/ShakeUtils;->shakeRunnableStart()V

    .line 137
    sput-boolean v0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeIsStop:Z

    .line 138
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onStop()V

    .line 146
    return-void
.end method

.method public setAchieveProgressVisible(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 949
    new-instance v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$5;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$5;-><init>(Lcom/jingdong/app/mall/shake/ShakeDialogNew;I)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->post(Ljava/lang/Runnable;)V

    .line 966
    return-void
.end method
