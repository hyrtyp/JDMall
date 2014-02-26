.class public Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "CategoriesSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;,
        Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;,
        Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private catsGridView:Landroid/widget/GridView;

.field private catsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;",
            ">;"
        }
    .end annotation
.end field

.field private contentView:Landroid/view/View;

.field private host:Ljava/lang/String;

.field private isClickable:Z

.field private loadingErrorView:Landroid/view/View;

.field private loadingProgressBar:Landroid/widget/ProgressBar;

.field private loadingView:Landroid/view/View;

.field private reLoadButton:Landroid/widget/Button;

.field private selectedCatsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private submitBtn:Landroid/widget/Button;

.field private titleTextview:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->selectedCatsSet:Ljava/util/Set;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->isClickable:Z

    .line 77
    const-string v0, "paiHost"

    invoke-static {v0}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->host:Ljava/lang/String;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->catsList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->catsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Landroid/widget/GridView;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->catsGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;Landroid/content/Context;Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 489
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->showSelectedOrUnSelectedView(Landroid/content/Context;Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;)V

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->finishWithResultOK(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->inflateData()V

    return-void
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->isClickable:Z

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->selectedCatsSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->onShowCategoriesView(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->submitBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->loadingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->contentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->loadingProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->loadingErrorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->isClickable:Z

    return v0
.end method

.method private findViews()V
    .locals 2

    .prologue
    .line 93
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->setContentView(I)V

    .line 95
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->titleTextview:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->titleTextview:Landroid/widget/TextView;

    const v1, 0x7f0704d9

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->contentView:Landroid/view/View;

    .line 99
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->catsGridView:Landroid/widget/GridView;

    .line 100
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->catsGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;-><init>(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 196
    const v0, 0x7f0c0022

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->submitBtn:Landroid/widget/Button;

    .line 197
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->submitBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->submitBtn:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$2;-><init>(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    const v0, 0x7f0c0024

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->loadingView:Landroid/view/View;

    .line 229
    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 230
    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->loadingErrorView:Landroid/view/View;

    .line 231
    const v0, 0x7f0c02ed

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->reLoadButton:Landroid/widget/Button;

    .line 232
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->reLoadButton:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$3;-><init>(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    return-void
.end method

.method private finishWithResultOK(Ljava/lang/String;)V
    .locals 2
    .parameter "categoryIds"

    .prologue
    .line 279
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 280
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "color_buy_selected_categories"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->setResult(I)V

    .line 282
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->finish()V

    .line 283
    return-void
.end method

.method private inflateData()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 243
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->loadingView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->loadingErrorView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->contentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 247
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 248
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "categoryMessage"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setHost(Ljava/lang/String;)V

    .line 250
    new-instance v1, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;-><init>(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 251
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCache(Z)V

    .line 252
    const-wide/32 v1, 0x36ee80

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCacheTime(J)V

    .line 253
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 254
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 255
    return-void
.end method

.method private initData()V
    .locals 6

    .prologue
    .line 259
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "color_buy_selected_categories"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, selectedCatsStr:Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, strs:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 264
    return-void

    .line 262
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->selectedCatsSet:Ljava/util/Set;

    aget-object v4, v2, v0

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static launchForResult(Landroid/app/Activity;I)V
    .locals 2
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 273
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 274
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 276
    return-void
.end method

.method private onShowCategoriesView(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;>;"
    const/4 v1, 0x0

    .line 401
    new-instance v0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$4;

    const v4, 0x7f030036

    new-array v5, v1, [Ljava/lang/String;

    .line 402
    new-array v6, v1, [I

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v7, p1

    .line 401
    invoke-direct/range {v0 .. v7}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$4;-><init>(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;)V

    .line 486
    .local v0, adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->catsGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 487
    return-void
.end method

.method private showSelectedOrUnSelectedView(Landroid/content/Context;Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;)V
    .locals 8
    .parameter "context"
    .parameter "viewHolder"

    .prologue
    const-wide/16 v6, 0xc8

    .line 493
    iget-object v4, p2, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;->unSelectedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 494
    iget-object v1, p2, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;->selectedView:Landroid/view/View;

    .line 495
    .local v1, hideView:Landroid/view/View;
    iget-object v3, p2, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;->unSelectedView:Landroid/view/View;

    .line 501
    .local v3, showView:Landroid/view/View;
    :goto_0
    const v4, 0x7f040014

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 502
    .local v2, showAnimation:Landroid/view/animation/Animation;
    const v4, 0x7f040016

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 504
    .local v0, hidAnimation:Landroid/view/animation/Animation;
    invoke-virtual {v2, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 505
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 507
    new-instance v4, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$5;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$5;-><init>(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 526
    new-instance v4, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$6;

    invoke-direct {v4, p0, v1}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$6;-><init>(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 546
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 547
    invoke-virtual {v3, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 549
    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 550
    return-void

    .line 497
    .end local v0           #hidAnimation:Landroid/view/animation/Animation;
    .end local v1           #hideView:Landroid/view/View;
    .end local v2           #showAnimation:Landroid/view/animation/Animation;
    .end local v3           #showView:Landroid/view/View;
    :cond_0
    iget-object v1, p2, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;->unSelectedView:Landroid/view/View;

    .line 498
    .restart local v1       #hideView:Landroid/view/View;
    iget-object v3, p2, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;->selectedView:Landroid/view/View;

    .restart local v3       #showView:Landroid/view/View;
    goto :goto_0
.end method


# virtual methods
.method public getCategoryList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/ArrayList;
    .locals 8
    .parameter "jsonArrayPoxy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    const/4 v4, 0x0

    .line 375
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;>;"
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;>;"
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v6

    if-lt v2, v6, :cond_0

    move-object v4, v5

    .line 387
    .end local v2           #i:I
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;>;"
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;>;"
    :goto_1
    return-object v4

    .line 377
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;>;"
    .restart local v2       #i:I
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;>;"
    :cond_0
    invoke-virtual {p1, v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    .line 378
    .local v3, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    new-instance v0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;-><init>(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)V

    .line 379
    .local v0, categorySelected:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;
    const-string v6, "cateLevel"

    invoke-virtual {v3, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;->cateLevel:I

    .line 380
    const-string v6, "cateNum"

    invoke-virtual {v3, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;->cateNum:J

    .line 381
    const-string v6, "doc"

    invoke-virtual {v3, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;->doc:Ljava/lang/String;

    .line 382
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 384
    .end local v0           #categorySelected:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;
    .end local v2           #i:I
    .end local v3           #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;>;"
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;>;"
    :catch_0
    move-exception v1

    .line 385
    .local v1, e:Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 384
    .end local v1           #e:Lorg/json/JSONException;
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;>;"
    .restart local v2       #i:I
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;>;"
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;>;"
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;>;"
    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->findViews()V

    .line 85
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->initData()V

    .line 87
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->inflateData()V

    .line 88
    return-void
.end method
