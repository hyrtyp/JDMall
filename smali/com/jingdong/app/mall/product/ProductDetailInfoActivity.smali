.class public Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "ProductDetailInfoActivity.java"


# static fields
.field private static final RADIO_BUTTON_ID_OFFSET:I = 0x7d0

.field private static final RADIO_BUTTON_LAYOUT_ID:I = 0x3e9

.field private static final TAB_CONTENT_ID_OFFSET:I = 0xbb8

.field private static final layoutParamsFF:Landroid/widget/RelativeLayout$LayoutParams;

.field private static final layoutParamsFW:Landroid/widget/RelativeLayout$LayoutParams;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private containerView:Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;

.field private httpGroupaAsynPool:Lcom/jingdong/common/utils/HttpGroup;

.field private nowBranchView:Landroid/view/View;

.field private product:Lcom/jingdong/common/entity/Product;

.field private productCouponView:Landroid/widget/TextView;

.field private productIdView:Landroid/widget/TextView;

.field private productJdPriceView:Landroid/widget/TextView;

.field private productMPriceView:Landroid/widget/TextView;

.field private productNameAndAdWordView:Landroid/widget/TextView;

.field private productPromotionLabelView:Landroid/widget/TextView;

.field private productPromotionView:Landroid/widget/TextView;

.field private scrollView:Landroid/widget/HorizontalScrollView;

.field private shareButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 76
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->layoutParamsFW:Landroid/widget/RelativeLayout$LayoutParams;

    .line 77
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->layoutParamsFF:Landroid/widget/RelativeLayout$LayoutParams;

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 62
    const-string v0, "ProductDetailInfoActivity"

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->TAG:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;Ljava/lang/String;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->initTabContent(Ljava/lang/String;)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->layoutParamsFF:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->productCouponView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->cutBranch(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->nowBranchView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$4()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->layoutParamsFW:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;)Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->containerView:Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->scrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;)Lcom/jingdong/common/entity/Product;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->product:Lcom/jingdong/common/entity/Product;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->productPromotionLabelView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->productPromotionView:Landroid/widget/TextView;

    return-object v0
.end method

.method private createTabBody()Landroid/widget/RelativeLayout;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x40a0

    .line 137
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 138
    .local v1, relativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v2

    invoke-static {v3}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v3

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 139
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x7f08002f

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
    .local v0, progressBar:Landroid/widget/ProgressBar;
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 141
    return-object v1
.end method

