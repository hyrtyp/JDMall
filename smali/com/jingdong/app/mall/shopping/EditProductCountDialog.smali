.class public Lcom/jingdong/app/mall/shopping/EditProductCountDialog;
.super Landroid/app/Dialog;
.source "EditProductCountDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;
    }
.end annotation


# static fields
.field private static final NUM_DECREASE:I = 0x0

.field private static final NUM_INCREASE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EditProductCountDialog"


# instance fields
.field private final TOTAL_NUM:I

.field private cancleBtn:Landroid/widget/Button;

.field private confirmBtn:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private descreaseView:Landroid/widget/ImageView;

.field hd:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private increaseView:Landroid/widget/ImageView;

.field private listener:Lcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;

.field private newWatcher:Landroid/text/TextWatcher;

.field private num:I

.field private numEdit:Landroid/widget/EditText;

.field private parentNum:I

.field private price:D

.field private priceNumView:Landroid/widget/TextView;

.field private priceView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;IDLcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;)V
    .locals 1
    .parameter "context"
    .parameter "num"
    .parameter "price"
    .parameter "listener"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 39
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->TOTAL_NUM:I

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->parentNum:I

    .line 106
    new-instance v0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog$1;-><init>(Lcom/jingdong/app/mall/shopping/EditProductCountDialog;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->newWatcher:Landroid/text/TextWatcher;

    .line 337
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->hd:Landroid/os/Handler;

    .line 58
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->context:Landroid/content/Context;

    .line 59
    iput p2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->num:I

    .line 60
    iput-wide p3, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->price:D

    .line 61
    iput-object p5, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->listener:Lcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/EditProductCountDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->numEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/shopping/EditProductCountDialog;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->isYBMoreParent(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/shopping/EditProductCountDialog;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/shopping/EditProductCountDialog;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->setEditTextByNum(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/shopping/EditProductCountDialog;)I
    .locals 1
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->num:I

    return v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/shopping/EditProductCountDialog;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->descreaseView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private isYBMoreParent(I)Z
    .locals 2
    .parameter "num"

    .prologue
    .line 261
    iget v0, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->parentNum:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 262
    iget v0, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->parentNum:I

    if-le p1, v0, :cond_0

    .line 263
    iget v0, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->parentNum:I

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->setEditTextByNum(I)V

    .line 264
    const/4 v0, 0x1

    .line 267
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshEditNum(I)V
    .locals 4
    .parameter "flag"

    .prologue
    .line 223
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->numEdit:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 258
    :goto_0
    return-void

    .line 227
    :cond_0
    const/4 v0, 0x0

    .line 228
    .local v0, num:I
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->numEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 230
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->numEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 232
    packed-switch p1, :pswitch_data_0

    .line 248
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->isYBMoreParent(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->context:Landroid/content/Context;

    const v3, 0x7f0704b9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 234
    :pswitch_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 235
    add-int/lit8 v0, v0, -0x1

    .line 237
    goto :goto_1

    .line 239
    :pswitch_1
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_1

    .line 240
    add-int/lit8 v0, v0, 0x1

    .line 242
    goto :goto_1

    .line 253
    :cond_2
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->setEditTextByNum(I)V

    goto :goto_0

    .line 255
    :cond_3
    const/4 v0, 0x1

    .line 256
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->setEditTextByNum(I)V

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setEditTextByNum(I)V
    .locals 3
    .parameter "num"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 278
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->numEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->numEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    if-gt p1, v1, :cond_4

    .line 284
    const/4 p1, 0x1

    .line 285
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->descreaseView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 292
    :goto_1
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_2

    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->isYBMoreParent(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 293
    :cond_2
    const/16 p1, 0x3e8

    .line 294
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->increaseView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 300
    :goto_2
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->numEdit:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->priceNumView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 303
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->priceNumView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "x "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->numEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->numEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    goto :goto_0

    .line 287
    :cond_4
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->descreaseView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 297
    :cond_5
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->increaseView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_2
.end method

.method private showInputMethod()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->hd:Landroid/os/Handler;

    new-instance v1, Lcom/jingdong/app/mall/shopping/EditProductCountDialog$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog$2;-><init>(Lcom/jingdong/app/mall/shopping/EditProductCountDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 335
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->numEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->numEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 211
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    .line 212
    return-void
.end method

.method public getParentNum()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->parentNum:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 204
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 166
    :pswitch_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->refreshEditNum(I)V

    goto :goto_0

    .line 170
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->refreshEditNum(I)V

    goto :goto_0

    .line 173
    :pswitch_3
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->cancel()V

    goto :goto_0

    .line 179
    :pswitch_4
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->numEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 187
    .local v1, num:I
    const/16 v2, 0x3e8

    if-le v1, v2, :cond_1

    .line 188
    const/16 v1, 0x3e8

    .line 191
    :cond_1
    if-ge v1, v3, :cond_2

    .line 192
    const/4 v1, 0x1

    .line 195
    :cond_2
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->listener:Lcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;

    invoke-interface {v2, v1}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;->onCallBack(I)V

    .line 197
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->cancel()V

    goto :goto_0

    .line 180
    .end local v1           #num:I
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/NumberFormatException;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->listener:Lcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->listener:Lcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;

    invoke-interface {v2}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;->onError()V

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0202
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x7f030055

    const/4 v6, 0x1

    .line 66
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0, v6}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->requestWindowFeature(I)Z

    .line 70
    const v2, 0x7f030055

    :try_start_0
    invoke-super {p0, v2}, Landroid/app/Dialog;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    invoke-super {p0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 79
    const v2, 0x7f0c01fd

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->priceView:Landroid/widget/TextView;

    .line 80
    const v2, 0x7f0c01fe

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->priceNumView:Landroid/widget/TextView;

    .line 81
    const v2, 0x7f0c0202

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->descreaseView:Landroid/widget/ImageView;

    .line 82
    const v2, 0x7f0c0203

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->increaseView:Landroid/widget/ImageView;

    .line 83
    const v2, 0x7f0c0201

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->numEdit:Landroid/widget/EditText;

    .line 84
    const v2, 0x7f0c0205

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->cancleBtn:Landroid/widget/Button;

    .line 85
    const v2, 0x7f0c0206

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->confirmBtn:Landroid/widget/Button;

    .line 87
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->numEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->newWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 88
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->numEdit:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 90
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "0.00"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, decFormat:Ljava/text/DecimalFormat;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->priceView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->context:Landroid/content/Context;

    const v5, 0x7f070459

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->price:D

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->num:I

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->setEditTextByNum(I)V

    .line 94
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->descreaseView:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->increaseView:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->cancleBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->confirmBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->numEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 101
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 102
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->numEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v3, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 104
    return-void

    .line 71
    .end local v0           #decFormat:Ljava/text/DecimalFormat;
    :catch_0
    move-exception v1

    .line 72
    .local v1, e:Ljava/lang/Throwable;
    invoke-static {}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getLruBitmapCache()Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->clean()V

    goto/16 :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 341
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 356
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 343
    :pswitch_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->showInputMethod()V

    .line 344
    instance-of v1, p1, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 345
    check-cast v0, Landroid/widget/EditText;

    .line 347
    .local v0, et:Landroid/widget/EditText;
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v1

    goto :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setParentNum(I)V
    .locals 0
    .parameter "parentNum"

    .prologue
    .line 154
    iput p1, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->parentNum:I

    .line 155
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 318
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 319
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->showInputMethod()V

    .line 321
    return-void
.end method
