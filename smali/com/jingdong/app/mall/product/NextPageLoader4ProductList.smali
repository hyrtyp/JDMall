.class public abstract Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;
.super Ljava/lang/Object;
.source "NextPageLoader4ProductList.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;
.implements Lcom/jingdong/common/frame/IDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$BaseListener;,
        Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$GalleryListener;,
        Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$ModifyDataRunnable;,
        Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

.field protected adapterView:Landroid/widget/AdapterView;

.field private firstLoad:Z

.field protected functionId:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private hasNotify:Z

.field protected httpGroup:Lcom/jingdong/common/utils/HttpGroup;

.field protected httpNotifyUser:Z

.field private isEffect:Z

.field private isFinishing:Z

.field private isFling:Z

.field private isHolding:Z

.field private isLoading:Z

.field private isNetErrorAndNoData:Z

.field protected isPaging:Z

.field private isPreloading:Z

.field private loadedLastPage:Z

.field private loadedShow:Z

.field private loadingView:Landroid/view/View;

.field private mCurrPos:I

.field private myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private needFooterView:Z

.field private nextItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation
.end field

.field protected noDataHint:Ljava/lang/String;

.field private onScrollLastListener:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;

.field protected pageNum:Ljava/lang/Integer;

.field protected pageNumParamKey:Ljava/lang/String;

.field protected pageSize:Ljava/lang/Integer;

.field protected pageSizeParamKey:Ljava/lang/String;

.field protected params:Lorg/json/JSONObject;

.field private position:I

.field prePageNum:I

