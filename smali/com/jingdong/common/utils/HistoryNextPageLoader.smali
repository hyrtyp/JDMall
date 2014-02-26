.class public abstract Lcom/jingdong/common/utils/HistoryNextPageLoader;
.super Ljava/lang/Object;
.source "HistoryNextPageLoader.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/utils/HistoryNextPageLoader$OnScrollLastListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

.field private functionId:Ljava/lang/String;

.field protected httpGroup:Lcom/jingdong/common/utils/HttpGroup;

.field private listView:Landroid/widget/AbsListView;

.field private loadedLastPage:Z

.field private loadedShow:Z

.field private loading:Z

.field private loadingView:Landroid/view/View;

.field private myActivity:Lcom/jingdong/common/frame/IMyActivity;

.field private nextItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation
.end field

.field protected pageNum:Ljava/lang/Integer;

.field protected pageNumParamKey:Ljava/lang/String;

.field protected pageSize:Ljava/lang/Integer;

.field protected pageSizeParamKey:Ljava/lang/String;

.field protected params:Lorg/json/JSONObject;

.field private showItemList:Ljava/util/ArrayList;
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
.method public constructor <init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AbsListView;Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .parameter "myActivity"
    .parameter "listView"
    .parameter "loadingView"
    .parameter "functionId"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->showItemList:Ljava/util/ArrayList;

    .line 29
    iput-boolean v1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->loading:Z

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->nextItemList:Ljava/util/ArrayList;

    .line 31
    iput-boolean v1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->loadedShow:Z

    .line 32
    iput-boolean v1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->loadedLastPage:Z

    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->params:Lorg/json/JSONObject;

    .line 36
    const-string v0, "page"

    iput-object v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->pageNumParamKey:Ljava/lang/String;

    .line 37
    const-string v0, "pagesize"

    iput-object v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->pageSizeParamKey:Ljava/lang/String;

    .line 38
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->pageNum:Ljava/lang/Integer;

    .line 39
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->pageSize:Ljava/lang/Integer;

    .line 63
    iput-object p1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 64
    iget-object v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v0}, Lcom/jingdong/common/frame/IMyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    .line 65
    iput-object p2, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->listView:Landroid/widget/AbsListView;

    .line 66
    iput-object p3, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->loadingView:Landroid/view/View;

    .line 67
    iput-object p4, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->functionId:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AbsListView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "myActivity"
    .parameter "listView"
    .parameter "loadingView"
    .parameter "functionId"
    .parameter "params"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jingdong/common/utils/HistoryNextPageLoader;-><init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AbsListView;Landroid/view/View;Ljava/lang/String;)V

    .line 73
    iput-object p5, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->params:Lorg/json/JSONObject;

    .line 74
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/utils/HistoryNextPageLoader;)Landroid/widget/AbsListView;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->listView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/common/utils/HistoryNextPageLoader;)Z
    .locals 1
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->isLoadedLastPage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/jingdong/common/utils/HistoryNextPageLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->tryShowNextPage()V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/common/utils/HistoryNextPageLoader;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/common/utils/HistoryNextPageLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->loadingUnLock()V

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/common/utils/HistoryNextPageLoader;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->loadingView:Landroid/view/View;

    return-object v0
.end method

.method private applyLoadedShow()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->loadedShow:Z

    .line 172
    return-void
.end method

.method private isLoadedLastPage()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->loadedLastPage:Z

    return v0
.end method

.method private loadedShow()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 150
    iget-boolean v1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->loadedShow:Z

    if-eqz v1, :cond_0

    .line 151
    iput-boolean v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->loadedShow:Z

    .line 152
    const/4 v0, 0x1

    .line 154
    :cond_0
    return v0
.end method

