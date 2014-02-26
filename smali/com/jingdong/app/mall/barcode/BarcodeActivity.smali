.class public Lcom/jingdong/app/mall/barcode/BarcodeActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "BarcodeActivity.java"


# static fields
.field private static final INPUT:I = 0x1

.field public static final SCAN:I = 0x4d3

.field private static final TAG:Ljava/lang/String; = "BarcodeActivity"


# instance fields
.field private clearButton:Landroid/widget/Button;

.field private dbHelper:Lcom/jingdong/common/utils/DBHelperUtil;

.field private historyAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

.field private historyHeader:Landroid/widget/TextView;

.field private historyHeaderNderline:Landroid/view/View;

.field private historyListView:Landroid/widget/ListView;

.field private final historyRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/BarcodeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private inputButton:Landroid/widget/Button;

.field private noBarcodeModels:[Ljava/lang/String;

.field private scanButton:Landroid/widget/Button;

.field private welcomeView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyRecordList:Ljava/util/ArrayList;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/barcode/BarcodeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->clear()V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/barcode/BarcodeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->checkEmptyForCutUI()V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/barcode/BarcodeActivity;Lcom/jingdong/common/entity/BarcodeRecord;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 462
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->queryServer(Lcom/jingdong/common/entity/BarcodeRecord;)V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/barcode/BarcodeActivity;)Lcom/jingdong/common/utils/DBHelperUtil;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->dbHelper:Lcom/jingdong/common/utils/DBHelperUtil;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/barcode/BarcodeActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyRecordList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/barcode/BarcodeActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/barcode/BarcodeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->noScanAlertDialog()V

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/barcode/BarcodeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->input()V

    return-void
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/barcode/BarcodeActivity;Lcom/jingdong/common/entity/BarcodeRecord;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 609
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->login(Lcom/jingdong/common/entity/BarcodeRecord;)V

    return-void
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/barcode/BarcodeActivity;Lcom/jingdong/common/entity/BarcodeRecord;Lcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 657
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->saveBarcodeProduct(Lcom/jingdong/common/entity/BarcodeRecord;Lcom/jingdong/common/entity/Product;)V

    return-void
.end method

