.class public Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "LifeAssistantActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAllOrderListView:Lcom/jingdong/app/mall/personel/CornerListView;

.field private mDataLoadProgress:Landroid/widget/ProgressBar;

.field private mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private msAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 43
    const-string v0, "OtherOrderList"

    iput-object v0, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->mDataLoadProgress:Landroid/widget/ProgressBar;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->msAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->goneProgressBar()V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;)Lcom/jingdong/app/mall/utils/MyActivity;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->getAllInfoList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->mDataLoadProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private getAllInfoList(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/common/entity/JdVirtualOrder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/JdVirtualOrder;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->getAllInfoList(Ljava/util/List;Z)V

    .line 200
    return-void
.end method

.method private getAllInfoList(Ljava/util/List;Z)V
    .locals 10
    .parameter
    .parameter "isShowLoading"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/common/entity/JdVirtualOrder;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/JdVirtualOrder;>;"
    const/4 v9, 0x2

    const/4 v5, 0x0

    const/high16 v8, 0x4120

    const/high16 v7, 0x40e0

    .line 137
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->mAllOrderListView:Lcom/jingdong/app/mall/personel/CornerListView;

    invoke-virtual {v0, v5}, Lcom/jingdong/app/mall/personel/CornerListView;->setVisibility(I)V

    .line 138
    new-instance v0, Lcom/jingdong/common/utils/MySimpleAdapter;

    iget-object v1, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    const v3, 0x7f030020

    new-array v4, v9, [Ljava/lang/String;

    const-string v2, "icon"

    aput-object v2, v4, v5

    const/4 v2, 0x1

    const-string v5, "title"

    aput-object v5, v4, v2

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->msAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 139
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->mAllOrderListView:Lcom/jingdong/app/mall/personel/CornerListView;

    iget-object v1, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->msAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/personel/CornerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->mAllOrderListView:Lcom/jingdong/app/mall/personel/CornerListView;

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/personel/CornerListView;->setBackgroundResource(I)V

    .line 141
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 142
    .local v6, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v7}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v0

    invoke-static {v8}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    invoke-static {v7}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v2

    invoke-static {v8}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v3

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 143
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->mAllOrderListView:Lcom/jingdong/app/mall/personel/CornerListView;

    invoke-virtual {v0, v6}, Lcom/jingdong/app/mall/personel/CornerListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->mAllOrderListView:Lcom/jingdong/app/mall/personel/CornerListView;

    new-instance v1, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3;-><init>(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/personel/CornerListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 196
    return-void

    .line 138
    nop

    :array_0
    .array-data 0x4
        0x3t 0x1t 0xct 0x7ft
        0x4t 0x1t 0xct 0x7ft
    .end array-data
.end method

.method private goneProgressBar()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v1, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$5;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$5;-><init>(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 218
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 221
    const v0, 0x7f0c02e2

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/personel/CornerListView;

    iput-object v0, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->mAllOrderListView:Lcom/jingdong/app/mall/personel/CornerListView;

    .line 222
    const v0, 0x7f0c02e3

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->mDataLoadProgress:Landroid/widget/ProgressBar;

    .line 223
    return-void
.end method

.method private showProgressBar()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v1, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$4;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$4;-><init>(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 209
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v2, 0x7f030084

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->setContentView(I)V

    .line 52
    const v2, 0x7f0c007e

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 53
    .local v1, titleTextView:Landroid/widget/TextView;
    const v2, 0x7f07049c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 55
    iput-object p0, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 57
    invoke-direct {p0}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->init()V

    .line 59
    const-string v0, "lifeAssitant"

    .line 61
    .local v0, functionId:Ljava/lang/String;
    const-string v2, "lifeAssitant"

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->onLoadList(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public onLoadList(Ljava/lang/String;)V
    .locals 3
    .parameter "functionId"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->showProgressBar()V

    .line 84
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 85
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 86
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCache(Z)V

    .line 87
    const-wide/32 v1, 0x1b7740

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCacheTime(J)V

    .line 88
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 89
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    new-instance v1, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$2;-><init>(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 133
    iget-object v1, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/MyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 134
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 67
    new-instance v0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$1;-><init>(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->post(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method
