.class public Lcom/jingdong/app/mall/product/ProductDetailActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "ProductDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/product/ProductDetailActivity$ImageViewpageChangeListener;,
        Lcom/jingdong/app/mall/product/ProductDetailActivity$OptionsOnClickListener;,
        Lcom/jingdong/app/mall/product/ProductDetailActivity$ProductDetailPagerAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProductDetailActivity"


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field private cartButton:Landroid/widget/Button;

.field private collectButton:Landroid/widget/ImageButton;

.field commentBundle:Landroid/os/Bundle;

.field private commentCountLinear:Landroid/widget/LinearLayout;

.field private currentIndex:I

.field private defaultProvinceId:Ljava/lang/String;

.field private easyButton:Landroid/widget/Button;

.field private freeReadButton:Landroid/widget/Button;

.field private freeReadLayout:Landroid/widget/LinearLayout;

.field private freeReadLine:Landroid/view/View;

.field private httpGroup:Lcom/jingdong/common/utils/HttpGroup;

.field private id:J

.field private imageCount:I

.field private imageCountTextView:Landroid/widget/TextView;

.field private imageCurrentTextView:Landroid/widget/TextView;

.field private isAlreadyStatClick:Z

.field private layoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mProductDetailController:Lcom/jingdong/common/controller/ProductDetailController;

.field private mProductThridAddress:Lcom/jingdong/app/mall/product/ProductThridAddress;

.field private mSource:Lcom/jingdong/common/entity/SourceEntity;

.field private packsLinear:Landroid/widget/LinearLayout;

.field private packsLinearNderline:Landroid/view/View;

.field private priceReportButton:Landroid/widget/TextView;

.field private prodcutPromiseTextView:Landroid/widget/TextView;

.field private producNameAndAdWordView:Landroid/widget/TextView;

.field private product:Lcom/jingdong/common/entity/Product;

.field private productConsultationCount:Landroid/widget/LinearLayout;

.field private productConsultationCountNderline:Landroid/view/View;

.field private productConsultationCountTextView:Landroid/widget/TextView;

.field private productDeliverView:Landroid/widget/TextView;

.field private productDetailImageLayoutOld:Landroid/widget/RelativeLayout;

.field private productImageViewPager:Landroid/support/v4/view/ViewPager;

.field private productInfoView:Landroid/widget/LinearLayout;

.field private productJdPriceView:Landroid/widget/TextView;

.field private productMarketPriceView:Landroid/widget/TextView;

.field private productOptionsColorView:Landroid/widget/LinearLayout;

.field private productOptionsPromiseView:Landroid/widget/LinearLayout;

.field private productOptionsSizeView:Landroid/widget/LinearLayout;

.field private productOptionsView:Landroid/widget/RelativeLayout;

.field private productOptionsline:Landroid/view/View;

.field private productOrderCommentCount:Landroid/widget/LinearLayout;

.field private productOrderCommentCountNderline:Landroid/view/View;

.field private productOrderCommentCountTextView:Landroid/widget/TextView;

.field private productPromiseLineView:Landroid/view/View;

.field private productPromotionView:Landroid/widget/TextView;

.field private productStockProvinceChoosed:Landroid/widget/TextView;

.field private productUserPriceView:Landroid/widget/TextView;

.field private shareButton:Landroid/widget/Button;

.field private stockLine:Landroid/view/View;

.field private stockProvinceButton:Landroid/widget/ImageButton;

.field private stockProvinceName:Ljava/lang/String;