.method private cutBranch(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->nowBranchView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->nowBranchView:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->nowBranchView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 495
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 497
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "product"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/Product;

    iput-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->product:Lcom/jingdong/common/entity/Product;

    .line 499
    return-void
.end method

.method private initTabComponents()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 157
    new-instance v2, Landroid/widget/RadioGroup;

    invoke-direct {v2, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 158
    .local v2, radioGroupLayout:Landroid/widget/RadioGroup;
    invoke-virtual {v2, v5}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 159
    new-instance v3, Landroid/widget/HorizontalScrollView;

    invoke-direct {v3, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->scrollView:Landroid/widget/HorizontalScrollView;

    .line 160
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->scrollView:Landroid/widget/HorizontalScrollView;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->setId(I)V

    .line 161
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3, v5}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 162
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->scrollView:Landroid/widget/HorizontalScrollView;

    sget-object v4, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->layoutParamsFW:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v2, v4}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 167
    .local v0, contentLayout:Landroid/widget/RelativeLayout;
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 168
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v3, "emTab"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 169
    const-string v3, "wareId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/Product;->getShowId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    new-instance v3, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;

    invoke-direct {v3, p0, v2, v0}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;-><init>(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;Landroid/widget/RadioGroup;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 271
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->httpGroupaAsynPool:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v3, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 272
    return-void
.end method

.method private initTabContent(Ljava/lang/String;)Landroid/widget/RelativeLayout;
    .locals 2
    .parameter "url"

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->createTabBody()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 291
    .local v0, tabContentLayout:Landroid/widget/RelativeLayout;
    new-instance v1, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$2;-><init>(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;Ljava/lang/String;Landroid/widget/RelativeLayout;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->post(Ljava/lang/Runnable;)V

    .line 454
    return-object v0
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 470
    const v0, 0x7f0c058f

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->productIdView:Landroid/widget/TextView;

    .line 471
    const v0, 0x7f0c058e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->productNameAndAdWordView:Landroid/widget/TextView;

    .line 472
    const v0, 0x7f0c0590

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->productJdPriceView:Landroid/widget/TextView;

    .line 473
    const v0, 0x7f0c0592

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->productPromotionLabelView:Landroid/widget/TextView;

    .line 474
    const v0, 0x7f0c0593

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->productPromotionView:Landroid/widget/TextView;

    .line 475
    const v0, 0x7f0c0594

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->productCouponView:Landroid/widget/TextView;

    .line 476
    const v0, 0x7f0c0591

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->productMPriceView:Landroid/widget/TextView;

    .line 477
    const v0, 0x7f0c058d

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->containerView:Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;

    .line 478
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->containerView:Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->init(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;)V

    .line 479
    return-void
.end method

.method private showNameAndPrice()V
    .locals 6

    .prologue
    .line 514
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->productIdView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x7f0701e4

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/Product;->getShowId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    new-instance v2, Lcom/jingdong/app/mall/utils/ProductShow;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-direct {v2, p0, v3}, Lcom/jingdong/app/mall/utils/ProductShow;-><init>(Landroid/content/Context;Lcom/jingdong/common/entity/Product;)V

    .line 518
    .local v2, productShow:Lcom/jingdong/app/mall/utils/ProductShow;
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->productNameAndAdWordView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/utils/ProductShow;->getNameAndAdWord()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->productJdPriceView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/utils/ProductShow;->getJdPrice()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/Product;->getProductDetailMprice()Lcom/jingdong/common/entity/ProductDetailPrice;

    move-result-object v1

    .line 522
    .local v1, productDetailMprice:Lcom/jingdong/common/entity/ProductDetailPrice;
    if-eqz v1, :cond_0

    .line 524
    invoke-virtual {v1}, Lcom/jingdong/common/entity/ProductDetailPrice;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/jingdong/common/entity/ProductDetailPrice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jingdong/app/mall/utils/ProductShow;->getMarketPriceNew(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 525
    .local v0, marketPrice:Ljava/lang/CharSequence;
    invoke-virtual {v1}, Lcom/jingdong/common/entity/ProductDetailPrice;->getDisplay()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 526
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->productMPriceView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->productMPriceView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    .end local v0           #marketPrice:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 529
    .restart local v0       #marketPrice:Ljava/lang/CharSequence;
    :cond_1
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->productMPriceView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showPromotion()V
    .locals 4

    .prologue
    .line 548
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 549
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "promotion"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 550
    const-string v1, "wareId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/Product;->getShowId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 551
    const-string v1, "level"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 552
    new-instance v1, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;-><init>(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 642
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 643
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->httpGroupaAsynPool:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 644
    return-void
.end method


# virtual methods
.method public getNowBranchView()Landroid/view/View;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->nowBranchView:Landroid/view/View;

    return-object v0
.end method

.method public getScrollView()Landroid/widget/HorizontalScrollView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->scrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v1, 0x7f0300d8

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->setContentView(I)V

    .line 89
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->httpGroupaAsynPool:Lcom/jingdong/common/utils/HttpGroup;

    .line 91
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->initView()V

    .line 93
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->initData()V

    .line 96
    const v1, 0x7f0c007e

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    .local v0, titleView:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v1, 0x7f0c071c

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->shareButton:Landroid/widget/Button;

    .line 100
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->shareButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/jingdong/app/mall/utils/ProductShow;->shareProduct(Landroid/widget/Button;Lcom/jingdong/common/entity/Product;Lcom/jingdong/common/utils/HttpGroup;)V

    .line 102
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->showNameAndPrice()V

    .line 104
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->showPromotion()V

    .line 106
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->initTabComponents()V

    .line 108
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->shareButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 114
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 116
    return-void
.end method
