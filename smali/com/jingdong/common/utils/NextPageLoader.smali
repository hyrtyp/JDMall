.class public abstract Lcom/jingdong/common/utils/NextPageLoader;
.super Ljava/lang/Object;
.source "NextPageLoader.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;
.implements Lcom/jingdong/common/frame/IDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/utils/NextPageLoader$BaseListener;,
        Lcom/jingdong/common/utils/NextPageLoader$GalleryListener;,
        Lcom/jingdong/common/utils/NextPageLoader$ModifyDataRunnable;,
        Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

.field protected adapterView:Landroid/widget/AdapterView;

.field protected colSize:Ljava/lang/Integer;

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

.field protected isPaging:Z

.field private isPreloading:Z

.field private loadedLastPage:Z

.field private loadedShow:Z

.field private loading:Z

.field private loadingView:Landroid/view/View;

.field private localFileCacheTime:J

.field private myActivity:Lcom/jingdong/common/frame/IMyActivity;

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

.field private noDataView:Landroid/widget/TextView;

.field private onScrollLastListener:Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;

.field protected pageNum:Ljava/lang/Integer;

.field protected pageNumParamKey:Ljava/lang/String;

.field protected pageSize:Ljava/lang/Integer;

.field protected pageSizeParamKey:Ljava/lang/String;

.field protected params:Lorg/json/JSONObject;

.field private position:I

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
.method public constructor <init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .parameter "myActivity"
    .parameter "adapterView"
    .parameter "loadingView"
    .parameter "functionId"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "NextPageLoader"

    iput-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->showItemList:Ljava/util/ArrayList;

    .line 44
    iput-boolean v2, p0, Lcom/jingdong/common/utils/NextPageLoader;->loading:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->nextItemList:Ljava/util/ArrayList;

    .line 46
    iput-boolean v2, p0, Lcom/jingdong/common/utils/NextPageLoader;->loadedShow:Z

    .line 47
    iput-boolean v2, p0, Lcom/jingdong/common/utils/NextPageLoader;->loadedLastPage:Z

    .line 48
    iput-boolean v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->firstLoad:Z

    .line 49
    iput-boolean v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->isEffect:Z

    .line 51
    iput-boolean v2, p0, Lcom/jingdong/common/utils/NextPageLoader;->isHolding:Z

    .line 52
    iput-boolean v2, p0, Lcom/jingdong/common/utils/NextPageLoader;->isFling:Z

    .line 55
    iput-boolean v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->isPaging:Z

    .line 62
    const-string v0, "page"

    iput-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->pageNumParamKey:Ljava/lang/String;

    .line 63
    const-string v0, "pagesize"

    iput-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->pageSizeParamKey:Ljava/lang/String;

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->pageNum:Ljava/lang/Integer;

    .line 65
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->pageSize:Ljava/lang/Integer;

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->colSize:Ljava/lang/Integer;

    .line 69
    iput-boolean v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->httpNotifyUser:Z

    .line 72
    iput-boolean v2, p0, Lcom/jingdong/common/utils/NextPageLoader;->needFooterView:Z

    .line 96
    iput-object p1, p0, Lcom/jingdong/common/utils/NextPageLoader;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 97
    invoke-interface {p1}, Lcom/jingdong/common/frame/IMyActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->handler:Landroid/os/Handler;

    .line 98
    invoke-interface {p1, p0}, Lcom/jingdong/common/frame/IMyActivity;->addDestroyListener(Lcom/jingdong/common/frame/IDestroyListener;)V

    .line 99
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v0}, Lcom/jingdong/common/frame/IMyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    .line 100
    iput-object p2, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    .line 101
    iput-object p3, p0, Lcom/jingdong/common/utils/NextPageLoader;->loadingView:Landroid/view/View;

    .line 102
    iput-object p4, p0, Lcom/jingdong/common/utils/NextPageLoader;->functionId:Ljava/lang/String;

    .line 103
    iput-boolean v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->isPreloading:Z

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .parameter "myActivity"
    .parameter "adapterView"
    .parameter "loadingView"
    .parameter "functionId"
    .parameter "params"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jingdong/common/utils/NextPageLoader;-><init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;)V

    .line 108
    iput-object p5, p0, Lcom/jingdong/common/utils/NextPageLoader;->params:Lorg/json/JSONObject;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->isPreloading:Z

    .line 110
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .parameter "myActivity"
    .parameter "adapterView"
    .parameter "loadingView"
    .parameter "functionId"
    .parameter "params"
    .parameter "noData"

    .prologue
    .line 113
    invoke-direct/range {p0 .. p5}, Lcom/jingdong/common/utils/NextPageLoader;-><init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 114
    iput-object p6, p0, Lcom/jingdong/common/utils/NextPageLoader;->noDataHint:Ljava/lang/String;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->isPreloading:Z

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;J)V
    .locals 0
    .parameter "myActivity"
    .parameter "adapterView"
    .parameter "loadingView"
    .parameter "functionId"
    .parameter "params"
    .parameter "noData"
    .parameter "localFileCacheTime"

    .prologue
    .line 119
    invoke-direct/range {p0 .. p6}, Lcom/jingdong/common/utils/NextPageLoader;-><init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 120
    iput-wide p7, p0, Lcom/jingdong/common/utils/NextPageLoader;->localFileCacheTime:J

    .line 121
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/utils/NextPageLoader;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->isFinishing:Z

    return v0