.field protected showItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .parameter "myActivity"
    .parameter "adapterView"
    .parameter "loadingView"
    .parameter "functionId"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "NextPageLoader"

    iput-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showItemList:Ljava/util/ArrayList;

    .line 44
    iput-boolean v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isLoading:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->nextItemList:Ljava/util/ArrayList;

    .line 46
    iput-boolean v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->loadedShow:Z

    .line 47
    iput-boolean v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->loadedLastPage:Z

    .line 48
    iput-boolean v2, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->firstLoad:Z

    .line 49
    iput-boolean v2, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isEffect:Z

    .line 51
    iput-boolean v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isHolding:Z

    .line 52
    iput-boolean v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isFling:Z

    .line 55
    iput-boolean v2, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isPaging:Z

    .line 62
    const-string v0, "page"

    iput-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->pageNumParamKey:Ljava/lang/String;

    .line 63
    const-string v0, "pagesize"

    iput-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->pageSizeParamKey:Ljava/lang/String;

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->pageNum:Ljava/lang/Integer;

    .line 65
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->pageSize:Ljava/lang/Integer;

    .line 68
    iput-boolean v2, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->httpNotifyUser:Z

    .line 71
    iput-boolean v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->needFooterView:Z

    .line 446
    const/4 v0, -0x1

    iput v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->prePageNum:I

    .line 96
    iput-object p1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 97
    invoke-virtual {p1}, Lcom/jingdong/app/mall/utils/MyActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->handler:Landroid/os/Handler;

    .line 98
    invoke-virtual {p1, p0}, Lcom/jingdong/app/mall/utils/MyActivity;->addDestroyListener(Lcom/jingdong/common/frame/IDestroyListener;)V

    .line 99
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/MyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    .line 100
    iput-object p2, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    .line 101
    iput-object p3, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->loadingView:Landroid/view/View;

    .line 102
    iput-object p4, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->functionId:Ljava/lang/String;

    .line 103
    iput-boolean v2, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isPreloading:Z

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .parameter "myActivity"
    .parameter "adapterView"
    .parameter "loadingView"
    .parameter "functionId"
    .parameter "params"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;)V

    .line 108
    iput-object p5, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->params:Lorg/json/JSONObject;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isPreloading:Z

    .line 110
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isFinishing:Z

    return v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)V
    .locals 0
    .parameter

    .prologue
    .line 664
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->tryShowNextPage()V

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->onScrollLastListener:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->nextItemList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)Z
    .locals 1
    .parameter

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->loadedShow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showNextPage(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput p1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->mCurrPos:I

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showLoadingView(Z)V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isFling:Z

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isHolding:Z

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->hasNotify:Z

    return v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->hasNotify:Z

    return-void
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isFling:Z

    return v0
.end method

.method private applyLoadedShow()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->loadedShow:Z

    .line 209
    return-void
.end method

.method private loadedShow()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 162
    iget-boolean v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->loadedShow:Z

    if-eqz v1, :cond_0

    .line 163
    iput-boolean v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->loadedShow:Z

    .line 164
    const/4 v0, 0x1

    .line 166
    :cond_0
    return v0
.end method

.method private setLoading(Z)V
    .locals 2
    .parameter "loading"

    .prologue
    .line 231
    monitor-enter p0

    .line 232
    :try_start_0
    iput-boolean p1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isLoading:Z

    .line 231
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v1, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$1;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$1;-><init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Z)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 249
    :cond_0
    return-void

    .line 231
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized setNetErrorAndNoData(Z)V
    .locals 1
    .parameter "errorAndNoData"

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isNetErrorAndNoData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private showCurrentPage(I)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    if-nez v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showItemList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1, v2}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->createAdapter(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 550
    new-instance v0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$6;

    invoke-direct {v0, p0, p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$6;-><init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->onScrollLastListener:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;

    .line 583
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    new-instance v1, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$7;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$7;-><init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 604
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 605
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->getHeaderViewListAdapter()Landroid/widget/HeaderViewListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 615
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->onScrollLastListener:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 634
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 635
    iput p1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->mCurrPos:I

    .line 636
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 638
    return-void

    .line 613
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    goto :goto_0

    .line 616
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    instance-of v0, v0, Landroid/widget/GridView;

    if-eqz v0, :cond_3

    .line 617
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 618
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    check-cast v0, Landroid/widget/GridView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->onScrollLastListener:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_1

    .line 619
    :cond_3
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    instance-of v0, v0, Landroid/widget/Gallery;

    if-eqz v0, :cond_4

    .line 620
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 621
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    check-cast v0, Landroid/widget/Gallery;

    new-instance v1, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$GalleryListener;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$GalleryListener;-><init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 622
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    new-instance v1, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$8;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$8;-><init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 630
    :cond_4
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    goto :goto_1
.end method

.method private showLoadingView(Z)V
    .locals 3
    .parameter "isShow"

    .prologue
    .line 641
    if-eqz p1, :cond_1

    .line 642
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->removeAllFooterView()V

    .line 644
    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    check-cast v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->loadingView:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Lcom/jingdong/common/utils/MySimpleAdapter;->addFooterView(Landroid/widget/ListView;Landroid/view/View;)V

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->removeAllFooterView()V

    goto :goto_0
.end method

.method private showNextPage(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 309
    iput-object v2, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->nextItemList:Ljava/util/ArrayList;

    .line 311
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 312
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->pageNum:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->pageNum:Ljava/lang/Integer;

    .line 317
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 321
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->judgeIsLastPage(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    iput-boolean v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->loadedLastPage:Z

    .line 324
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$BaseListener;

    invoke-direct {v1, p0, v2, v2}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$BaseListener;-><init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$BaseListener;Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$BaseListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 333
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    if-nez v0, :cond_7

    .line 335
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showItemList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1, v2}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->createAdapter(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 339
    new-instance v0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$2;

    invoke-direct {v0, p0, p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$2;-><init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->onScrollLastListener:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;

    .line 372
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    new-instance v1, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$3;-><init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 393
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_4

    .line 394
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    if-eqz v0, :cond_3

    .line 395
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->getHeaderViewListAdapter()Landroid/widget/HeaderViewListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 404
    :goto_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->onScrollLastListener:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 427
    :goto_2
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$5;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$5;-><init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)V

    .line 436
    const-wide/16 v2, 0x1f4

    .line 427
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 444
    return-void

    .line 330
    :cond_2
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->loadNextPage()V

    goto :goto_0

    .line 402
    :cond_3
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    goto :goto_1

    .line 405
    :cond_4
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    instance-of v0, v0, Landroid/widget/GridView;

    if-eqz v0, :cond_5

    .line 406
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 407
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    check-cast v0, Landroid/widget/GridView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->onScrollLastListener:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_2

    .line 408
    :cond_5
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    instance-of v0, v0, Landroid/widget/Gallery;

    if-eqz v0, :cond_6

    .line 409
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 410
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    check-cast v0, Landroid/widget/Gallery;

    new-instance v1, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$GalleryListener;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$GalleryListener;-><init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 411
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    new-instance v1, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$4;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$4;-><init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 419
    :cond_6
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    goto :goto_2

    .line 423
    :cond_7
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    goto :goto_2
.end method

.method private tryShowNextPage()V
    .locals 1

    .prologue
    .line 666
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->loadedLastPage:Z

    if-eqz v0, :cond_1

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->nextItemList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 677
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->applyLoadedShow()V

    .line 683
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isPreloading:Z

    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->loadNextPage()V

    goto :goto_0

    .line 691
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->nextItemList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showNextPage(Ljava/util/ArrayList;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract createAdapter(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/app/mall/utils/MyActivity;",
            "Landroid/widget/AdapterView;",
            "Ljava/util/ArrayList",
            "<*>;)",
            "Lcom/jingdong/common/utils/MySimpleAdapter;"
        }
    .end annotation
.end method

.method public getAllProductList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPageNum()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->pageNum:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPageSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->pageSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getParams()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->params:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->params:Lorg/json/JSONObject;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->params:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public getProductItemAt(I)Lcom/jingdong/common/entity/Product;
    .locals 1
    .parameter "index"

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/MySimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/Product;

    return-object v0
.end method

.method protected handleParamsBeforeLoading()V
    .locals 4

    .prologue
    .line 462
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->getParams()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->pageNumParamKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->pageNum:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 464
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->getParams()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->pageSizeParamKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->pageSize:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 465
    iget v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->prePageNum:I

    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->pageNum:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 466
    const-string v0, "NextPageLoader"

    const-string v1, "something wrong..."

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->pageNum:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->prePageNum:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_0
    return-void

    .line 469
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isLoadedLastPage()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->loadedLastPage:Z

    return v0
.end method

.method public isPaging()Z
    .locals 1

    .prologue
    .line 733
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isPaging:Z

    return v0
.end method

.method protected judgeIsLastPage(Ljava/util/ArrayList;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->pageSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isPaging:Z

    if-nez v0, :cond_1

    .line 288
    :cond_0
    const/4 v0, 0x1

    .line 290
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadNextPage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 489
    iget-boolean v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isLoading:Z

    if-eqz v1, :cond_0

    .line 510
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->pageNum:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->pageNum:Ljava/lang/Integer;

    .line 493
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->handleParamsBeforeLoading()V

    .line 494
    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->pageNum:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->pageNum:Ljava/lang/Integer;

    .line 496
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 497
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->functionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->getParams()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 499
    invoke-virtual {v0, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 500
    iget-boolean v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->httpNotifyUser:Z

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 501
    iget-boolean v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->firstLoad:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isEffect:Z

    if-eqz v1, :cond_1

    .line 502
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 506
    :goto_1
    iput-boolean v2, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->firstLoad:Z

    .line 507
    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 508
    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->setLoading(Z)V

    goto :goto_0

    .line 504
    :cond_1
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    goto :goto_1
.end method

.method public modifyData(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$ModifyDataRunnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 919
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isHolding:Z

    if-nez v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showItemList:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$ModifyDataRunnable;->modifyData(Ljava/util/ArrayList;)V

    .line 921
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 925
    :cond_0
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 708
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isHolding:Z

    if-nez v0, :cond_2

    .line 709
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    if-eqz v0, :cond_1

    .line 711
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->getAllProductList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->getAllProductList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 712
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->loadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->removeFooterView(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 725
    :cond_1
    :goto_1
    return-void

    .line 723
    :cond_2
    iput-boolean v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->hasNotify:Z

    goto :goto_1

    .line 714
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1031
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isFinishing:Z

    .line 1032
    iput-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 1033
    iput-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    .line 1034
    iput-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 1036
    iput-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->loadingView:Landroid/view/View;

    .line 1038
    iput-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showItemList:Ljava/util/ArrayList;

    .line 1039
    iput-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->nextItemList:Ljava/util/ArrayList;

    .line 1041
    iput-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    .line 1043
    iput-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->params:Lorg/json/JSONObject;

    .line 1044
    return-void
.end method

.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 2
    .parameter "httpResponse"

    .prologue
    const/4 v0, 0x0

    .line 945
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->setLoading(Z)V

    .line 946
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->setNetErrorAndNoData(Z)V

    .line 947
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$9;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$9;-><init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 974
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    const/4 v1, 0x0

    .line 1000
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isFinishing:Z

    if-eqz v0, :cond_0

    .line 1011
    :goto_0
    return-void

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1004
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->setNetErrorAndNoData(Z)V

    .line 1008
    :goto_1
    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->setLoading(Z)V

    .line 1009
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showEmpty(Z)V

    .line 1010
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showError()V

    goto :goto_0

    .line 1006
    :cond_2
    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->setNetErrorAndNoData(Z)V

    goto :goto_1
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 996
    return-void
.end method

.method protected onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 755
    return-void
.end method

.method protected onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 767
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 941
    return-void
.end method

.method public setAdapterView(Landroid/widget/AdapterView;)V
    .locals 3
    .parameter "adapterView"

    .prologue
    const/4 v2, 0x0

    .line 977
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    if-ne v0, p1, :cond_1

    .line 991
    :cond_0
    :goto_0
    return-void

    .line 980
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 981
    iput-object v2, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    .line 982
    iput-object v2, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 983
    iput-object p1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    .line 984
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 986
    iget v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->mCurrPos:I

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showCurrentPage(I)V

    goto :goto_0
.end method

.method public setEffect(Z)V
    .locals 0
    .parameter "isEffect"

    .prologue
    .line 513
    iput-boolean p1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isEffect:Z

    .line 514
    return-void
.end method

.method public setHttpNotifyUser(Z)V
    .locals 0
    .parameter "httpNotifyUser"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->httpNotifyUser:Z

    .line 114
    return-void
.end method

.method public setPageNumParamKey(Ljava/lang/String;)V
    .locals 0
    .parameter "pageNumParamKey"

    .prologue
    .line 864
    iput-object p1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->pageNumParamKey:Ljava/lang/String;

    .line 865
    return-void
.end method

.method public setPageSize(I)V
    .locals 1
    .parameter "pageSize"

    .prologue
    .line 896
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->pageSize:Ljava/lang/Integer;

    .line 897
    return-void
.end method

.method public setPageSizeParamKey(Ljava/lang/String;)V
    .locals 0
    .parameter "pageSizeParamKey"

    .prologue
    .line 880
    iput-object p1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->pageSizeParamKey:Ljava/lang/String;

    .line 881
    return-void
.end method

.method public setPaging(Z)V
    .locals 0
    .parameter "isPaging"

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isPaging:Z

    .line 743
    return-void
.end method

.method public abstract setSelection(I)V
.end method

.method protected abstract showEmpty(Z)V
.end method

.method protected abstract showError()V
.end method

.method public showPageOne()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showPageOne(Z)V

    .line 118
    return-void
.end method

.method public showPageOne(Z)V
    .locals 0
    .parameter "needFooterView"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->needFooterView:Z

    .line 125
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->applyLoadedShow()V

    .line 126
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->tryShowNextPage()V

    .line 128
    return-void
.end method

.method protected abstract toList(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/HttpGroup$HttpResponse;",
            ")",
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation
.end method
