.class public Lcom/jingdong/app/mall/home/FloorProductListActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "FloorProductListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/home/FloorProductListActivity$PromotionProductListImageProcessor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PromotionProductListActivity"


# instance fields
.field private activityId:Ljava/lang/String;

.field private comeFrom:Ljava/lang/String;

.field private curSelection:I

.field private floorBannerRoot:Landroid/view/View;

.field private functionId:Ljava/lang/String;

.field private final halfWidth:I

.field private isInitializedBanner:Z

.field private landPageId:Ljava/lang/String;

.field private loadingView:Landroid/widget/LinearLayout;

.field private mActivityIntro:Ljava/lang/String;

.field private mBannerUrl:Ljava/lang/String;

.field private mBgColor:Ljava/lang/String;

.field private mButtonShare:Landroid/widget/Button;

.field private mImageViewFloorBannerDefalut:Landroid/widget/ImageView;

.field private mImageViewFloorBannerServer:Landroid/widget/ImageView;

.field private mLayoutFloorBanner:Landroid/widget/RelativeLayout;

.field private mListView:Landroid/widget/ListView;

.field private mShare:Ljava/lang/String;

.field private mShareTitle:Ljava/lang/String;

.field private mTextViewFloorBannerIntro:Landroid/widget/TextView;

.field private noDateTextView:Landroid/widget/TextView;

.field private params:Lorg/json/JSONObject;

.field private final switcherHeight:I

