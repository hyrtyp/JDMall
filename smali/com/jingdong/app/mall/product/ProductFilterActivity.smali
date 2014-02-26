.class public Lcom/jingdong/app/mall/product/ProductFilterActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "ProductFilterActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jingdong/app/mall/utils/MyActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProductFilterActivity"


# instance fields
.field private allList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/SearchFilter;",
            ">;"
        }
    .end annotation
.end field

.field private catelogyFilterDialog:Landroid/app/AlertDialog$Builder;

.field catelogyId:Ljava/lang/String;

.field private distributeLayout:Landroid/widget/RelativeLayout;

.field distributeSearchChoosed:Landroid/widget/TextView;

.field distributeSearchMenu:Landroid/widget/TextView;

.field private emptyView:Landroid/widget/TextView;

.field private expandSortId:Ljava/lang/String;

.field private headList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/SearchFilter;",
            ">;"
        }
    .end annotation
.end field

.field isHaveCheckBox:Landroid/widget/CheckBox;

.field private isHaveDivider:Landroid/view/View;

.field private isHaveLayout:Landroid/widget/RelativeLayout;

.field private isNeedShowStock:Z

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/SearchFilter;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private mAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

.field mDistributeFilter:Lcom/jingdong/common/entity/SearchFilter;

.field mRegionFilter:Lcom/jingdong/common/entity/SearchFilter;

.field private myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private name:Ljava/lang/String;

.field private productListSortKey:I

.field private provinceJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;

.field private regionAllLayout:Landroid/widget/LinearLayout;

.field private regionIsTrue:Z

.field private regionLayout:Landroid/widget/RelativeLayout;

.field regionSearchChoosed:Landroid/widget/TextView;

.field regionSearchMenu:Landroid/widget/TextView;

.field private regionTag:I

.field private selfIsTrue:Z

.field private submitButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->headList:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->allList:Ljava/util/ArrayList;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->isNeedShowStock:Z

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductFilterActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->expandSortId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->allList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/product/ProductFilterActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput p1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->regionTag:I

    return-void
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/product/ProductFilterActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 71
    iget v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->regionTag:I

    return v0
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/product/ProductFilterActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->isNeedShowStock:Z

    return-void
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->emptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/product/ProductFilterActivity;Lcom/jingdong/common/utils/MySimpleAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->mAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    return-void
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->mAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    return-object v0
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Lcom/jingdong/app/mall/utils/MyActivity;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    return-object v0
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/product/ProductFilterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->getProductFilter()V

    return-void
.end method

