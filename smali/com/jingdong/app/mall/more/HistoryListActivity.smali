.class public Lcom/jingdong/app/mall/more/HistoryListActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "HistoryListActivity.java"

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
.field private dbService:Lcom/jingdong/common/utils/DBHelperUtil;

.field private functionId:Ljava/lang/String;

.field private loadingLayout:Landroid/widget/LinearLayout;

.field private nextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

.field private params:Lorg/json/JSONObject;

.field private wareInfoList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/more/HistoryListActivity;)Lcom/jingdong/common/utils/DBHelperUtil;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jingdong/app/mall/more/HistoryListActivity;->dbService:Lcom/jingdong/common/utils/DBHelperUtil;

    return-object v0
.end method

.method private getWareInfoList(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7
    .parameter "functionId"
    .parameter "params"

    .prologue
    .line 206
    new-instance v0, Lcom/jingdong/app/mall/more/HistoryListActivity$2;

    iget-object v3, p0, Lcom/jingdong/app/mall/more/HistoryListActivity;->wareInfoList:Landroid/widget/ListView;

    .line 207
    iget-object v4, p0, Lcom/jingdong/app/mall/more/HistoryListActivity;->loadingLayout:Landroid/widget/LinearLayout;

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/more/HistoryListActivity$2;-><init>(Lcom/jingdong/app/mall/more/HistoryListActivity;Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 206
    iput-object v0, p0, Lcom/jingdong/app/mall/more/HistoryListActivity;->nextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    .line 326
    iget-object v0, p0, Lcom/jingdong/app/mall/more/HistoryListActivity;->nextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/NextPageLoader;->showPageOne(Z)V

    .line 328
    return-void
.end method


# virtual methods
.method public getProductIdArrayStr(II)Ljava/lang/String;
    .locals 6
    .parameter "pageNum"
    .parameter "pageSize"

    .prologue
    .line 177
    iget-object v3, p0, Lcom/jingdong/app/mall/more/HistoryListActivity;->dbService:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v3, p1, p2}, Lcom/jingdong/common/utils/DBHelperUtil;->getHistoryByPage(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 179
    .local v2, productList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 180
    .local v0, bf:Ljava/lang/StringBuffer;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 186
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 189
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 181
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/Product;

    .line 182
    .local v1, product:Lcom/jingdong/common/entity/Product;
    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v2, 0x7f030099

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/more/HistoryListActivity;->setContentView(I)V

    .line 72
    new-instance v2, Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-direct {v2, p0}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jingdong/app/mall/more/HistoryListActivity;->dbService:Lcom/jingdong/common/utils/DBHelperUtil;

    .line 74
    const v2, 0x7f0c007e

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/more/HistoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 75
    .local v1, txView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/HistoryListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const v3, 0x7f0701d5

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/more/HistoryListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/jingdong/common/utils/EditTextUtils;->setTextViewText(Landroid/widget/TextView;Landroid/content/Intent;Ljava/lang/String;)V

    .line 77
    const v2, 0x7f0c071c

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/more/HistoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 78
    .local v0, mTitleRightButton:Landroid/widget/Button;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 79
    const v2, 0x7f070271

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 80
    new-instance v2, Lcom/jingdong/app/mall/more/HistoryListActivity$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/more/HistoryListActivity$1;-><init>(Lcom/jingdong/app/mall/more/HistoryListActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/jingdong/app/mall/more/HistoryListActivity;->params:Lorg/json/JSONObject;

    .line 117
    const-string v2, "wareHistory"

    iput-object v2, p0, Lcom/jingdong/app/mall/more/HistoryListActivity;->functionId:Ljava/lang/String;

    .line 119
    const v2, 0x7f0c0357

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/more/HistoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/jingdong/app/mall/more/HistoryListActivity;->wareInfoList:Landroid/widget/ListView;

    .line 120
    iget-object v2, p0, Lcom/jingdong/app/mall/more/HistoryListActivity;->wareInfoList:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 163
    const v2, 0x7f030087

    const/4 v3, 0x0

    .line 162
    invoke-static {v2, v3}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/jingdong/app/mall/more/HistoryListActivity;->loadingLayout:Landroid/widget/LinearLayout;

    .line 164
    iget-object v2, p0, Lcom/jingdong/app/mall/more/HistoryListActivity;->loadingLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 166
    iget-object v2, p0, Lcom/jingdong/app/mall/more/HistoryListActivity;->functionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/jingdong/app/mall/more/HistoryListActivity;->params:Lorg/json/JSONObject;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/more/HistoryListActivity;->getWareInfoList(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 167
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 333
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/Product;

    .line 336
    .local v0, product:Lcom/jingdong/common/entity/Product;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/HistoryListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isFromHome"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    const-string v1, "homeHistory"

    .line 343
    .local v1, sourceType:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v3

    .line 345
    new-instance v4, Lcom/jingdong/common/entity/SourceEntity;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {p0, v2, v3, v4}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductDetailActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Lcom/jingdong/common/entity/SourceEntity;)V

    .line 347
    :cond_0
    return-void

    .line 339
    .end local v1           #sourceType:Ljava/lang/String;
    :cond_1
    const-string v1, "history"

    .restart local v1       #sourceType:Ljava/lang/String;
    goto :goto_0
.end method