.method private loading()V
    .locals 4

    .prologue
    .line 318
    :try_start_0
    const-string v0, "107225,104089,117884,110277,104087,165369,163395,261281,253234,311451"

    .line 319
    .local v0, wareIdList:Ljava/lang/String;
    iget-object v1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->params:Lorg/json/JSONObject;

    const-string v2, "wareId"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local v0           #wareIdList:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    iget-object v2, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->functionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->params:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3, p0}, Lcom/jingdong/common/utils/HttpGroup;->add(Ljava/lang/String;Lorg/json/JSONObject;Lcom/jingdong/common/utils/HttpGroup$OnAllListener;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 327
    return-void

    .line 320
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private declared-synchronized loadingLock()Z
    .locals 1

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->loading:Z

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->loading:Z

    .line 117
    iget-boolean v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->loading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized loadingUnLock()V
    .locals 1

    .prologue
    .line 134
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->loading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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
    const/4 v3, 0x1

    .line 235
    iget-object v1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->showItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 237
    iget-object v1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->showItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v3, :cond_0

    iget-object v1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->listView:Landroid/widget/AbsListView;

    instance-of v1, v1, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 238
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v1}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 239
    .local v0, textView:Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 240
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->no_data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    new-instance v2, Lcom/jingdong/common/utils/HistoryNextPageLoader$1;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/common/utils/HistoryNextPageLoader$1;-><init>(Lcom/jingdong/common/utils/HistoryNextPageLoader;Landroid/widget/TextView;)V

    invoke-interface {v1, v2}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    .line 249
    .end local v0           #textView:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->pageSize:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 251
    iput-boolean v3, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->loadedLastPage:Z

    .line 252
    iget-object v1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->listView:Landroid/widget/AbsListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 258
    :goto_0
    iget-object v1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    if-nez v1, :cond_3

    .line 260
    iget-object v1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    iget-object v2, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->showItemList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->createAdapter(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 263
    iget-object v1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->listView:Landroid/widget/AbsListView;

    new-instance v2, Lcom/jingdong/common/utils/HistoryNextPageLoader$2;

    invoke-direct {v2, p0, p0}, Lcom/jingdong/common/utils/HistoryNextPageLoader$2;-><init>(Lcom/jingdong/common/utils/HistoryNextPageLoader;Lcom/jingdong/common/utils/HistoryNextPageLoader;)V

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 272
    iget-object v1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    new-instance v2, Lcom/jingdong/common/utils/HistoryNextPageLoader$3;

    invoke-direct {v2, p0}, Lcom/jingdong/common/utils/HistoryNextPageLoader$3;-><init>(Lcom/jingdong/common/utils/HistoryNextPageLoader;)V

    invoke-interface {v1, v2}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    .line 288
    :goto_1
    invoke-direct {p0}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->isLoadedLastPage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    new-instance v2, Lcom/jingdong/common/utils/HistoryNextPageLoader$5;

    invoke-direct {v2, p0}, Lcom/jingdong/common/utils/HistoryNextPageLoader$5;-><init>(Lcom/jingdong/common/utils/HistoryNextPageLoader;)V

    invoke-interface {v1, v2}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    .line 303
    :cond_1
    return-void

    .line 254
    :cond_2
    iget-object v1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->pageNum:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->pageNum:Ljava/lang/Integer;

    .line 255
    invoke-direct {p0}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->loading()V

    goto :goto_0

    .line 279
    :cond_3
    iget-object v1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    new-instance v2, Lcom/jingdong/common/utils/HistoryNextPageLoader$4;

    invoke-direct {v2, p0}, Lcom/jingdong/common/utils/HistoryNextPageLoader$4;-><init>(Lcom/jingdong/common/utils/HistoryNextPageLoader;)V

    invoke-interface {v1, v2}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private tryShowNextPage()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->nextItemList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 343
    invoke-direct {p0}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->loadingLock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    invoke-direct {p0}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->applyLoadedShow()V

    .line 353
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-direct {p0}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->loading()V

    goto :goto_0

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->nextItemList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->showNextPage(Ljava/util/ArrayList;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract createAdapter(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/frame/IMyActivity;",
            "Ljava/util/ArrayList",
            "<*>;)",
            "Lcom/jingdong/common/utils/MySimpleAdapter;"
        }
    .end annotation
.end method

.method public getParams()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->params:Lorg/json/JSONObject;

    return-object v0
.end method

.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 2
    .parameter "httpResponse"

    .prologue
    .line 470
    iget-object v1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->pageNum:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 473
    invoke-virtual {p0, p1}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->toList(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Ljava/util/ArrayList;

    move-result-object v0

    .line 474
    .local v0, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    if-nez v0, :cond_1

    .line 475
    invoke-virtual {p0}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->showError()V

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    iput-object v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->nextItemList:Ljava/util/ArrayList;

    .line 479
    invoke-direct {p0}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->loadedShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    invoke-direct {p0, v0}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->showNextPage(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->showError()V

    .line 492
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 487
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method public setPageNumParamKey(Ljava/lang/String;)V
    .locals 0
    .parameter "pageNumParamKey"

    .prologue
    .line 406
    iput-object p1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->pageNumParamKey:Ljava/lang/String;

    .line 407
    return-void
.end method

.method public setPageSize(I)V
    .locals 1
    .parameter "pageSize"

    .prologue
    .line 438
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->pageSize:Ljava/lang/Integer;

    .line 439
    return-void
.end method

.method public setPageSizeParamKey(Ljava/lang/String;)V
    .locals 0
    .parameter "pageSizeParamKey"

    .prologue
    .line 422
    iput-object p1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->pageSizeParamKey:Ljava/lang/String;

    .line 423
    return-void
.end method

.method protected abstract showError()V
.end method

.method public showPageOne()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader;->showItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->applyLoadedShow()V

    .line 79
    invoke-direct {p0}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->tryShowNextPage()V

    .line 83
    :cond_0
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
