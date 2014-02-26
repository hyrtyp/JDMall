.class public Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "CarouselFigureViewPager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarouselFigureViewPager"


# instance fields
.field private activity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private adapter:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;

.field private cursorCallBackRunnable:Ljava/lang/Runnable;

.field private group:Lcom/jingdong/common/utils/HttpGroup;

.field private imagePadding:I

.field private parent:Landroid/view/ViewGroup;

.field private size:I

.field private util:Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 65
    const/high16 v0, 0x4000

    invoke-static {v0}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->imagePadding:I

    .line 70
    new-instance v0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    invoke-direct {v0}, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->util:Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const/high16 v0, 0x4000

    invoke-static {v0}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->imagePadding:I

    .line 70
    new-instance v0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    invoke-direct {v0}, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->util:Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    .line 74
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;)I
    .locals 1
    .parameter

    .prologue
    .line 65
    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->imagePadding:I

    return v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;Lcom/jingdong/common/entity/Commercial;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->doStartActivity(Lcom/jingdong/common/entity/Commercial;)V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;)Lcom/jingdong/app/mall/utils/MyActivity;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->cursorCallBackRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->adapter:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;)Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->adapter:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;

    return-object v0
.end method

.method private doStartActivity(Lcom/jingdong/common/entity/Commercial;)V
    .locals 11
    .parameter "commercial"

    .prologue
    .line 273
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/CommonUtil;->isCanClick()Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    invoke-virtual {p1}, Lcom/jingdong/common/entity/Commercial;->getType()I

    move-result v10

    .line 281
    .local v10, type:I
    invoke-static {}, Lcom/jingdong/common/utils/NewJLogUtil;->isUseNewJLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    const-string v1, "Click_CommondityPromotionView"

    invoke-virtual {p1}, Lcom/jingdong/common/entity/Commercial;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jingdong/common/utils/NewJLogUtil;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_2
    if-nez v10, :cond_3

    .line 287
    :try_start_0
    new-instance v7, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    const-class v1, Lcom/jingdong/app/mall/product/ProductListActivity;

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    .local v7, i:Landroid/content/Intent;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 290
    .local v6, b:Landroid/os/Bundle;
    const-string v0, "commercial"

    invoke-virtual {v6, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 291
    invoke-virtual {v7, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 292
    const-string v0, "source"

    new-instance v1, Lcom/jingdong/common/entity/SourceEntity;

    const-string v2, "listActivity"

    invoke-virtual {p1}, Lcom/jingdong/common/entity/Commercial;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 293
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-static {v0, v7}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductListActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    .line 329
    .end local v6           #b:Landroid/os/Bundle;
    .end local v7           #i:Landroid/content/Intent;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 294
    :cond_3
    const/4 v0, 0x1

    if-ne v10, v0, :cond_4

    .line 295
    new-instance v8, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    const-class v1, Lcom/jingdong/app/mall/promotion/PromotionActivity;

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 296
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "source"

    new-instance v1, Lcom/jingdong/common/entity/SourceEntity;

    const-string v2, "listActivity"

    invoke-virtual {p1}, Lcom/jingdong/common/entity/Commercial;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 297
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v0, v8}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    goto :goto_0

    .line 298
    .end local v8           #intent:Landroid/content/Intent;
    :cond_4
    const/4 v0, 0x2

    if-ne v10, v0, :cond_5

    .line 299
    invoke-virtual {p1}, Lcom/jingdong/common/entity/Commercial;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v1}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    new-instance v2, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3;

    invoke-direct {v2, p0, p1}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3;-><init>(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;Lcom/jingdong/common/entity/Commercial;)V

    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/utils/CommonUtil;->queryBrowserUrl(Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;)V

    goto :goto_0

    .line 313
    :cond_5
    const/4 v0, 0x3

    if-ne v10, v0, :cond_6

    .line 314
    invoke-virtual {p1}, Lcom/jingdong/common/entity/Commercial;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, action:Ljava/lang/String;
    new-instance v9, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v9}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    .line 316
    .local v9, map:Lcom/jingdong/common/utils/URLParamMap;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    const-string v0, "to"

    invoke-virtual {v9, v0, v3}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    const-string v2, "to"

    invoke-virtual {v0, v1, v2, v9}, Lcom/jingdong/app/mall/utils/CommonUtil;->forwardWebActivity(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;)V

    goto/16 :goto_0

    .line 321
    .end local v3           #action:Ljava/lang/String;
    .end local v9           #map:Lcom/jingdong/common/utils/URLParamMap;
    :cond_6
    const/4 v0, 0x4

    if-ne v10, v0, :cond_0

    .line 322
    invoke-virtual {p1}, Lcom/jingdong/common/entity/Commercial;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 323
    .restart local v3       #action:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    new-instance v9, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v9}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    .line 325
    .restart local v9       #map:Lcom/jingdong/common/utils/URLParamMap;
    const-string v0, "to"

    invoke-virtual {v9, v0, v3}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 326
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    const-string v2, "to"

    const/4 v4, 0x0

    const-string v5, "screen_land"

    invoke-virtual/range {v0 .. v5}, Lcom/jingdong/app/mall/utils/CommonUtil;->forwardWebActivity(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private initData(Lcom/jingdong/common/entity/HomeFloorModel;)V
    .locals 5
    .parameter "model"

    .prologue
    .line 121
    new-instance v0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$1;-><init>(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;)V

    .line 169
    .local v0, onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->util:Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->group:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {p1}, Lcom/jingdong/common/entity/HomeFloorModel;->getFunctionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/jingdong/common/entity/HomeFloorModel;->getParams()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->addUseCache(Lcom/jingdong/common/utils/HttpGroup;Ljava/lang/String;Ljava/lang/String;Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V

    .line 170
    return-void
.end method


# virtual methods
.method public getAdapter(Ljava/util/ArrayList;)Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Commercial;",
            ">;)",
            "Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, commercialsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Commercial;>;"
    new-instance v0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;-><init>(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->adapter:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;

    .line 203
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->adapter:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->size:I

    return v0
.end method

.method public init(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/entity/HomeFloorModel;Landroid/view/ViewGroup;Z)V
    .locals 1
    .parameter "activity"
    .parameter "pullRefreshHttpGroup"
    .parameter "model"
    .parameter "parent"
    .parameter "isCache"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->util:Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    invoke-virtual {v0, p5}, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->setOnlyUseCache(Z)V

    .line 84
    iput-object p4, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->parent:Landroid/view/ViewGroup;

    .line 85
    iput-object p2, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->group:Lcom/jingdong/common/utils/HttpGroup;

    .line 87
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 89
    invoke-virtual {p0, p0}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 91
    invoke-direct {p0, p3}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->initData(Lcom/jingdong/common/entity/HomeFloorModel;)V

    .line 93
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 97
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 105
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->parent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 110
    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 111
    return v2

    .line 100
    :pswitch_1
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->parent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected refreshAdapter(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Commercial;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, commercialsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Commercial;>;"
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v1, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$2;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$2;-><init>(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method protected setCount(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 194
    iput p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->size:I

    .line 195
    return-void
.end method

.method public setCursorCallBack(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "runnable"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->cursorCallBackRunnable:Ljava/lang/Runnable;

    .line 270
    return-void
.end method
