.class public Lcom/jingdong/app/mall/category/CategoryListActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "CategoryListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;,
        Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;,
        Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CategoryActivity"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private cId:Ljava/lang/String;

.field private cLevel:I

.field private cName:Ljava/lang/String;

.field private categoryText:Landroid/widget/TextView;

.field private dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Catelogy;",
            ">;"
        }
    .end annotation
.end field

.field private errorLoadingbut:Landroid/widget/Button;

.field private errorView:Landroid/view/View;

.field private functionId:Ljava/lang/String;

.field private goodsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;"
        }
    .end annotation
.end field

.field private lId:Ljava/lang/String;

.field private levelFirst:Ljava/lang/String;

.field private levelSecond:Ljava/lang/String;

.field private listAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

.field private listEmptyView:Landroid/view/ViewGroup;

.field private listHeadContainer:Landroid/widget/LinearLayout;

.field private listView:Landroid/widget/ListView;

.field private loadingView:Landroid/view/View;

.field private productImageGallery:Landroid/widget/Gallery;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 58
    const-string v0, "catelogy"

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->functionId:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->errorLoadingbut:Landroid/widget/Button;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->dataList:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->goodsList:Ljava/util/ArrayList;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/category/CategoryListActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->goodsList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/category/CategoryListActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->goodsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/category/CategoryListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->lId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/category/CategoryListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->cName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/category/CategoryListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->lId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/category/CategoryListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->cName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/category/CategoryListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->levelFirst:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/category/CategoryListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->levelSecond:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/category/CategoryListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->cId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/category/CategoryListActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 65
    iget v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->cLevel:I

    return v0
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/category/CategoryListActivity;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 340
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/category/CategoryListActivity;->getCategory(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/category/CategoryListActivity;)Landroid/widget/Gallery;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->productImageGallery:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/category/CategoryListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryListActivity;->showHeadView()V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/category/CategoryListActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->dataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/category/CategoryListActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->listAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/category/CategoryListActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->loadingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/category/CategoryListActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->errorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/category/CategoryListActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->listEmptyView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/category/CategoryListActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->listHeadContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getCategory(Ljava/lang/String;I)V
    .locals 4
    .parameter "cid"
    .parameter "level"

    .prologue
    const/4 v3, 0x0

    .line 344
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->loadingView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->errorView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 346
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 347
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->functionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 348
    const-string v1, "catelogyId"

    invoke-virtual {v0, v1, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    const-string v1, "level"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    const-string v1, "isIcon"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    const-string v1, "isDescription"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 352
    new-instance v1, Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;-><init>(Lcom/jingdong/app/mall/category/CategoryListActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 353
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCache(Z)V

    .line 354
    const-wide/32 v1, 0x36ee80

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCacheTime(J)V

    .line 356
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 357
    invoke-virtual {p0}, Lcom/jingdong/app/mall/category/CategoryListActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 359
    return-void
.end method

.method private getGoodsCategory(Ljava/lang/String;)V
    .locals 2
    .parameter "cid"

    .prologue
    .line 267
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 268
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "goodsCategory"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 269
    const-string v1, "cid"

    invoke-virtual {v0, v1, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    new-instance v1, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;-><init>(Lcom/jingdong/app/mall/category/CategoryListActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 272
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 273
    invoke-virtual {p0}, Lcom/jingdong/app/mall/category/CategoryListActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 274
    return-void
.end method

.method private hideHeadView()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->listHeadContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->listHeadContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Lcom/jingdong/app/mall/category/CategoryListActivity$3;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/category/CategoryListActivity$3;-><init>(Lcom/jingdong/app/mall/category/CategoryListActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/category/CategoryListActivity;->post(Ljava/lang/Runnable;)V

    .line 191
    :cond_0
    return-void
.end method

.method private setAdapter()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 139
    new-instance v0, Lcom/jingdong/app/mall/category/CategoryListActivity$1;

    .line 140
    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->dataList:Ljava/util/ArrayList;

    .line 141
    const v4, 0x7f030039

    .line 142
    new-array v5, v6, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v5, v2

    .line 143
    new-array v6, v6, [I

    const v1, 0x7f0c0169

    aput v1, v6, v2

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/category/CategoryListActivity$1;-><init>(Lcom/jingdong/app/mall/category/CategoryListActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 139
    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->listAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 151
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->listAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    new-instance v1, Lcom/jingdong/app/mall/category/CategoryListActivity$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/category/CategoryListActivity$2;-><init>(Lcom/jingdong/app/mall/category/CategoryListActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 164
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->listAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->getHeaderViewListAdapter()Landroid/widget/HeaderViewListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    return-void
.end method

.method private setEvents()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/jingdong/app/mall/category/CategoryListActivity$4;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/category/CategoryListActivity$4;-><init>(Lcom/jingdong/app/mall/category/CategoryListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->productImageGallery:Landroid/widget/Gallery;

    new-instance v1, Lcom/jingdong/app/mall/category/CategoryListActivity$5;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/category/CategoryListActivity$5;-><init>(Lcom/jingdong/app/mall/category/CategoryListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 248
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->errorLoadingbut:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/category/CategoryListActivity$6;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/category/CategoryListActivity$6;-><init>(Lcom/jingdong/app/mall/category/CategoryListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    return-void
.end method

.method private showHeadView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->listHeadContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x14

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 174
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->listHeadContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->listAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->listHeadContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/MySimpleAdapter;->addHeaderView(Landroid/widget/ListView;Landroid/view/View;)V

    .line 178
    :cond_0
    return-void
.end method


# virtual methods
.method public getParams()Ljava/util/Map;
    .locals 3
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
    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v0, paramsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "categoryId"

    iget-object v2, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->cId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-object v0
.end method

.method public getSecondCategoryParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .parameter "cid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 130
    .local v0, paramsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "categoryId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x2

    .line 84
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/category/CategoryListActivity;->setContentView(I)V

    .line 86
    invoke-virtual {p0}, Lcom/jingdong/app/mall/category/CategoryListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->bundle:Landroid/os/Bundle;

    .line 87
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "cid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->cId:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->cName:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "levelFirst"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->levelFirst:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "cLevel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->cLevel:I

    .line 93
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->cId:Ljava/lang/String;

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->levelSecond:Ljava/lang/String;

    .line 94
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/category/CategoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->categoryText:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->categoryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->cName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const v0, 0x7f0c0164

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/category/CategoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->listView:Landroid/widget/ListView;

    .line 98
    iget-object v6, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->listView:Landroid/widget/ListView;

    new-instance v0, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/jingdong/app/mall/category/CategoryListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090036

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object v1, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/category/CategoryListActivity$DividerDrawable;-><init>(Lcom/jingdong/app/mall/category/CategoryListActivity;IIZI)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->listView:Landroid/widget/ListView;

    const/high16 v1, 0x3f80

    invoke-static {v1}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 101
    const v0, 0x7f0c0166

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/category/CategoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->listEmptyView:Landroid/view/ViewGroup;

    .line 102
    const v0, 0x7f0c0167

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/category/CategoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->loadingView:Landroid/view/View;

    .line 103
    const v0, 0x7f0c0168

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/category/CategoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->errorView:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->errorView:Landroid/view/View;

    const v1, 0x7f0c02ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->errorLoadingbut:Landroid/widget/Button;

    .line 106
    const v0, 0x7f030025

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->listHeadContainer:Landroid/widget/LinearLayout;

    .line 107
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->listHeadContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0c0110

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->productImageGallery:Landroid/widget/Gallery;

    .line 108
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->productImageGallery:Landroid/widget/Gallery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setCallbackDuringFling(Z)V

    .line 113
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->cId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/category/CategoryListActivity;->getGoodsCategory(Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryListActivity;->setAdapter()V

    .line 115
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryListActivity;->setEvents()V

    .line 116
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->cId:Ljava/lang/String;

    iget v1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity;->cLevel:I

    invoke-direct {p0, v0, v1}, Lcom/jingdong/app/mall/category/CategoryListActivity;->getCategory(Ljava/lang/String;I)V

    .line 117
    return-void
.end method
