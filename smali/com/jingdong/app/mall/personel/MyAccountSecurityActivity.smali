.class public Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "MyAccountSecurityActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyAccountSecurityActivity"


# instance fields
.field private accountSecurityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/BackExchange;",
            ">;"
        }
    .end annotation
.end field

.field private adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

.field private containterView:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->accountSecurityList:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->accountSecurityList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->createListView()V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    return-object v0
.end method

.method private createListView()V
    .locals 2

    .prologue
    .line 208
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->accountSecurityList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->accountSecurityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 214
    new-instance v0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$4;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$4;-><init>(Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;)V

    .line 232
    .local v0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/jingdong/common/entity/BackExchange;>;"
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->accountSecurityList:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 234
    new-instance v1, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$5;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$5;-><init>(Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->post(Ljava/lang/Runnable;)V

    .line 241
    .end local v0           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/jingdong/common/entity/BackExchange;>;"
    :cond_0
    return-void
.end method

.method private queryAccountSecurity()V
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 168
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "jdHomeShowItem"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 169
    new-instance v1, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$3;-><init>(Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 202
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 203
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 205
    return-void
.end method

.method private setAdapter()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 78
    new-instance v0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$1;

    .line 79
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->accountSecurityList:Ljava/util/ArrayList;

    .line 80
    const v4, 0x7f030096

    .line 81
    new-array v5, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "icon"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v5, v1

    .line 82
    new-array v6, v6, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$1;-><init>(Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 78
    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 112
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    return-void

    .line 82
    :array_0
    .array-data 0x4
        0x4et 0x3t 0xct 0x7ft
        0x50t 0x3t 0xct 0x7ft
    .end array-data
.end method

.method private setEvent()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$2;-><init>(Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 156
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f030097

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->setContentView(I)V

    .line 59
    const v0, 0x7f0c0353

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->mListView:Landroid/widget/ListView;

    .line 61
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->titleView:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->titleView:Landroid/widget/TextView;

    const v1, 0x7f07028b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->setAdapter()V

    .line 64
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->setEvent()V

    .line 65
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->queryAccountSecurity()V

    .line 67
    return-void
.end method
