.class public Lcom/jingdong/app/mall/home/slide/SlideScreen;
.super Ljava/lang/Object;
.source "SlideScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;,
        Lcom/jingdong/app/mall/home/slide/SlideScreen$ProductImageProcessor;,
        Lcom/jingdong/app/mall/home/slide/SlideScreen$PromotionImageProcessor;
    }
.end annotation


# static fields
.field public static final COME_FROM:Ljava/lang/String; = "salse"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field activityOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private activityProductList:Landroid/widget/ListView;

.field private adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

.field private element:Lcom/jingdong/common/entity/HomeFloorElement;

.field private listHeadContainer:Landroid/widget/RelativeLayout;

.field private loadingLayout:Landroid/widget/LinearLayout;

.field private mActivityListNextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

.field private mHotProductNextLoader:Lcom/jingdong/common/utils/NextPageLoader;

.field private mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private mSalesPromotion:Lcom/jingdong/app/mall/home/slide/SalesPromotion;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/jingdong/app/mall/home/slide/SlideScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->TAG:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/app/mall/utils/MyActivity;)V
    .locals 2
    .parameter "myActivity"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Lcom/jingdong/app/mall/home/slide/SlideScreen$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/home/slide/SlideScreen$1;-><init>(Lcom/jingdong/app/mall/home/slide/SlideScreen;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->activityOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 72
    iput-object p1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 73
    const v0, 0x7f030087

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->loadingLayout:Landroid/widget/LinearLayout;

    .line 74
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/app/mall/utils/MyActivity;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/home/slide/SlideScreen;Lcom/jingdong/common/utils/MySimpleAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/common/utils/NextPageLoader;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mActivityListNextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/home/slide/SlideScreen;Lcom/jingdong/common/entity/HomeFloorElement;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->getData(Lcom/jingdong/common/entity/HomeFloorElement;)V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/app/mall/home/slide/SalesPromotion;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mSalesPromotion:Lcom/jingdong/app/mall/home/slide/SalesPromotion;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->activityProductList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/home/slide/SlideScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->showHeadView()V

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/home/slide/SlideScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->reLoad()V

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/common/entity/HomeFloorElement;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->element:Lcom/jingdong/common/entity/HomeFloorElement;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/home/slide/SlideScreen;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->showProgressBar(I)V

    return-void
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->listHeadContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private getCmsActivityListByType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "functionId"
    .parameter "param"

    .prologue
    const/4 v10, 0x0

    .line 89
    invoke-static {p2}, Lcom/jingdong/common/utils/JsonParser;->parseParamsJsonFromString(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    .line 91
    .local v6, params:Lorg/json/JSONObject;
    new-instance v0, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;

    iget-object v2, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->activityProductList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->loadingLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    const v5, 0x7f07026a

    invoke-virtual {v1, v5}, Lcom/jingdong/app/mall/utils/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-wide/32 v8, 0x36ee80

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v9}, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;-><init>(Lcom/jingdong/app/mall/home/slide/SlideScreen;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/AbsListView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mActivityListNextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    .line 92
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mActivityListNextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    invoke-virtual {v0, v10}, Lcom/jingdong/common/utils/NextPageLoader;->setEffect(Z)V

    .line 93
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mActivityListNextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    invoke-virtual {v0, v10}, Lcom/jingdong/common/utils/NextPageLoader;->setHttpNotifyUser(Z)V

    .line 94
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mActivityListNextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/NextPageLoader;->showPageOne(Z)V

    .line 95
    return-void
.end method

.method private getData(Lcom/jingdong/common/entity/HomeFloorElement;)V
    .locals 7
    .parameter "element"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 119
    if-eqz p1, :cond_2

    .line 123
    iget-object v4, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->activityProductList:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 125
    invoke-virtual {p1}, Lcom/jingdong/common/entity/HomeFloorElement;->getFunctionId()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, hotFunctionId:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/jingdong/common/entity/HomeFloorElement;->getParam()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, hotPamrams:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/jingdong/common/entity/HomeFloorElement;->getFunctionId2()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, cmsFunctionId:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/jingdong/common/entity/HomeFloorElement;->getParam2()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, cmsParams:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/jingdong/common/entity/HomeFloorElement;->isGoTOActvity()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 133
    iget-object v4, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->listHeadContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    iget-object v4, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->listHeadContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 137
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->getHotSaleList(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Lcom/jingdong/common/entity/HomeFloorElement;->getFunctionName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->setHotSalesTitle(Ljava/lang/String;)V

    .line 151
    :cond_1
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->getCmsActivityListByType(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .end local v0           #cmsFunctionId:Ljava/lang/String;
    .end local v1           #cmsParams:Ljava/lang/String;
    .end local v2           #hotFunctionId:Ljava/lang/String;
    .end local v3           #hotPamrams:Ljava/lang/String;
    :cond_2
    return-void

    .line 140
    .restart local v0       #cmsFunctionId:Ljava/lang/String;
    .restart local v1       #cmsParams:Ljava/lang/String;
    .restart local v2       #hotFunctionId:Ljava/lang/String;
    .restart local v3       #hotPamrams:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/jingdong/common/entity/HomeFloorElement;->isGoTOActvityNoHot()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 142
    move-object v0, v2

    .line 143
    move-object v1, v3

    .line 145
    iget-object v4, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->listHeadContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_1

    .line 146
    iget-object v4, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->listHeadContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private getHotSaleList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "hotSaleFunction"
    .parameter "hotSaleParam"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->loadHdTitleView(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method private loadHdTitleView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "hotSaleFunction"
    .parameter "hotSaleParam"

    .prologue
    const/4 v12, 0x0

    .line 225
    move-object v5, p1

    .line 227
    .local v5, functionId:Ljava/lang/String;
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->listHeadContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f0c0613

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/jingdong/app/mall/home/slide/JDShoppingGallery;

    .line 228
    .local v3, gallery:Lcom/jingdong/app/mall/home/slide/JDShoppingGallery;
    invoke-virtual {v3, v12}, Lcom/jingdong/app/mall/home/slide/JDShoppingGallery;->setCallbackDuringFling(Z)V

    .line 229
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->listHeadContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f0c0614

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 230
    .local v10, tips:Landroid/widget/TextView;
    new-instance v0, Lcom/jingdong/app/mall/home/slide/SlideScreen$4;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/home/slide/SlideScreen$4;-><init>(Lcom/jingdong/app/mall/home/slide/SlideScreen;)V

    invoke-virtual {v3, v0}, Lcom/jingdong/app/mall/home/slide/JDShoppingGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 250
    new-instance v4, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 252
    .local v4, loadingView:Landroid/widget/TextView;
    invoke-static {p2}, Lcom/jingdong/common/utils/JsonParser;->parseParamsJsonFromString(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    .line 254
    .local v6, params:Lorg/json/JSONObject;
    new-instance v0, Lcom/jingdong/app/mall/home/slide/SlideScreen$5;

    iget-object v2, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    const/4 v7, 0x0

    const-wide/32 v8, 0x36ee80

    move-object v1, p0

    move-object v11, v3

    invoke-direct/range {v0 .. v11}, Lcom/jingdong/app/mall/home/slide/SlideScreen$5;-><init>(Lcom/jingdong/app/mall/home/slide/SlideScreen;Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;JLandroid/widget/TextView;Lcom/jingdong/app/mall/home/slide/JDShoppingGallery;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mHotProductNextLoader:Lcom/jingdong/common/utils/NextPageLoader;

    .line 312
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mHotProductNextLoader:Lcom/jingdong/common/utils/NextPageLoader;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/NextPageLoader;->setPageSize(I)V

    .line 313
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mHotProductNextLoader:Lcom/jingdong/common/utils/NextPageLoader;

    invoke-virtual {v0, v12}, Lcom/jingdong/common/utils/NextPageLoader;->setEffect(Z)V

    .line 314
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mHotProductNextLoader:Lcom/jingdong/common/utils/NextPageLoader;

    invoke-virtual {v0, v12}, Lcom/jingdong/common/utils/NextPageLoader;->setHttpNotifyUser(Z)V

    .line 315
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mHotProductNextLoader:Lcom/jingdong/common/utils/NextPageLoader;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/NextPageLoader;->showPageOne()V

    .line 316
    return-void
.end method

.method private reLoad()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v1, Lcom/jingdong/app/mall/home/slide/SlideScreen$7;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/home/slide/SlideScreen$7;-><init>(Lcom/jingdong/app/mall/home/slide/SlideScreen;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 374
    return-void
.end method

.method private setHotSalesTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v1, Lcom/jingdong/app/mall/home/slide/SlideScreen$2;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/home/slide/SlideScreen$2;-><init>(Lcom/jingdong/app/mall/home/slide/SlideScreen;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method

.method private showHeadView()V
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->element:Lcom/jingdong/common/entity/HomeFloorElement;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->element:Lcom/jingdong/common/entity/HomeFloorElement;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/HomeFloorElement;->isGoTOActvityNoHot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->listHeadContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    iget-object v1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->activityProductList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->listHeadContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/MySimpleAdapter;->addHeaderView(Landroid/widget/ListView;Landroid/view/View;)V

    goto :goto_0
.end method

.method private showProgressBar(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v1, Lcom/jingdong/app/mall/home/slide/SlideScreen$8;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/home/slide/SlideScreen$8;-><init>(Lcom/jingdong/app/mall/home/slide/SlideScreen;I)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 390
    return-void
.end method


# virtual methods
.method public onResume()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    if-nez v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v1, Lcom/jingdong/app/mall/home/slide/SlideScreen$6;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/home/slide/SlideScreen$6;-><init>(Lcom/jingdong/app/mall/home/slide/SlideScreen;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .parameter "imagerView"
    .parameter "url"

    .prologue
    .line 434
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    :goto_0
    return-void

    .line 437
    :cond_0
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 438
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v0, p2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 439
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setType(I)V

    .line 440
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 441
    new-instance v1, Lcom/jingdong/app/mall/home/slide/SlideScreen$9;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/home/slide/SlideScreen$9;-><init>(Lcom/jingdong/app/mall/home/slide/SlideScreen;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 478
    iget-object v1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/MyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0
.end method

.method public setViewTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "bannerUrl"

    .prologue
    .line 175
    iget-object v2, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mView:Landroid/view/View;

    const v3, 0x7f0c007e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 177
    .local v1, titleTextView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mView:Landroid/view/View;

    const v3, 0x7f0c05d6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 179
    .local v0, titleImageView:Landroid/widget/ImageView;
    invoke-virtual {p0, v0, p2}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->setDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 182
    iget-object v2, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v3, Lcom/jingdong/app/mall/home/slide/SlideScreen$3;

    invoke-direct {v3, p0, v1, p1}, Lcom/jingdong/app/mall/home/slide/SlideScreen$3;-><init>(Lcom/jingdong/app/mall/home/slide/SlideScreen;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method

.method public showScreen(Lcom/jingdong/common/entity/HomeFloorElement;Lcom/jingdong/app/mall/home/slide/SalesPromotion;)V
    .locals 2
    .parameter "element"
    .parameter "salesPromotion"

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 106
    :cond_0
    iput-object p1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->element:Lcom/jingdong/common/entity/HomeFloorElement;

    .line 108
    iput-object p2, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mSalesPromotion:Lcom/jingdong/app/mall/home/slide/SalesPromotion;

    .line 109
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mSalesPromotion:Lcom/jingdong/app/mall/home/slide/SalesPromotion;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/home/slide/SalesPromotion;->getCustomView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mView:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->mView:Landroid/view/View;

    const v1, 0x7f0c060f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->activityProductList:Landroid/widget/ListView;

    .line 111
    const v0, 0x7f0300f4

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen;->listHeadContainer:Landroid/widget/RelativeLayout;

    .line 113
    invoke-virtual {p1}, Lcom/jingdong/common/entity/HomeFloorElement;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jingdong/common/entity/HomeFloorElement;->getBannerImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->setViewTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->getData(Lcom/jingdong/common/entity/HomeFloorElement;)V

    goto :goto_0
.end method
