.class public Lcom/jingdong/app/mall/more/MoreActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "MoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.jd.plug.more"

.field private static final TAG:Ljava/lang/String; = "MoreActivity"


# instance fields
.field private appRecommendId:Ljava/lang/String;

.field private assetManager:Landroid/content/res/AssetManager;

.field private classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

.field private fragmentName:Ljava/lang/String;

.field private hostEt:Landroid/widget/EditText;

.field iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

.field private is_testmode:Landroid/widget/CheckBox;

.field private listView:Landroid/widget/ListView;

.field private loaded:Z

.field private mScrollView:Landroid/widget/ScrollView;

.field private menu_Easy_RelativeLayout:Landroid/widget/RelativeLayout;

.field private menu_about_RelativeLayout:Landroid/widget/RelativeLayout;

.field private menu_app_recommend_RelativeLayout:Landroid/widget/RelativeLayout;

.field private menu_exit_RelativeLayout:Landroid/widget/RelativeLayout;

.field private menu_feedback_RelativeLayout:Landroid/widget/RelativeLayout;

.field private menu_help_RelativeLayout:Landroid/widget/RelativeLayout;

.field private menu_history_RelativeLayout:Landroid/widget/RelativeLayout;

.field private menu_host_setup_RelativeLayout:Landroid/widget/RelativeLayout;

.field private menu_paper_RelativeLayout:Landroid/widget/RelativeLayout;

.field private menu_setup_RelativeLayout:Landroid/widget/RelativeLayout;

.field private menu_version_RelativeLayout:Landroid/widget/RelativeLayout;

.field private mhostEt:Landroid/widget/EditText;

.field private more_activity_content:Landroid/widget/LinearLayout;

.field private msghostEt:Landroid/widget/EditText;

.field private myResources:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;

.field private paihostEt:Landroid/widget/EditText;

.field private paperDivoderView:Landroid/view/View;

.field private paperFunctionId:Ljava/lang/String;

.field private resources:Landroid/content/res/Resources;

.field private rootView:Landroid/widget/FrameLayout;

