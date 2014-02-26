.class public Lcom/jingdong/app/mall/color/SimilarProductListActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "SimilarProductListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/color/SimilarProductListActivity$ProductImageProcessor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jingdong/app/mall/utils/MyActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private errorLoadingBut:Landroid/widget/Button;

.field private errorView:Landroid/view/View;

.field private host:Ljava/lang/String;

.field private loadingLayout:Landroid/widget/LinearLayout;

.field private loadingViewPb:Landroid/widget/ProgressBar;

.field private productAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

.field private sourceEntity:Lcom/jingdong/common/entity/SourceEntity;

.field private titleName:Ljava/lang/String;

.field private titleText:Landroid/widget/TextView;

.field private wareInfoList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->loadingViewPb:Landroid/widget/ProgressBar;

    .line 58
    const-string v0, "paiHost"

    invoke-static {v0}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->host:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/color/SimilarProductListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->showError()V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/color/SimilarProductListActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->loadingViewPb:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/color/SimilarProductListActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->getSimilarProductList(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/color/SimilarProductListActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->errorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/color/SimilarProductListActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->errorLoadingBut:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/color/SimilarProductListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->reLoad()V

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/color/SimilarProductListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->wareInfoList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/color/SimilarProductListActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->productAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/color/SimilarProductListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->initData()V

    return-void
.end method

.method private getSimilarProduct(Lcom/jingdong/common/entity/JDColorProductModel;)V
    .locals 6
    .parameter "productModel"

    .prologue
    const/4 v5, 0x0

    .line 355
    const-string v1, "colorGuessLike"

    .line 357
    .local v1, functionId:Ljava/lang/String;
    new-instance v2, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 358
    .local v2, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v2, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "3:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jingdong/common/entity/JDColorProductModel;->getCateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, cateId:Ljava/lang/String;
    const-string v3, "wareId"

    invoke-virtual {p1}, Lcom/jingdong/common/entity/JDColorProductModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 361
    const-string v3, "cateId"

    invoke-virtual {v2, v3, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 362
    const-string v3, "colorKey"

    invoke-virtual {p1}, Lcom/jingdong/common/entity/JDColorProductModel;->getColorValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 364
    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 365
    iget-object v3, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setHost(Ljava/lang/String;)V

    .line 366
    new-instance v3, Lcom/jingdong/app/mall/color/SimilarProductListActivity$1;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity$1;-><init>(Lcom/jingdong/app/mall/color/SimilarProductListActivity;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 425
    invoke-virtual {p0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 426
    return-void
.end method

.method private getSimilarProductList(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    const/4 v3, 0x3

    .line 461
    new-instance v0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$3;

    const v4, 0x7f03003c

    .line 462
    new-array v5, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "imageurl"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v5, v1

    const/4 v1, 0x2

    const-string v2, "adWord"

    aput-object v2, v5, v1

    new-array v6, v3, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/color/SimilarProductListActivity$3;-><init>(Lcom/jingdong/app/mall/color/SimilarProductListActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 461
    iput-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->productAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 565
    iget-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->productAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    new-instance v1, Lcom/jingdong/common/utils/SimpleSubViewBinder;

    new-instance v2, Lcom/jingdong/app/mall/color/SimilarProductListActivity$ProductImageProcessor;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/jingdong/app/mall/color/SimilarProductListActivity$ProductImageProcessor;-><init>(Lcom/jingdong/app/mall/color/SimilarProductListActivity$ProductImageProcessor;)V

    invoke-direct {v1, v2}, Lcom/jingdong/common/utils/SimpleSubViewBinder;-><init>(Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->setViewBinder(Lcom/jingdong/common/utils/SubViewBinder;)V

    .line 567
    new-instance v0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$4;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity$4;-><init>(Lcom/jingdong/app/mall/color/SimilarProductListActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->post(Ljava/lang/Runnable;)V

    .line 574
    return-void

    .line 462
    nop

    :array_0
    .array-data 0x4
        0xb1t 0x0t 0xct 0x7ft
        0xb6t 0x0t 0xct 0x7ft
        0x74t 0x1t 0xct 0x7ft
    .end array-data
.end method

.method private initComponent()V
    .locals 2

    .prologue
    .line 90
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->titleText:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f0c0714

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->wareInfoList:Landroid/widget/ListView;

    .line 92
    const v0, 0x7f0c0168

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->errorView:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->errorView:Landroid/view/View;

    const v1, 0x7f0c02ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->errorLoadingBut:Landroid/widget/Button;

    .line 94
    const v0, 0x7f0c05bb

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->loadingViewPb:Landroid/widget/ProgressBar;

    .line 96
    const v0, 0x7f0704d6

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->titleName:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->titleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->titleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->wareInfoList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 105
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 110
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "productModel"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/JDColorProductModel;

    .line 111
    .local v1, productModel:Lcom/jingdong/common/entity/JDColorProductModel;
    if-nez v1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->getSimilarProduct(Lcom/jingdong/common/entity/JDColorProductModel;)V

    goto :goto_0
.end method

.method private reLoad()V
    .locals 1

    .prologue
    .line 578
    new-instance v0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$5;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity$5;-><init>(Lcom/jingdong/app/mall/color/SimilarProductListActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->post(Ljava/lang/Runnable;)V

    .line 585
    return-void
.end method

.method private showError()V
    .locals 1

    .prologue
    .line 432
    new-instance v0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$2;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity$2;-><init>(Lcom/jingdong/app/mall/color/SimilarProductListActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->post(Ljava/lang/Runnable;)V

    .line 447
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f030120

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->setContentView(I)V

    .line 66
    invoke-direct {p0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->initComponent()V

    .line 68
    invoke-direct {p0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->initData()V

    .line 69
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 78
    .local v0, obj:Ljava/lang/Object;
    instance-of v2, v0, Lcom/jingdong/common/entity/Product;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 79
    check-cast v1, Lcom/jingdong/common/entity/Product;

    .line 80
    .local v1, product:Lcom/jingdong/common/entity/Product;
    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->sourceEntity:Lcom/jingdong/common/entity/SourceEntity;

    invoke-static {p0, v2, v3, v4}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductDetailActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Lcom/jingdong/common/entity/SourceEntity;)V

    .line 84
    .end local v1           #product:Lcom/jingdong/common/entity/Product;
    :cond_0
    return-void
.end method