.method private checkEmptyForCutUI()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyRecordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->clearButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->welcomeView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyHeaderNderline:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 189
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->clearButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->welcomeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyHeaderNderline:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->dbHelper:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllBarcodeRecord()V

    .line 196
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyRecordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 197
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 198
    return-void
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 401
    const v0, 0x7f0c071c

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->clearButton:Landroid/widget/Button;

    .line 403
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyListView:Landroid/widget/ListView;

    .line 404
    const v0, 0x7f0c012f

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->welcomeView:Landroid/view/View;

    .line 406
    const v0, 0x7f0c0131

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyHeader:Landroid/widget/TextView;

    .line 407
    const v0, 0x7f0c0132

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyHeaderNderline:Landroid/view/View;

    .line 408
    const v0, 0x7f0c0133

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->inputButton:Landroid/widget/Button;

    .line 409
    const v0, 0x7f0c0134

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->scanButton:Landroid/widget/Button;

    .line 410
    return-void
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v6, 0x2

    .line 247
    const-string v0, "noBarcodeModels"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->getStringFromPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 248
    .local v8, noBarcodeModelsStr:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 249
    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->noBarcodeModels:[Ljava/lang/String;

    .line 252
    :cond_0
    new-instance v0, Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->dbHelper:Lcom/jingdong/common/utils/DBHelperUtil;

    .line 254
    new-instance v0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$2;

    .line 255
    iget-object v3, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyRecordList:Ljava/util/ArrayList;

    .line 256
    const v4, 0x7f03002c

    .line 257
    new-array v5, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "content"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "productName"

    aput-object v2, v5, v1

    .line 258
    new-array v6, v6, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$2;-><init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 254
    iput-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 270
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 273
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyListView:Landroid/widget/ListView;

    new-instance v1, Lcom/jingdong/app/mall/barcode/BarcodeActivity$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$3;-><init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 282
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyListView:Landroid/widget/ListView;

    new-instance v1, Lcom/jingdong/app/mall/barcode/BarcodeActivity$4;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$4;-><init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 312
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->dbHelper:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/DBHelperUtil;->getBarcodeRecordList()Ljava/util/ArrayList;

    move-result-object v7

    .line 317
    .local v7, barcodeRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/BarcodeRecord;>;"
    invoke-direct {p0, v7}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->recordHistory(Ljava/util/ArrayList;)V

    .line 320
    invoke-direct {p0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->isNoScan()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->scanButton:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/barcode/BarcodeActivity$5;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$5;-><init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->inputButton:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/barcode/BarcodeActivity$7;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$7;-><init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->scanButton:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/barcode/BarcodeActivity$6;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$6;-><init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 258
    :array_0
    .array-data 0x4
        0x35t 0x1t 0xct 0x7ft
        0x36t 0x1t 0xct 0x7ft
    .end array-data
.end method

.method private input()V
    .locals 2

    .prologue
    .line 230
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 232
    return-void
.end method

.method private isNoScan()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 367
    const-string v3, "barCodeScan"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jingdong/common/config/Configuration;->getBooleanProperty(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 385
    :cond_0
    :goto_0
    return v2

    .line 370
    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 371
    .local v1, model:Ljava/lang/String;
    iget-object v3, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->noBarcodeModels:[Ljava/lang/String;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 372
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->noBarcodeModels:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_3

    .line 385
    .end local v0           #i:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 379
    .restart local v0       #i:I
    :cond_3
    iget-object v3, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->noBarcodeModels:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private login(Lcom/jingdong/common/entity/BarcodeRecord;)V
    .locals 1
    .parameter "barcodeRecord"

    .prologue
    .line 610
    new-instance v0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$10;-><init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity;Lcom/jingdong/common/entity/BarcodeRecord;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->post(Ljava/lang/Runnable;)V

    .line 631
    return-void
.end method

.method private noScanAlertDialog()V
    .locals 3

    .prologue
    .line 351
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 352
    .local v0, alertDialog:Landroid/app/AlertDialog;
    const v1, 0x7f0701bf

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 355
    const v1, 0x7f07014d

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/jingdong/app/mall/barcode/BarcodeActivity$8;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$8;-><init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 362
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 364
    return-void
.end method

.method private processBarcodeInputed(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 156
    new-instance v0, Lcom/jingdong/common/entity/BarcodeRecord;

    invoke-direct {v0}, Lcom/jingdong/common/entity/BarcodeRecord;-><init>()V

    .line 157
    .local v0, barcodeRecord2:Lcom/jingdong/common/entity/BarcodeRecord;
    const-string v1, "SCAN_RESULT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/BarcodeRecord;->setContent(Ljava/lang/String;)V

    .line 158
    const-string v1, "SCAN_RESULT_FORMAT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/BarcodeRecord;->setFormat(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->recordHistory(Lcom/jingdong/common/entity/BarcodeRecord;)V

    .line 164
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->queryServer(Lcom/jingdong/common/entity/BarcodeRecord;)V

    .line 165
    return-void
.end method

.method private processBarcodeScanned(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 143
    new-instance v0, Lcom/jingdong/common/entity/BarcodeRecord;

    invoke-direct {v0}, Lcom/jingdong/common/entity/BarcodeRecord;-><init>()V

    .line 144
    .local v0, barcodeRecord1:Lcom/jingdong/common/entity/BarcodeRecord;
    const-string v1, "SCAN_RESULT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/BarcodeRecord;->setContent(Ljava/lang/String;)V

    .line 145
    const-string v1, "SCAN_RESULT_FORMAT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/BarcodeRecord;->setFormat(Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->recordHistory(Lcom/jingdong/common/entity/BarcodeRecord;)V

    .line 151
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->queryServer(Lcom/jingdong/common/entity/BarcodeRecord;)V

    .line 152
    return-void
.end method

.method private queryServer(Lcom/jingdong/common/entity/BarcodeRecord;)V
    .locals 3
    .parameter "barcodeRecord"

    .prologue
    .line 463
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 464
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "wareIdByBarCodeList"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 465
    const-string v1, "barcode"

    invoke-virtual {p1}, Lcom/jingdong/common/entity/BarcodeRecord;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 466
    new-instance v1, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;-><init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity;Lcom/jingdong/common/entity/BarcodeRecord;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 605
    invoke-virtual {p0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 607
    return-void
.end method

.method private recordHistory(Lcom/jingdong/common/entity/BarcodeRecord;)V
    .locals 2
    .parameter "barcodeRecord"

    .prologue
    .line 647
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyRecordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyHeader:Landroid/widget/TextView;

    const v1, 0x7f0701c5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->dbHelper:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/DBHelperUtil;->insertOrUpdateBarcodeRecord(Lcom/jingdong/common/entity/BarcodeRecord;)V

    .line 652
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyRecordList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 653
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 655
    return-void
.end method

.method private recordHistory(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/BarcodeRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 693
    .local p1, barcodeRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/BarcodeRecord;>;"
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyRecordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyHeader:Landroid/widget/TextView;

    const v1, 0x7f0701c5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyRecordList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 698
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 700
    return-void
.end method

.method private saveBarcodeProduct(Lcom/jingdong/common/entity/BarcodeRecord;Lcom/jingdong/common/entity/Product;)V
    .locals 2
    .parameter "barcodeRecord"
    .parameter "product"

    .prologue
    .line 658
    if-nez p1, :cond_0

    .line 678
    :goto_0
    return-void

    .line 661
    :cond_0
    if-eqz p2, :cond_1

    .line 663
    invoke-virtual {p1, p2}, Lcom/jingdong/common/entity/BarcodeRecord;->setProduct(Lcom/jingdong/common/entity/Product;)V

    .line 667
    :goto_1
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->dbHelper:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/DBHelperUtil;->insertOrUpdateBarcodeRecord(Lcom/jingdong/common/entity/BarcodeRecord;)V

    .line 669
    new-instance v0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$11;

    invoke-direct {v0, p0, p2}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$11;-><init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity;Lcom/jingdong/common/entity/Product;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 665
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jingdong/common/entity/BarcodeRecord;->setProductName(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private scan()V
    .locals 3

    .prologue
    .line 212
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.jingdong.lib.zxing.client.android.SCAN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v1, "SCAN_FORMATS"

    const-string v2, "EAN_13,EAN_8,QR_CODE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const/16 v1, 0x4d3

    invoke-virtual {p0, v0, v1}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 216
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 415
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 448
    :goto_0
    return-void

    .line 419
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 435
    :sswitch_0
    new-instance v1, Lcom/jingdong/common/entity/BarcodeRecord;

    invoke-direct {v1}, Lcom/jingdong/common/entity/BarcodeRecord;-><init>()V

    .line 436
    .local v1, barcodeRecord2:Lcom/jingdong/common/entity/BarcodeRecord;
    const-string v2, "SCAN_RESULT"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/BarcodeRecord;->setContent(Ljava/lang/String;)V

    .line 437
    const-string v2, "SCAN_RESULT_FORMAT"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/BarcodeRecord;->setFormat(Ljava/lang/String;)V

    .line 440
    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->recordHistory(Lcom/jingdong/common/entity/BarcodeRecord;)V

    .line 443
    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->queryServer(Lcom/jingdong/common/entity/BarcodeRecord;)V

    goto :goto_0

    .line 422
    .end local v1           #barcodeRecord2:Lcom/jingdong/common/entity/BarcodeRecord;
    :sswitch_1
    new-instance v0, Lcom/jingdong/common/entity/BarcodeRecord;

    invoke-direct {v0}, Lcom/jingdong/common/entity/BarcodeRecord;-><init>()V

    .line 423
    .local v0, barcodeRecord1:Lcom/jingdong/common/entity/BarcodeRecord;
    const-string v2, "SCAN_RESULT"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jingdong/common/entity/BarcodeRecord;->setContent(Ljava/lang/String;)V

    .line 424
    const-string v2, "SCAN_RESULT_FORMAT"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jingdong/common/entity/BarcodeRecord;->setFormat(Ljava/lang/String;)V

    .line 427
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->recordHistory(Lcom/jingdong/common/entity/BarcodeRecord;)V

    .line 430
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->queryServer(Lcom/jingdong/common/entity/BarcodeRecord;)V

    goto :goto_0

    .line 419
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4d3 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v2, 0x7f03002b

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->setContentView(I)V

    .line 77
    invoke-direct {p0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->findView()V

    .line 79
    invoke-direct {p0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->init()V

    .line 82
    const v2, 0x7f0c007e

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 83
    .local v1, titleView:Landroid/widget/TextView;
    const v2, 0x7f0701bb

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 85
    iget-object v2, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->clearButton:Landroid/widget/Button;

    const v3, 0x7f0701bc

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 86
    iget-object v2, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->clearButton:Landroid/widget/Button;

    new-instance v3, Lcom/jingdong/app/mall/barcode/BarcodeActivity$1;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$1;-><init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {p0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.jingdong.lib.zxing.client.android.SCAN"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 109
    .local v0, act:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->processBarcodeScanned(Landroid/content/Intent;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->processBarcodeInputed(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 129
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 130
    .local v1, mBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 131
    const-string v2, "com.jingdong.lib.zxing.client.android.SCAN"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 132
    .local v0, act:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 133
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->processBarcodeScanned(Landroid/content/Intent;)V

    .line 139
    .end local v0           #act:I
    :cond_0
    :goto_0
    return-void

    .line 134
    .restart local v0       #act:I
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 135
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->processBarcodeInputed(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 170
    return-void
.end method

.method public toTraget(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 704
    invoke-static {p2}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->createCommand(Landroid/content/Intent;)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;

    move-result-object v0

    .line 705
    .local v0, command:Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;
    invoke-virtual {v0}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->getModuleId()I

    move-result v3

    if-nez v3, :cond_0

    .line 727
    :goto_0
    return-void

    .line 710
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/jingdong/app/mall/MainFrameActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 711
    .local v2, mianIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MyApplication;->getMainFrameActivity()Lcom/jingdong/app/mall/MainFrameActivity;

    move-result-object v1

    .line 712
    .local v1, mainFrameActivity:Lcom/jingdong/app/mall/MainFrameActivity;
    if-nez v1, :cond_1

    .line 716
    invoke-virtual {v0}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 725
    :goto_1
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 726
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 721
    :cond_1
    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/MainFrameActivity;->toTargetActivity(Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;)V

    goto :goto_1
.end method
