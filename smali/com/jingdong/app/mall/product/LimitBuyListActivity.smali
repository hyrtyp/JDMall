.class public Lcom/jingdong/app/mall/product/LimitBuyListActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "LimitBuyListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private curSelection:I

.field private isFirst:Z

.field private isGuided:Z

.field private limitBuyTitle:Landroid/widget/TextView;

.field private miaoShaListView:Landroid/widget/ListView;

.field private msAdapter:Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private sourceEntity:Lcom/jingdong/common/entity/SourceEntity;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 43
    const-string v0, "LimitBuyListActivity"

    iput-object v0, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->TAG:Ljava/lang/String;

    .line 125
    new-instance v0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/LimitBuyListActivity$1;-><init>(Lcom/jingdong/app/mall/product/LimitBuyListActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->onClickListener:Landroid/view/View$OnClickListener;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/LimitBuyListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/product/LimitBuyListActivity;)Lcom/jingdong/common/entity/SourceEntity;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->sourceEntity:Lcom/jingdong/common/entity/SourceEntity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/product/LimitBuyListActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput p1, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->curSelection:I

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/product/LimitBuyListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->url:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/product/LimitBuyListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->limitBuyTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/product/LimitBuyListActivity;Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->msAdapter:Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/product/LimitBuyListActivity;)Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->msAdapter:Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/product/LimitBuyListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->miaoShaListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private doMiaoShaList()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->doMiaoShaList(Z)V

    .line 140
    return-void
.end method

.method private doMiaoShaList(Z)V
    .locals 2
    .parameter "isEffect"

    .prologue
    .line 143
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 144
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "miaoShaAreaList"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 145
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 146
    if-nez p1, :cond_0

    .line 147
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 149
    :cond_0
    new-instance v1, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;-><init>(Lcom/jingdong/app/mall/product/LimitBuyListActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 207
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 208
    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    .line 88
    const v3, 0x7f0c007e

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 89
    .local v2, topTitle:Landroid/widget/TextView;
    const v3, 0x7f0c071c

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 90
    .local v1, topRightBtn:Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, title:Ljava/lang/String;
    new-instance v3, Lcom/jingdong/common/entity/SourceEntity;

    const-string v4, "indexMiaoShaArea"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->sourceEntity:Lcom/jingdong/common/entity/SourceEntity;

    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "\u638c\u4e0a\u79d2\u6740"

    .end local v0           #title:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v3, 0x7f070406

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 94
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 95
    iget-object v3, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v3, 0x7f0c00c3

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->limitBuyTitle:Landroid/widget/TextView;

    .line 99
    const v3, 0x7f0c00c4

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->miaoShaListView:Landroid/widget/ListView;

    .line 100
    iget-object v3, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->miaoShaListView:Landroid/widget/ListView;

    new-instance v4, Lcom/jingdong/app/mall/product/LimitBuyListActivity$2;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/product/LimitBuyListActivity$2;-><init>(Lcom/jingdong/app/mall/product/LimitBuyListActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 112
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v2, 0x7f03001b

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->setContentView(I)V

    .line 59
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->initView()V

    .line 60
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->isFirst:Z

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/app/mall/utils/CommonUtil;->activityIsGuided(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->isGuided:Z

    .line 64
    iget-boolean v2, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->isGuided:Z

    if-nez v2, :cond_0

    .line 65
    const v2, 0x7f0201b9

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->setGuideResId(I)V

    .line 68
    :try_start_0
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/app/mall/MyApplication;->getMainFrameActivity()Lcom/jingdong/app/mall/MainFrameActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/app/mall/MainFrameActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .local v1, viewGroup:Landroid/view/ViewGroup;
    :goto_0
    const/16 v2, 0x11

    :try_start_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0083

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0084

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->addGuideImage(Landroid/view/ViewGroup;III)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    .end local v1           #viewGroup:Landroid/view/ViewGroup;
    :cond_0
    :goto_1
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .restart local v1       #viewGroup:Landroid/view/ViewGroup;
    goto :goto_0

    .line 74
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getLruBitmapCache()Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cleanMost()V

    .line 77
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0083

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0084

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->addGuideImage(Landroid/view/ViewGroup;III)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 78
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 117
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->isFirst:Z

    if-eqz v0, :cond_1

    .line 118
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->doMiaoShaList()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->isFirst:Z

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget v0, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->curSelection:I

    if-lez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->miaoShaListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->curSelection:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onStop()V

    .line 213
    iget-object v0, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->msAdapter:Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->msAdapter:Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->onStop()V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->msAdapter:Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;

    .line 217
    :cond_0
    return-void
.end method
