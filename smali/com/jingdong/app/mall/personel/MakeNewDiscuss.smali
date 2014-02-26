.class public Lcom/jingdong/app/mall/personel/MakeNewDiscuss;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "MakeNewDiscuss.java"


# static fields
.field private static final SCAN_PICTURE:I = 0x1

.field private static final TAKE_PICTURE:I


# instance fields
.field private final IMAGE_MAX_LENGTH:J

.field alertDialog:Landroid/app/AlertDialog;

.field cameraButton:Landroid/widget/Button;

.field discussTaste:Landroid/widget/EditText;

.field discussTitle:Landroid/widget/EditText;

.field private fromWhich:I

.field private imageAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

.field private imageGallery:Landroid/widget/Gallery;

.field private imageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/DiscussImage;",
            ">;"
        }
    .end annotation
.end field

.field mWordCount:Landroid/widget/TextView;

.field private name:Ljava/lang/String;

.field private product:Lcom/jingdong/common/entity/Product;

.field resultAlertDialog:Landroid/app/AlertDialog;

.field submitButton:Landroid/widget/Button;

.field title:Landroid/widget/TextView;

.field private uri:Landroid/net/Uri;

.field xh_pDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->imageList:Ljava/util/ArrayList;

    .line 70
    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->imageAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 74
    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->alertDialog:Landroid/app/AlertDialog;

    .line 76
    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->resultAlertDialog:Landroid/app/AlertDialog;

    .line 103
    const-wide/32 v0, 0x32000

    iput-wide v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->IMAGE_MAX_LENGTH:J

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)Z
    .locals 1
    .parameter

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->checkSize()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->getFromCamera()V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->getFromLocal()V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)Z
    .locals 1
    .parameter

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->checkInput()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)V
    .locals 0
    .parameter

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->submit()V

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->imageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->imageAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)Landroid/widget/Gallery;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->imageGallery:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)Lcom/jingdong/common/entity/Product;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->product:Lcom/jingdong/common/entity/Product;

    return-object v0
.end method

.method private checkInput()Z
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 292
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->imageAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/MySimpleAdapter;->getCount()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 293
    const v2, 0x7f07037f

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 295
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->submitButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 313
    :goto_0
    return v0

    .line 297
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->discussTitle:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_1

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->discussTitle:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_2

    .line 301
    :cond_1
    const v2, 0x7f070386

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 303
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->submitButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0

    .line 305
    :cond_2
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->discussTaste:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_3

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->discussTaste:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc8

    if-le v2, v3, :cond_4

    .line 306
    :cond_3
    const v2, 0x7f07038d

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 308
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->submitButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0

    .line 312
    :cond_4
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->submitButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    move v0, v1

    .line 313
    goto/16 :goto_0
.end method

.method private checkSize()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 149
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 150
    const v1, 0x7f070393

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 151
    const/4 v0, 0x0

    .line 153
    :cond_0
    return v0
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 117
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->title:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f0c0320

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->discussTitle:Landroid/widget/EditText;

    .line 119
    const v0, 0x7f0c0322

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->discussTaste:Landroid/widget/EditText;

    .line 120
    const v0, 0x7f0c0323

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->cameraButton:Landroid/widget/Button;

    .line 121
    const v0, 0x7f0c0324

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->submitButton:Landroid/widget/Button;

    .line 122
    const v0, 0x7f0c0325

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->imageGallery:Landroid/widget/Gallery;

    .line 123
    return-void
.end method

.method private getFromCamera()V
    .locals 7

    .prologue
    .line 157
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->checkSDcard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v1, mIntent:Landroid/content/Intent;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 162
    .local v2, tmpFile:Ljava/io/File;
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->uri:Landroid/net/Uri;

    .line 163
    const-string v3, "output"

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 165
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->startActivityForResultNoException(Landroid/content/Intent;I)V

    .line 178
    .end local v1           #mIntent:Landroid/content/Intent;
    .end local v2           #tmpFile:Ljava/io/File;
    :goto_0
    return-void

    .line 167
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 168
    .local v0, hintDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f07037d

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 169
    const v3, 0x7f07037e

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 170
    const v3, 0x7f07037c

    new-instance v4, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$1;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$1;-><init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private getFromLocal()V
    .locals 2

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->startActivityForResultNoException(Landroid/content/Intent;I)V

    .line 185
    return-void
.end method