.end method

.method static synthetic access$1(Lcom/jingdong/common/utils/NextPageLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/jingdong/common/utils/NextPageLoader;->tryShowNextPage()V

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/common/utils/NextPageLoader;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/jingdong/common/utils/NextPageLoader;->showNextPage(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/common/utils/NextPageLoader;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/jingdong/common/utils/NextPageLoader;->isFling:Z

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/common/utils/NextPageLoader;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/jingdong/common/utils/NextPageLoader;->isHolding:Z

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/common/utils/NextPageLoader;)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->hasNotify:Z

    return v0
.end method

.method static synthetic access$5(Lcom/jingdong/common/utils/NextPageLoader;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/jingdong/common/utils/NextPageLoader;->hasNotify:Z

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/common/utils/NextPageLoader;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/common/utils/NextPageLoader;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->isFling:Z

    return v0
.end method

.method static synthetic access$8(Lcom/jingdong/common/utils/NextPageLoader;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/jingdong/common/utils/NextPageLoader;->nextItemList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$9(Lcom/jingdong/common/utils/NextPageLoader;)Z
    .locals 1
    .parameter

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/jingdong/common/utils/NextPageLoader;->loadedShow()Z

    move-result v0

    return v0
.end method

.method private applyLoadedShow()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->loadedShow:Z

    .line 260
    return-void
.end method

.method private loadedShow()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 208
    iget-boolean v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->loadedShow:Z

    if-eqz v1, :cond_0

    .line 209
    iput-boolean v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->loadedShow:Z

    .line 210
    const/4 v0, 0x1

    .line 212
    :cond_0
    return v0
.end method

.method private declared-synchronized loadingLock()Z
    .locals 1

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->loading:Z

    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->loading:Z

    .line 175
    iget-boolean v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->loading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized loadingUnLock()V
    .locals 1

    .prologue
    .line 192
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->loading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private showNextPage(Ljava/util/ArrayList;)V
    .locals 8
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
    const/16 v3, 0x14

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 332
    iput-object v6, p0, Lcom/jingdong/common/utils/NextPageLoader;->nextItemList:Ljava/util/ArrayList;

    .line 334
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->showItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 338
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->showItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v7, :cond_0

    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    instance-of v1, v1, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 339
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jingdong/common/utils/NextPageLoader;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v2}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->noDataView:Landroid/widget/TextView;

    .line 340
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->noDataView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 341
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->noDataHint:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 342
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->noDataView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jingdong/common/utils/NextPageLoader;->noDataHint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    :goto_0
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->noDataView:Landroid/widget/TextView;

    const/high16 v2, 0x4188

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 347
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->noDataView:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v3, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 350
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    check-cast v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/jingdong/common/utils/NextPageLoader;->noDataView:Landroid/widget/TextView;

    sget-object v3, Lcom/jingdong/common/res/StringUtil;->no_data:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :cond_0
    :goto_1
    invoke-virtual {p0, p1}, Lcom/jingdong/common/utils/NextPageLoader;->judgeIsLastPage(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 361
    iput-boolean v7, p0, Lcom/jingdong/common/utils/NextPageLoader;->loadedLastPage:Z

    .line 362
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    instance-of v1, v1, Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    check-cast v1, Landroid/widget/ListView;

    new-instance v2, Lcom/jingdong/common/utils/NextPageLoader$BaseListener;

    invoke-direct {v2, p0, v6, v6}, Lcom/jingdong/common/utils/NextPageLoader$BaseListener;-><init>(Lcom/jingdong/common/utils/NextPageLoader;Lcom/jingdong/common/utils/NextPageLoader$BaseListener;Lcom/jingdong/common/utils/NextPageLoader$BaseListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 372
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    if-nez v1, :cond_a

    .line 374
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    iget-object v2, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    iget-object v3, p0, Lcom/jingdong/common/utils/NextPageLoader;->showItemList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2, v3}, Lcom/jingdong/common/utils/NextPageLoader;->createAdapter(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 375
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v1, p0}, Lcom/jingdong/common/utils/MySimpleAdapter;->setNextPageLoader(Lcom/jingdong/common/utils/NextPageLoader;)V

    .line 378
    new-instance v0, Lcom/jingdong/common/utils/NextPageLoader$1;

    invoke-direct {v0, p0, p0}, Lcom/jingdong/common/utils/NextPageLoader$1;-><init>(Lcom/jingdong/common/utils/NextPageLoader;Lcom/jingdong/common/utils/NextPageLoader;)V

    .line 411
    .local v0, onScrollLastListener:Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    new-instance v2, Lcom/jingdong/common/utils/NextPageLoader$2;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/common/utils/NextPageLoader$2;-><init>(Lcom/jingdong/common/utils/NextPageLoader;Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 432
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    instance-of v1, v1, Landroid/widget/ListView;

    if-eqz v1, :cond_7

    .line 433
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    if-eqz v1, :cond_6

    .line 434
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    iget-object v2, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/MySimpleAdapter;->getHeaderViewListAdapter()Landroid/widget/HeaderViewListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 435
    iget-boolean v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->needFooterView:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->loadingView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 436
    iget-object v2, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    check-cast v1, Landroid/widget/ListView;

    iget-object v3, p0, Lcom/jingdong/common/utils/NextPageLoader;->loadingView:Landroid/view/View;

    invoke-virtual {v2, v1, v3}, Lcom/jingdong/common/utils/MySimpleAdapter;->addFooterView(Landroid/widget/ListView;Landroid/view/View;)V

    .line 437
    iput-boolean v5, p0, Lcom/jingdong/common/utils/NextPageLoader;->needFooterView:Z

    .line 442
    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 460
    :goto_4
    invoke-direct {p0}, Lcom/jingdong/common/utils/NextPageLoader;->loadingUnLock()V

    .line 468
    .end local v0           #onScrollLastListener:Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;
    :goto_5
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/jingdong/common/utils/NextPageLoader$4;

    invoke-direct {v2, p0}, Lcom/jingdong/common/utils/NextPageLoader$4;-><init>(Lcom/jingdong/common/utils/NextPageLoader;)V

    .line 477
    const-wide/16 v3, 0x1f4

    .line 468
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 479
    invoke-virtual {p0}, Lcom/jingdong/common/utils/NextPageLoader;->isLoadedLastPage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 480
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->loadingView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    instance-of v1, v1, Landroid/widget/ListView;

    if-eqz v1, :cond_3

    .line 481
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    iget-object v2, p0, Lcom/jingdong/common/utils/NextPageLoader;->loadingView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/MySimpleAdapter;->removeFooterView(Landroid/view/View;)Z

    .line 485
    :cond_3
    return-void

    .line 344
    :cond_4
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->noDataView:Landroid/widget/TextView;

    sget-object v2, Lcom/jingdong/common/res/StringUtil;->no_data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 368
    :cond_5
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->pageNum:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->pageNum:Ljava/lang/Integer;

    .line 369
    invoke-virtual {p0}, Lcom/jingdong/common/utils/NextPageLoader;->loading()V

    goto/16 :goto_2

    .line 440
    .restart local v0       #onScrollLastListener:Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;
    :cond_6
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    iget-object v2, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    goto :goto_3

    .line 443
    :cond_7
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    instance-of v1, v1, Landroid/widget/GridView;

    if-eqz v1, :cond_8

    .line 444
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    iget-object v2, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 445
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    check-cast v1, Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_4

    .line 446
    :cond_8
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    instance-of v1, v1, Landroid/widget/Gallery;

    if-eqz v1, :cond_9

    .line 447
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    iget-object v2, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 448
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    check-cast v1, Landroid/widget/Gallery;

    new-instance v2, Lcom/jingdong/common/utils/NextPageLoader$GalleryListener;

    invoke-direct {v2, p0}, Lcom/jingdong/common/utils/NextPageLoader$GalleryListener;-><init>(Lcom/jingdong/common/utils/NextPageLoader;)V

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 449
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    new-instance v2, Lcom/jingdong/common/utils/NextPageLoader$3;

    invoke-direct {v2, p0}, Lcom/jingdong/common/utils/NextPageLoader$3;-><init>(Lcom/jingdong/common/utils/NextPageLoader;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_4

    .line 457
    :cond_9
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    iget-object v2, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    goto/16 :goto_4

    .line 463
    .end local v0           #onScrollLastListener:Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;
    :cond_a
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 464
    invoke-direct {p0}, Lcom/jingdong/common/utils/NextPageLoader;->loadingUnLock()V

    goto/16 :goto_5

    .line 351
    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method

.method private tryShowNextPage()V
    .locals 1

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->loadedLastPage:Z

    if-eqz v0, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->nextItemList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 574
    invoke-direct {p0}, Lcom/jingdong/common/utils/NextPageLoader;->applyLoadedShow()V

    .line 576
    invoke-direct {p0}, Lcom/jingdong/common/utils/NextPageLoader;->loadingLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-boolean v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->isPreloading:Z

    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/jingdong/common/utils/NextPageLoader;->loading()V

    goto :goto_0

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->nextItemList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/jingdong/common/utils/NextPageLoader;->showNextPage(Ljava/util/ArrayList;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract createAdapter(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/frame/IMyActivity;",
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
    .line 900
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->showItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNoDataView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->noDataView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPageNum()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->pageNum:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPageSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->pageSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getParams()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->params:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->params:Lorg/json/JSONObject;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->params:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public getProductItemAt(I)Lcom/jingdong/common/entity/Product;
    .locals 1
    .parameter "index"

    .prologue
    .line 896
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/MySimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/Product;

    return-object v0
.end method

.method protected handleParamsBeforeLoading()V
    .locals 4

    .prologue
    .line 501
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/NextPageLoader;->getParams()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->pageNumParamKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jingdong/common/utils/NextPageLoader;->pageNum:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 503
    invoke-virtual {p0}, Lcom/jingdong/common/utils/NextPageLoader;->getParams()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->pageSizeParamKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jingdong/common/utils/NextPageLoader;->pageSize:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :goto_0
    return-void

    .line 504
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isLoadedLastPage()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->loadedLastPage:Z

    return v0
.end method

.method public isPaging()Z
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->isPaging:Z

    return v0
.end method

.method protected judgeIsLastPage(Ljava/util/ArrayList;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->pageSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/jingdong/common/utils/NextPageLoader;->colSize:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->isPaging:Z

    if-nez v0, :cond_1

    .line 310
    :cond_0
    const/4 v0, 0x1

    .line 312
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loading()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 524
    invoke-virtual {p0}, Lcom/jingdong/common/utils/NextPageLoader;->handleParamsBeforeLoading()V

    .line 527
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 528
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->functionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0}, Lcom/jingdong/common/utils/NextPageLoader;->getParams()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 530
    invoke-virtual {v0, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 531
    iget-boolean v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->httpNotifyUser:Z

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 532
    iget-boolean v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->firstLoad:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->isEffect:Z

    if-eqz v1, :cond_1

    .line 533
    invoke-virtual {v0, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 537
    :goto_0
    iget-wide v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->localFileCacheTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 538
    invoke-virtual {v0, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCache(Z)V

    .line 539
    iget-wide v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->localFileCacheTime:J

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCacheTime(J)V

    .line 541
    :cond_0
    iput-boolean v5, p0, Lcom/jingdong/common/utils/NextPageLoader;->firstLoad:Z

    .line 542
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 544
    return-void

    .line 535
    :cond_1
    invoke-virtual {v0, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    goto :goto_0
.end method

.method public modifyData(Lcom/jingdong/common/utils/NextPageLoader$ModifyDataRunnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 818
    iget-boolean v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->isHolding:Z

    if-nez v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->showItemList:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/jingdong/common/utils/NextPageLoader$ModifyDataRunnable;->modifyData(Ljava/util/ArrayList;)V

    .line 820
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 824
    :cond_0
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 608
    iget-boolean v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->isHolding:Z

    if-nez v0, :cond_2

    .line 609
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    if-eqz v0, :cond_1

    .line 611
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/NextPageLoader;->getAllProductList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jingdong/common/utils/NextPageLoader;->getAllProductList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 612
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->loadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->removeFooterView(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 625
    :cond_1
    :goto_1
    return-void

    .line 623
    :cond_2
    iput-boolean v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->hasNotify:Z

    goto :goto_1

    .line 614
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 913
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->isFinishing:Z

    .line 914
    iput-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 915
    iput-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    .line 916
    iput-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 918
    iput-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->loadingView:Landroid/view/View;

    .line 920
    iput-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->showItemList:Ljava/util/ArrayList;

    .line 921
    iput-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->nextItemList:Ljava/util/ArrayList;

    .line 923
    iput-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    .line 925
    iput-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->params:Lorg/json/JSONObject;

    .line 926
    return-void
.end method

.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 3
    .parameter "httpResponse"

    .prologue
    .line 844
    invoke-virtual {p0, p1}, Lcom/jingdong/common/utils/NextPageLoader;->toList(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Ljava/util/ArrayList;

    move-result-object v0

    .line 845
    .local v0, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/jingdong/common/utils/NextPageLoader$5;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/common/utils/NextPageLoader$5;-><init>(Lcom/jingdong/common/utils/NextPageLoader;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 864
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 891
    invoke-direct {p0}, Lcom/jingdong/common/utils/NextPageLoader;->loadingUnLock()V

    .line 892
    invoke-virtual {p0}, Lcom/jingdong/common/utils/NextPageLoader;->showError()V

    .line 893
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 887
    return-void
.end method

.method protected onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 654
    return-void
.end method

.method protected onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 665
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 840
    return-void
.end method

.method public setAdapterView(Landroid/widget/AdapterView;)V
    .locals 4
    .parameter "adapterView"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 867
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    if-ne v0, p1, :cond_1

    .line 882
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 871
    iput-object v3, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    .line 872
    iput-object v3, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 873
    iput-object p1, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    .line 874
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 876
    iput-boolean v2, p0, Lcom/jingdong/common/utils/NextPageLoader;->isPreloading:Z

    .line 877
    invoke-virtual {p0}, Lcom/jingdong/common/utils/NextPageLoader;->showPageOne()V

    goto :goto_0
.end method

.method public setColSize(I)V
    .locals 1
    .parameter "colSize"

    .prologue
    .line 938
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->colSize:Ljava/lang/Integer;

    .line 939
    return-void
.end method

.method public setEffect(Z)V
    .locals 0
    .parameter "isEffect"

    .prologue
    .line 547
    iput-boolean p1, p0, Lcom/jingdong/common/utils/NextPageLoader;->isEffect:Z

    .line 548
    return-void
.end method

.method public setHttpNotifyUser(Z)V
    .locals 0
    .parameter "httpNotifyUser"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/jingdong/common/utils/NextPageLoader;->httpNotifyUser:Z

    .line 125
    return-void
.end method

.method public setPageNumParamKey(Ljava/lang/String;)V
    .locals 0
    .parameter "pageNumParamKey"

    .prologue
    .line 763
    iput-object p1, p0, Lcom/jingdong/common/utils/NextPageLoader;->pageNumParamKey:Ljava/lang/String;

    .line 764
    return-void
.end method

.method public setPageSize(I)V
    .locals 1
    .parameter "pageSize"

    .prologue
    .line 795
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader;->pageSize:Ljava/lang/Integer;

    .line 796
    return-void
.end method

.method public setPageSizeParamKey(Ljava/lang/String;)V
    .locals 0
    .parameter "pageSizeParamKey"

    .prologue
    .line 779
    iput-object p1, p0, Lcom/jingdong/common/utils/NextPageLoader;->pageSizeParamKey:Ljava/lang/String;

    .line 780
    return-void
.end method

.method public setPaging(Z)V
    .locals 0
    .parameter "isPaging"

    .prologue
    .line 642
    iput-boolean p1, p0, Lcom/jingdong/common/utils/NextPageLoader;->isPaging:Z

    .line 643
    return-void
.end method

.method public abstract setSelection(I)V
.end method

.method protected abstract showError()V
.end method

.method public showPageOne()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/NextPageLoader;->showPageOne(Z)V

    .line 129
    return-void
.end method

.method public showPageOne(Z)V
    .locals 0
    .parameter "needFooterView"

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/jingdong/common/utils/NextPageLoader;->needFooterView:Z

    .line 136
    invoke-direct {p0}, Lcom/jingdong/common/utils/NextPageLoader;->applyLoadedShow()V

    .line 137
    invoke-direct {p0}, Lcom/jingdong/common/utils/NextPageLoader;->tryShowNextPage()V

    .line 139
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