.method static synthetic access$19(Lcom/jingdong/app/mall/product/ProductFilterActivity;Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->provinceJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->expandSortId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->isNeedShowStock:Z

    return v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/product/ProductFilterActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 74
    iget v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->productListSortKey:I

    return v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/product/ProductFilterActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->list:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->headList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->provinceJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;

    return-object v0
.end method

.method private getProductFilter()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 252
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 254
    .local v2, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "catelogyId"

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->catelogyId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 259
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v3, "expandSort"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v1, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPost(Z)V

    .line 261
    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 262
    new-instance v3, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;-><init>(Lcom/jingdong/app/mall/product/ProductFilterActivity;)V

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 388
    invoke-virtual {v1, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 389
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 390
    return-void

    .line 255
    .end local v1           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :catch_0
    move-exception v0

    .line 256
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private querySelectRegion()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 606
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 607
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "selectedProvince"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 608
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 609
    new-instance v1, Lcom/jingdong/app/mall/product/ProductFilterActivity$9;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductFilterActivity$9;-><init>(Lcom/jingdong/app/mall/product/ProductFilterActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 635
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCache(Z)V

    .line 636
    const-wide/32 v1, 0xf731400

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCacheTime(J)V

    .line 637
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 638
    return-void
.end method


# virtual methods
.method public handleHeadClickAction(Lcom/jingdong/common/entity/SearchFilter;Landroid/widget/TextView;)V
    .locals 4
    .parameter "searchFilter"
    .parameter "searchChoosed"

    .prologue
    .line 460
    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 461
    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getFilterName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070431

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->catelogyFilterDialog:Landroid/app/AlertDialog$Builder;

    .line 464
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->catelogyFilterDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getFilterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 467
    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->catelogyFilterDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v2

    .line 469
    new-instance v3, Lcom/jingdong/app/mall/product/ProductFilterActivity$6;

    invoke-direct {v3, p0, p1, p2}, Lcom/jingdong/app/mall/product/ProductFilterActivity$6;-><init>(Lcom/jingdong/app/mall/product/ProductFilterActivity;Lcom/jingdong/common/entity/SearchFilter;Landroid/widget/TextView;)V

    .line 468
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 506
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->catelogyFilterDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getFilterName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070432

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->catelogyFilterDialog:Landroid/app/AlertDialog$Builder;

    .line 511
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->catelogyFilterDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getFilterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 512
    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->catelogyFilterDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v2

    .line 515
    new-instance v3, Lcom/jingdong/app/mall/product/ProductFilterActivity$7;

    invoke-direct {v3, p0, p2, p1}, Lcom/jingdong/app/mall/product/ProductFilterActivity$7;-><init>(Lcom/jingdong/app/mall/product/ProductFilterActivity;Landroid/widget/TextView;Lcom/jingdong/common/entity/SearchFilter;)V

    .line 514
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 530
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->catelogyFilterDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public hideIsHave()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 441
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->isHaveLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->isHaveDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->regionAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x4230

    invoke-static {v1}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 445
    return-void
.end method

.method public initComponent()V
    .locals 4

    .prologue
    const v3, 0x7f0c0598

    const v2, 0x7f0c0596

    .line 215
    const v0, 0x7f0c0595

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->distributeLayout:Landroid/widget/RelativeLayout;

    .line 216
    const v0, 0x7f0c059a

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->regionLayout:Landroid/widget/RelativeLayout;

    .line 217
    const v0, 0x7f0c059c

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->isHaveLayout:Landroid/widget/RelativeLayout;

    .line 218
    const v0, 0x7f0c0599

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->regionAllLayout:Landroid/widget/LinearLayout;

    .line 220
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->regionIsTrue:Z

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->regionAllLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 226
    :goto_0
    const v0, 0x7f0c059b

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->isHaveDivider:Landroid/view/View;

    .line 228
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->distributeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->distributeSearchMenu:Landroid/widget/TextView;

    .line 229
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->distributeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->distributeSearchChoosed:Landroid/widget/TextView;

    .line 230
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->distributeSearchMenu:Landroid/widget/TextView;

    const-string v1, "\u9009\u62e9\u914d\u9001\u65b9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->regionLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->regionSearchMenu:Landroid/widget/TextView;

    .line 233
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->regionLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->regionSearchChoosed:Landroid/widget/TextView;

    .line 234
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->regionSearchMenu:Landroid/widget/TextView;

    const-string v1, "\u9009\u62e9\u5e93\u5b58"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->isHaveLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0c059f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->isHaveCheckBox:Landroid/widget/CheckBox;

    .line 238
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->regionAllLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public initDistributeRegionValue()V
    .locals 2

    .prologue
    .line 394
    new-instance v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$3;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductFilterActivity$3;-><init>(Lcom/jingdong/app/mall/product/ProductFilterActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->post(Ljava/lang/Runnable;)V

    .line 404
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->distributeLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/jingdong/app/mall/product/ProductFilterActivity$4;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductFilterActivity$4;-><init>(Lcom/jingdong/app/mall/product/ProductFilterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->regionLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/jingdong/app/mall/product/ProductFilterActivity$5;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductFilterActivity$5;-><init>(Lcom/jingdong/app/mall/product/ProductFilterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    return-void
.end method

.method public initIsHaveItem()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->mRegionFilter:Lcom/jingdong/common/entity/SearchFilter;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->mRegionFilter:Lcom/jingdong/common/entity/SearchFilter;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->showIsHave()V

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->hideIsHave()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x0

    .line 89
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v2, 0x7f0300db

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->setContentView(I)V

    .line 91
    iput-object p0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 92
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "catelogyId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->catelogyId:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "expandSortId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->expandSortId:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "regionIsTrue"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->regionIsTrue:Z

    .line 95
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "selfIsTrue"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->selfIsTrue:Z

    .line 97
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "sortKey"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->productListSortKey:I

    .line 110
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->expandSortId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 111
    const-string v2, "0-0-0-0-0-0-0-0-0"

    iput-object v2, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->expandSortId:Ljava/lang/String;

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->name:Ljava/lang/String;

    .line 117
    const v2, 0x7f0c007e

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 118
    .local v0, TitleText:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->name:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, title:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f070342

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    const v2, 0x7f0c0165

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->emptyView:Landroid/widget/TextView;

    .line 125
    const v2, 0x7f0c071c

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->submitButton:Landroid/widget/Button;

    .line 126
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->submitButton:Landroid/widget/Button;

    const v3, 0x7f07034c

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 127
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->submitButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->submitButton:Landroid/widget/Button;

    new-instance v3, Lcom/jingdong/app/mall/product/ProductFilterActivity$1;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/product/ProductFilterActivity$1;-><init>(Lcom/jingdong/app/mall/product/ProductFilterActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    const v2, 0x7f0c0164

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->listView:Landroid/widget/ListView;

    .line 201
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 202
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 204
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->initComponent()V

    .line 205
    iget-boolean v2, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->regionIsTrue:Z

    if-eqz v2, :cond_2

    .line 207
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->querySelectRegion()V

    .line 212
    :goto_1
    return-void

    .line 118
    .end local v1           #title:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->name:Ljava/lang/String;

    goto :goto_0

    .line 209
    .restart local v1       #title:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->getProductFilter()V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "arg1"
    .parameter "arg2"
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
    .line 539
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 540
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 541
    .local v3, object:Ljava/lang/Object;
    instance-of v4, v3, Lcom/jingdong/common/entity/SearchFilter;

    if-nez v4, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v3

    .line 544
    check-cast v1, Lcom/jingdong/common/entity/SearchFilter;

    .line 545
    .local v1, catelogyExpandSort:Lcom/jingdong/common/entity/SearchFilter;
    invoke-virtual {v1}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 546
    const v4, 0x7f0c0598

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 548
    .local v2, choosed:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/jingdong/common/entity/SearchFilter;->getFilterName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 549
    invoke-virtual {v1}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v4

    .line 550
    invoke-virtual {v1}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v5

    .line 551
    new-instance v6, Lcom/jingdong/app/mall/product/ProductFilterActivity$8;

    invoke-direct {v6, p0, v1, v2}, Lcom/jingdong/app/mall/product/ProductFilterActivity$8;-><init>(Lcom/jingdong/app/mall/product/ProductFilterActivity;Lcom/jingdong/common/entity/SearchFilter;Landroid/widget/TextView;)V

    .line 549
    invoke-virtual {v0, v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 583
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public resetIsHave()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->isHaveCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 456
    return-void
.end method

.method public showIsHave()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 448
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->isHaveLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->isHaveDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity;->regionAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x42b2

    invoke-static {v1}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 451
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->resetIsHave()V

    .line 452
    return-void
.end method
