.class public Lcom/jingdong/app/mall/product/ProductDetailNewActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "ProductDetailNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/product/ProductDetailNewActivity$ImageViewpageChangeListener;,
        Lcom/jingdong/app/mall/product/ProductDetailNewActivity$OptionsOnClickListener;,
        Lcom/jingdong/app/mall/product/ProductDetailNewActivity$ProductDetailPagerAdapter;
    }
.end annotation


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.jd.plug.productdetailplug"

.field private static final TAG:Ljava/lang/String; = "ProductDetailNewActivity"

.field public static hasCacelFavorite:Z


# instance fields
.field private PRODUCT_NAME_COUNT:I

.field private PRODUCT_SHOPPING_CAR_COUNT:I

.field private assetManager:Landroid/content/res/AssetManager;

.field private background:Landroid/graphics/drawable/Drawable;

.field private cartButton:Landroid/widget/Button;

.field private classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

.field private collectButton:Landroid/widget/ImageButton;

.field commentBundle:Landroid/os/Bundle;

.field private currentIndex:I

.field private dbService:Lcom/jingdong/common/utils/DBHelperUtil;

.field private easyButton:Landroid/widget/Button;

.field private fragmentName:Ljava/lang/String;

.field private freeReadLayout:Landroid/widget/LinearLayout;

.field private freeReadLayoutAll:Landroid/widget/LinearLayout;

.field private goShoppingCarButton:Landroid/widget/Button;

.field private httpGroup:Lcom/jingdong/common/utils/HttpGroup;

.field private id:J

.field private imageCount:I

.field private imageCountTextView:Landroid/widget/TextView;

.field private imageCurrentTextView:Landroid/widget/TextView;

.field iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

.field private isAlreadyStatClick:Z

.field private isDeliverShowed:Z

.field private isStrecth:Z

.field private isXJZShowed:Z

.field private layoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private loaded:Z

.field private mProductDetailController:Lcom/jingdong/common/controller/ProductDetailController;

.field private mProductThridAddress:Lcom/jingdong/app/mall/product/ProductThridAddress;

.field private mSource:Lcom/jingdong/common/entity/SourceEntity;

.field private myResources:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;

.field private packsLinear:Landroid/widget/LinearLayout;

.field private packsLinearLayout:Landroid/widget/LinearLayout;

.field private prodcutPromiseTextView:Landroid/widget/TextView;

.field private producNameAndAdWordView:Landroid/widget/TextView;

.field private product:Lcom/jingdong/common/entity/Product;

.field private productBottomLayout:Landroid/widget/LinearLayout;

.field private productColor:Ljava/lang/String;

.field private productColorAndSizeView:Landroid/widget/RelativeLayout;

.field private productColorContentTextView:Landroid/widget/TextView;

.field private productColorLineView:Landroid/view/View;

.field private productColorTextView:Landroid/widget/TextView;

.field private productCommentCount:Landroid/widget/TextView;

.field private productCommentIndexImageView:Landroid/widget/ImageView;

.field private productConsultationCount:Landroid/widget/LinearLayout;

.field private productConsultationCountTextView:Landroid/widget/TextView;

.field private productDeliverImageView:Landroid/widget/ImageView;

.field private productDeliverView:Landroid/widget/TextView;

.field private productDetailBasicInfo:Lcom/jingdong/common/entity/ProductDetailBasicInfo;

.field private productDetailCollectLayout:Landroid/widget/LinearLayout;

.field private productDetailCruxBasicInfo:Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;

.field private productDetailDeliverLayout:Landroid/widget/RelativeLayout;

.field private productDetailEvaluateLayout:Landroid/widget/RelativeLayout;

.field private productDetailImageLayout:Landroid/widget/RelativeLayout;

.field private productDetailInformationLayout:Landroid/widget/RelativeLayout;

.field private productDetailMprice:Lcom/jingdong/common/entity/ProductDetailPrice;

.field private productDetailPromotionLayout:Landroid/widget/RelativeLayout;

.field private productDetailShareLayout:Landroid/widget/LinearLayout;

.field private productDetailSkuColor:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/ProductDetailSkuColor;",
            ">;"
        }
    .end annotation
.end field

.field private productDetailSkuSize:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/ProductDetailSkuSize;",
            ">;"
        }
    .end annotation
.end field

.field private productDetailTitleInformationLayout:Landroid/widget/RelativeLayout;

.field private productImageViewPager:Landroid/support/v4/view/ViewPager;

.field private productJDDeliverImageView:Landroid/widget/ImageView;

.field private productJdPriceView:Landroid/widget/TextView;

.field private productMarketPriceView:Landroid/widget/TextView;

.field private productNameViewLine:Landroid/view/View;

.field private productOptionsColorView:Landroid/widget/LinearLayout;

.field private productOptionsPromiseView:Landroid/widget/LinearLayout;

.field private productOptionsSizeView:Landroid/widget/LinearLayout;

.field private productOptionsView:Landroid/widget/RelativeLayout;

.field private productOrderCommentCount:Landroid/widget/LinearLayout;

.field private productOrderCommentCountTextView:Landroid/widget/TextView;

.field private productPhoeJiangIcon:Landroid/widget/ImageView;

.field private productPhoeVipIcon:Landroid/widget/ImageView;

.field private productPhoeZengIcon:Landroid/widget/ImageView;

.field private productPromiseLineView:Landroid/view/View;

.field private productPromotionView:Landroid/widget/TextView;

.field private productScoreRb:Landroid/widget/RatingBar;

.field private productSize:Ljava/lang/String;

.field private productSizeContentTextView:Landroid/widget/TextView;

.field private productSizeLineView:Landroid/view/View;

.field private productSizeTextView:Landroid/widget/TextView;

.field private productStockContentTextView:Landroid/widget/TextView;

.field private productStockProvinceChoosed:Landroid/widget/TextView;

.field private productStockTextView:Landroid/widget/TextView;

.field private productXJZIconLayout:Landroid/widget/LinearLayout;

.field private resources:Landroid/content/res/Resources;

.field private rootView:Landroid/widget/FrameLayout;

.field private shareButton:Landroid/widget/Button;

.field private shoppingCarIconTextView:Landroid/widget/TextView;

.field private stockProvinceName:Ljava/lang/String;

.field private stretchButton:Landroid/widget/ImageButton;

