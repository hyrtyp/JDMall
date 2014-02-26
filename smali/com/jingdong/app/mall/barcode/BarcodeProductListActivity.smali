.class public Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "BarcodeProductListActivity.java"


# instance fields
.field private barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

.field private listView:Landroid/widget/ListView;

.field private productList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;)Lcom/jingdong/common/entity/BarcodeRecord;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;->barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

    return-object v0
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 42
    const v0, 0x7f0c013a

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;->listView:Landroid/widget/ListView;

    .line 43
    return-void
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 48
    .local v7, bundle:Landroid/os/Bundle;
    const-string v1, "productList"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;->productList:Ljava/util/ArrayList;

    .line 49
    const-string v1, "barcodeRecord"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/BarcodeRecord;

    iput-object v1, p0, Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;->barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

    .line 51
    new-instance v0, Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity$1;

    .line 52
    iget-object v3, p0, Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;->productList:Ljava/util/ArrayList;

    .line 53
    const v4, 0x7f03002f

    .line 54
    new-array v5, v2, [Ljava/lang/String;

    .line 55
    new-array v6, v2, [I

    move-object v1, p0

    move-object v2, p0

    .line 51
    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity$1;-><init>(Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 79
    .local v0, adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    iget-object v1, p0, Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    iget-object v1, p0, Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity$2;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity$2;-><init>(Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 95
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v1, 0x7f03002e

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;->setContentView(I)V

    .line 32
    invoke-direct {p0}, Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;->findView()V

    .line 34
    invoke-direct {p0}, Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;->init()V

    .line 37
    const v1, 0x7f0c007e

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 38
    .local v0, titleView:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6761\u7801\u201c"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;->barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/BarcodeRecord;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u201d\u7684\u76f8\u5173\u5546\u54c1\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method