.field private theme:Landroid/content/res/Resources$Theme;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/more/MoreActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/jingdong/app/mall/more/MoreActivity;->hostEt:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/more/MoreActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/jingdong/app/mall/more/MoreActivity;->mhostEt:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/more/MoreActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 592
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/more/MoreActivity;->addContentList(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/more/MoreActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->menu_paper_RelativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/more/MoreActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->paperDivoderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/more/MoreActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/jingdong/app/mall/more/MoreActivity;->msghostEt:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/more/MoreActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/jingdong/app/mall/more/MoreActivity;->paihostEt:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/more/MoreActivity;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/jingdong/app/mall/more/MoreActivity;->is_testmode:Landroid/widget/CheckBox;

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/more/MoreActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->hostEt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/more/MoreActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->mhostEt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/more/MoreActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->msghostEt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/more/MoreActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->paihostEt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/more/MoreActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->is_testmode:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private addContentList(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/HomeLayout;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 594
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeLayout;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 596
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 645
    .end local v0           #i:I
    :cond_0
    return-void

    .line 597
    .restart local v0       #i:I
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/HomeLayout;

    .line 598
    .local v1, item:Lcom/jingdong/common/entity/HomeLayout;
    const v3, 0x7f0703df

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/more/MoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/jingdong/common/entity/HomeLayout;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 600
    invoke-virtual {v1}, Lcom/jingdong/common/entity/HomeLayout;->getFunctionId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 602
    new-instance v3, Lcom/jingdong/app/mall/more/MoreActivity$3;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/more/MoreActivity$3;-><init>(Lcom/jingdong/app/mall/more/MoreActivity;)V

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/more/MoreActivity;->post(Ljava/lang/Runnable;)V

    .line 610
    :cond_2
    new-instance v2, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v2}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    .line 611
    .local v2, param:Lcom/jingdong/common/utils/URLParamMap;
    const-string v3, "to"

    invoke-virtual {v1}, Lcom/jingdong/common/entity/HomeLayout;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 616
    iget-object v3, p0, Lcom/jingdong/app/mall/more/MoreActivity;->menu_paper_RelativeLayout:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/jingdong/app/mall/more/MoreActivity$4;

    invoke-direct {v4, p0, v1, v2}, Lcom/jingdong/app/mall/more/MoreActivity$4;-><init>(Lcom/jingdong/app/mall/more/MoreActivity;Lcom/jingdong/common/entity/HomeLayout;Lcom/jingdong/common/utils/URLParamMap;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    .end local v2           #param:Lcom/jingdong/common/utils/URLParamMap;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getMenuAdapter(Landroid/content/Context;[Ljava/lang/String;[I)Landroid/widget/SimpleAdapter;
    .locals 9
    .parameter "context"
    .parameter "menuNameArray"
    .parameter "imageResourceArray"

    .prologue
    const/4 v8, 0x2

    .line 534
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v2, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v1, p1

    if-lt v6, v1, :cond_0

    .line 541
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f030015

    new-array v4, v8, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "itemImage"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "itemText"

    aput-object v5, v4, v1

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 542
    .local v0, simperAdapter:Landroid/widget/SimpleAdapter;
    return-object v0

    .line 536
    .end local v0           #simperAdapter:Landroid/widget/SimpleAdapter;
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 537
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "itemImage"

    aget v3, p2, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const-string v1, "itemText"

    aget-object v3, p1, v6

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 541
    :array_0
    .array-data 0x4
        0xabt 0x0t 0xct 0x7ft
        0xact 0x0t 0xct 0x7ft
    .end array-data
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 308
    const v0, 0x7f0c00d8

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/more/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->more_activity_content:Landroid/widget/LinearLayout;

    .line 310
    const v0, 0x7f0c0008

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/more/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->menu_about_RelativeLayout:Landroid/widget/RelativeLayout;

    .line 311
    const v0, 0x7f0c0009

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/more/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->menu_exit_RelativeLayout:Landroid/widget/RelativeLayout;

    .line 312
    const v0, 0x7f0c000a

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/more/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->menu_version_RelativeLayout:Landroid/widget/RelativeLayout;

    .line 313
    const v0, 0x7f0c0006

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/more/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->menu_feedback_RelativeLayout:Landroid/widget/RelativeLayout;

    .line 314
    const v0, 0x7f0c0007

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/more/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->menu_help_RelativeLayout:Landroid/widget/RelativeLayout;

    .line 315
    const v0, 0x7f0c0005

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/more/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->menu_history_RelativeLayout:Landroid/widget/RelativeLayout;

    .line 317
    const v0, 0x7f0c0004

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/more/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->menu_setup_RelativeLayout:Landroid/widget/RelativeLayout;

    .line 318
    const v0, 0x7f0c00eb

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/more/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->menu_host_setup_RelativeLayout:Landroid/widget/RelativeLayout;

    .line 319
    const v0, 0x7f0c00dd

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/more/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->menu_paper_RelativeLayout:Landroid/widget/RelativeLayout;

    .line 320
    const v0, 0x7f0c00e2

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/more/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->menu_app_recommend_RelativeLayout:Landroid/widget/RelativeLayout;

    .line 321
    const v0, 0x7f0c00e1

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/more/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->paperDivoderView:Landroid/view/View;

    .line 324
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->menu_about_RelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->menu_exit_RelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->menu_version_RelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->menu_feedback_RelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->menu_help_RelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->menu_history_RelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->menu_setup_RelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->menu_host_setup_RelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->menu_app_recommend_RelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    const-string v0, "CBTMode"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jingdong/common/config/Configuration;->getBooleanProperty(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->menu_host_setup_RelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 338
    const v0, 0x7f0c00ef

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/more/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 342
    :cond_0
    const-string v0, "checkNewVersion"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jingdong/common/config/Configuration;->getBooleanProperty(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->menu_version_RelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 344
    const v0, 0x7f0c00ff

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/more/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 347
    :cond_1
    const-string v0, "otherApp"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jingdong/common/config/Configuration;->getBooleanProperty(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->menu_app_recommend_RelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 349
    const v0, 0x7f0c00e6

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/more/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 352
    :cond_2
    return-void
.end method

.method private initPlug(Landroid/content/Intent;Ljava/io/File;)Z
    .locals 8
    .parameter "intent"
    .parameter "file"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 185
    :try_start_0
    iget-object v7, p0, Lcom/jingdong/app/mall/more/MoreActivity;->fragmentName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/MoreActivity;->loadFragNameEmpty()V

    .line 188
    :cond_0
    invoke-static {p2}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;->getClassLoader(Ljava/io/File;)Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    move-result-object v7

    iput-object v7, p0, Lcom/jingdong/app/mall/more/MoreActivity;->classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    .line 190
    iget-object v7, p0, Lcom/jingdong/app/mall/more/MoreActivity;->classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    if-eqz v7, :cond_2

    move v7, v6

    :goto_0
    iput-boolean v7, p0, Lcom/jingdong/app/mall/more/MoreActivity;->loaded:Z

    .line 202
    iget-boolean v7, p0, Lcom/jingdong/app/mall/more/MoreActivity;->loaded:Z

    if-nez v7, :cond_3

    .line 203
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/MoreActivity;->loadPlugClassLoaderError()V

    .line 228
    :cond_1
    :goto_1
    return v5

    :cond_2
    move v7, v5

    .line 190
    goto :goto_0

    .line 207
    :cond_3
    iget-object v7, p0, Lcom/jingdong/app/mall/more/MoreActivity;->fragmentName:Ljava/lang/String;

    invoke-virtual {p0, p0, v7}, Lcom/jingdong/app/mall/more/MoreActivity;->getPlugIntance(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    move-result-object v4

    .line 209
    .local v4, iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;
    const/4 v2, 0x0

    .line 212
    .local v2, fragment:Landroid/support/v4/app/Fragment;
    if-eqz v4, :cond_1

    .line 213
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-interface {v4, p0, v7}, Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;->getFragment(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 219
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 220
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/MoreActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 221
    .local v1, fm:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 222
    .local v3, ft:Landroid/support/v4/app/FragmentTransaction;
    const v7, 0x102000c

    invoke-virtual {v3, v7, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 223
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    .line 224
    goto :goto_1

    .line 225
    .end local v1           #fm:Landroid/support/v4/app/FragmentManager;
    .end local v2           #fragment:Landroid/support/v4/app/Fragment;
    .end local v3           #ft:Landroid/support/v4/app/FragmentTransaction;
    .end local v4           #iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;
    :catch_0
    move-exception v0

    .line 226
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/more/MoreActivity;->loadPlugFragmentError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private queryPaperAndRecommend()V
    .locals 2

    .prologue
    .line 550
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 551
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "indexContent"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 552
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 553
    new-instance v1, Lcom/jingdong/app/mall/more/MoreActivity$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/more/MoreActivity$2;-><init>(Lcom/jingdong/app/mall/more/MoreActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 585
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/MoreActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 587
    return-void
.end method

.method private showSearchActivity(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 500
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jingdong/app/mall/more/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 501
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 502
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 504
    :cond_0
    const/16 v1, 0x110

    invoke-virtual {p0, v0, v1}, Lcom/jingdong/app/mall/more/MoreActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 505
    return-void
.end method

.method private startPlug(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, -0x1

    .line 138
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/jingdong/app/mall/more/MoreActivity;->rootView:Landroid/widget/FrameLayout;

    .line 139
    iget-object v7, p0, Lcom/jingdong/app/mall/more/MoreActivity;->rootView:Landroid/widget/FrameLayout;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v7, p0, Lcom/jingdong/app/mall/more/MoreActivity;->rootView:Landroid/widget/FrameLayout;

    const v8, 0x102000c

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setId(I)V

    .line 141
    iget-object v7, p0, Lcom/jingdong/app/mall/more/MoreActivity;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/more/MoreActivity;->setContentView(Landroid/view/View;)V

    .line 147
    invoke-static {}, Lcom/jingdong/app/mall/plug/PlugManager;->getInstance()Lcom/jingdong/app/mall/plug/PlugManager;

    move-result-object v7

    const-string v8, "com.jd.plug.more"

    invoke-virtual {v7, p0, v8}, Lcom/jingdong/app/mall/plug/PlugManager;->getPlugItem(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v5

    .line 153
    .local v5, plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/MoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 154
    .local v3, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 156
    .local v1, file:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v7, v5, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->intallPath:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v1           #file:Ljava/io/File;
    .local v2, file:Ljava/io/File;
    :try_start_1
    iget-object v7, v5, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->lunchPath:Ljava/lang/String;

    iput-object v7, p0, Lcom/jingdong/app/mall/more/MoreActivity;->fragmentName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v1, v2

    .line 162
    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    :goto_0
    invoke-direct {p0, v3, v1}, Lcom/jingdong/app/mall/more/MoreActivity;->initPlug(Landroid/content/Intent;Ljava/io/File;)Z

    move-result v4

    .line 168
    .local v4, isOk:Z
    if-nez v4, :cond_0

    .line 170
    :try_start_2
    const-string v7, "com.jd.plug.more"

    invoke-static {p0, v7}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPlugsTools;->installPlugFromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v6

    .line 171
    .local v6, plugItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    if-eqz v6, :cond_0

    .line 172
    new-instance v2, Ljava/io/File;

    iget-object v7, v6, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->intallPath:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 173
    .end local v1           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :try_start_3
    iget-object v7, v6, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->lunchPath:Ljava/lang/String;

    iput-object v7, p0, Lcom/jingdong/app/mall/more/MoreActivity;->fragmentName:Ljava/lang/String;

    .line 174
    invoke-direct {p0, v3, v2}, Lcom/jingdong/app/mall/more/MoreActivity;->initPlug(Landroid/content/Intent;Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v2

    .line 181
    .end local v2           #file:Ljava/io/File;
    .end local v6           #plugItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .restart local v1       #file:Ljava/io/File;
    :cond_0
    :goto_1
    return-void

    .line 158
    .end local v4           #isOk:Z
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/more/MoreActivity;->loadFileError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 176
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v4       #isOk:Z
    :catch_1
    move-exception v0

    .line 177
    .restart local v0       #e:Ljava/lang/Exception;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/more/MoreActivity;->loadPlugFragmentError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 176
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    .restart local v6       #plugItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    goto :goto_3

    .line 158
    .end local v1           #file:Ljava/io/File;
    .end local v4           #isOk:Z
    .end local v6           #plugItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .restart local v2       #file:Ljava/io/File;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    goto :goto_2
.end method


# virtual methods
.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 241
    invoke-static {}, Lcom/jingdong/common/plug/MergeSwitcher;->isPlugOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    goto :goto_0

    .line 244
    :cond_1
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;
    .locals 1
    .parameter "context"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    goto :goto_0
.end method

.method public getOverrideResources()Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity;->myResources:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;

    return-object v0
.end method

.method public getPlugIntance(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;
    .locals 2
    .parameter "context"
    .parameter "lunchPath"

    .prologue
    .line 281
    iget-object v1, p0, Lcom/jingdong/app/mall/more/MoreActivity;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/jingdong/app/mall/more/MoreActivity;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    .line 297
    :goto_0
    return-object v1

    .line 293
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/more/MoreActivity;->getClassLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    iput-object v1, p0, Lcom/jingdong/app/mall/more/MoreActivity;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_1
    iget-object v1, p0, Lcom/jingdong/app/mall/more/MoreActivity;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected loadFileError(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 275
    return-void
.end method

.method protected loadFragNameEmpty()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method protected loadPlugClassLoaderError()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method protected loadPlugFragmentError(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 268
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 512
    const/16 v2, 0x110

    if-ne v2, p1, :cond_0

    .line 513
    const/4 v2, -0x1

    if-ne v2, p2, :cond_0

    .line 514
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jingdong/app/mall/product/ProductListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 515
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 516
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 517
    invoke-static {p0, v1}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductListActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 522
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 521
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/app/mall/utils/MyActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 438
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 455
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jingdong/app/mall/MainFrameActivity;->menuItemClick(ILandroid/app/Activity;)V

    .line 457
    :goto_0
    return-void

    .line 441
    :sswitch_0
    invoke-static {p0}, Lcom/jingdong/common/utils/GlobalInitialization;->checkVersion(Lcom/jingdong/common/frame/IMyActivity;)V

    goto :goto_0

    .line 444
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jingdong/app/mall/WebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 445
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "url"

    const-string v2, "http://m.jd.com/download/androidInner.html?v=t"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/more/MoreActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 449
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/MoreActivity;->setHost()V

    goto :goto_0

    .line 452
    :sswitch_3
    invoke-static {p0}, Lcom/jingdong/app/mall/MyApplication;->exitDialog(Lcom/jingdong/common/frame/IMyActivity;)V

    goto :goto_0

    .line 438
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0009 -> :sswitch_3
        0x7f0c000a -> :sswitch_0
        0x7f0c00e2 -> :sswitch_1
        0x7f0c00eb -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-static {}, Lcom/jingdong/common/plug/MergeSwitcher;->isPlugOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/more/MoreActivity;->startPlug(Landroid/os/Bundle;)V

    .line 129
    :goto_0
    return-void

    .line 122
    :cond_0
    const v1, 0x7f03001f

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/more/MoreActivity;->setContentView(I)V

    .line 123
    const v1, 0x7f0c00d6

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/more/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c007e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 124
    .local v0, title:Landroid/widget/TextView;
    const-string v1, "\u66f4\u591a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/MoreActivity;->init()V

    .line 126
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/MoreActivity;->queryPaperAndRecommend()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 461
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 462
    return-void
.end method

.method public recoveryPlug()V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public setHost()V
    .locals 1

    .prologue
    .line 355
    new-instance v0, Lcom/jingdong/app/mall/more/MoreActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/more/MoreActivity$1;-><init>(Lcom/jingdong/app/mall/more/MoreActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/more/MoreActivity;->post(Ljava/lang/Runnable;)V

    .line 434
    return-void
.end method

.method public setListViewHeightBasedOnChildren()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 470
    iget-object v5, p0, Lcom/jingdong/app/mall/more/MoreActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 471
    .local v1, listAdapter:Landroid/widget/ListAdapter;
    if-nez v1, :cond_0

    .line 491
    :goto_0
    return-void

    .line 477
    :cond_0
    const/4 v4, 0x0

    .line 478
    .local v4, totalHeight:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 484
    iget-object v5, p0, Lcom/jingdong/app/mall/more/MoreActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 485
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/jingdong/app/mall/more/MoreActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v5

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v5, v4

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 486
    iget-object v5, p0, Lcom/jingdong/app/mall/more/MoreActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 479
    .end local v3           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/jingdong/app/mall/more/MoreActivity;->listView:Landroid/widget/ListView;

    invoke-interface {v1, v0, v5, v6}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 480
    .local v2, listItem:Landroid/view/View;
    invoke-virtual {v2, v7, v7}, Landroid/view/View;->measure(II)V

    .line 481
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