.field private theme:Landroid/content/res/Resources$Theme;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->hasCacelFavorite:Z

    .line 213
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 92
    new-instance v0, Lcom/jingdong/common/entity/Product;

    invoke-direct {v0}, Lcom/jingdong/common/entity/Product;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;

    .line 93
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->commentBundle:Landroid/os/Bundle;

    .line 123
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 181
    new-instance v0, Lcom/jingdong/common/entity/ProductDetailBasicInfo;

    invoke-direct {v0}, Lcom/jingdong/common/entity/ProductDetailBasicInfo;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailBasicInfo:Lcom/jingdong/common/entity/ProductDetailBasicInfo;

    .line 190
    iput-boolean v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->isXJZShowed:Z

    .line 191
    iput-boolean v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->isDeliverShowed:Z

    .line 197
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x12

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 202
    new-instance v0, Lcom/jingdong/common/entity/SourceEntity;

    const-string v1, "unknown"

    invoke-direct {v0, v1, v4}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->mSource:Lcom/jingdong/common/entity/SourceEntity;

    .line 203
    const/16 v0, 0x14

    iput v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->PRODUCT_NAME_COUNT:I

    .line 204
    const/16 v0, 0x63

    iput v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->PRODUCT_SHOPPING_CAR_COUNT:I

    .line 224
    iput-object v4, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    .line 1842
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$1;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->background:Landroid/graphics/drawable/Drawable;

    .line 87
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 989
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProduct(J)V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->isStrecth:Z

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/Product;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1917
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->updatePromise(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1873
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->updateColorAndSizeTextView()V

    return-void
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 714
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->initCartButton()V

    return-void
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 819
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductForEasyBuy()V

    return-void
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->isStrecth:Z

    return v0
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOptionsView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->stretchButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/SourceEntity;
    .locals 1
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->mSource:Lcom/jingdong/common/entity/SourceEntity;

    return-object v0
.end method

.method static synthetic access$19(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->initShopingCar()V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->easyButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$20(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 759
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->isCanBuy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$21(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->cartButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$22(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->freeReadLayoutAll:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$23(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;
    .locals 1
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailCruxBasicInfo:Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;

    return-object v0
.end method

.method static synthetic access$24(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->id:J

    return-wide v0
.end method

.method static synthetic access$25(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/ProductDetailBasicInfo;
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailBasicInfo:Lcom/jingdong/common/entity/ProductDetailBasicInfo;

    return-object v0
.end method

.method static synthetic access$26(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->collectButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$27(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/controller/ProductDetailController;
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->mProductDetailController:Lcom/jingdong/common/controller/ProductDetailController;

    return-object v0
.end method

.method static synthetic access$28(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1035
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->initData()V

    return-void
.end method

.method static synthetic access$29(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 515
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->statClick()V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Ljava/util/List;ILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1945
    invoke-direct {p0, p1, p2, p3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->loadProductPicture(Ljava/util/List;ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$30(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1820
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductForConsultationCount(Z)V

    return-void
.end method

.method static synthetic access$31(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1829
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductForOrderCommentCount(Z)V

    return-void
.end method

.method static synthetic access$32(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1670
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductForPromotion()V

    return-void
.end method

.method static synthetic access$33(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1764
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductForOptoins()V

    return-void
.end method

.method static synthetic access$34(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1811
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductForCommentCount(Z)V

    return-void
.end method

.method static synthetic access$35(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1696
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductForDeliver()V

    return-void
.end method

.method static synthetic access$36(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->producNameAndAdWordView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$37(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDeliverView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$38(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productConsultationCountTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$39(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOrderCommentCountTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 135
    iget v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->imageCount:I

    return v0
.end method

.method static synthetic access$40(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productCommentCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$41(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productCommentIndexImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$42(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->prodcutPromiseTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$43(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productStockProvinceChoosed:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$44(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1931
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->addString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$45(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->stockProvinceName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$46(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productJdPriceView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$47(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOrderCommentCount:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$48(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productConsultationCount:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$49(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailTitleInformationLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 133
    iget v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->currentIndex:I

    return v0
.end method

.method static synthetic access$50(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$51(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->shareButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$52(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailShareLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$53(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productImageViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$54(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailImageLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$55(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2021
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->updateImageCount(I)V

    return-void
.end method

.method static synthetic access$56(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 203
    iget v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->PRODUCT_NAME_COUNT:I

    return v0
.end method

.method static synthetic access$57(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/ProductDetailPrice;
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailMprice:Lcom/jingdong/common/entity/ProductDetailPrice;

    return-object v0
.end method

.method static synthetic access$58(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productMarketPriceView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$59(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productXJZIconLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2034
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->updateCurrentImage(I)V

    return-void
.end method

.method static synthetic access$60(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPhoeVipIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$61(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPhoeJiangIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$62(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPhoeZengIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$63(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->isXJZShowed:Z

    return-void
.end method

.method static synthetic access$64(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1642
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->refreshXJZDIcon()V

    return-void
.end method

.method static synthetic access$65(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPromotionView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$66(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailPromotionLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$67(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailDeliverLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$68(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDeliverImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$69(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productNameViewLine:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    iput p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->currentIndex:I

    return-void
.end method

.method static synthetic access$70(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productJDDeliverImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$71(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->isDeliverShowed:Z

    return-void
.end method

.method static synthetic access$72(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1175
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showOptionsRunnable()V

    return-void
.end method

.method static synthetic access$73(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->packsLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$74(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1473
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showCommentCountRunnable()V

    return-void
.end method

.method static synthetic access$75(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1408
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showConsultationCount(Z)V

    return-void
.end method

.method static synthetic access$76(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1344
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showOrderCommentCountRunnable(Z)V

    return-void
.end method

.method static synthetic access$77(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$78(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productColorTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$79(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productColorContentTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1044
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showAllProductDetail()V

    return-void
.end method

.method static synthetic access$80(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productSize:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$81(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productSizeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$82(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productSizeContentTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$83(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->stockProvinceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$84(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productStockTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$85(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productStockContentTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$86(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPromiseLineView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$87(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOptionsPromiseView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$88(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->imageCountTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$89(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->imageCurrentTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1080
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showDirectStockRunnableMethod()V

    return-void
.end method

.method private addString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "text"

    .prologue
    .line 1932
    const-string v0, ""

    .line 1933
    .local v0, str:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1934
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1936
    :cond_0
    return-object v0
.end method

.method private destroyData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1912
    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productColor:Ljava/lang/String;

    .line 1913
    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productSize:Ljava/lang/String;

    .line 1914
    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->stockProvinceName:Ljava/lang/String;

    .line 1915
    return-void
.end method

.method private findViews()V
    .locals 3

    .prologue
    const v1, 0x7f0c0586

    const/4 v2, 0x0

    .line 559
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->titleView:Landroid/widget/TextView;

    .line 561
    const v0, 0x7f0c051a

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productImageViewPager:Landroid/support/v4/view/ViewPager;

    .line 562
    const v0, 0x7f0c051d

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->imageCountTextView:Landroid/widget/TextView;

    .line 563
    const v0, 0x7f0c051c

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->imageCurrentTextView:Landroid/widget/TextView;

    .line 566
    const v0, 0x7f0c055b

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->stretchButton:Landroid/widget/ImageButton;

    .line 568
    const v0, 0x7f0c0556

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productColorContentTextView:Landroid/widget/TextView;

    .line 569
    const v0, 0x7f0c0558

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productSizeContentTextView:Landroid/widget/TextView;

    .line 571
    const v0, 0x7f0c0555

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productColorTextView:Landroid/widget/TextView;

    .line 572
    const v0, 0x7f0c0557

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productSizeTextView:Landroid/widget/TextView;

    .line 574
    const v0, 0x7f0c0559

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productStockTextView:Landroid/widget/TextView;

    .line 575
    const v0, 0x7f0c055a

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productStockContentTextView:Landroid/widget/TextView;

    .line 576
    const v0, 0x7f0c0584

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productBottomLayout:Landroid/widget/LinearLayout;

    .line 577
    const v0, 0x7f0c0553

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productColorAndSizeView:Landroid/widget/RelativeLayout;

    .line 580
    const v0, 0x7f0c0589

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->cartButton:Landroid/widget/Button;

    .line 581
    const v0, 0x7f0c058a

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->easyButton:Landroid/widget/Button;

    .line 582
    const v0, 0x7f0c0588

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->collectButton:Landroid/widget/ImageButton;

    .line 583
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->shareButton:Landroid/widget/Button;

    .line 584
    const v0, 0x7f0c057e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOrderCommentCount:Landroid/widget/LinearLayout;

    .line 585
    const v0, 0x7f0c0581

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productConsultationCount:Landroid/widget/LinearLayout;

    .line 586
    const v0, 0x7f0c0577

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->packsLinear:Landroid/widget/LinearLayout;

    .line 587
    const v0, 0x7f0c0576

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->packsLinearLayout:Landroid/widget/LinearLayout;

    .line 588
    const v0, 0x7f0c055c

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOptionsView:Landroid/widget/RelativeLayout;

    .line 589
    const v0, 0x7f0c055e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOptionsColorView:Landroid/widget/LinearLayout;

    .line 590
    const v0, 0x7f0c0560

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOptionsSizeView:Landroid/widget/LinearLayout;

    .line 591
    const v0, 0x7f0c0533

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOptionsPromiseView:Landroid/widget/LinearLayout;

    .line 592
    const v0, 0x7f0c0564

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productStockProvinceChoosed:Landroid/widget/TextView;

    .line 593
    const v0, 0x7f0c0571

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDeliverView:Landroid/widget/TextView;

    .line 594
    const v0, 0x7f0c056d

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->producNameAndAdWordView:Landroid/widget/TextView;

    .line 595
    const v0, 0x7f0c054a

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productJdPriceView:Landroid/widget/TextView;

    .line 596
    const v0, 0x7f0c054f

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productJDDeliverImageView:Landroid/widget/ImageView;

    .line 598
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->shareButton:Landroid/widget/Button;

    .line 600
    const v0, 0x7f0c071d

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->goShoppingCarButton:Landroid/widget/Button;

    .line 601
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->goShoppingCarButton:Landroid/widget/Button;

    const v1, 0x7f020247

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 602
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->goShoppingCarButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 605
    const v0, 0x7f0c0575

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->freeReadLayout:Landroid/widget/LinearLayout;

    .line 606
    const v0, 0x7f0c0574

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->freeReadLayoutAll:Landroid/widget/LinearLayout;

    .line 608
    const v0, 0x7f0c0178

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productScoreRb:Landroid/widget/RatingBar;

    .line 609
    const v0, 0x7f0c0179

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productCommentCount:Landroid/widget/TextView;

    .line 611
    const v0, 0x7f0c0583

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productConsultationCountTextView:Landroid/widget/TextView;

    .line 613
    const v0, 0x7f0c0580

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOrderCommentCountTextView:Landroid/widget/TextView;

    .line 615
    const v0, 0x7f0c056e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productNameViewLine:Landroid/view/View;

    .line 616
    const v0, 0x7f0c055d

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productColorLineView:Landroid/view/View;

    .line 617
    const v0, 0x7f0c055f

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productSizeLineView:Landroid/view/View;

    .line 618
    const v0, 0x7f0c0532

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPromiseLineView:Landroid/view/View;

    .line 620
    const v0, 0x7f0c0570

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDeliverImageView:Landroid/widget/ImageView;

    .line 621
    const v0, 0x7f0c0573

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPromotionView:Landroid/widget/TextView;

    .line 623
    const v0, 0x7f0c0550

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productMarketPriceView:Landroid/widget/TextView;

    .line 625
    const v0, 0x7f0c057a

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailEvaluateLayout:Landroid/widget/RelativeLayout;

    .line 627
    const v0, 0x7f0c0572

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailPromotionLayout:Landroid/widget/RelativeLayout;

    .line 629
    const v0, 0x7f0c0567

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailInformationLayout:Landroid/widget/RelativeLayout;

    .line 630
    const v0, 0x7f0c057b

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productCommentIndexImageView:Landroid/widget/ImageView;

    .line 631
    const v0, 0x7f0c056f

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailDeliverLayout:Landroid/widget/RelativeLayout;

    .line 632
    const v0, 0x7f0c0568

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailTitleInformationLayout:Landroid/widget/RelativeLayout;

    .line 633
    const v0, 0x7f0c0585

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailShareLayout:Landroid/widget/LinearLayout;

    .line 634
    const v0, 0x7f0c0587

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailCollectLayout:Landroid/widget/LinearLayout;

    .line 635
    const v0, 0x7f0c071f

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->shoppingCarIconTextView:Landroid/widget/TextView;

    .line 636
    const v0, 0x7f0c0548

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailImageLayout:Landroid/widget/RelativeLayout;

    .line 639
    const v0, 0x7f0c0534

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->prodcutPromiseTextView:Landroid/widget/TextView;

    .line 641
    const v0, 0x7f0c054c

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPhoeVipIcon:Landroid/widget/ImageView;

    .line 642
    const v0, 0x7f0c054d

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPhoeJiangIcon:Landroid/widget/ImageView;

    .line 643
    const v0, 0x7f0c054e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPhoeZengIcon:Landroid/widget/ImageView;

    .line 644
    const v0, 0x7f0c054b

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productXJZIconLayout:Landroid/widget/LinearLayout;

    .line 645
    return-void
.end method

.method private goShoppingCar()V
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->goShoppingCarButton:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$3;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    return-void
.end method

.method private handleFoldAndUnfold()V
    .locals 2

    .prologue
    .line 689
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$4;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$4;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    .line 705
    .local v0, foldClickListener:Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productColorAndSizeView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 708
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->stretchButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 709
    return-void
.end method

.method private initCartButton()V
    .locals 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->cartButton:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$5;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$5;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$6;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$6;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->post(Ljava/lang/Runnable;)V

    .line 752
    return-void
.end method

.method private initCollectButton()V
    .locals 2

    .prologue
    .line 881
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->isFavorited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$12;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$12;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->post(Ljava/lang/Runnable;)V

    .line 899
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailCollectLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$14;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$14;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 906
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->collectButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 975
    return-void

    .line 891
    :cond_0
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$13;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$13;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getProductDetailBasicInfo()Lcom/jingdong/common/entity/ProductDetailBasicInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailBasicInfo:Lcom/jingdong/common/entity/ProductDetailBasicInfo;

    .line 1037
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getProductDetailSkuColor()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailSkuColor:Ljava/util/ArrayList;

    .line 1038
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getProductDetailSkuSize()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailSkuSize:Ljava/util/ArrayList;

    .line 1039
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getProductDetailCruxBasicInfo()Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailCruxBasicInfo:Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;

    .line 1040
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getProductDetailMprice()Lcom/jingdong/common/entity/ProductDetailPrice;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailMprice:Lcom/jingdong/common/entity/ProductDetailPrice;

    .line 1041
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailBasicInfo:Lcom/jingdong/common/entity/ProductDetailBasicInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/Product;->setName(Ljava/lang/String;)V

    .line 1042
    return-void
.end method

.method private initFreeReadButton()V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailCruxBasicInfo:Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->isRead()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailCruxBasicInfo:Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->getReadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 782
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$7;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$7;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->post(Ljava/lang/Runnable;)V

    .line 788
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->freeReadLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$8;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$8;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    :goto_0
    return-void

    .line 798
    :cond_0
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$9;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$9;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private initPlug(Landroid/content/Intent;Ljava/io/File;)Z
    .locals 8
    .parameter "intent"
    .parameter "file"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 375
    :try_start_0
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->fragmentName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->loadFragNameEmpty()V

    .line 378
    :cond_0
    invoke-static {p2}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;->getClassLoader(Ljava/io/File;)Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    move-result-object v7

    iput-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    .line 380
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    if-eqz v7, :cond_2

    move v7, v6

    :goto_0
    iput-boolean v7, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->loaded:Z

    .line 392
    iget-boolean v7, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->loaded:Z

    if-nez v7, :cond_3

    .line 393
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->loadPlugClassLoaderError()V

    .line 418
    :cond_1
    :goto_1
    return v5

    :cond_2
    move v7, v5

    .line 380
    goto :goto_0

    .line 397
    :cond_3
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->fragmentName:Ljava/lang/String;

    invoke-virtual {p0, p0, v7}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getPlugIntance(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    move-result-object v4

    .line 399
    .local v4, iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;
    const/4 v2, 0x0

    .line 402
    .local v2, fragment:Landroid/support/v4/app/Fragment;
    if-eqz v4, :cond_1

    .line 403
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-interface {v4, p0, v7}, Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;->getFragment(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 409
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 410
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 411
    .local v1, fm:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 412
    .local v3, ft:Landroid/support/v4/app/FragmentTransaction;
    const v7, 0x102000c

    invoke-virtual {v3, v7, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 413
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    .line 414
    goto :goto_1

    .line 415
    .end local v1           #fm:Landroid/support/v4/app/FragmentManager;
    .end local v2           #fragment:Landroid/support/v4/app/Fragment;
    .end local v3           #ft:Landroid/support/v4/app/FragmentTransaction;
    .end local v4           #iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;
    :catch_0
    move-exception v0

    .line 416
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->loadPlugFragmentError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private initShopingCar()V
    .locals 5

    .prologue
    .line 651
    invoke-static {}, Lcom/jingdong/app/mall/shopping/ShoppingController;->getProductCount()I

    move-result v0

    .line 652
    .local v0, count:I
    if-lez v0, :cond_1

    .line 653
    const-string v1, ""

    .line 654
    .local v1, countString:Ljava/lang/String;
    iget v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->PRODUCT_SHOPPING_CAR_COUNT:I

    if-le v0, v2, :cond_0

    .line 655
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070517

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 659
    :goto_0
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->shoppingCarIconTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 660
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->shoppingCarIconTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 661
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->shoppingCarIconTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    .end local v1           #countString:Ljava/lang/String;
    :goto_1
    return-void

    .line 657
    .restart local v1       #countString:Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 663
    .end local v1           #countString:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->shoppingCarIconTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private isCanBuy()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 765
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getProvinceStockFlag()Ljava/lang/Boolean;

    move-result-object v0

    .line 767
    .local v0, provinceStockFlag:Ljava/lang/Boolean;
    if-nez v0, :cond_1

    .line 773
    :cond_0
    :goto_0
    return v1

    .line 770
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 771
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNeedTwoLine()Z
    .locals 10

    .prologue
    .line 1734
    new-instance v7, Lcom/jingdong/app/mall/utils/ProductShow;

    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-direct {v7, p0, v8}, Lcom/jingdong/app/mall/utils/ProductShow;-><init>(Landroid/content/Context;Lcom/jingdong/common/entity/Product;)V

    .line 1735
    .local v7, productShow:Lcom/jingdong/app/mall/utils/ProductShow;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1736
    .local v3, paint:Landroid/graphics/Paint;
    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productJdPriceView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTextSize()F

    move-result v8

    const v9, 0x3f99999a

    mul-float/2addr v8, v9

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1737
    invoke-virtual {v7}, Lcom/jingdong/app/mall/utils/ProductShow;->getJdPrice()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 1738
    .local v2, measureText:F
    float-to-int v6, v2

    .line 1740
    .local v6, priceAndIconWidth:I
    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPhoeZengIcon:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    .line 1741
    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPhoeZengIcon:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPhoeZengIcon:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPhoeZengIcon:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 1744
    :cond_0
    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPhoeJiangIcon:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 1746
    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPhoeJiangIcon:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPhoeJiangIcon:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPhoeJiangIcon:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 1749
    :cond_1
    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPhoeVipIcon:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    .line 1750
    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPhoeVipIcon:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPhoeVipIcon:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPhoeVipIcon:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 1753
    :cond_2
    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productJDDeliverImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 1754
    .local v1, jdDeliverWidth:I
    const v8, 0x7f0c0549

    invoke-virtual {p0, v8}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 1755
    .local v4, parentLayout:Landroid/widget/RelativeLayout;
    add-int v8, v6, v1

    const/high16 v9, 0x4100

    invoke-static {v9}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v9

    add-int v0, v8, v9

    .line 1756
    .local v0, childWidth:I
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v9

    sub-int v5, v8, v9

    .line 1758
    .local v5, parentWidth:I
    if-lt v0, v5, :cond_3

    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_3
    const/4 v8, 0x0

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
    .line 1947
    .local p1, imageList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Image;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/Image;

    .line 1948
    .local v5, image:Lcom/jingdong/common/entity/Image;
    const v0, 0x7f0c058b

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1949
    .local v3, imageView:Landroid/widget/ImageView;
    const v0, 0x7f0c058c

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 1950
    .local v2, progressBar:Landroid/widget/ProgressBar;
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1951
    new-instance v0, Lcom/jingdong/common/ui/ExceptionDrawable;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f070001

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/jingdong/common/ui/ExceptionDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1953
    invoke-virtual {v5}, Lcom/jingdong/common/entity/Image;->getSmall()Ljava/lang/String;

    move-result-object v4

    .line 1955
    .local v4, url:Ljava/lang/String;
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getHttpGroupaAsynPool(I)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v9

    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;

    move-object v1, p0

    move v6, p2

    move-object v7, p1

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Ljava/lang/String;Lcom/jingdong/common/entity/Image;ILjava/util/List;Landroid/view/View;)V

    invoke-static {p0, v3, v9, v4, v0}, Lcom/jingdong/common/utils/ImageUtil;->setViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/view/View;Lcom/jingdong/common/utils/HttpGroup;Ljava/lang/String;Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;)V

    .line 2019
    return-void
.end method

.method private declared-synchronized refreshXJZDIcon()V
    .locals 6

    .prologue
    .line 1643
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->isXJZShowed:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->isDeliverShowed:Z

    if-eqz v3, :cond_0

    .line 1644
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->isNeedTwoLine()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1646
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1647
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x3

    const v4, 0x7f0c054a

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1648
    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1649
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1650
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productXJZIconLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1652
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0170

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1653
    .local v0, deliverLp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x3

    const v4, 0x7f0c054a

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1654
    const/4 v3, 0x1

    const v4, 0x7f0c054b

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1655
    const/high16 v3, 0x4080

    invoke-static {v3}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1656
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productJDDeliverImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1658
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1659
    .local v2, marketLp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x3

    const v4, 0x7f0c054b

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1660
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1661
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productMarketPriceView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1665
    .end local v0           #deliverLp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #marketLp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    monitor-exit p0

    return-void

    .line 1643
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private removeAllLinearLayout(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "viewGroup"

    .prologue
    .line 1300
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1302
    .local v0, childCount:I
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-gez v2, :cond_0

    .line 1308
    return-void

    .line 1303
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1304
    .local v1, childView:Landroid/view/View;
    instance-of v3, v1, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    .line 1305
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1302
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private removeAllTextView(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "viewGroup"

    .prologue
    .line 1323
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1325
    .local v0, childCount:I
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-gez v2, :cond_0

    .line 1331
    return-void

    .line 1326
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1327
    .local v1, childView:Landroid/view/View;
    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 1328
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1325
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private showAllProductDetail()V
    .locals 1

    .prologue
    .line 1045
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showStockRunnable()V

    .line 1046
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductForDetailStocks()V

    .line 1047
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getProvinceStockContent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->updatePromise(Ljava/lang/String;)V

    .line 1048
    return-void
.end method

.method private showCommentCountRunnable()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 1475
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailCruxBasicInfo:Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->getComNum()Ljava/lang/String;

    move-result-object v0

    .line 1476
    .local v0, count:Ljava/lang/String;
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailCruxBasicInfo:Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->getScore()Ljava/lang/String;

    move-result-object v3

    .line 1480
    .local v3, scoreStr:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "0"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1481
    :cond_0
    const v5, 0x7f07050f

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1482
    .local v1, countStr:Ljava/lang/String;
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productCommentCount:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1483
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productCommentCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090071

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1484
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productCommentCount:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1485
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailEvaluateLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1486
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productCommentIndexImageView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1500
    .end local v1           #countStr:Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1501
    const/high16 v2, 0x40a0

    .line 1506
    .local v2, score:F
    :goto_1
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productScoreRb:Landroid/widget/RatingBar;

    invoke-virtual {v5, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 1508
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductEvaluate()V

    .line 1509
    return-void

    .line 1488
    .end local v2           #score:F
    :cond_1
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productCommentCount:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1489
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailEvaluateLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1490
    new-instance v4, Landroid/text/SpannableStringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070515

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1492
    .local v4, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090028

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1494
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 1495
    const/16 v7, 0x21

    .line 1491
    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1496
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productCommentCount:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1497
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productCommentIndexImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1503
    .end local v4           #spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    :cond_2
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .restart local v2       #score:F
    goto :goto_1
.end method

.method private showConsultationCount(Z)V
    .locals 6
    .parameter "isSucceed"

    .prologue
    const v4, 0x7f0701ec

    const/4 v5, 0x0

    .line 1409
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productConsultationCount:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$20;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$20;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1424
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productConsultationCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1425
    if-nez p1, :cond_0

    .line 1445
    :goto_0
    return-void

    .line 1429
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailCruxBasicInfo:Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->getCousultNum()Ljava/lang/String;

    move-result-object v0

    .line 1431
    .local v0, orderConsultationNum:Ljava/lang/String;
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailCruxBasicInfo:Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->isConsult()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1433
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productConsultationCount:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .line 1435
    :cond_2
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productConsultationCount:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1436
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productConsultationCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1437
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

    .line 1439
    .local v1, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1441
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 1442
    const/16 v4, 0x21

    .line 1438
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1443
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productConsultationCountTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showDirectStockRunnableMethod()V
    .locals 1

    .prologue
    .line 1084
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$18;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$18;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->post(Ljava/lang/Runnable;)V

    .line 1124
    return-void
.end method

.method private showOptionsRunnable()V
    .locals 13

    .prologue
    .line 1176
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v7

    .line 1177
    .local v7, screenWidth:I
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b009b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    sub-int v9, v7, v9

    .line 1178
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b00dc

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x4

    .line 1177
    sub-int v1, v9, v10

    .line 1180
    .local v1, buttonWidth:I
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailSkuColor:Ljava/util/ArrayList;

    .line 1182
    .local v2, colorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/ProductDetailSkuColor;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_4

    .line 1183
    :cond_0
    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productColorLineView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1184
    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOptionsColorView:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1233
    :cond_1
    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailSkuSize:Ljava/util/ArrayList;

    .line 1235
    .local v8, sizeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/ProductDetailSkuSize;>;"
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_9

    .line 1236
    :cond_2
    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productSizeLineView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1237
    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOptionsSizeView:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1285
    :cond_3
    return-void

    .line 1186
    .end local v8           #sizeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/ProductDetailSkuSize;>;"
    :cond_4
    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productColorLineView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1187
    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOptionsColorView:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1188
    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOptionsView:Landroid/widget/RelativeLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1190
    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOptionsColorView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v9}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->removeAllLinearLayout(Landroid/view/ViewGroup;)V

    .line 1191
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1192
    .local v5, linearLayout:Landroid/widget/LinearLayout;
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1193
    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOptionsColorView:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1195
    const/4 v6, 0x0

    .line 1197
    .local v6, row:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 1200
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1201
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jingdong/common/entity/ProductDetailSkuColor;

    invoke-virtual {v9}, Lcom/jingdong/common/entity/ProductDetailSkuColor;->getColor()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1202
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09006c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 1203
    const/16 v9, 0x11

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setGravity(I)V

    .line 1204
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1205
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 1206
    div-int/lit8 v9, v1, 0x3

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setWidth(I)V

    .line 1207
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jingdong/common/entity/ProductDetailSkuColor;

    invoke-virtual {v9}, Lcom/jingdong/common/entity/ProductDetailSkuColor;->getSkuId()Ljava/lang/String;

    move-result-object v9

    iget-wide v10, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1208
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jingdong/common/entity/ProductDetailSkuColor;

    invoke-virtual {v9}, Lcom/jingdong/common/entity/ProductDetailSkuColor;->getColor()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productColor:Ljava/lang/String;

    .line 1209
    const v9, 0x7f02023b

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1214
    :goto_1
    new-instance v10, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$OptionsOnClickListener;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jingdong/common/entity/ProductDetailSkuColor;

    invoke-virtual {v9}, Lcom/jingdong/common/entity/ProductDetailSkuColor;->getSkuId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-direct {v10, p0, v11, v12}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$OptionsOnClickListener;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;J)V

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1217
    add-int/lit8 v9, v3, 0x1

    rem-int/lit8 v4, v9, 0x3

    .line 1219
    .local v4, j:I
    const/4 v9, 0x1

    if-ne v4, v9, :cond_5

    .line 1220
    new-instance v6, Landroid/widget/LinearLayout;

    .end local v6           #row:Landroid/widget/LinearLayout;
    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1221
    .restart local v6       #row:Landroid/widget/LinearLayout;
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1224
    :cond_5
    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6, v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1226
    if-eqz v4, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_7

    .line 1227
    :cond_6
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1197
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1211
    .end local v4           #j:I
    :cond_8
    const v9, 0x7f02023a

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 1239
    .end local v0           #button:Landroid/widget/Button;
    .end local v3           #i:I
    .end local v5           #linearLayout:Landroid/widget/LinearLayout;
    .end local v6           #row:Landroid/widget/LinearLayout;
    .restart local v8       #sizeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/ProductDetailSkuSize;>;"
    :cond_9
    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productSizeLineView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1240
    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOptionsSizeView:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1241
    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOptionsView:Landroid/widget/RelativeLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1243
    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOptionsSizeView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v9}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->removeAllLinearLayout(Landroid/view/ViewGroup;)V

    .line 1245
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1246
    .restart local v5       #linearLayout:Landroid/widget/LinearLayout;
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1247
    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOptionsSizeView:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1249
    const/4 v6, 0x0

    .line 1251
    .restart local v6       #row:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 1254
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1255
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jingdong/common/entity/ProductDetailSkuSize;

    invoke-virtual {v9}, Lcom/jingdong/common/entity/ProductDetailSkuSize;->getSize()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1256
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09006c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 1257
    const/16 v9, 0x11

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setGravity(I)V

    .line 1258
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1259
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 1260
    div-int/lit8 v9, v1, 0x3

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setWidth(I)V

    .line 1261
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jingdong/common/entity/ProductDetailSkuSize;

    invoke-virtual {v9}, Lcom/jingdong/common/entity/ProductDetailSkuSize;->getSkuId()Ljava/lang/String;

    move-result-object v9

    iget-wide v10, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1262
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jingdong/common/entity/ProductDetailSkuSize;

    invoke-virtual {v9}, Lcom/jingdong/common/entity/ProductDetailSkuSize;->getSize()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productSize:Ljava/lang/String;

    .line 1263
    const v9, 0x7f02023b

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1268
    :goto_3
    new-instance v10, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$OptionsOnClickListener;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jingdong/common/entity/ProductDetailSkuSize;

    invoke-virtual {v9}, Lcom/jingdong/common/entity/ProductDetailSkuSize;->getSkuId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-direct {v10, p0, v11, v12}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$OptionsOnClickListener;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;J)V

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1271
    add-int/lit8 v9, v3, 0x1

    rem-int/lit8 v4, v9, 0x3

    .line 1273
    .restart local v4       #j:I
    const/4 v9, 0x1

    if-ne v4, v9, :cond_a

    .line 1274
    new-instance v6, Landroid/widget/LinearLayout;

    .end local v6           #row:Landroid/widget/LinearLayout;
    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1275
    .restart local v6       #row:Landroid/widget/LinearLayout;
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1278
    :cond_a
    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6, v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1280
    if-eqz v4, :cond_b

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_c

    .line 1281
    :cond_b
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1251
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 1265
    .end local v4           #j:I
    :cond_d
    const v9, 0x7f02023a

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method private showOrderCommentCountRunnable(Z)V
    .locals 6
    .parameter "isSucceed"

    .prologue
    const/4 v5, 0x0

    .line 1348
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOrderCommentCount:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$19;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$19;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1370
    if-nez p1, :cond_0

    .line 1371
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOrderCommentCountTextView:Landroid/widget/TextView;

    const v3, 0x7f0701f8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1395
    :goto_0
    return-void

    .line 1375
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailCruxBasicInfo:Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->getOrderNum()Ljava/lang/String;

    move-result-object v0

    .line 1376
    .local v0, orderCommentNum:Ljava/lang/String;
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOrderCommentCount:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1380
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1381
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOrderCommentCountTextView:Landroid/widget/TextView;

    const v3, 0x7f07050e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1382
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOrderCommentCount:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1383
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOrderCommentCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090071

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1385
    :cond_2
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOrderCommentCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070204

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1386
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOrderCommentCount:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1387
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

    .line 1389
    .local v1, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1391
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 1392
    const/16 v4, 0x21

    .line 1388
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1393
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOrderCommentCountTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private showPacksLayoutVisible(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 1804
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$29;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$29;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;I)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->post(Ljava/lang/Runnable;)V

    .line 1809
    return-void
.end method

.method private showProduct(J)V
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 993
    iput-wide p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->id:J

    .line 994
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 995
    .local v0, skuId:Ljava/lang/String;
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v1, v0}, Lcom/jingdong/common/entity/Product;->setSkuId(Ljava/lang/String;)V

    .line 996
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/Product;->setId(Ljava/lang/Long;)V

    .line 997
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/Product;->setStockFunction(Ljava/lang/String;)V

    .line 998
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v1, v3}, Lcom/jingdong/common/entity/Product;->setCheckNext(Z)V

    .line 999
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showQuerying()V

    .line 1000
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->destroyData()V

    .line 1002
    iput-boolean v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->isXJZShowed:Z

    .line 1003
    iput-boolean v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->isDeliverShowed:Z

    .line 1005
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->mProductDetailController:Lcom/jingdong/common/controller/ProductDetailController;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->mSource:Lcom/jingdong/common/entity/SourceEntity;

    new-instance v3, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$16;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$16;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/jingdong/common/controller/ProductDetailController;->queryProduct(JLcom/jingdong/common/entity/SourceEntity;Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V

    .line 1033
    return-void
.end method

.method private showProductEvaluate()V
    .locals 2

    .prologue
    .line 2048
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailEvaluateLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$38;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$38;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2058
    return-void
.end method

.method private showProductForCommentCount(Z)V
    .locals 1
    .parameter "isSucceed"

    .prologue
    .line 1812
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$30;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$30;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->post(Ljava/lang/Runnable;)V

    .line 1818
    return-void
.end method

.method private showProductForConsultationCount(Z)V
    .locals 1
    .parameter "isSucceed"

    .prologue
    .line 1821
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$31;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$31;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->post(Ljava/lang/Runnable;)V

    .line 1827
    return-void
.end method

.method private showProductForDeliver()V
    .locals 1

    .prologue
    .line 1697
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$26;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$26;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->post(Ljava/lang/Runnable;)V

    .line 1725
    return-void
.end method

.method private showProductForDetailStocks()V
    .locals 4

    .prologue
    .line 1519
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailTitleInformationLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$21;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$21;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1534
    new-instance v2, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$22;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$22;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->post(Ljava/lang/Runnable;)V

    .line 1543
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getImageList()Ljava/util/List;

    move-result-object v0

    .line 1545
    .local v0, imageList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Image;>;"
    if-eqz v0, :cond_0

    .line 1546
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->imageCount:I

    .line 1548
    new-instance v2, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$23;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$23;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->post(Ljava/lang/Runnable;)V

    .line 1569
    :cond_0
    new-instance v1, Lcom/jingdong/app/mall/utils/ProductShow;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-direct {v1, p0, v2}, Lcom/jingdong/app/mall/utils/ProductShow;-><init>(Landroid/content/Context;Lcom/jingdong/common/entity/Product;)V

    .line 1570
    .local v1, productShow:Lcom/jingdong/app/mall/utils/ProductShow;
    new-instance v2, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;

    invoke-direct {v2, p0, v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Lcom/jingdong/app/mall/utils/ProductShow;)V

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->post(Ljava/lang/Runnable;)V

    .line 1632
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->initCollectButton()V

    .line 1635
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->initCartButton()V

    .line 1638
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->initFreeReadButton()V

    .line 1640
    return-void
.end method

.method private showProductForEasyBuy()V
    .locals 2

    .prologue
    .line 823
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->easyButton:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$10;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$10;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 840
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$11;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$11;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->post(Ljava/lang/Runnable;)V

    .line 857
    return-void
.end method

.method private showProductForOptoins()V
    .locals 1

    .prologue
    .line 1765
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$27;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$27;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->post(Ljava/lang/Runnable;)V

    .line 1776
    return-void
.end method

.method private showProductForOrderCommentCount(Z)V
    .locals 1
    .parameter "isSucceed"

    .prologue
    .line 1830
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$32;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$32;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->post(Ljava/lang/Runnable;)V

    .line 1836
    return-void
.end method

.method private showProductForPromotion()V
    .locals 2

    .prologue
    .line 1672
    new-instance v0, Lcom/jingdong/app/mall/utils/ProductShow;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-direct {v0, p0, v1}, Lcom/jingdong/app/mall/utils/ProductShow;-><init>(Landroid/content/Context;Lcom/jingdong/common/entity/Product;)V

    .line 1673
    .local v0, productShow:Lcom/jingdong/app/mall/utils/ProductShow;
    new-instance v1, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$25;

    invoke-direct {v1, p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$25;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Lcom/jingdong/app/mall/utils/ProductShow;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->post(Ljava/lang/Runnable;)V

    .line 1691
    return-void
.end method

.method private showQuerying()V
    .locals 1

    .prologue
    .line 1054
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$17;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$17;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->post(Ljava/lang/Runnable;)V

    .line 1075
    return-void
.end method

.method private showStockRunnable()V
    .locals 0

    .prologue
    .line 1130
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showDirectStockRunnableMethod()V

    .line 1132
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->updateColorAndSizeTextView()V

    .line 1133
    return-void
.end method

.method private startPlug(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, -0x1

    .line 320
    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->rootView:Landroid/widget/FrameLayout;

    .line 321
    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->rootView:Landroid/widget/FrameLayout;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->rootView:Landroid/widget/FrameLayout;

    const v10, 0x102000c

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setId(I)V

    .line 323
    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v9}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->setContentView(Landroid/view/View;)V

    .line 325
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 326
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 327
    .local v0, bundle:Landroid/os/Bundle;
    const-string v9, "id"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 329
    .local v8, proId:Ljava/lang/Object;
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 330
    check-cast v8, Ljava/lang/String;

    .end local v8           #proId:Ljava/lang/Object;
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->id:J

    .line 339
    :goto_0
    invoke-static {}, Lcom/jingdong/app/mall/plug/PlugManager;->getInstance()Lcom/jingdong/app/mall/plug/PlugManager;

    move-result-object v9

    const-string v10, "com.jd.plug.productdetailplug"

    invoke-virtual {v9, p0, v10}, Lcom/jingdong/app/mall/plug/PlugManager;->getPlugItem(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v6

    .line 345
    .local v6, plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    const/4 v2, 0x0

    .line 347
    .local v2, file:Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v9, v6, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->intallPath:Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .end local v2           #file:Ljava/io/File;
    .local v3, file:Ljava/io/File;
    :try_start_1
    iget-object v9, v6, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->lunchPath:Ljava/lang/String;

    iput-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->fragmentName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 353
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :goto_1
    invoke-direct {p0, v4, v2}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->initPlug(Landroid/content/Intent;Ljava/io/File;)Z

    move-result v5

    .line 359
    .local v5, isOk:Z
    if-nez v5, :cond_0

    .line 361
    :try_start_2
    const-string v9, "com.jd.plug.productdetailplug"

    invoke-static {p0, v9}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPlugsTools;->installPlugFromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v7

    .line 362
    .local v7, plugItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    if-eqz v7, :cond_0

    .line 363
    new-instance v3, Ljava/io/File;

    iget-object v9, v7, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->intallPath:Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 364
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :try_start_3
    iget-object v9, v7, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->lunchPath:Ljava/lang/String;

    iput-object v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->fragmentName:Ljava/lang/String;

    .line 365
    invoke-direct {p0, v4, v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->initPlug(Landroid/content/Intent;Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v2, v3

    .line 371
    .end local v3           #file:Ljava/io/File;
    .end local v7           #plugItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .restart local v2       #file:Ljava/io/File;
    :cond_0
    :goto_2
    return-void

    .line 332
    .end local v2           #file:Ljava/io/File;
    .end local v5           #isOk:Z
    .end local v6           #plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .restart local v8       #proId:Ljava/lang/Object;
    :cond_1
    check-cast v8, Ljava/lang/Long;

    .end local v8           #proId:Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->id:J

    goto :goto_0

    .line 349
    .restart local v2       #file:Ljava/io/File;
    .restart local v6       #plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :catch_0
    move-exception v1

    .line 350
    .local v1, e:Ljava/lang/Exception;
    :goto_3
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->loadFileError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 367
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v5       #isOk:Z
    :catch_1
    move-exception v1

    .line 368
    .restart local v1       #e:Ljava/lang/Exception;
    :goto_4
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->loadPlugFragmentError(Ljava/lang/Exception;)V

    goto :goto_2

    .line 367
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    .restart local v7       #plugItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_4

    .line 349
    .end local v2           #file:Ljava/io/File;
    .end local v5           #isOk:Z
    .end local v7           #plugItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .restart local v3       #file:Ljava/io/File;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_3
.end method

.method private statClick()V
    .locals 3

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->isAlreadyStatClick:Z

    if-nez v0, :cond_0

    .line 517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->isAlreadyStatClick:Z

    .line 518
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->mProductDetailController:Lcom/jingdong/common/controller/ProductDetailController;

    iget-wide v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/controller/ProductDetailController;->statClick(J)V

    .line 520
    :cond_0
    return-void
.end method

.method private updateColorAndSizeTextView()V
    .locals 1

    .prologue
    .line 1878
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$33;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$33;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->post(Ljava/lang/Runnable;)V

    .line 1909
    return-void
.end method

.method private updateCurrentImage(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 2035
    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2037
    .local v0, current:Ljava/lang/String;
    new-instance v1, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$37;

    invoke-direct {v1, p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$37;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->post(Ljava/lang/Runnable;)V

    .line 2045
    return-void
.end method

.method private updateImageCount(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 2022
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2024
    .local v0, count:Ljava/lang/String;
    new-instance v1, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$36;

    invoke-direct {v1, p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$36;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->post(Ljava/lang/Runnable;)V

    .line 2032
    return-void
.end method

.method private updatePromise(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 1918
    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$34;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$34;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->post(Ljava/lang/Runnable;)V

    .line 1929
    return-void
.end method


# virtual methods
.method public canClickEasyBuyBtn()V
    .locals 2

    .prologue
    .line 863
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->easyButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 864
    return-void
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 431
    invoke-static {}, Lcom/jingdong/common/plug/MergeSwitcher;->isPlugOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 434
    :goto_0
    return-object v0

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    goto :goto_0

    .line 434
    :cond_1
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;
    .locals 1
    .parameter "context"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    goto :goto_0
.end method

.method public getNameAndAdWord()Ljava/lang/CharSequence;
    .locals 8

    .prologue
    .line 1451
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09006e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v3, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1452
    .local v3, colorSpanRedNew:Landroid/text/style/ForegroundColorSpan;
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailBasicInfo:Lcom/jingdong/common/entity/ProductDetailBasicInfo;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1453
    .local v4, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailCruxBasicInfo:Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->getAdword()Ljava/lang/String;

    move-result-object v0

    .line 1455
    .local v0, adWord:Ljava/lang/String;
    new-instance v5, Landroid/text/SpannableStringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1456
    .local v5, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 1457
    .local v2, adWordStart:I
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 1459
    .local v1, adWordEnd:I
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 1460
    const/16 v6, 0x21

    invoke-virtual {v5, v3, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1467
    :cond_0
    return-object v5
.end method

.method public getOverrideResources()Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->myResources:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;

    return-object v0
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
    .line 507
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 508
    .local v0, paramsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "productId"

    iget-wide v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    return-object v0
.end method

.method public getPlugIntance(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;
    .locals 2
    .parameter "context"
    .parameter "lunchPath"

    .prologue
    .line 472
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    if-eqz v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    .line 488
    :goto_0
    return-object v1

    .line 484
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getClassLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    iput-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :goto_1
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    goto :goto_0

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected loadFileError(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 465
    return-void
.end method

.method protected loadFragNameEmpty()V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method protected loadPlugClassLoaderError()V
    .locals 0

    .prologue
    .line 444
    return-void
.end method

.method protected loadPlugFragmentError(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 458
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 231
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 233
    invoke-static {}, Lcom/jingdong/common/plug/MergeSwitcher;->isPlugOn()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 235
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->startPlug(Landroid/os/Bundle;)V

    .line 310
    :goto_0
    return-void

    .line 243
    :cond_0
    const v5, 0x7f0300d5

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->setContentView(I)V

    .line 245
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v5

    iput-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    .line 247
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 249
    .local v2, bundle:Landroid/os/Bundle;
    new-instance v5, Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-direct {v5, p0}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->dbService:Lcom/jingdong/common/utils/DBHelperUtil;

    .line 250
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->findViews()V

    .line 252
    new-instance v5, Lcom/jingdong/common/controller/ProductDetailController;

    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-direct {v5, v6}, Lcom/jingdong/common/controller/ProductDetailController;-><init>(Lcom/jingdong/common/utils/HttpGroup;)V

    iput-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->mProductDetailController:Lcom/jingdong/common/controller/ProductDetailController;

    .line 253
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->mProductDetailController:Lcom/jingdong/common/controller/ProductDetailController;

    invoke-virtual {v5}, Lcom/jingdong/common/controller/ProductDetailController;->getProduct()Lcom/jingdong/common/entity/Product;

    move-result-object v5

    iput-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;

    .line 255
    const/4 v5, 0x0

    sput-boolean v5, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->hasCacelFavorite:Z

    .line 258
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->goShoppingCar()V

    .line 259
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->initShopingCar()V

    .line 261
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->handleFoldAndUnfold()V

    .line 262
    const-string v5, "id"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 263
    .local v3, proId:Ljava/lang/Object;
    const-wide/16 v0, 0x0

    .line 265
    .local v0, bId:J
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 266
    check-cast v3, Ljava/lang/String;

    .end local v3           #proId:Ljava/lang/Object;
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 271
    :goto_1
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/Product;->setId(Ljava/lang/Long;)V

    .line 273
    const-string v5, "source"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/SourceEntity;

    .line 274
    .local v4, source:Lcom/jingdong/common/entity/SourceEntity;
    if-eqz v4, :cond_1

    .line 275
    iput-object v4, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->mSource:Lcom/jingdong/common/entity/SourceEntity;

    .line 283
    :cond_1
    new-instance v5, Lcom/jingdong/app/mall/product/ProductThridAddress;

    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->mProductDetailController:Lcom/jingdong/common/controller/ProductDetailController;

    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;

    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productStockProvinceChoosed:Landroid/widget/TextView;

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/jingdong/app/mall/product/ProductThridAddress;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/controller/ProductDetailController;Lcom/jingdong/common/entity/Product;Landroid/widget/TextView;)V

    iput-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->mProductThridAddress:Lcom/jingdong/app/mall/product/ProductThridAddress;

    .line 284
    invoke-direct {p0, v0, v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProduct(J)V

    .line 286
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->mProductThridAddress:Lcom/jingdong/app/mall/product/ProductThridAddress;

    new-instance v6, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$2;

    invoke-direct {v6, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$2;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/product/ProductThridAddress;->handleThirdAddress(Lcom/jingdong/app/mall/product/ProductThridAddress$ProductDetailUpdataUIListener;)V

    goto/16 :goto_0

    .line 268
    .end local v4           #source:Lcom/jingdong/common/entity/SourceEntity;
    .restart local v3       #proId:Ljava/lang/Object;
    :cond_2
    check-cast v3, Ljava/lang/Long;

    .end local v3           #proId:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 525
    invoke-static {}, Lcom/jingdong/common/plug/MergeSwitcher;->isPlugOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 556
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->shareButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 530
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 554
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->initShopingCar()V

    goto :goto_0
.end method

.method public recoveryPlug()V
    .locals 0

    .prologue
    .line 423
    return-void
.end method

.method public showProductForPacks()V
    .locals 2

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailCruxBasicInfo:Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->isSuit()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1785
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showPacksLayoutVisible(I)V

    .line 1787
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->packsLinear:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$28;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$28;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1801
    :goto_0
    return-void

    .line 1799
    :cond_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showPacksLayoutVisible(I)V

    goto :goto_0
.end method
