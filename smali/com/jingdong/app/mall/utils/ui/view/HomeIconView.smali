.class public Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;
.super Landroid/widget/LinearLayout;
.source "HomeIconView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeIconView"


# instance fields
.field private final LOCAL_LOTTERY_GUIDED_TAG:Ljava/lang/String;

.field private activity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private childHeight:I

.field private childImageHW:I

.field private childTextHeight:I

.field private childWidth:I

.field private group:Lcom/jingdong/common/utils/HttpGroup;

.field private halfMarginHorizontal:I

.field private localLotteryImagePop:Landroid/widget/ImageView;

.field private mShakeController:Lcom/jingdong/app/mall/shake/ShakeController;

.field private marginHorizontal:I

.field private marginVertical:I

.field private model:Lcom/jingdong/common/entity/HomeFloorModel;

.field private popMargin:I

.field private popWH:I

.field private shakeImagePop:Landroid/widget/ImageView;

.field private util:Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit16 v0, v0, 0x9b

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->childHeight:I

    .line 68
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v0

    mul-int/lit16 v0, v0, 0xa0

    div-int/lit16 v0, v0, 0x2d0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->childWidth:I

    .line 73
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4b

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->childImageHW:I

    .line 78
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3e

    div-int/lit16 v0, v0, 0x2d0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->childTextHeight:I

    .line 83
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    div-int/lit16 v0, v0, 0x2d0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->marginHorizontal:I

    .line 88
    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->marginHorizontal:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->halfMarginHorizontal:I

    .line 93
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->marginVertical:I

    .line 98
    const/high16 v0, 0x4100

    invoke-static {v0}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->popMargin:I

    .line 103
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x16

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->popWH:I

    .line 119
    new-instance v0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    invoke-direct {v0}, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->util:Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    .line 124
    const-string v0, "com.jingdong.app.mall.local.lottery"

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->LOCAL_LOTTERY_GUIDED_TAG:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit16 v0, v0, 0x9b

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->childHeight:I

    .line 68
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v0

    mul-int/lit16 v0, v0, 0xa0

    div-int/lit16 v0, v0, 0x2d0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->childWidth:I

    .line 73
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4b

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->childImageHW:I

    .line 78
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3e

    div-int/lit16 v0, v0, 0x2d0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->childTextHeight:I

    .line 83
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    div-int/lit16 v0, v0, 0x2d0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->marginHorizontal:I

    .line 88
    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->marginHorizontal:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->halfMarginHorizontal:I

    .line 93
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->marginVertical:I

    .line 98
    const/high16 v0, 0x4100

    invoke-static {v0}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->popMargin:I

    .line 103
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x16

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->popWH:I

    .line 119
    new-instance v0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    invoke-direct {v0}, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->util:Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    .line 124
    const-string v0, "com.jingdong.app.mall.local.lottery"

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->LOCAL_LOTTERY_GUIDED_TAG:Ljava/lang/String;

    .line 130
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)Lcom/jingdong/app/mall/utils/MyActivity;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->refreshHomeIcons(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)V
    .locals 0
    .parameter

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->gotoShakeActivity()V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)Lcom/jingdong/app/mall/shake/ShakeController;
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->mShakeController:Lcom/jingdong/app/mall/shake/ShakeController;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)Lcom/jingdong/common/utils/HttpGroup;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->group:Lcom/jingdong/common/utils/HttpGroup;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;Lcom/jingdong/app/mall/shake/ShakeController;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->mShakeController:Lcom/jingdong/app/mall/shake/ShakeController;

    return-void
.end method

