.class public Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "MakeNewBuyAsk.java"


# instance fields
.field private TYPE_INVOICE_REPAIRE:Ljava/lang/String;

.field private TYPE_PAY:Ljava/lang/String;

.field private TYPE_PRODUCT:Ljava/lang/String;

.field private TYPE_PROMOTION:Ljava/lang/String;

.field private TYPE_STOCK_SEND:Ljava/lang/String;

.field private askContent:Landroid/widget/EditText;

.field private chooseButton:Landroid/widget/ImageButton;

.field private chooseDialog:Landroid/app/AlertDialog;

.field private choosedType:Landroid/widget/TextView;

.field private content:Ljava/lang/String;

.field private functionId:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private params:Lorg/json/JSONObject;

.field private position:I

.field private submitButton:Landroid/widget/Button;

.field private title:Landroid/widget/TextView;

.field private type:Ljava/lang/String;

.field private wareId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 41
    const-string v0, "2"

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->TYPE_PRODUCT:Ljava/lang/String;

    .line 42
    const-string v0, "3"

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->TYPE_STOCK_SEND:Ljava/lang/String;

    .line 43
    const-string v0, "4"

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->TYPE_PAY:Ljava/lang/String;

    .line 44
    const-string v0, "5"

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->TYPE_INVOICE_REPAIRE:Ljava/lang/String;

    .line 45
    const-string v0, "6"

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->TYPE_PROMOTION:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->chooseButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->position:I

    return v0
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->TYPE_PROMOTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->chooseDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Z
    .locals 1
    .parameter

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->check()Z

    move-result v0

    return v0
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->submitButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->params:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->wareId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->content:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->saveConsultation()V

    return-void
.end method

.method static synthetic access$19(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->position:I

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->choosedType:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->TYPE_PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->type:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->chooseDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->TYPE_STOCK_SEND:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->TYPE_PAY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->TYPE_INVOICE_REPAIRE:Ljava/lang/String;

    return-object v0
.end method

.method private check()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 216
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->askContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->content:Ljava/lang/String;

    .line 217
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->content:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->content:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    .line 218
    :cond_0
    const v1, 0x7f07038c

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 229
    :goto_0
    return v0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->choosedType:Landroid/widget/TextView;

    const v1, 0x7f070373

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 227
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->TYPE_PRODUCT:Ljava/lang/String;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->type:Ljava/lang/String;

    .line 229
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleSubmit()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->submitButton:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$3;-><init>(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    return-void
.end method

.method private handleType()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->choosedType:Landroid/widget/TextView;

    new-instance v1, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$1;-><init>(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->chooseButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;-><init>(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const/16 v1, 0x14

    const/4 v4, 0x0

    .line 91
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->title:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->name:Ljava/lang/String;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->title:Landroid/widget/TextView;

    const v1, 0x7f070295

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v0, 0x7f0c0315

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->choosedType:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f0c0316

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->chooseButton:Landroid/widget/ImageButton;

    .line 102
    iput v4, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->position:I

    .line 104
    const v0, 0x7f0c0318

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->askContent:Landroid/widget/EditText;

    .line 107
    const v0, 0x7f0c0319

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->submitButton:Landroid/widget/Button;

    .line 108
    return-void
.end method

.method private saveConsultation()V
    .locals 2

    .prologue
    .line 236
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 237
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->functionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->params:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 241
    new-instance v1, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;-><init>(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)V

    .line 239
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 362
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 363
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 364
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v1, 0x7f03008e

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->setContentView(I)V

    .line 67
    const-string v1, "saveConsultation"

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->functionId:Ljava/lang/String;

    .line 70
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->params:Lorg/json/JSONObject;

    .line 73
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 74
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->wareId:Ljava/lang/String;

    .line 75
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->name:Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->initView()V

    .line 83
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->handleType()V

    .line 86
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->handleSubmit()V

    .line 87
    return-void
.end method
