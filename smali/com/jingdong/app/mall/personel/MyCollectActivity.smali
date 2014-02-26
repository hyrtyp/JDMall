.class public Lcom/jingdong/app/mall/personel/MyCollectActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "MyCollectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jingdong/app/mall/utils/MyActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field dbHelper:Lcom/jingdong/common/utils/DBHelperUtil;

.field private functionId:Ljava/lang/String;

.field private loadingLayout:Landroid/widget/LinearLayout;

.field mTitle:Landroid/widget/TextView;

.field nextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

.field private params:Lorg/json/JSONObject;

.field private product:Lcom/jingdong/common/entity/Product;

.field private wareInfoList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    return-void
.end method

.method private InitComponenet()V
    .locals 3

    .prologue
    .line 97
    const v1, 0x7f0c007e

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyCollectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 98
    .local v0, mTitleView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyCollectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyCollectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const v2, 0x7f07048a

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MyCollectActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jingdong/common/utils/EditTextUtils;->setTextViewText(Landroid/widget/TextView;Landroid/content/Intent;Ljava/lang/String;)V

    .line 101
    const v1, 0x7f0c0357

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyCollectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity;->wareInfoList:Landroid/widget/ListView;

    .line 102
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity;->wareInfoList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    const v1, 0x7f030087

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity;->loadingLayout:Landroid/widget/LinearLayout;

    .line 104
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity;->loadingLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 105
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/utils/NextPageLoader;Lcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 286
    invoke-static {p0, p1, p2}, Lcom/jingdong/app/mall/personel/MyCollectActivity;->cancelFavorites(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/utils/NextPageLoader;Lcom/jingdong/common/entity/Product;)V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/personel/MyCollectActivity;)Lcom/jingdong/common/entity/Product;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity;->product:Lcom/jingdong/common/entity/Product;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/personel/MyCollectActivity;Lcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity;->product:Lcom/jingdong/common/entity/Product;

    return-void
.end method

.method public static cancelFavorites(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/entity/Product;)V
    .locals 1
    .parameter "context"
    .parameter "product"

    .prologue
    .line 283
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/jingdong/app/mall/personel/MyCollectActivity;->cancelFavorites(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/utils/NextPageLoader;Lcom/jingdong/common/entity/Product;)V

    .line 284
    return-void
.end method

.method private static cancelFavorites(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/utils/NextPageLoader;Lcom/jingdong/common/entity/Product;)V
    .locals 5
    .parameter "context"
    .parameter "nextPageLoader"
    .parameter "product"

    .prologue
    .line 287
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 289
    .local v2, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "fid"

    invoke-virtual {p2}, Lcom/jingdong/common/entity/Product;->getFid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 294
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v3, "cancelFavorite"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 296
    new-instance v3, Lcom/jingdong/app/mall/personel/MyCollectActivity$4;

    invoke-direct {v3, p1, p0, p2}, Lcom/jingdong/app/mall/personel/MyCollectActivity$4;-><init>(Lcom/jingdong/common/utils/NextPageLoader;Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/entity/Product;)V

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 347
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 348
    return-void

    .line 290
    .end local v1           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getMyCollect()V
    .locals 8

    .prologue
    .line 109
    new-instance v0, Lcom/jingdong/app/mall/personel/MyCollectActivity$1;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity;->wareInfoList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity;->loadingLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity;->functionId:Ljava/lang/String;

    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity;->params:Lorg/json/JSONObject;

    const v1, 0x7f070235

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyCollectActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/jingdong/app/mall/personel/MyCollectActivity$1;-><init>(Lcom/jingdong/app/mall/personel/MyCollectActivity;Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity;->nextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    .line 175
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity;->nextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/NextPageLoader;->showPageOne(Z)V

    .line 177
    return-void
.end method

.method private handleLongClickEvent()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity;->wareInfoList:Landroid/widget/ListView;

    new-instance v1, Lcom/jingdong/app/mall/personel/MyCollectActivity$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MyCollectActivity$2;-><init>(Lcom/jingdong/app/mall/personel/MyCollectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 246
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v2, 0x7f030099

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MyCollectActivity;->setContentView(I)V

    .line 77
    new-instance v2, Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-direct {v2, p0}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity;->dbHelper:Lcom/jingdong/common/utils/DBHelperUtil;

    .line 78
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyCollectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 79
    .local v1, it:Landroid/content/Intent;
    const-string v2, "favoriteList"

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity;->functionId:Ljava/lang/String;

    .line 80
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity;->params:Lorg/json/JSONObject;

    .line 82
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity;->params:Lorg/json/JSONObject;

    const-string v3, "pin"

    const-string v4, "pin"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity;->params:Lorg/json/JSONObject;

    const-string v3, "pagesize"

    const-string v4, "10"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity;->params:Lorg/json/JSONObject;

    const-string v3, "page"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyCollectActivity;->InitComponenet()V

    .line 90
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyCollectActivity;->handleLongClickEvent()V

    .line 92
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyCollectActivity;->getMyCollect()V

    .line 93
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/Product;

    .line 182
    .local v0, product:Lcom/jingdong/common/entity/Product;
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyCollectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isFromHome"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    const-string v1, "homeFavoriteList"

    .line 191
    .local v1, sourceType:Ljava/lang/String;
    :goto_0
    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity;->product:Lcom/jingdong/common/entity/Product;

    .line 193
    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v3

    .line 194
    new-instance v4, Lcom/jingdong/common/entity/SourceEntity;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {p0, v2, v3, v4}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductDetailActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Lcom/jingdong/common/entity/SourceEntity;)V

    .line 196
    .end local v1           #sourceType:Ljava/lang/String;
    :cond_0
    return-void

    .line 188
    :cond_1
    const-string v1, "favoriteList"

    .restart local v1       #sourceType:Ljava/lang/String;
    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 252
    new-instance v0, Lcom/jingdong/app/mall/personel/MyCollectActivity$3;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/personel/MyCollectActivity$3;-><init>(Lcom/jingdong/app/mall/personel/MyCollectActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyCollectActivity;->post(Ljava/lang/Runnable;)V

    .line 272
    return-void
.end method
