.class public Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "PromotionProductListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$PromotionProductListImageProcessor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jingdong/app/mall/utils/MyActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PromotionProductListActivity"


# instance fields
.field private activityId:Ljava/lang/String;

.field private comeFrom:Ljava/lang/String;

.field private functionId:Ljava/lang/String;

.field private gridView:Landroid/widget/GridView;

.field private landPageId:Ljava/lang/String;

.field private loadingView:Landroid/widget/LinearLayout;

.field private noDateTextView:Landroid/widget/TextView;

.field private params:Lorg/json/JSONObject;

.field private promotionProductListAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

.field private promotionRuleDetail:Ljava/lang/String;

.field private rightButton:Landroid/widget/Button;

.field private takeCouponLayout:Landroid/widget/RelativeLayout;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->titleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->promotionRuleDetail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->takeCouponLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 327
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->setVisibleAndPadding(II)V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->noDateTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;)Landroid/widget/GridView;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->gridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;Lcom/jingdong/common/utils/MySimpleAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->promotionProductListAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->promotionProductListAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    return-object v0
.end method

.method private handleActivityRule()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->promotionRuleDetail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const v0, 0x7f0c071c

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->rightButton:Landroid/widget/Button;

    .line 138
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->rightButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->rightButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070343

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->rightButton:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$1;-><init>(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    :cond_0
    return-void
.end method

.method private handleGridView(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 8
    .parameter "functionId"
    .parameter "params"

    .prologue
    const/4 v7, 0x1

    .line 169
    new-instance v0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;

    iget-object v3, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->gridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->loadingView:Landroid/widget/LinearLayout;

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;-><init>(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 295
    .local v0, nextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/NextPageLoader;->setPageSize(I)V

    .line 296
    invoke-virtual {v0, v7}, Lcom/jingdong/common/utils/NextPageLoader;->setEffect(Z)V

    .line 297
    invoke-virtual {v0, v7}, Lcom/jingdong/common/utils/NextPageLoader;->setHttpNotifyUser(Z)V

    .line 298
    invoke-virtual {v0}, Lcom/jingdong/common/utils/NextPageLoader;->showPageOne()V

    .line 299
    return-void
.end method

.method private setVisibleAndPadding(II)V
    .locals 1
    .parameter "vsibleFlag"
    .parameter "paddingTop"

    .prologue
    .line 329
    new-instance v0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$3;-><init>(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;II)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->post(Ljava/lang/Runnable;)V

    .line 336
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v4, 0x7f0300e7

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 84
    .local v0, data:Landroid/os/Bundle;
    const-string v4, "getCmsActivityWareList"

    iput-object v4, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->functionId:Ljava/lang/String;

    .line 85
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->params:Lorg/json/JSONObject;

    .line 86
    const-string v4, "activityId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->activityId:Ljava/lang/String;

    .line 87
    const-string v4, "comeFrom"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->comeFrom:Ljava/lang/String;

    .line 89
    const-string v4, "landPageId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->landPageId:Ljava/lang/String;

    .line 91
    const-string v4, "functionId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, tmpFunctionId:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 93
    iput-object v2, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->functionId:Ljava/lang/String;

    .line 95
    :cond_0
    const-string v4, "paramsJsonString"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, tmpJsonString:Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 99
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->params:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    const-string v4, "content"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->promotionRuleDetail:Ljava/lang/String;

    .line 109
    const v4, 0x7f0c007e

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->titleTextView:Landroid/widget/TextView;

    .line 110
    iget-object v4, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->titleTextView:Landroid/widget/TextView;

    const-string v5, "title"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const v4, 0x7f0c05cf

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->takeCouponLayout:Landroid/widget/RelativeLayout;

    .line 113
    iget-object v4, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->takeCouponLayout:Landroid/widget/RelativeLayout;

    invoke-static {v4}, Lcom/jingdong/app/mall/utils/CommonUtil;->fixBackBroundRepeat(Landroid/view/View;)V

    .line 115
    const v4, 0x7f0c0244

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/GridView;

    iput-object v4, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->gridView:Landroid/widget/GridView;

    .line 116
    iget-object v4, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v4, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 118
    const v4, 0x7f0c0246

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->noDateTextView:Landroid/widget/TextView;

    .line 121
    const v4, 0x7f030087

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->loadingView:Landroid/widget/LinearLayout;

    .line 122
    iget-object v4, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->loadingView:Landroid/widget/LinearLayout;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 124
    invoke-direct {p0}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->handleActivityRule()V

    .line 125
    iget-object v4, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->functionId:Ljava/lang/String;

    iget-object v5, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->params:Lorg/json/JSONObject;

    invoke-direct {p0, v4, v5}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->handleGridView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 127
    return-void

    .line 101
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->params:Lorg/json/JSONObject;

    const-string v5, "activityID"

    iget-object v6, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->activityId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setPressed(Z)V

    .line 306
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/Product;

    .line 307
    .local v0, product:Lcom/jingdong/common/entity/Product;
    if-eqz v0, :cond_1

    .line 308
    const/4 v1, 0x0

    .line 309
    .local v1, sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    iget-object v2, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->comeFrom:Ljava/lang/String;

    const-string v3, "home"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 310
    new-instance v1, Lcom/jingdong/common/entity/SourceEntity;

    .end local v1           #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    const-string v2, "promotionProductListFromHome"

    iget-object v3, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->activityId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .restart local v1       #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v1}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductDetailActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Lcom/jingdong/common/entity/SourceEntity;)V

    .line 325
    .end local v1           #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    :cond_1
    return-void

    .line 311
    .restart local v1       #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    :cond_2
    iget-object v2, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->comeFrom:Ljava/lang/String;

    const-string v3, "category"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 312
    new-instance v1, Lcom/jingdong/common/entity/SourceEntity;

    .end local v1           #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    const-string v2, "promotionProductListFromCategory"

    iget-object v3, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->activityId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .restart local v1       #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->comeFrom:Ljava/lang/String;

    const-string v3, "salse"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 315
    new-instance v1, Lcom/jingdong/common/entity/SourceEntity;

    .end local v1           #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    const-string v2, "promotionProductListFromSlideScreen"

    iget-object v3, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->activityId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .restart local v1       #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    goto :goto_0

    :cond_4
    const-string v2, "m_destination"

    iget-object v3, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->comeFrom:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 317
    new-instance v1, Lcom/jingdong/common/entity/SourceEntity;

    .end local v1           #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    const-string v2, "m_destination_page"

    iget-object v3, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->landPageId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .restart local v1       #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->comeFrom:Ljava/lang/String;

    const-string v3, "floor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    new-instance v1, Lcom/jingdong/common/entity/SourceEntity;

    .end local v1           #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    const-string v2, "home_floor"

    iget-object v3, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->functionId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1       #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 341
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 342
    new-instance v0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$4;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$4;-><init>(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->post(Ljava/lang/Runnable;)V

    .line 356
    return-void
.end method