.field private stockResultText:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, -0x1

    .line 68
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 73
    new-instance v0, Lcom/jingdong/common/entity/Product;

    invoke-direct {v0}, Lcom/jingdong/common/entity/Product;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->commentBundle:Landroid/os/Bundle;

    .line 115
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 133
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 138
    new-instance v0, Lcom/jingdong/common/entity/SourceEntity;

    const-string v1, "unknown"

    invoke-direct {v0, v1, v4}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->mSource:Lcom/jingdong/common/entity/SourceEntity;

    .line 141
    iput-object v4, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->defaultProvinceId:Ljava/lang/String;

    .line 1441
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$1;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->background:Landroid/graphics/drawable/Drawable;

    .line 68
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductDetailActivity;JZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 566
    invoke-direct {p0, p1, p2, p3}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProduct(JZ)V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/product/ProductDetailActivity;Ljava/util/List;ILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1477
    invoke-direct {p0, p1, p2, p3}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->loadProductPicture(Ljava/util/List;ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProductForEasyBuy()V

    return-void
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/SourceEntity;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->mSource:Lcom/jingdong/common/entity/SourceEntity;

    return-object v0
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->isCanBuy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->cartButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->freeReadLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->freeReadLine:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->freeReadButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/product/ProductDetailActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->id:J

    return-wide v0
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->easyButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$19(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->collectButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/product/ProductDetailActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 125
    iget v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->imageCount:I

    return v0
.end method

.method static synthetic access$20(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/controller/ProductDetailController;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->mProductDetailController:Lcom/jingdong/common/controller/ProductDetailController;

    return-object v0
.end method

.method static synthetic access$21(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->statClick()V

    return-void
.end method

.method static synthetic access$22(Lcom/jingdong/app/mall/product/ProductDetailActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 651
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->showStockRunnable(Z)V

    return-void
.end method

.method static synthetic access$23(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1287
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProductForPromotion()V

    return-void
.end method

.method static synthetic access$24(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1349
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProductForDeliver()V

    return-void
.end method

.method static synthetic access$25(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1367
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProductForOptoins()V

    return-void
.end method

.method static synthetic access$26(Lcom/jingdong/app/mall/product/ProductDetailActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1410
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProductForCommentCount(Z)V

    return-void
.end method

.method static synthetic access$27(Lcom/jingdong/app/mall/product/ProductDetailActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1419
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProductForConsultationCount(Z)V

    return-void
.end method

.method static synthetic access$28(Lcom/jingdong/app/mall/product/ProductDetailActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1428
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProductForOrderCommentCount(Z)V

    return-void
.end method

.method static synthetic access$29(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productPromotionView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/product/ProductDetailActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 123
    iget v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->currentIndex:I

    return v0
.end method

.method static synthetic access$30(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productDeliverView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$31(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$32(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsline:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$33(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->packsLinear:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$34(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->packsLinearNderline:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$35(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->commentCountLinear:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$36(Lcom/jingdong/app/mall/product/ProductDetailActivity;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 904
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->removeAllTextView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$37(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productConsultationCountTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$38(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOrderCommentCountTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$39(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productJdPriceView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/product/ProductDetailActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1567
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->updateCurrentImage(I)V

    return-void
.end method

.method static synthetic access$40(Lcom/jingdong/app/mall/product/ProductDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 704
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->addString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$41(Lcom/jingdong/app/mall/product/ProductDetailActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->stockProvinceName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$42(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productStockProvinceChoosed:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$43(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOrderCommentCount:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$44(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productConsultationCount:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$45(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productInfoView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$46(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$47(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->shareButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$48(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productImageViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$49(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productDetailImageLayoutOld:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/product/ProductDetailActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    iput p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->currentIndex:I

    return-void
.end method

.method static synthetic access$50(Lcom/jingdong/app/mall/product/ProductDetailActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1554
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->updateImageCount(I)V

    return-void
.end method

.method static synthetic access$51(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->producNameAndAdWordView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$52(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productMarketPriceView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$53(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productUserPriceView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$54(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->priceReportButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$55(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 750
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->showOptionsRunnable()V

    return-void
.end method

.method static synthetic access$56(Lcom/jingdong/app/mall/product/ProductDetailActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1030
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->showCommentCountRunnable(Z)V

    return-void
.end method

.method static synthetic access$57(Lcom/jingdong/app/mall/product/ProductDetailActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 987
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->showConsultationCountRunnable(Z)V

    return-void
.end method

.method static synthetic access$58(Lcom/jingdong/app/mall/product/ProductDetailActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 926
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->showOrderCommentCountRunnable(Z)V

    return-void
.end method

.method static synthetic access$59(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->imageCountTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/product/ProductDetailActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 664
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->showDirectStockRunnableMethod(Z)V

    return-void
.end method

.method static synthetic access$60(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->imageCurrentTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/Product;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/product/ProductDetailActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 696
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->updatePromise(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->initCartButton()V

    return-void
.end method

.method private addString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "text"

    .prologue
    .line 705
    const-string v0, ""

    .line 706
    .local v0, str:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 707
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 709
    :cond_0
    return-object v0
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 267
    const v0, 0x7f0c053f

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->packsLinearNderline:Landroid/view/View;

    .line 268
    const v0, 0x7f0c0540

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->commentCountLinear:Landroid/widget/LinearLayout;

    .line 269
    const v0, 0x7f0c0520

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productInfoView:Landroid/widget/LinearLayout;

    .line 270
    const v0, 0x7f0c0525

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productUserPriceView:Landroid/widget/TextView;

    .line 271
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->titleView:Landroid/widget/TextView;

    .line 272
    const v0, 0x7f0c0526

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->priceReportButton:Landroid/widget/TextView;

    .line 273
    const v0, 0x7f0c0538

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->stockLine:Landroid/view/View;

    .line 275
    const v0, 0x7f0c051a

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productImageViewPager:Landroid/support/v4/view/ViewPager;

    .line 276
    const v0, 0x7f0c051d

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->imageCountTextView:Landroid/widget/TextView;

    .line 277
    const v0, 0x7f0c051c

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->imageCurrentTextView:Landroid/widget/TextView;

    .line 279
    const v0, 0x7f0c053a

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->cartButton:Landroid/widget/Button;

    .line 280
    const v0, 0x7f0c053b

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->easyButton:Landroid/widget/Button;

    .line 281
    const v0, 0x7f0c053c

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->collectButton:Landroid/widget/ImageButton;

    .line 282
    const v0, 0x7f0c0586

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->shareButton:Landroid/widget/Button;

    .line 283
    const v0, 0x7f0c0542

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOrderCommentCount:Landroid/widget/LinearLayout;

    .line 284
    const v0, 0x7f0c0544

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOrderCommentCountNderline:Landroid/view/View;

    .line 285
    const v0, 0x7f0c0545

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productConsultationCount:Landroid/widget/LinearLayout;

    .line 286
    const v0, 0x7f0c0547

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productConsultationCountNderline:Landroid/view/View;

    .line 287
    const v0, 0x7f0c053e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->packsLinear:Landroid/widget/LinearLayout;

    .line 288
    const v0, 0x7f0c0529

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsView:Landroid/widget/RelativeLayout;

    .line 289
    const v0, 0x7f0c052c

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsline:Landroid/view/View;

    .line 290
    const v0, 0x7f0c052a

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsColorView:Landroid/widget/LinearLayout;

    .line 291
    const v0, 0x7f0c052b

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsSizeView:Landroid/widget/LinearLayout;

    .line 292
    const v0, 0x7f0c052f

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productStockProvinceChoosed:Landroid/widget/TextView;

    .line 293
    const v0, 0x7f0c0530

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->stockProvinceButton:Landroid/widget/ImageButton;

    .line 294
    const v0, 0x7f0c0531

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->stockResultText:Landroid/widget/TextView;

    .line 295
    const v0, 0x7f0c0522

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productDeliverView:Landroid/widget/TextView;

    .line 296
    const v0, 0x7f0c0521

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->producNameAndAdWordView:Landroid/widget/TextView;

    .line 297
    const v0, 0x7f0c0523

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productJdPriceView:Landroid/widget/TextView;

    .line 298
    const v0, 0x7f0c071c

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->shareButton:Landroid/widget/Button;

    .line 299
    const v0, 0x7f0c0537

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->freeReadButton:Landroid/widget/Button;

    .line 300
    const v0, 0x7f0c0536

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->freeReadLayout:Landroid/widget/LinearLayout;

    .line 301
    const v0, 0x7f0c0535

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->freeReadLine:Landroid/view/View;

    .line 302
    const v0, 0x7f0c0527

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productPromotionView:Landroid/widget/TextView;

    .line 304
    const v0, 0x7f0c0546

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productConsultationCountTextView:Landroid/widget/TextView;

    .line 306
    const v0, 0x7f0c0543

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOrderCommentCountTextView:Landroid/widget/TextView;

    .line 308
    const v0, 0x7f0c0524

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productMarketPriceView:Landroid/widget/TextView;

    .line 309
    const v0, 0x7f0c051b

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productDetailImageLayoutOld:Landroid/widget/RelativeLayout;

    .line 311
    const v0, 0x7f0c0532

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productPromiseLineView:Landroid/view/View;

    .line 312
    const v0, 0x7f0c0533

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsPromiseView:Landroid/widget/LinearLayout;

    .line 314
    const v0, 0x7f0c0534

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->prodcutPromiseTextView:Landroid/widget/TextView;

    .line 315
    return-void
.end method

.method private initCartButton()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->cartButton:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/product/ProductDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$5;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailActivity$6;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$6;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 363
    return-void
.end method

.method private initCollectButton()V
    .locals 2

    .prologue
    .line 493
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->isFavorited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailActivity$12;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$12;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 511
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->collectButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/jingdong/app/mall/product/ProductDetailActivity$14;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$14;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    return-void

    .line 503
    :cond_0
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailActivity$13;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$13;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private initFreeReadButton()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getCanFreeRead()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getFreeReadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailActivity$7;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$7;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 398
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->freeReadButton:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/product/ProductDetailActivity$8;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$8;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    :goto_0
    return-void

    .line 408
    :cond_0
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailActivity$9;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$9;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private isCanBuy()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 372
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getJdPrice()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    const v4, 0x7f070315

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v1

    .line 376
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getProvinceStockFlag()Ljava/lang/Boolean;

    move-result-object v0

    .line 377
    .local v0, provinceStockFlag:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadProductPicture(Ljava/util/List;ILandroid/view/View;)V
    .locals 10
    .parameter
    .parameter "position"
    .parameter "itemView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/common/entity/Image;",
            ">;I",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1479
    .local p1, imageList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Image;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/Image;

    .line 1480
    .local v5, image:Lcom/jingdong/common/entity/Image;
    const v0, 0x7f0c058b

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1481
    .local v3, imageView:Landroid/widget/ImageView;
    const v0, 0x7f0c058c

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 1482
    .local v2, progressBar:Landroid/widget/ProgressBar;
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1483
    new-instance v0, Lcom/jingdong/common/ui/ExceptionDrawable;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f070001

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/jingdong/common/ui/ExceptionDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1485
    invoke-virtual {v5}, Lcom/jingdong/common/entity/Image;->getSmall()Ljava/lang/String;

    move-result-object v4

    .line 1487
    .local v4, url:Ljava/lang/String;
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->getHttpGroupaAsynPool(I)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v9

    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailActivity$36;

    move-object v1, p0

    move v6, p2

    move-object v7, p1

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/jingdong/app/mall/product/ProductDetailActivity$36;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Ljava/lang/String;Lcom/jingdong/common/entity/Image;ILjava/util/List;Landroid/view/View;)V

    invoke-static {p0, v3, v9, v4, v0}, Lcom/jingdong/common/utils/ImageUtil;->setViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/view/View;Lcom/jingdong/common/utils/HttpGroup;Ljava/lang/String;Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;)V

    .line 1552
    return-void
.end method

.method private removeAllLinearLayout(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "viewGroup"

    .prologue
    .line 882
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 884
    .local v0, childCount:I
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-gez v2, :cond_0

    .line 890
    return-void

    .line 885
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 886
    .local v1, childView:Landroid/view/View;
    instance-of v3, v1, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    .line 887
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 884
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private removeAllTextView(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "viewGroup"

    .prologue
    .line 905
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 907
    .local v0, childCount:I
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-gez v2, :cond_0

    .line 913
    return-void

    .line 908
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 909
    .local v1, childView:Landroid/view/View;
    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 910
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 907
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private setEvents()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->priceReportButton:Landroid/widget/TextView;

    new-instance v1, Lcom/jingdong/app/mall/product/ProductDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$4;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    return-void
.end method

.method private showCommentCountRunnable(Z)V
    .locals 11
    .parameter "isSucceed"

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    const/4 v8, -0x2

    .line 1033
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->commentCountLinear:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/jingdong/app/mall/product/ProductDetailActivity$21;

    invoke-direct {v6, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$21;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1044
    if-nez p1, :cond_1

    .line 1046
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->commentCountLinear:Landroid/widget/LinearLayout;

    invoke-direct {p0, v5}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->removeAllTextView(Landroid/view/ViewGroup;)V

    .line 1047
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1048
    .local v3, productnNoCommentTextView:Landroid/widget/TextView;
    const v5, 0x7f0701f6

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1049
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->commentCountLinear:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v3, v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1050
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->commentCountLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1083
    .end local v3           #productnNoCommentTextView:Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 1054
    :cond_1
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/Product;->getCommentCountList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1055
    .local v0, commentCountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CommentCount;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 1056
    :cond_2
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->commentCountLinear:Landroid/widget/LinearLayout;

    invoke-direct {p0, v5}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->removeAllTextView(Landroid/view/ViewGroup;)V

    .line 1057
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1058
    .restart local v3       #productnNoCommentTextView:Landroid/widget/TextView;
    const v5, 0x7f0701f3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1059
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->commentCountLinear:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v3, v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1062
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->commentCountLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_0

    .line 1065
    .end local v3           #productnNoCommentTextView:Landroid/widget/TextView;
    :cond_3
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->commentCountLinear:Landroid/widget/LinearLayout;

    invoke-direct {p0, v5}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->removeAllTextView(Landroid/view/ViewGroup;)V

    .line 1066
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 1067
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->commentBundle:Landroid/os/Bundle;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "message"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/CommentCount;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/CommentCount;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->commentBundle:Landroid/os/Bundle;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "scoreCount"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/CommentCount;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/CommentCount;->getScoreCount()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1070
    .local v2, productCommentCountTextView:Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/CommentCount;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/CommentCount;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1071
    new-instance v4, Landroid/text/SpannableStringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "\uff08"

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/CommentCount;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/CommentCount;->getScoreCount()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff09"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1073
    .local v4, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090028

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1075
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 1076
    const/16 v7, 0x21

    .line 1072
    invoke-virtual {v4, v5, v9, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1077
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 1078
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->commentCountLinear:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v2, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1066
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method private showConsultationCountRunnable(Z)V
    .locals 6
    .parameter "isSucceed"

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 988
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productConsultationCount:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/jingdong/app/mall/product/ProductDetailActivity$20;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$20;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1003
    if-nez p1, :cond_0

    .line 1004
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productConsultationCountTextView:Landroid/widget/TextView;

    const v3, 0x7f0701fa

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1025
    :goto_0
    return-void

    .line 1008
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getConsultationCount()Ljava/lang/String;

    move-result-object v0

    .line 1010
    .local v0, num:Ljava/lang/String;
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getCanConsultFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getShowId()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1011
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productConsultationCount:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1012
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productConsultationCountNderline:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1014
    :cond_2
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productConsultationCount:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1015
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productConsultationCountNderline:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1016
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productConsultationCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701ec

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    new-instance v1, Landroid/text/SpannableStringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\uff08"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff09"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1019
    .local v1, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1021
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 1022
    const/16 v4, 0x21

    .line 1018
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1023
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productConsultationCountTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showDirectStockRunnableMethod(Z)V
    .locals 1
    .parameter "isFirstStart"

    .prologue
    .line 668
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailActivity$18;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$18;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 694
    return-void
.end method

.method private showOptionsRunnable()V
    .locals 11

    .prologue
    .line 752
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v7}, Lcom/jingdong/common/entity/Product;->getSkuColorList()Ljava/util/ArrayList;

    move-result-object v1

    .line 754
    .local v1, colorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuColor;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_5

    .line 755
    :cond_0
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsColorView:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 758
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsColorView:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsSizeView:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    .line 759
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsView:Landroid/widget/RelativeLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 760
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsline:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 808
    :cond_1
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v7}, Lcom/jingdong/common/entity/Product;->getSkuSizeList()Ljava/util/ArrayList;

    move-result-object v6

    .line 810
    .local v6, sizeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuSize;>;"
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_a

    .line 811
    :cond_2
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsSizeView:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 814
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsColorView:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsSizeView:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    .line 815
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsView:Landroid/widget/RelativeLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 816
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsline:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 863
    :cond_3
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsColorView:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsSizeView:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_4

    .line 864
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsView:Landroid/widget/RelativeLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 865
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsline:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 867
    :cond_4
    return-void

    .line 764
    .end local v6           #sizeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuSize;>;"
    :cond_5
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsColorView:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 765
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsView:Landroid/widget/RelativeLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 766
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsline:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 768
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsColorView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v7}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->removeAllLinearLayout(Landroid/view/ViewGroup;)V

    .line 769
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 770
    .local v4, linearLayout:Landroid/widget/LinearLayout;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 771
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsColorView:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 773
    const/4 v5, 0x0

    .line 775
    .local v5, row:Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 778
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 779
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jingdong/common/entity/SkuColor;

    invoke-virtual {v7}, Lcom/jingdong/common/entity/SkuColor;->getColorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 780
    const/16 v7, 0x11

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setGravity(I)V

    .line 781
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jingdong/common/entity/SkuColor;

    invoke-virtual {v7}, Lcom/jingdong/common/entity/SkuColor;->getWareId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->id:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_9

    .line 782
    const v7, 0x7f0200ed

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 783
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09002a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 789
    :goto_1
    new-instance v8, Lcom/jingdong/app/mall/product/ProductDetailActivity$OptionsOnClickListener;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jingdong/common/entity/SkuColor;

    invoke-virtual {v7}, Lcom/jingdong/common/entity/SkuColor;->getWareId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v8, p0, v9, v10}, Lcom/jingdong/app/mall/product/ProductDetailActivity$OptionsOnClickListener;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;J)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 792
    add-int/lit8 v7, v2, 0x1

    rem-int/lit8 v3, v7, 0x3

    .line 794
    .local v3, j:I
    const/4 v7, 0x1

    if-ne v3, v7, :cond_6

    .line 795
    new-instance v5, Landroid/widget/LinearLayout;

    .end local v5           #row:Landroid/widget/LinearLayout;
    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 796
    .restart local v5       #row:Landroid/widget/LinearLayout;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 799
    :cond_6
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 801
    if-eqz v3, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_8

    .line 802
    :cond_7
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 775
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 785
    .end local v3           #j:I
    :cond_9
    const v7, 0x7f0200ee

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 786
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09002b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    .line 819
    .end local v0           #button:Landroid/widget/Button;
    .end local v2           #i:I
    .end local v4           #linearLayout:Landroid/widget/LinearLayout;
    .end local v5           #row:Landroid/widget/LinearLayout;
    .restart local v6       #sizeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuSize;>;"
    :cond_a
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsSizeView:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 820
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsView:Landroid/widget/RelativeLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 821
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsline:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 823
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsSizeView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v7}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->removeAllLinearLayout(Landroid/view/ViewGroup;)V

    .line 825
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 826
    .restart local v4       #linearLayout:Landroid/widget/LinearLayout;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 827
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsSizeView:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 829
    const/4 v5, 0x0

    .line 831
    .restart local v5       #row:Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 834
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 835
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jingdong/common/entity/SkuSize;

    invoke-virtual {v7}, Lcom/jingdong/common/entity/SkuSize;->getSizeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 836
    const/16 v7, 0x11

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setGravity(I)V

    .line 837
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jingdong/common/entity/SkuSize;

    invoke-virtual {v7}, Lcom/jingdong/common/entity/SkuSize;->getWareId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->id:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_e

    .line 838
    const v7, 0x7f0200ed

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 839
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09002a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 845
    :goto_3
    new-instance v8, Lcom/jingdong/app/mall/product/ProductDetailActivity$OptionsOnClickListener;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jingdong/common/entity/SkuSize;

    invoke-virtual {v7}, Lcom/jingdong/common/entity/SkuSize;->getWareId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v8, p0, v9, v10}, Lcom/jingdong/app/mall/product/ProductDetailActivity$OptionsOnClickListener;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;J)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 848
    add-int/lit8 v7, v2, 0x1

    rem-int/lit8 v3, v7, 0x3

    .line 850
    .restart local v3       #j:I
    const/4 v7, 0x1

    if-ne v3, v7, :cond_b

    .line 851
    new-instance v5, Landroid/widget/LinearLayout;

    .end local v5           #row:Landroid/widget/LinearLayout;
    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 852
    .restart local v5       #row:Landroid/widget/LinearLayout;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 855
    :cond_b
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 857
    if-eqz v3, :cond_c

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_d

    .line 858
    :cond_c
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 831
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 841
    .end local v3           #j:I
    :cond_e
    const v7, 0x7f0200ee

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 842
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09002b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_3
.end method

.method private showOrderCommentCountRunnable(Z)V
    .locals 6
    .parameter "isSucceed"

    .prologue
    const/4 v5, 0x0

    .line 930
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOrderCommentCount:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/jingdong/app/mall/product/ProductDetailActivity$19;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$19;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 952
    if-nez p1, :cond_0

    .line 953
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOrderCommentCountTextView:Landroid/widget/TextView;

    const v3, 0x7f0701f8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 974
    :goto_0
    return-void

    .line 957
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getOrderCommentCount()Ljava/lang/String;

    move-result-object v0

    .line 958
    .local v0, orderCommentNum:Ljava/lang/String;
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOrderCommentCount:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 959
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOrderCommentCountNderline:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 961
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 962
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOrderCommentCountTextView:Landroid/widget/TextView;

    const v3, 0x7f0701f4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 963
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOrderCommentCount:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_0

    .line 965
    :cond_2
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOrderCommentCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070204

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    new-instance v1, Landroid/text/SpannableStringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\uff08"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff09"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 968
    .local v1, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 970
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 971
    const/16 v4, 0x21

    .line 967
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 972
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOrderCommentCountTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showProduct(JZ)V
    .locals 4
    .parameter "id"
    .parameter "isFirstStart"

    .prologue
    .line 568
    iput-wide p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->id:J

    .line 569
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, skuId:Ljava/lang/String;
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v1, v0}, Lcom/jingdong/common/entity/Product;->setSkuId(Ljava/lang/String;)V

    .line 571
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->stockResultText:Landroid/widget/TextView;

    const v2, 0x7f070224

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->showQuerying()V

    .line 575
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->mProductDetailController:Lcom/jingdong/common/controller/ProductDetailController;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->mSource:Lcom/jingdong/common/entity/SourceEntity;

    new-instance v3, Lcom/jingdong/app/mall/product/ProductDetailActivity$15;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$15;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/jingdong/common/controller/ProductDetailController;->queryProduct(JLcom/jingdong/common/entity/SourceEntity;Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V

    .line 614
    return-void
.end method

.method private showProductForCommentCount(Z)V
    .locals 1
    .parameter "isSucceed"

    .prologue
    .line 1411
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailActivity$33;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailActivity$33;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 1417
    return-void
.end method

.method private showProductForConsultationCount(Z)V
    .locals 1
    .parameter "isSucceed"

    .prologue
    .line 1420
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailActivity$34;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailActivity$34;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 1426
    return-void
.end method

.method private showProductForDeliver()V
    .locals 1

    .prologue
    .line 1350
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailActivity$28;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$28;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 1362
    return-void
.end method

.method private showProductForDetailStocks()V
    .locals 4

    .prologue
    .line 1093
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productInfoView:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/jingdong/app/mall/product/ProductDetailActivity$22;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$22;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1109
    new-instance v2, Lcom/jingdong/app/mall/product/ProductDetailActivity$23;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$23;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 1119
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getImageList()Ljava/util/List;

    move-result-object v0

    .line 1121
    .local v0, imageList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Image;>;"
    if-eqz v0, :cond_0

    .line 1122
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->imageCount:I

    .line 1124
    new-instance v2, Lcom/jingdong/app/mall/product/ProductDetailActivity$24;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$24;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 1169
    :cond_0
    new-instance v1, Lcom/jingdong/app/mall/utils/ProductShow;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-direct {v1, p0, v2}, Lcom/jingdong/app/mall/utils/ProductShow;-><init>(Landroid/content/Context;Lcom/jingdong/common/entity/Product;)V

    .line 1170
    .local v1, productShow:Lcom/jingdong/app/mall/utils/ProductShow;
    new-instance v2, Lcom/jingdong/app/mall/product/ProductDetailActivity$25;

    invoke-direct {v2, p0, v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity$25;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;Lcom/jingdong/app/mall/utils/ProductShow;)V

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 1216
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->initCollectButton()V

    .line 1219
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->initCartButton()V

    .line 1222
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->initFreeReadButton()V

    .line 1225
    new-instance v2, Lcom/jingdong/app/mall/product/ProductDetailActivity$26;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$26;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 1282
    return-void
.end method

.method private showProductForEasyBuy()V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->easyButton:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/product/ProductDetailActivity$10;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$10;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailActivity$11;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$11;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 471
    return-void
.end method

.method private showProductForOptoins()V
    .locals 1

    .prologue
    .line 1368
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailActivity$29;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$29;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 1374
    return-void
.end method

.method private showProductForOrderCommentCount(Z)V
    .locals 1
    .parameter "isSucceed"

    .prologue
    .line 1429
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailActivity$35;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailActivity$35;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 1435
    return-void
.end method

.method private showProductForPromotion()V
    .locals 2

    .prologue
    .line 1289
    new-instance v0, Lcom/jingdong/app/mall/utils/ProductShow;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-direct {v0, p0, v1}, Lcom/jingdong/app/mall/utils/ProductShow;-><init>(Landroid/content/Context;Lcom/jingdong/common/entity/Product;)V

    .line 1290
    .local v0, productShow:Lcom/jingdong/app/mall/utils/ProductShow;
    new-instance v1, Lcom/jingdong/app/mall/product/ProductDetailActivity$27;

    invoke-direct {v1, p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$27;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;Lcom/jingdong/app/mall/utils/ProductShow;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 1344
    return-void
.end method

.method private showQuerying()V
    .locals 1

    .prologue
    .line 620
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailActivity$16;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$16;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 644
    return-void
.end method

.method private showStockRunnable(Z)V
    .locals 1
    .parameter "isFirstStart"

    .prologue
    .line 652
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailActivity$17;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailActivity$17;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 659
    return-void
.end method

.method private statClick()V
    .locals 3

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->isAlreadyStatClick:Z

    if-nez v0, :cond_0

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->isAlreadyStatClick:Z

    .line 235
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->mProductDetailController:Lcom/jingdong/common/controller/ProductDetailController;

    iget-wide v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/controller/ProductDetailController;->statClick(J)V

    .line 237
    :cond_0
    return-void
.end method

.method private updateCurrentImage(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1568
    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1570
    .local v0, current:Ljava/lang/String;
    new-instance v1, Lcom/jingdong/app/mall/product/ProductDetailActivity$38;

    invoke-direct {v1, p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$38;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 1578
    return-void
.end method

.method private updateImageCount(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 1555
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1557
    .local v0, count:Ljava/lang/String;
    new-instance v1, Lcom/jingdong/app/mall/product/ProductDetailActivity$37;

    invoke-direct {v1, p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$37;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 1565
    return-void
.end method

.method private updatePromise(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 697
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productPromiseLineView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 699
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOptionsPromiseView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 700
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->prodcutPromiseTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    :cond_0
    return-void
.end method


# virtual methods
.method public canClickEasyBuyBtn()V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->easyButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 478
    return-void
.end method

.method public getParams()Ljava/util/Map;
    .locals 4
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
    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 225
    .local v0, paramsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "productId"

    iget-wide v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    const v5, 0x7f0300d4

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->setContentView(I)V

    .line 151
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v5

    iput-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    .line 153
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 155
    .local v2, bundle:Landroid/os/Bundle;
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->findViews()V

    .line 156
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->setEvents()V

    .line 158
    new-instance v5, Lcom/jingdong/common/controller/ProductDetailController;

    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-direct {v5, v6}, Lcom/jingdong/common/controller/ProductDetailController;-><init>(Lcom/jingdong/common/utils/HttpGroup;)V

    iput-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->mProductDetailController:Lcom/jingdong/common/controller/ProductDetailController;

    .line 159
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->mProductDetailController:Lcom/jingdong/common/controller/ProductDetailController;

    invoke-virtual {v5}, Lcom/jingdong/common/controller/ProductDetailController;->getProduct()Lcom/jingdong/common/entity/Product;

    move-result-object v5

    iput-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;

    .line 160
    const/4 v3, 0x0

    .line 162
    .local v3, sId:Ljava/lang/String;
    :try_start_0
    const-string v5, "id"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 169
    :goto_0
    const-wide/16 v0, 0x0

    .line 172
    .local v0, bId:J
    :try_start_1
    const-string v5, "id"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    .line 179
    :goto_1
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-nez v5, :cond_0

    if-eqz v3, :cond_0

    .line 181
    :try_start_2
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v0

    .line 190
    :cond_0
    :goto_2
    const-string v5, "source"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/SourceEntity;

    .line 191
    .local v4, source:Lcom/jingdong/common/entity/SourceEntity;
    if-eqz v4, :cond_1

    .line 192
    iput-object v4, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->mSource:Lcom/jingdong/common/entity/SourceEntity;

    .line 199
    :cond_1
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/Product;->setSkuId(Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getProvinceIDFromSharedPreferences()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->defaultProvinceId:Ljava/lang/String;

    .line 201
    new-instance v5, Lcom/jingdong/app/mall/product/ProductThridAddress;

    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->mProductDetailController:Lcom/jingdong/common/controller/ProductDetailController;

    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;

    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->productStockProvinceChoosed:Landroid/widget/TextView;

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/jingdong/app/mall/product/ProductThridAddress;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/controller/ProductDetailController;Lcom/jingdong/common/entity/Product;Landroid/widget/TextView;)V

    iput-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->mProductThridAddress:Lcom/jingdong/app/mall/product/ProductThridAddress;

    .line 203
    const/4 v5, 0x1

    invoke-direct {p0, v0, v1, v5}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProduct(JZ)V

    .line 205
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->mProductThridAddress:Lcom/jingdong/app/mall/product/ProductThridAddress;

    new-instance v6, Lcom/jingdong/app/mall/product/ProductDetailActivity$2;

    invoke-direct {v6, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$2;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/product/ProductThridAddress;->handleThirdAddress(Lcom/jingdong/app/mall/product/ProductThridAddress$ProductDetailUpdataUIListener;)V

    .line 219
    return-void

    .line 182
    .end local v4           #source:Lcom/jingdong/common/entity/SourceEntity;
    :catch_0
    move-exception v5

    goto :goto_2

    .line 173
    :catch_1
    move-exception v5

    goto :goto_1

    .line 163
    .end local v0           #bId:J
    :catch_2
    move-exception v5

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->shareButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 242
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 243
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;

    if-eqz v0, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->initCollectButton()V

    .line 247
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->isCanEasyBuy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->mProductDetailController:Lcom/jingdong/common/controller/ProductDetailController;

    new-instance v1, Lcom/jingdong/app/mall/product/ProductDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$3;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/controller/ProductDetailController;->queryCanEasybuy(Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V

    .line 264
    :cond_0
    return-void
.end method

.method public showProductForPacks()V
    .locals 2

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->isHasPacks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1383
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailActivity$30;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$30;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 1389
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity;->packsLinear:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/jingdong/app/mall/product/ProductDetailActivity$31;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$31;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1408
    :goto_0
    return-void

    .line 1401
    :cond_0
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailActivity$32;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$32;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
