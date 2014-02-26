.class public Lcom/jingdong/app/mall/personel/MakeNewComments;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "MakeNewComments.java"


# static fields
.field public static final FROM_LIST:I = 0x1

.field public static final FROM_ORDER:I = 0x2

.field public static final FROM_WHICH:Ljava/lang/String; = "from_which"


# instance fields
.field private commentContent:Landroid/widget/EditText;

.field private commentScore:Landroid/widget/RatingBar;

.field private commentcontentText:Landroid/widget/TextView;

.field private fromWhich:I

.field private functionId:Ljava/lang/String;

.field private mSubmit:Landroid/widget/Button;

.field private name:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private params:Lorg/json/JSONObject;

.field private product:Lcom/jingdong/common/entity/Product;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MakeNewComments;)Landroid/widget/RatingBar;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->commentScore:Landroid/widget/RatingBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/personel/MakeNewComments;)Z
    .locals 1
    .parameter

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MakeNewComments;->checkComment()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/personel/MakeNewComments;)Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->params:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/personel/MakeNewComments;)Lcom/jingdong/common/entity/Product;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->product:Lcom/jingdong/common/entity/Product;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/personel/MakeNewComments;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->commentContent:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/personel/MakeNewComments;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/personel/MakeNewComments;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->mSubmit:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/personel/MakeNewComments;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MakeNewComments;->submitComment()V

    return-void
.end method

.method private checkComment()Z
    .locals 3

    .prologue
    const v2, 0x7f070387

    const/4 v0, 0x0

    .line 199
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->isBook()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->commentContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MakeNewComments;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 236
    :goto_0
    return v0

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->commentContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->commentContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x7d0

    if-le v1, v2, :cond_5

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MakeNewComments;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070389

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 208
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->commentContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 209
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MakeNewComments;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 211
    :cond_3
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->commentContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_4

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->commentContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc8

    if-le v1, v2, :cond_5

    .line 212
    :cond_4
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MakeNewComments;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070388

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 236
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private handleClickEvent()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->mSubmit:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/personel/MakeNewComments$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MakeNewComments$2;-><init>(Lcom/jingdong/app/mall/personel/MakeNewComments;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    return-void
.end method

.method private initComponent()V
    .locals 5

    .prologue
    const/16 v3, 0x14

    const/4 v4, 0x0

    .line 78
    const v1, 0x7f0c007e

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MakeNewComments;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    .local v0, title:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MakeNewComments;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "product"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/Product;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->product:Lcom/jingdong/common/entity/Product;

    .line 81
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MakeNewComments;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MakeNewComments;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "from_which"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->fromWhich:I

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getOrderId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->orderId:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->name:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->name:Ljava/lang/String;

    .line 97
    :cond_1
    const v1, 0x7f070294

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/jingdong/app/mall/personel/MakeNewComments;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v1, 0x7f0c031e

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MakeNewComments;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->mSubmit:Landroid/widget/Button;

    .line 100
    const v1, 0x7f0c031b

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MakeNewComments;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RatingBar;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->commentScore:Landroid/widget/RatingBar;

    .line 102
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->commentScore:Landroid/widget/RatingBar;

    new-instance v2, Lcom/jingdong/app/mall/personel/MakeNewComments$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/MakeNewComments$1;-><init>(Lcom/jingdong/app/mall/personel/MakeNewComments;)V

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 112
    const v1, 0x7f0c031c

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MakeNewComments;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->commentcontentText:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f0c031d

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MakeNewComments;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->commentContent:Landroid/widget/EditText;

    .line 124
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->isBook()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->commentcontentText:Landroid/widget/TextView;

    const v2, 0x7f0702e1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 132
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->commentContent:Landroid/widget/EditText;

    const v2, 0x7f070389

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 134
    :cond_2
    return-void
.end method

.method private submitComment()V
    .locals 2

    .prologue
    .line 240
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 241
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->functionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->params:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 245
    new-instance v1, Lcom/jingdong/app/mall/personel/MakeNewComments$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MakeNewComments$3;-><init>(Lcom/jingdong/app/mall/personel/MakeNewComments;)V

    .line 243
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 366
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 367
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MakeNewComments;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 368
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f03008f

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MakeNewComments;->setContentView(I)V

    .line 71
    const-string v0, "saveComment"

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->functionId:Ljava/lang/String;

    .line 72
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewComments;->params:Lorg/json/JSONObject;

    .line 73
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MakeNewComments;->initComponent()V

    .line 74
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MakeNewComments;->handleClickEvent()V

    .line 75
    return-void
.end method
