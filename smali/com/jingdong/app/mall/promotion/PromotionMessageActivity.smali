.class public Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "PromotionMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/promotion/PromotionMessageActivity$PromotionMessageImageProcessor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PromotionMessageActivity"


# instance fields
.field private comeFrom:Ljava/lang/String;

.field private functionId:Ljava/lang/String;

.field private landPageId:Ljava/lang/String;

.field private listView:Landroid/widget/ListView;

.field private loadingLayout:Landroid/widget/LinearLayout;

.field private params:Lorg/json/JSONObject;

.field private promotionId:Ljava/lang/String;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->landPageId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->comeFrom:Ljava/lang/String;

    return-object v0
.end method

.method private getPromotionMsgList()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->params:Lorg/json/JSONObject;

    const-string v2, "promotionsID"

    iget-object v3, p0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->promotionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    new-instance v0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity$2;

    iget-object v3, p0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->loadingLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->functionId:Ljava/lang/String;

    iget-object v6, p0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->params:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07026a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity$2;-><init>(Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 188
    .local v0, nextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/NextPageLoader;->setPageSize(I)V

    .line 189
    invoke-virtual {v0, v8}, Lcom/jingdong/common/utils/NextPageLoader;->setEffect(Z)V

    .line 190
    invoke-virtual {v0, v8}, Lcom/jingdong/common/utils/NextPageLoader;->setHttpNotifyUser(Z)V

    .line 191
    invoke-virtual {v0}, Lcom/jingdong/common/utils/NextPageLoader;->showPageOne()V

    .line 192
    return-void

    .line 131
    .end local v0           #nextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setListenter()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity$1;-><init>(Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 123
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v1, 0x7f0300e5

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 73
    .local v0, data:Landroid/os/Bundle;
    const v1, 0x7f0c007e

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->title:Landroid/widget/TextView;

    .line 74
    iget-object v1, p0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->title:Landroid/widget/TextView;

    const-string v2, "name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const-string v1, "getCmsActivityListByPromotionsID"

    iput-object v1, p0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->functionId:Ljava/lang/String;

    .line 77
    const-string v1, "promotion_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->promotionId:Ljava/lang/String;

    .line 78
    const-string v1, "comeFrom"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->comeFrom:Ljava/lang/String;

    .line 80
    const-string v1, "landPageId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->landPageId:Ljava/lang/String;

    .line 82
    const v1, 0x7f0c05cb

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->listView:Landroid/widget/ListView;

    .line 83
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->params:Lorg/json/JSONObject;

    .line 85
    const v1, 0x7f030087

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->loadingLayout:Landroid/widget/LinearLayout;

    .line 86
    iget-object v1, p0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->loadingLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 88
    invoke-direct {p0}, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->setListenter()V

    .line 90
    invoke-direct {p0}, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->getPromotionMsgList()V

    .line 92
    return-void
.end method
