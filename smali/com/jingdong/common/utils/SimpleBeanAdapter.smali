.class public Lcom/jingdong/common/utils/SimpleBeanAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimpleBeanAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/utils/SimpleBeanAdapter$SimpleFilter;,
        Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;
    }
.end annotation


# instance fields
.field private adapterHelper:Lcom/jingdong/common/utils/AdapterHelper;

.field private allowNoImage:Z

.field private footerViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private headerViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private headerViewListAdapter:Landroid/widget/HeaderViewListAdapter;

.field private isAssetsCache:Z

.field private isForeverCacheImage:Z

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field

.field private mDropDownResource:I

.field private mFilter:Lcom/jingdong/common/utils/SimpleBeanAdapter$SimpleFilter;

.field private mFrom:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResource:I

.field private mTo:[I

.field private mUnfilteredData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field

.field private mViewBinder:Lcom/jingdong/common/utils/SubViewBinder;

.field private uiRunnables:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "resource"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<*>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .local p2, data:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 76
    new-instance v0, Lcom/jingdong/common/utils/AdapterHelper;

    invoke-direct {v0}, Lcom/jingdong/common/utils/AdapterHelper;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->adapterHelper:Lcom/jingdong/common/utils/AdapterHelper;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->allowNoImage:Z

    .line 83
    iput-boolean v1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->isAssetsCache:Z

    .line 85
    iput-boolean v1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->isForeverCacheImage:Z

    .line 97
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->uiRunnables:Ljava/util/Vector;

    .line 116
    iput-object p2, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mData:Ljava/util/List;

    .line 117
    iput p3, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mDropDownResource:I

    iput p3, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mResource:I

    .line 118
    iput-object p4, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mFrom:[Ljava/lang/String;

    .line 119
    iput-object p5, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mTo:[I

    .line 120
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 121
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/utils/SimpleBeanAdapter;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mUnfilteredData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/common/utils/SimpleBeanAdapter;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/common/utils/SimpleBeanAdapter;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mUnfilteredData:Ljava/util/List;

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/common/utils/SimpleBeanAdapter;)[I
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mTo:[I

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/common/utils/SimpleBeanAdapter;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mFrom:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/common/utils/SimpleBeanAdapter;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mData:Ljava/util/List;

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/common/utils/SimpleBeanAdapter;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->uiRunnables:Ljava/util/Vector;

    return-object v0
.end method

.method private bindView(ILandroid/view/View;)V
    .locals 12
    .parameter "position"
    .parameter "view"

    .prologue
    .line 291
    const/4 v3, 0x0

    .line 292
    .local v3, dataSet:Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 293
    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    .line 333
    :cond_0
    return-void

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->getViewBinder()Lcom/jingdong/common/utils/SubViewBinder;

    move-result-object v0

    .line 299
    .local v0, binder:Lcom/jingdong/common/utils/SubViewBinder;
    iget-object v4, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mFrom:[Ljava/lang/String;

    .line 300
    .local v4, from:[Ljava/lang/String;
    iget-object v8, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mTo:[I

    .line 301
    .local v8, to:[I
    array-length v1, v8

    .line 303
    .local v1, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v1, :cond_0

    .line 307
    iget-object v10, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->adapterHelper:Lcom/jingdong/common/utils/AdapterHelper;

    aget v11, v8, v6

    invoke-virtual {v10, p2, v11}, Lcom/jingdong/common/utils/AdapterHelper;->getSubView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    .line 309
    .local v9, v:Landroid/view/View;
    if-eqz v9, :cond_3

    .line 310
    const/4 v2, 0x0

    .line 312
    .local v2, data:Ljava/lang/Object;
    aget-object v10, v4, v6

    invoke-static {v3, v10}, Lcom/jingdong/common/utils/BeanUtil;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 314
    if-nez v2, :cond_4

    const-string v7, ""

    .line 315
    .local v7, text:Ljava/lang/String;
    :goto_1
    if-nez v7, :cond_2

    .line 316
    const-string v7, ""

    .line 319
    :cond_2
    if-eqz v0, :cond_3

    .line 320
    new-instance v5, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    invoke-direct {v5}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;-><init>()V

    .line 321
    .local v5, h:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;
    invoke-virtual {v5, p0}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->setAdapter(Lcom/jingdong/common/utils/SimpleBeanAdapter;)V

    .line 322
    invoke-virtual {v5, v3}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->setItemData(Ljava/lang/Object;)V

    .line 323
    invoke-virtual {v5, v2}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->setSubData(Ljava/lang/Object;)V

    .line 324
    invoke-virtual {v5, p2}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->setItemView(Landroid/view/View;)V

    .line 325
    invoke-virtual {v5, v9}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->setSubView(Landroid/view/View;)V

    .line 326
    invoke-virtual {v5, p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->setPosition(I)V

    .line 327
    aget v10, v8, v6

    invoke-virtual {v5, v10}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->setSubViewId(I)V

    .line 329
    invoke-interface {v0, v5}, Lcom/jingdong/common/utils/SubViewBinder;->bind(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;)Z

    .line 303
    .end local v2           #data:Ljava/lang/Object;
    .end local v5           #h:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;
    .end local v7           #text:Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 314
    .restart local v2       #data:Ljava/lang/Object;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method private createViewFromResource(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 7
    .parameter "parent"
    .parameter "resource"

    .prologue
    .line 254
    invoke-virtual {p0, p1, p2}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->inflateView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v4

    .line 256
    .local v4, v:Landroid/view/View;
    iget-object v3, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mTo:[I

    .line 257
    .local v3, to:[I
    array-length v0, v3

    .line 259
    .local v0, count:I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 260
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 263
    iget-object v5, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->adapterHelper:Lcom/jingdong/common/utils/AdapterHelper;

    invoke-virtual {v5, v4, v2}, Lcom/jingdong/common/utils/AdapterHelper;->putSubViews(Landroid/view/View;Ljava/util/Map;)V

    .line 264
    return-object v4

    .line 261
    :cond_0
    aget v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget v6, v3, v1

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"
    .parameter "resource"

    .prologue
    .line 236
    if-nez p2, :cond_0

    .line 237
    invoke-direct {p0, p3, p4}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->createViewFromResource(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    .line 243
    .local v0, v:Landroid/view/View;
    :goto_0
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->bindView(ILandroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_1
    return-object v0

    .line 239
    .end local v0           #v:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0

    .line 244
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "v"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 490
    .local p2, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 491
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 498
    :goto_1
    return-void

    .line 492
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 493
    .local v1, info:Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 494
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 491
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized UIWorkCentralized(Lcom/jingdong/common/utils/adapter/UIRunnable;)V
    .locals 4
    .parameter "runnable"

    .prologue
    .line 501
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->uiRunnables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->uiRunnables:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 503
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/MyApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/jingdong/common/utils/SimpleBeanAdapter$2;

    invoke-direct {v1, p0}, Lcom/jingdong/common/utils/SimpleBeanAdapter$2;-><init>(Lcom/jingdong/common/utils/SimpleBeanAdapter;)V

    .line 513
    const-wide/16 v2, 0x258

    .line 503
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    :goto_0
    monitor-exit p0

    return-void

    .line 515
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->uiRunnables:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addAllBean(Ljava/util/Collection;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    return-void
.end method

.method public addFooterView(Landroid/widget/ListView;Landroid/view/View;)V
    .locals 3
    .parameter "listView"
    .parameter "view"

    .prologue
    .line 424
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/MyApplication;->getUiThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 425
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "must run in ui thread"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 428
    :cond_0
    iget-object v1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->footerViewInfos:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 439
    :goto_0
    return-void

    .line 432
    :cond_1
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 433
    .local v0, info:Landroid/widget/ListView$FixedViewInfo;
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 434
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 435
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 436
    iget-object v1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->footerViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    invoke-virtual {p0}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public addHeaderView(Landroid/widget/ListView;Landroid/view/View;)V
    .locals 3
    .parameter "listView"
    .parameter "view"

    .prologue
    .line 377
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/MyApplication;->getUiThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 378
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "must run in ui thread"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->headerViewListAdapter:Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_1

    .line 391
    :goto_0
    return-void

    .line 385
    :cond_1
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 386
    .local v0, info:Landroid/widget/ListView$FixedViewInfo;
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 387
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 388
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 389
    iget-object v1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->headerViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-virtual {p0}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public allowNoImageAndIsNoImage()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->allowNoImage:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jingdong/common/utils/NoImageUtils;->needNoImage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public gc()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 727
    iput-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mViewBinder:Lcom/jingdong/common/utils/SubViewBinder;

    .line 728
    iput-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mData:Ljava/util/List;

    .line 729
    iput-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mUnfilteredData:Ljava/util/List;

    .line 731
    return-void
.end method

.method public getAdapterHelper()Lcom/jingdong/common/utils/AdapterHelper;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->adapterHelper:Lcom/jingdong/common/utils/AdapterHelper;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 287
    iget v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mDropDownResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->getViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mFilter:Lcom/jingdong/common/utils/SimpleBeanAdapter$SimpleFilter;

    if-nez v0, :cond_0

    .line 521
    new-instance v0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SimpleFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SimpleFilter;-><init>(Lcom/jingdong/common/utils/SimpleBeanAdapter;Lcom/jingdong/common/utils/SimpleBeanAdapter$SimpleFilter;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mFilter:Lcom/jingdong/common/utils/SimpleBeanAdapter$SimpleFilter;

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mFilter:Lcom/jingdong/common/utils/SimpleBeanAdapter$SimpleFilter;

    return-object v0
.end method

.method public getHeaderViewListAdapter()Landroid/widget/HeaderViewListAdapter;
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->headerViewListAdapter:Landroid/widget/HeaderViewListAdapter;

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->headerViewInfos:Ljava/util/ArrayList;

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->footerViewInfos:Ljava/util/ArrayList;

    .line 353
    new-instance v0, Lcom/jingdong/common/utils/SimpleBeanAdapter$1;

    iget-object v1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->headerViewInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->footerViewInfos:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/jingdong/common/utils/SimpleBeanAdapter$1;-><init>(Lcom/jingdong/common/utils/SimpleBeanAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->headerViewListAdapter:Landroid/widget/HeaderViewListAdapter;

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->headerViewListAdapter:Landroid/widget/HeaderViewListAdapter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 219
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 226
    instance-of v0, p3, Landroid/widget/AdapterView;

    if-eqz v0, :cond_0

    .line 227
    iget-object v1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->adapterHelper:Lcom/jingdong/common/utils/AdapterHelper;

    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/AdapterHelper;->setAdapterView(Landroid/widget/AdapterView;)V

    .line 229
    :cond_0
    iget v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->getViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinder()Lcom/jingdong/common/utils/SubViewBinder;
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mViewBinder:Lcom/jingdong/common/utils/SubViewBinder;

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Lcom/jingdong/common/utils/SimpleSubViewBinder;

    new-instance v1, Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;

    invoke-direct {v1}, Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;-><init>()V

    invoke-direct {v0, v1}, Lcom/jingdong/common/utils/SimpleSubViewBinder;-><init>(Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mViewBinder:Lcom/jingdong/common/utils/SubViewBinder;

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mViewBinder:Lcom/jingdong/common/utils/SubViewBinder;

    return-object v0
.end method

.method protected inflateView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1
    .parameter "parent"
    .parameter "resource"

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isAllowNoImage()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->allowNoImage:Z

    return v0
.end method

.method public isAssetsCache()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->isAssetsCache:Z

    return v0
.end method

.method public isForeverCacheImage()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->isForeverCacheImage:Z

    return v0
.end method

.method public removeAllFooterView()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->footerViewInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->footerViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 447
    invoke-virtual {p0}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->notifyDataSetChanged()V

    .line 449
    :cond_0
    return-void
.end method

.method public removeAllHeaderView()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->headerViewInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->headerViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 457
    invoke-virtual {p0}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->notifyDataSetChanged()V

    .line 459
    :cond_0
    return-void
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 3
    .parameter "view"

    .prologue
    const/4 v0, 0x0

    .line 466
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/MyApplication;->getUiThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 467
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "must run in ui thread"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->headerViewListAdapter:Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_2

    .line 483
    :cond_1
    :goto_0
    return v0

    .line 474
    :cond_2
    iget-object v1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->footerViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, result:Z
    iget-object v1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->headerViewListAdapter:Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 477
    invoke-virtual {p0}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->notifyDataSetChanged()V

    .line 478
    const/4 v0, 0x1

    .line 480
    :cond_3
    iget-object v1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->footerViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 3
    .parameter "view"

    .prologue
    const/4 v0, 0x0

    .line 397
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/MyApplication;->getUiThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 398
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "must run in ui thread"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->headerViewListAdapter:Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_2

    .line 414
    :cond_1
    :goto_0
    return v0

    .line 405
    :cond_2
    iget-object v1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->headerViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, result:Z
    iget-object v1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->headerViewListAdapter:Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 408
    invoke-virtual {p0}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->notifyDataSetChanged()V

    .line 409
    const/4 v0, 0x1

    .line 411
    :cond_3
    iget-object v1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->headerViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public replaceAllBean(Ljava/util/Collection;)V
    .locals 4
    .parameter "list"

    .prologue
    .line 135
    iget-object v2, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 136
    .local v1, size:I
    invoke-virtual {p0, p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->addAllBean(Ljava/util/Collection;)V

    .line 137
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 140
    return-void

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mData:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setAllowNoImage(Z)V
    .locals 0
    .parameter "allowNoImage"

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->allowNoImage:Z

    .line 168
    return-void
.end method

.method public setAssetsCache(Z)V
    .locals 0
    .parameter "isAssetsCache"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->isAssetsCache:Z

    .line 176
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mData:Ljava/util/List;

    .line 147
    return-void
.end method

.method public setDropDownViewResource(I)V
    .locals 0
    .parameter "resource"

    .prologue
    .line 282
    iput p1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mDropDownResource:I

    .line 283
    return-void
.end method

.method public setForeverCacheImage(Z)V
    .locals 0
    .parameter "isForeverCacheImage"

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->isForeverCacheImage:Z

    .line 184
    return-void
.end method

.method public setViewBinder(Lcom/jingdong/common/utils/SubViewBinder;)V
    .locals 0
    .parameter "viewBinder"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter;->mViewBinder:Lcom/jingdong/common/utils/SubViewBinder;

    .line 344
    return-void
.end method