.method private generateChild(Lcom/jingdong/common/entity/HomeLayout;ZZ)Landroid/view/View;
    .locals 11
    .parameter "layout"
    .parameter "isFirstOne"
    .parameter "isLastOne"

    .prologue
    const/16 v10, 0x11

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 296
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 297
    .local v0, container:Landroid/widget/RelativeLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->childWidth:I

    iget v7, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->childHeight:I

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 299
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 300
    iget v6, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->marginVertical:I

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 301
    const/high16 v6, 0x3f80

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 303
    if-eqz p2, :cond_0

    .line 304
    iget v6, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->marginHorizontal:I

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 305
    iget v6, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->halfMarginHorizontal:I

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 315
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    const v6, 0x7f020184

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 317
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 320
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 321
    .local v1, image:Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->childImageHW:I

    iget v7, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->childImageHW:I

    invoke-direct {v2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 322
    .local v2, imageParams:Landroid/widget/RelativeLayout$LayoutParams;
    iput v9, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 323
    iget v6, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->marginHorizontal:I

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 324
    iget v6, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->marginHorizontal:I

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 325
    iget v6, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->marginHorizontal:I

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 326
    const/16 v6, 0xe

    invoke-virtual {v2, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 327
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    const/16 v6, 0x1234

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 331
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 332
    .local v4, text:Landroid/widget/TextView;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->childTextHeight:I

    invoke-direct {v5, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 333
    .local v5, textParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, 0x3

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 335
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 337
    invoke-virtual {p1}, Lcom/jingdong/common/entity/HomeLayout;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900a1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 339
    const/high16 v6, 0x4160

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 341
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 342
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 344
    invoke-direct {p0, v0, p1, v1}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->initChild(Landroid/widget/RelativeLayout;Lcom/jingdong/common/entity/HomeLayout;Landroid/widget/ImageView;)V

    .line 346
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 348
    return-object v0

    .line 306
    .end local v1           #image:Landroid/widget/ImageView;
    .end local v2           #imageParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #text:Landroid/widget/TextView;
    .end local v5           #textParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    if-eqz p3, :cond_1

    .line 307
    iget v6, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->halfMarginHorizontal:I

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 308
    iget v6, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->marginHorizontal:I

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_0

    .line 310
    :cond_1
    iget v6, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->halfMarginHorizontal:I

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 311
    iget v6, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->halfMarginHorizontal:I

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_0
.end method

.method private generatorPop()Landroid/widget/ImageView;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 451
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 452
    .local v0, imagePop:Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->popWH:I

    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->popWH:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 453
    .local v1, popParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->popMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 454
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->popMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 455
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 456
    const/16 v2, 0xa

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 457
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    const v2, 0x7f0202db

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 459
    return-object v0
.end method

.method private gotoShakeActivity()V
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v1, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4;-><init>(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 545
    :cond_0
    return-void
.end method

.method private initChild(Landroid/widget/RelativeLayout;Lcom/jingdong/common/entity/HomeLayout;Landroid/widget/ImageView;)V
    .locals 4
    .parameter "container"
    .parameter "layout"
    .parameter "image"

    .prologue
    const/16 v2, 0x8

    .line 353
    invoke-virtual {p2}, Lcom/jingdong/common/entity/HomeLayout;->getType()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, type:Ljava/lang/String;
    const-string v1, "6"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->generatorPop()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->shakeImagePop:Landroid/widget/ImageView;

    .line 360
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->isCanShake()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 361
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->shakeImagePop:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->shakeImagePop:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 370
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->shakeImagePop:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 374
    :cond_1
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 375
    const-string v1, "com.jingdong.app.mall.local.lottery"

    invoke-static {v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->activityIsGuided(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 376
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->generatorPop()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->localLotteryImagePop:Landroid/widget/ImageView;

    .line 377
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->localLotteryImagePop:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 382
    :cond_2
    new-instance v1, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;

    invoke-direct {v1, p0, v0, p2}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;-><init>(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;Ljava/lang/String;Lcom/jingdong/common/entity/HomeLayout;)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {p2}, Lcom/jingdong/common/entity/HomeLayout;->getIcon()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x64

    invoke-static {v1, p3, v2, v3}, Lcom/jingdong/common/utils/JDImageUtils;->setViewImageWithPriority(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 447
    return-void

    .line 365
    :cond_3
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->shakeImagePop:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 366
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->shakeImagePop:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private initData()V
    .locals 5

    .prologue
    .line 161
    new-instance v0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$1;-><init>(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)V

    .line 219
    .local v0, onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->util:Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->group:Lcom/jingdong/common/utils/HttpGroup;

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->model:Lcom/jingdong/common/entity/HomeFloorModel;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/HomeFloorModel;->getFunctionId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->model:Lcom/jingdong/common/entity/HomeFloorModel;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/HomeFloorModel;->getParams()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->addUseCache(Lcom/jingdong/common/utils/HttpGroup;Ljava/lang/String;Ljava/lang/String;Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V

    .line 220
    return-void
.end method

.method private isCanShake()Z
    .locals 3

    .prologue
    .line 470
    sget-object v2, Lcom/jingdong/app/mall/home/NewHomeActivity;->currentTime:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 472
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 473
    .local v1, dateFormat:Ljava/text/DateFormat;
    sget-object v2, Lcom/jingdong/app/mall/home/NewHomeActivity;->currentTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 474
    .local v0, date:Ljava/util/Date;
    invoke-static {v0}, Lcom/jingdong/common/utils/ShakeUtils;->isCanShakeing(Ljava/util/Date;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 481
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #dateFormat:Ljava/text/DateFormat;
    :goto_0
    return v2

    .line 475
    :catch_0
    move-exception v2

    .line 481
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private refreshHomeIcons(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/HomeLayout;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeLayout;>;"
    const/4 v5, 0x1

    const/16 v8, 0x8

    const/4 v6, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 232
    invoke-virtual {p0, v6}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->setVisibility(I)V

    .line 236
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->getChildCount()I

    move-result v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v4, v7, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->getChildCount()I

    move-result v1

    .line 238
    .local v1, last:I
    move v0, v1

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-gt v0, v4, :cond_6

    .line 248
    .end local v0           #i:I
    .end local v1           #last:I
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->shakeImagePop:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->shakeImagePop:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eq v4, v8, :cond_2

    .line 249
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->shakeImagePop:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    :cond_2
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->localLotteryImagePop:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->localLotteryImagePop:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eq v4, v8, :cond_3

    .line 253
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->localLotteryImagePop:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_7

    .line 280
    :cond_4
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_5

    .line 281
    invoke-virtual {p0, v6}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->setVisibility(I)V

    .line 284
    :cond_5
    return-void

    .line 239
    .restart local v1       #last:I
    :cond_6
    add-int/lit8 v4, v0, -0x1

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->removeViewAt(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 238
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 257
    .end local v1           #last:I
    :cond_7
    const/4 v4, 0x4

    if-eq v0, v4, :cond_4

    .line 260
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/HomeLayout;

    .line 262
    .local v2, layout:Lcom/jingdong/common/entity/HomeLayout;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->getChildCount()I

    move-result v4

    if-le v4, v0, :cond_9

    .line 264
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 265
    .local v3, view:Landroid/widget/RelativeLayout;
    if-eqz v3, :cond_8

    .line 266
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-direct {p0, v3, v2, v4}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->initChild(Landroid/widget/RelativeLayout;Lcom/jingdong/common/entity/HomeLayout;Landroid/widget/ImageView;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 256
    .end local v3           #view:Landroid/widget/RelativeLayout;
    :cond_8
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 275
    :cond_9
    if-nez v0, :cond_a

    move v4, v5

    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v0, v7, :cond_b

    move v7, v5

    :goto_5
    invoke-direct {p0, v2, v4, v7}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->generateChild(Lcom/jingdong/common/entity/HomeLayout;ZZ)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_a
    move v4, v6

    goto :goto_4

    :cond_b
    move v7, v6

    goto :goto_5

    .line 269
    :catch_0
    move-exception v4

    goto :goto_3

    .line 242
    .end local v0           #i:I
    .end local v2           #layout:Lcom/jingdong/common/entity/HomeLayout;
    :catch_1
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public init(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/entity/HomeFloorModel;Lcom/jingdong/common/utils/HttpGroup;IZ)V
    .locals 4
    .parameter "activity"
    .parameter "model"
    .parameter "group"
    .parameter "height"
    .parameter "isCache"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 138
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 139
    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->setVisibility(I)V

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->util:Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    invoke-virtual {v1, p5}, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->setOnlyUseCache(Z)V

    .line 144
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 145
    iput-object p2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->model:Lcom/jingdong/common/entity/HomeFloorModel;

    .line 146
    iput-object p3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->group:Lcom/jingdong/common/utils/HttpGroup;

    .line 148
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 149
    .local v0, pagerParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->setPadding(IIII)V

    .line 152
    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->setOrientation(I)V

    .line 154
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->initData()V

    .line 155
    return-void
.end method

.method public resetPopView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 489
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->shakeImagePop:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 490
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->isCanShake()Z

    move-result v0

    if-nez v0, :cond_3

    .line 491
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->shakeImagePop:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 492
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->shakeImagePop:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 501
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->localLotteryImagePop:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const-string v0, "com.jingdong.app.mall.local.lottery"

    invoke-static {v0}, Lcom/jingdong/app/mall/utils/CommonUtil;->activityIsGuided(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->localLotteryImagePop:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 503
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->localLotteryImagePop:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    if-eqz v0, :cond_2

    .line 508
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v1, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$3;-><init>(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 516
    :cond_2
    return-void

    .line 495
    :cond_3
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->shakeImagePop:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->shakeImagePop:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
