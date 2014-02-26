.class public Lcom/jingdong/app/mall/search/CPProductListActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "CPProductListActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private correctionBtn:Landroid/widget/Button;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private searchCateText:Landroid/widget/TextView;

.field private wareInfoList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/jingdong/app/mall/search/CPProductListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/app/mall/search/CPProductListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    return-void
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 61
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/search/CPProductListActivity;->setContentView(I)V

    .line 62
    const v0, 0x7f0c008d

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/search/CPProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jingdong/app/mall/search/CPProductListActivity;->wareInfoList:Landroid/widget/ListView;

    .line 63
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/search/CPProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/search/CPProductListActivity;->searchCateText:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0c071c

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/search/CPProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/search/CPProductListActivity;->correctionBtn:Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lcom/jingdong/app/mall/search/CPProductListActivity;->correctionBtn:Landroid/widget/Button;

    const v1, 0x7f0703f3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 66
    iget-object v0, p0, Lcom/jingdong/app/mall/search/CPProductListActivity;->correctionBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 67
    return-void
.end method

.method private getSimpleAdapter(Ljava/util/List;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Lcom/jingdong/common/utils/MySimpleAdapter;"
        }
    .end annotation

    .prologue
    .local p1, itemList:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v3, 0x3

    .line 105
    new-instance v0, Lcom/jingdong/app/mall/search/CPProductListActivity$4;

    const v4, 0x7f0300d3

    const/4 v1, 0x5

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "imageurl"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v5, v1

    const/4 v1, 0x2

    const-string v2, "adWord"

    aput-object v2, v5, v1

    const-string v1, "jdPrice"

    aput-object v1, v5, v3

    const/4 v1, 0x4

    const-string v2, "martPrice"

    aput-object v2, v5, v1

    new-array v6, v3, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/search/CPProductListActivity$4;-><init>(Lcom/jingdong/app/mall/search/CPProductListActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0xb1t 0x0t 0xct 0x7ft
        0xb6t 0x0t 0xct 0x7ft
        0x74t 0x1t 0xct 0x7ft
    .end array-data
.end method

.method private initData()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 70
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CPProductListActivity;->itemList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/CPProductListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0703ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 71
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CPProductListActivity;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v5, :cond_0

    .line 72
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CPProductListActivity;->itemList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/CPProductListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070400

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CPProductListActivity;->searchCateText:Landroid/widget/TextView;

    const v2, 0x7f0703e6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 75
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CPProductListActivity;->correctionBtn:Landroid/widget/Button;

    new-instance v2, Lcom/jingdong/app/mall/search/CPProductListActivity$2;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/search/CPProductListActivity$2;-><init>(Lcom/jingdong/app/mall/search/CPProductListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CPProductListActivity;->wareInfoList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 86
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CPProductListActivity;->itemList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/search/CPProductListActivity;->getSimpleAdapter(Ljava/util/List;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    .line 87
    .local v0, adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CPProductListActivity;->wareInfoList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CPProductListActivity;->wareInfoList:Landroid/widget/ListView;

    new-instance v2, Lcom/jingdong/app/mall/search/CPProductListActivity$3;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/search/CPProductListActivity$3;-><init>(Lcom/jingdong/app/mall/search/CPProductListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 102
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/CPProductListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "picSearch"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/jingdong/app/mall/search/CPProductListActivity;->itemList:Ljava/util/ArrayList;

    .line 46
    iget-object v0, p0, Lcom/jingdong/app/mall/search/CPProductListActivity;->itemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/search/CPProductListActivity;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/jingdong/app/mall/search/CPProductListActivity;->findView()V

    .line 48
    invoke-direct {p0}, Lcom/jingdong/app/mall/search/CPProductListActivity;->initData()V

    .line 58
    :goto_0
    return-void

    .line 50
    :cond_0
    const v0, 0x7f070401

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 51
    new-instance v0, Lcom/jingdong/app/mall/search/CPProductListActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/search/CPProductListActivity$1;-><init>(Lcom/jingdong/app/mall/search/CPProductListActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/search/CPProductListActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
