.class public Lcom/jingdong/app/mall/promotion/PromotionActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "PromotionActivity.java"


# static fields
.field public static final COME_FROM:Ljava/lang/String; = "home"

.field private static final TAG:Ljava/lang/String; = "PromotionActivity"


# instance fields
.field private functionId:Ljava/lang/String;

.field private jsonArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;

.field private listView:Landroid/widget/ListView;

.field private mMainAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

.field private mMainListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Promotion;",
            ">;"
        }
    .end annotation
.end field

.field private noDateTextView:Landroid/widget/TextView;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity;->mMainListData:Ljava/util/ArrayList;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/promotion/PromotionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/jingdong/app/mall/promotion/PromotionActivity;->showError()V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/promotion/PromotionActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity;->jsonArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/promotion/PromotionActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity;->jsonArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/promotion/PromotionActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity;->noDateTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/promotion/PromotionActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/promotion/PromotionActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity;->mMainListData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/promotion/PromotionActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity;->mMainAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    return-object v0
.end method

.method private addListeners()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/jingdong/app/mall/promotion/PromotionActivity$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/promotion/PromotionActivity$3;-><init>(Lcom/jingdong/app/mall/promotion/PromotionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 208
    return-void
.end method

.method private getCmsActivityList()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 93
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 94
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    iget-object v1, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity;->functionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 96
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 97
    new-instance v1, Lcom/jingdong/app/mall/promotion/PromotionActivity$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/promotion/PromotionActivity$1;-><init>(Lcom/jingdong/app/mall/promotion/PromotionActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 152
    invoke-virtual {p0}, Lcom/jingdong/app/mall/promotion/PromotionActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 154
    return-void
.end method

.method private setAdapter()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 161
    new-instance v0, Lcom/jingdong/app/mall/promotion/PromotionActivity$2;

    .line 162
    iget-object v3, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity;->mMainListData:Ljava/util/ArrayList;

    .line 163
    const v4, 0x7f0300e4

    .line 164
    new-array v5, v6, [Ljava/lang/String;

    const-string v1, "imageUrl"

    aput-object v1, v5, v2

    .line 165
    new-array v6, v6, [I

    const v1, 0x7f0c05c9

    aput v1, v6, v2

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/promotion/PromotionActivity$2;-><init>(Lcom/jingdong/app/mall/promotion/PromotionActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 161
    iput-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity;->mMainAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 177
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity;->mMainAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    return-void
.end method

.method private showError()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f0300e2

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/promotion/PromotionActivity;->setContentView(I)V

    .line 63
    const-string v0, "getCmsPromotionsAll"

    iput-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity;->functionId:Ljava/lang/String;

    .line 64
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/promotion/PromotionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity;->titleTextView:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/promotion/PromotionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07048e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const v0, 0x7f0c05c6

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/promotion/PromotionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity;->listView:Landroid/widget/ListView;

    .line 68
    const v0, 0x7f0c0246

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/promotion/PromotionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity;->noDateTextView:Landroid/widget/TextView;

    .line 70
    invoke-direct {p0}, Lcom/jingdong/app/mall/promotion/PromotionActivity;->setAdapter()V

    .line 72
    invoke-direct {p0}, Lcom/jingdong/app/mall/promotion/PromotionActivity;->addListeners()V

    .line 74
    invoke-direct {p0}, Lcom/jingdong/app/mall/promotion/PromotionActivity;->getCmsActivityList()V

    .line 76
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 83
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/jingdong/app/mall/utils/MyActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