.method private handleClickEvent()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->cameraButton:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;-><init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->imageGallery:Landroid/widget/Gallery;

    new-instance v1, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$3;-><init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 257
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->submitButton:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$4;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$4;-><init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/16 v2, 0x14

    const/4 v4, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "product"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/Product;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->product:Lcom/jingdong/common/entity/Product;

    .line 127
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "from_which"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->fromWhich:I

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->name:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->name:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->name:Ljava/lang/String;

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->title:Landroid/widget/TextView;

    const v1, 0x7f070296

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    return-void
.end method

.method private initGallery()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 377
    new-instance v0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;

    .line 379
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->imageList:Ljava/util/ArrayList;

    .line 380
    const v4, 0x7f03004d

    .line 381
    new-array v5, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "picture"

    aput-object v2, v5, v1

    .line 382
    new-array v6, v6, [I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;-><init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 377
    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->imageAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 431
    new-instance v0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$7;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$7;-><init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->post(Ljava/lang/Runnable;)V

    .line 438
    return-void
.end method

.method private setWordNumberText(I)V
    .locals 3
    .parameter "nNum"

    .prologue
    .line 655
    if-gtz p1, :cond_0

    .line 660
    :goto_0
    return-void

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->mWordCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lcom/jingdong/common/constant/Constants;->MAX_DISCUSS_TEXT_LENGTH:I

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/jingdong/common/constant/Constants;->MAX_DISCUSS_TEXT_LENGTH:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private submit()V
    .locals 32

    .prologue
    .line 441
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->hideSoftInput()V

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->submitButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->discussTitle:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 446
    .local v30, title:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->discussTaste:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 448
    .local v12, content:Ljava/lang/String;
    new-instance v21, Lorg/json/JSONArray;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONArray;-><init>()V

    .line 450
    .local v21, jsonArray:Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/jingdong/common/entity/DiscussImage;>;"
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 535
    new-instance v19, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct/range {v19 .. v19}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 536
    .local v19, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v3, "wareId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 537
    const-string v3, "title"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 538
    const-string v3, "content"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 539
    const-string v3, "imgArray"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 540
    const-string v3, "orderId"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/Product;->getOrderId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 541
    const-string v3, "type"

    const-string v4, "2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 542
    const-string v3, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 543
    const-string v3, "saveCommentOrder"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 544
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPost(Z)V

    .line 545
    new-instance v3, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;-><init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 650
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 651
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 652
    .end local v19           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :goto_1
    return-void

    .line 451
    :cond_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jingdong/common/entity/DiscussImage;

    .line 454
    .local v14, discussImage:Lcom/jingdong/common/entity/DiscussImage;
    :try_start_0
    new-instance v16, Ljava/io/File;

    invoke-virtual {v14}, Lcom/jingdong/common/entity/DiscussImage;->getPath()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 456
    .local v16, file:Ljava/io/File;
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v14}, Lcom/jingdong/common/entity/DiscussImage;->getPath()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v17

    check-cast v17, Ljava/io/FileInputStream;

    .line 457
    .local v17, fileInput:Ljava/io/FileInputStream;
    new-instance v22, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 458
    .local v22, opts:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x32000

    div-long/2addr v3, v5

    long-to-int v3, v3

    move-object/from16 v0, v22

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 459
    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 460
    const/4 v3, 0x2

    move-object/from16 v0, v22

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 462
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 463
    .local v2, temp:Landroid/graphics/Bitmap;
    invoke-virtual {v14}, Lcom/jingdong/common/entity/DiscussImage;->getRotate()I

    move-result v24

    .line 464
    .local v24, rotate:I
    if-eqz v24, :cond_2

    .line 465
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 466
    .local v7, matrix:Landroid/graphics/Matrix;
    move/from16 v0, v24

    int-to-float v3, v0

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 467
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 469
    .end local v7           #matrix:Landroid/graphics/Matrix;
    :cond_2
    if-eqz v17, :cond_3

    .line 470
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 475
    :cond_3
    const/4 v10, 0x0

    .line 476
    .local v10, bm:Landroid/graphics/Bitmap;
    const-string v3, "discussUploadImageWidth"

    invoke-static {v3}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v29

    .line 477
    .local v29, targetWidth:F
    const-string v3, "discussUploadImageHeight"

    invoke-static {v3}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v28

    .line 478
    .local v28, targetHeight:F
    const/4 v3, 0x0

    cmpg-float v3, v3, v29

    if-gez v3, :cond_5

    const/4 v3, 0x0

    cmpg-float v3, v3, v28

    if-gez v3, :cond_5

    .line 479
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    .line 480
    .local v27, sourceWidth:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    .line 488
    .local v26, sourceHeight:I
    move/from16 v0, v27

    move/from16 v1, v26

    if-le v0, v1, :cond_4

    .line 489
    move/from16 v0, v27

    int-to-float v3, v0

    div-float v25, v29, v3

    .line 493
    .local v25, scale:F
    :goto_2
    move/from16 v0, v27

    int-to-float v3, v0

    mul-float v3, v3, v25

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v31

    .line 494
    .local v31, width:I
    move/from16 v0, v26

    int-to-float v3, v0

    mul-float v3, v3, v25

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v18

    .line 502
    .local v18, height:I
    const/4 v3, 0x0

    move/from16 v0, v31

    move/from16 v1, v18

    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 503
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 510
    .end local v18           #height:I
    .end local v25           #scale:F
    .end local v26           #sourceHeight:I
    .end local v27           #sourceWidth:I
    .end local v31           #width:I
    :goto_3
    const-string v3, "discussUploadImageQuality"

    invoke-static {v3}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 511
    .local v23, quality:I
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 512
    .local v9, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, v23

    invoke-virtual {v10, v3, v0, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 513
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 514
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 520
    .local v13, data:[B
    invoke-static {v13}, Lcom/jingdong/common/secure/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v11

    .line 521
    .local v11, code:Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 522
    .end local v2           #temp:Landroid/graphics/Bitmap;
    .end local v9           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v10           #bm:Landroid/graphics/Bitmap;
    .end local v11           #code:Ljava/lang/String;
    .end local v13           #data:[B
    .end local v16           #file:Ljava/io/File;
    .end local v17           #fileInput:Ljava/io/FileInputStream;
    .end local v22           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v23           #quality:I
    .end local v24           #rotate:I
    .end local v28           #targetHeight:F
    .end local v29           #targetWidth:F
    :catch_0
    move-exception v15

    .line 526
    .local v15, e:Ljava/lang/Throwable;
    invoke-static {}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getLruBitmapCache()Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cleanMost()V

    .line 527
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 529
    const v3, 0x7f07038f

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 530
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->submitButton:Landroid/widget/Button;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_1

    .line 491
    .end local v15           #e:Ljava/lang/Throwable;
    .restart local v2       #temp:Landroid/graphics/Bitmap;
    .restart local v10       #bm:Landroid/graphics/Bitmap;
    .restart local v16       #file:Ljava/io/File;
    .restart local v17       #fileInput:Ljava/io/FileInputStream;
    .restart local v22       #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v24       #rotate:I
    .restart local v26       #sourceHeight:I
    .restart local v27       #sourceWidth:I
    .restart local v28       #targetHeight:F
    .restart local v29       #targetWidth:F
    :cond_4
    move/from16 v0, v26

    int-to-float v3, v0

    div-float v25, v28, v3

    .restart local v25       #scale:F
    goto :goto_2

    .line 505
    .end local v25           #scale:F
    .end local v26           #sourceHeight:I
    .end local v27           #sourceWidth:I
    :cond_5
    move-object v10, v2

    goto :goto_3
.end method


# virtual methods
.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 319
    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    const/4 v0, 0x0

    .line 325
    .local v0, discussImage:Lcom/jingdong/common/entity/DiscussImage;
    packed-switch p1, :pswitch_data_0

    .line 346
    :goto_1
    if-eqz v0, :cond_0

    .line 351
    move-object v1, v0

    .line 352
    .local v1, discussImage_:Lcom/jingdong/common/entity/DiscussImage;
    new-instance v2, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$5;

    invoke-direct {v2, p0, v1}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$5;-><init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;Lcom/jingdong/common/entity/DiscussImage;)V

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 329
    .end local v1           #discussImage_:Lcom/jingdong/common/entity/DiscussImage;
    :pswitch_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 330
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->uri:Landroid/net/Uri;

    .line 332
    :cond_2
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->uri:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/jingdong/common/entity/DiscussImage;->createDiscussImage(Landroid/content/Context;Landroid/net/Uri;)Lcom/jingdong/common/entity/DiscussImage;

    move-result-object v0

    .line 335
    goto :goto_1

    .line 339
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->uri:Landroid/net/Uri;

    .line 340
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->uri:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/jingdong/common/entity/DiscussImage;->createDiscussImage(Landroid/content/Context;Landroid/net/Uri;)Lcom/jingdong/common/entity/DiscussImage;

    move-result-object v0

    goto :goto_1

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const v0, 0x7f030090

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->setContentView(I)V

    .line 110
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->findView()V

    .line 111
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->init()V

    .line 112
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->initGallery()V

    .line 113
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->handleClickEvent()V

    .line 114
    return-void
.end method
