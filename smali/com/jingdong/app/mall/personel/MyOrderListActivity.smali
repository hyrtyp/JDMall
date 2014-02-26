.class public Lcom/jingdong/app/mall/personel/MyOrderListActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "MyOrderListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/personel/MyOrderListActivity$ClickListener;,
        Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;,
        Lcom/jingdong/app/mall/personel/MyOrderListActivity$MySimpleImageProcessor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MyOrderListActivity"


# instance fields
.field private functionId:Ljava/lang/String;

.field private isShowTextView:Z

.field private loadingLayout:Landroid/widget/LinearLayout;

.field private mAdapterView:Landroid/widget/AdapterView;

.field private mCurrentPos:I

.field private mMyOrderListActivityStartTimestamp:J

.field private mNoOrderTextView:Landroid/widget/TextView;

.field private mOneMonthList:Landroid/widget/ListView;

.field mOneMonthPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

.field private mPreMonthList:Landroid/widget/ListView;

.field mPreMonthPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

.field private oneMonthOrders:Landroid/widget/Button;

.field private params:Lorg/json/JSONObject;

.field private preMonthBtnClickOnce:Z

.field private preMonthOrders:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->preMonthBtnClickOnce:Z

    .line 64
    return-void
.end method

.method private InitComponenet()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 149
    const v2, 0x7f0c007e

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 150
    .local v0, mTitleView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const v3, 0x7f07048f

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/jingdong/common/utils/EditTextUtils;->setTextViewText(Landroid/widget/TextView;Landroid/content/Intent;Ljava/lang/String;)V

    .line 152
    const v2, 0x7f0c038d

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->oneMonthOrders:Landroid/widget/Button;

    .line 153
    const v2, 0x7f0c038e

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->preMonthOrders:Landroid/widget/Button;

    .line 154
    new-instance v1, Lcom/jingdong/app/mall/personel/MyOrderListActivity$ClickListener;

    invoke-direct {v1, p0, v4}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$ClickListener;-><init>(Lcom/jingdong/app/mall/personel/MyOrderListActivity;Lcom/jingdong/app/mall/personel/MyOrderListActivity$ClickListener;)V

    .line 155
    .local v1, myClickListener:Lcom/jingdong/app/mall/personel/MyOrderListActivity$ClickListener;
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->oneMonthOrders:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->preMonthOrders:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v2, 0x7f0c0390

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mOneMonthList:Landroid/widget/ListView;

    .line 158
    const v2, 0x7f0c038f

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mPreMonthList:Landroid/widget/ListView;

    .line 159
    const v2, 0x7f0c038b

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mNoOrderTextView:Landroid/widget/TextView;

    .line 163
    const v2, 0x7f030087

    invoke-static {v2, v4}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->loadingLayout:Landroid/widget/LinearLayout;

    .line 164
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->loadingLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 165
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mOneMonthList:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 167
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyOrderListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->functionId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/personel/MyOrderListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->initOneMonthorder()V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/personel/MyOrderListActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->isShowTextView:Z

    return v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/personel/MyOrderListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->showVisibleCustomView()V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/personel/MyOrderListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->handlePreMonthOrder()V

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/personel/MyOrderListActivity;Lcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->handlerOrderDetail(Lcom/jingdong/common/entity/Product;)V

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/personel/MyOrderListActivity;FFFF)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 670
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->isMoving(FFFF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/personel/MyOrderListActivity;)Landroid/widget/AdapterView;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mAdapterView:Landroid/widget/AdapterView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/personel/MyOrderListActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->isShowTextView:Z

    return-void
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/personel/MyOrderListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mNoOrderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private getOneMotherOrderList(Ljava/lang/String;)V
    .locals 8
    .parameter "functionId"

    .prologue
    .line 606
    new-instance v0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mOneMonthList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->loadingLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->params:Lorg/json/JSONObject;

    const v1, 0x7f0702a0

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;-><init>(Lcom/jingdong/app/mall/personel/MyOrderListActivity;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/AbsListView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mOneMonthPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    .line 607
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mOneMonthPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/NextPageLoader;->showPageOne(Z)V

    .line 608
    return-void
.end method

.method private goneCustomView()V
    .locals 1

    .prologue
    .line 625
    new-instance v0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$2;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$2;-><init>(Lcom/jingdong/app/mall/personel/MyOrderListActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->post(Ljava/lang/Runnable;)V

    .line 634
    return-void
.end method

.method private handleOneMonthOrder()V
    .locals 2

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->initOneMonthorder()V

    .line 237
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mOneMonthPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/NextPageLoader;->showPageOne(Z)V

    .line 238
    return-void
.end method

.method private handlePreMonthOrder()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 214
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->oneMonthOrders:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 215
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->preMonthOrders:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 216
    const-string v0, "beforeOneMonthOrder"

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->functionId:Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mOneMonthList:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mPreMonthList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 219
    iget-boolean v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->preMonthBtnClickOnce:Z

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mPreMonthPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/NextPageLoader;->showPageOne(Z)V

    .line 221
    iput-boolean v2, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->preMonthBtnClickOnce:Z

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mPreMonthList:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mAdapterView:Landroid/widget/AdapterView;

    .line 224
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->goneCustomView()V

    .line 225
    return-void
.end method

.method private handlerOrderDetail(Lcom/jingdong/common/entity/Product;)V
    .locals 3
    .parameter "product"

    .prologue
    .line 254
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 256
    const-string v1, "product"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 257
    const-string v1, "title"

    const v2, 0x7f0702e9

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v1, "function"

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->functionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v1, "com.360buy:navigationDisplayFlag"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 262
    return-void
.end method

.method private initOneMonthorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 228
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->oneMonthOrders:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 229
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->preMonthOrders:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 230
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mOneMonthList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mPreMonthList:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mOneMonthList:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mAdapterView:Landroid/widget/AdapterView;

    .line 233
    return-void
.end method

.method private isMoving(FFFF)Z
    .locals 5
    .parameter "startX"
    .parameter "startY"
    .parameter "endX"
    .parameter "endY"

    .prologue
    .line 672
    sub-float v1, p1, p3

    .line 673
    .local v1, x:F
    sub-float v2, p2, p4

    .line 675
    .local v2, y:F
    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    .line 676
    .local v0, distance:F
    const/high16 v3, 0x4248

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 677
    const/4 v3, 0x1

    .line 679
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setOrderList()V
    .locals 9

    .prologue
    const v8, 0x7f0702a0

    .line 209
    new-instance v0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mOneMonthList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->loadingLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->functionId:Ljava/lang/String;

    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->params:Lorg/json/JSONObject;

    invoke-virtual {p0, v8}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;-><init>(Lcom/jingdong/app/mall/personel/MyOrderListActivity;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/AbsListView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mOneMonthPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    .line 210
    new-instance v0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mPreMonthList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->loadingLayout:Landroid/widget/LinearLayout;

    const-string v5, "beforeOneMonthOrder"

    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->params:Lorg/json/JSONObject;

    invoke-virtual {p0, v8}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;-><init>(Lcom/jingdong/app/mall/personel/MyOrderListActivity;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/AbsListView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mPreMonthPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    .line 211
    return-void
.end method

.method private showVisibleCustomView()V
    .locals 1

    .prologue
    .line 611
    new-instance v0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$1;-><init>(Lcom/jingdong/app/mall/personel/MyOrderListActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->post(Ljava/lang/Runnable;)V

    .line 622
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v2, 0x7f0300a1

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->setContentView(I)V

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mMyOrderListActivityStartTimestamp:J

    .line 91
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "functionId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, functionTemp:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->functionId:Ljava/lang/String;

    .line 100
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->params:Lorg/json/JSONObject;

    .line 102
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->params:Lorg/json/JSONObject;

    const-string v3, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->params:Lorg/json/JSONObject;

    const-string v3, "isLoadWareInfos"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->InitComponenet()V

    .line 109
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->setOrderList()V

    .line 113
    const-string v2, "oneMonthOrder"

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->functionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->handleOneMonthOrder()V

    .line 118
    :goto_2
    return-void

    .line 98
    :cond_0
    const-string v2, "oneMonthOrder"

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->functionId:Ljava/lang/String;

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 116
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->handlePreMonthOrder()V

    goto :goto_2
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onPause()V

    .line 133
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mCurrentPos:I

    .line 134
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 122
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 123
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mAdapterView:Landroid/widget/AdapterView;

    iget v1, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mCurrentPos:I

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 124
    iget-wide v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mMyOrderListActivityStartTimestamp:J

    sget-wide v2, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mCancelTimestamp:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 125
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mCancelTimestamp:J

    .line 126
    const-string v0, "oneMonthOrder"

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->getOneMotherOrderList(Ljava/lang/String;)V

    .line 128
    :cond_0
    return-void
.end method