.field private tmpJsonString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 88
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v0

    mul-int/lit16 v0, v0, 0x178

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->switcherHeight:I

    .line 89
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v0

    mul-int/lit16 v0, v0, 0x1f4

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->halfWidth:I

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mShare:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mShareTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mLayoutFloorBanner:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/home/FloorProductListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mActivityIntro:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/home/FloorProductListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mShare:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/home/FloorProductListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mShareTitle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/home/FloorProductListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mBgColor:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/home/FloorProductListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mBannerUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/home/FloorProductListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->handleBanner()V

    return-void
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->noDateTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$19(Lcom/jingdong/app/mall/home/FloorProductListActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput p1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->curSelection:I

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/home/FloorProductListActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->isInitializedBanner:Z

    return-void
.end method

.method static synthetic access$20(Lcom/jingdong/app/mall/home/FloorProductListActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 89
    iget v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->halfWidth:I

    return v0
.end method

.method static synthetic access$21(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->floorBannerRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$22(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->comeFrom:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$23(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->activityId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$24(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->landPageId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$25(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->tmpJsonString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$26(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->functionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mActivityIntro:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mTextViewFloorBannerIntro:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mBannerUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mImageViewFloorBannerDefalut:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mImageViewFloorBannerServer:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mButtonShare:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mBgColor:Ljava/lang/String;

    return-object v0
.end method

.method private findViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 146
    const v1, 0x7f0c0244

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mListView:Landroid/widget/ListView;

    .line 147
    iget-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mListView:Landroid/widget/ListView;

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(I)V

    .line 148
    const v1, 0x7f03005d

    invoke-static {v1, v3}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->floorBannerRoot:Landroid/view/View;

    .line 149
    iget-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->floorBannerRoot:Landroid/view/View;

    const v2, 0x7f0c023e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mLayoutFloorBanner:Landroid/widget/RelativeLayout;

    .line 150
    iget-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mLayoutFloorBanner:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 151
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->switcherHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 152
    iget-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mLayoutFloorBanner:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mLayoutFloorBanner:Landroid/widget/RelativeLayout;

    const v2, 0x7f0c0241

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mTextViewFloorBannerIntro:Landroid/widget/TextView;

    .line 155
    iget-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mLayoutFloorBanner:Landroid/widget/RelativeLayout;

    const v2, 0x7f0c023f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mImageViewFloorBannerServer:Landroid/widget/ImageView;

    .line 156
    iget-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mLayoutFloorBanner:Landroid/widget/RelativeLayout;

    const v2, 0x7f0c0240

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mImageViewFloorBannerDefalut:Landroid/widget/ImageView;

    .line 158
    const v1, 0x7f0c0246

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->noDateTextView:Landroid/widget/TextView;

    .line 159
    const v1, 0x7f0c0245

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mButtonShare:Landroid/widget/Button;

    .line 162
    const v1, 0x7f030087

    invoke-static {v1, v3}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->loadingView:Landroid/widget/LinearLayout;

    .line 163
    iget-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->loadingView:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 164
    return-void
.end method

.method private handleBanner()V
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->isInitializedBanner:Z

    if-eqz v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 191
    :cond_0
    new-instance v0, Lcom/jingdong/app/mall/home/FloorProductListActivity$2;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/home/FloorProductListActivity$2;-><init>(Lcom/jingdong/app/mall/home/FloorProductListActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private handleListView(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 8
    .parameter "functionId"
    .parameter "params"

    .prologue
    const/4 v7, 0x1

    .line 274
    new-instance v0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3;

    iget-object v3, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->loadingView:Landroid/widget/LinearLayout;

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/home/FloorProductListActivity$3;-><init>(Lcom/jingdong/app/mall/home/FloorProductListActivity;Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 456
    .local v0, nextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/NextPageLoader;->setPageSize(I)V

    .line 457
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/NextPageLoader;->setColSize(I)V

    .line 458
    invoke-virtual {v0, v7}, Lcom/jingdong/common/utils/NextPageLoader;->setEffect(Z)V

    .line 459
    invoke-virtual {v0, v7}, Lcom/jingdong/common/utils/NextPageLoader;->setHttpNotifyUser(Z)V

    .line 460
    invoke-virtual {v0}, Lcom/jingdong/common/utils/NextPageLoader;->showPageOne()V

    .line 461
    return-void
.end method

.method private handleShare()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mButtonShare:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/home/FloorProductListActivity$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/home/FloorProductListActivity$1;-><init>(Lcom/jingdong/app/mall/home/FloorProductListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 99
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v3, 0x7f030060

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->setContentView(I)V

    .line 101
    invoke-virtual {p0}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 103
    .local v0, data:Landroid/os/Bundle;
    const-string v3, "getCmsActivityWareList"

    iput-object v3, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->functionId:Ljava/lang/String;

    .line 104
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->params:Lorg/json/JSONObject;

    .line 105
    const-string v3, "activityId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->activityId:Ljava/lang/String;

    .line 106
    const-string v3, "comeFrom"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->comeFrom:Ljava/lang/String;

    .line 108
    const-string v3, "landPageId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->landPageId:Ljava/lang/String;

    .line 110
    const-string v3, "functionId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, tmpFunctionId:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 112
    iput-object v2, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->functionId:Ljava/lang/String;

    .line 114
    :cond_0
    const-string v3, "paramsJsonString"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->tmpJsonString:Ljava/lang/String;

    .line 117
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->tmpJsonString:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->tmpJsonString:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->params:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->findViews()V

    .line 128
    iget-object v3, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 129
    iget-object v3, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mLayoutFloorBanner:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 131
    invoke-direct {p0}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->handleShare()V

    .line 132
    iget-object v3, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->functionId:Ljava/lang/String;

    iget-object v4, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->params:Lorg/json/JSONObject;

    invoke-direct {p0, v3, v4}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->handleListView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 133
    return-void

    .line 120
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->params:Lorg/json/JSONObject;

    const-string v4, "activityID"

    iget-object v5, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->activityId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 139
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->curSelection:I

    if-lez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity;->curSelection:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 142
    :cond_0
    return-void
.end method

.method public setOnItemClick(Landroid/view/View;Lcom/jingdong/common/entity/Product;)V
    .locals 1
    .parameter "view"
    .parameter "product"

    .prologue
    .line 464
    new-instance v0, Lcom/jingdong/app/mall/home/FloorProductListActivity$4;

    invoke-direct {v0, p0, p2}, Lcom/jingdong/app/mall/home/FloorProductListActivity$4;-><init>(Lcom/jingdong/app/mall/home/FloorProductListActivity;Lcom/jingdong/common/entity/Product;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    return-void
.end method
