.class public Lcom/unionpay/upomp/bypay/other/fq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private a:I

.field final synthetic a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:I

.field private b:Z

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/fq;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/unionpay/upomp/bypay/other/fq;->a:I

    iput v1, p0, Lcom/unionpay/upomp/bypay/other/fq;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/unionpay/upomp/bypay/other/fq;->c:I

    iput v1, p0, Lcom/unionpay/upomp/bypay/other/fq;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/upomp/bypay/other/fq;->a:Z

    iput-boolean v1, p0, Lcom/unionpay/upomp/bypay/other/fq;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/other/fq;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 11

    const/16 v10, 0xa

    const/4 v9, 0x5

    const/16 v8, 0xf

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/unionpay/upomp/bypay/other/fq;->b:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/unionpay/upomp/bypay/other/fq;->d:I

    iget v3, p0, Lcom/unionpay/upomp/bypay/other/fq;->a:I

    if-le v0, v3, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v2, p0, Lcom/unionpay/upomp/bypay/other/fq;->b:Z

    const-string v5, ""

    const-string v3, ""

    move v4, v2

    :goto_1
    iget-object v6, p0, Lcom/unionpay/upomp/bypay/other/fq;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v4, v6, :cond_5

    move-object v4, v5

    move v5, v2

    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v5, v6, :cond_7

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->h()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v5

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-eq v3, v9, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-eq v3, v10, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-eq v3, v8, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    const/16 v6, 0x14

    if-ne v3, v6, :cond_16

    :cond_0
    move v3, v1

    :goto_3
    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->h()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v6

    if-ne v5, v6, :cond_e

    iget v0, p0, Lcom/unionpay/upomp/bypay/other/fq;->d:I

    iget v6, p0, Lcom/unionpay/upomp/bypay/other/fq;->a:I

    if-le v0, v6, :cond_a

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->h()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v3, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v2, v5

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    :goto_4
    iput-boolean v1, p0, Lcom/unionpay/upomp/bypay/other/fq;->a:Z

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/unionpay/upomp/bypay/other/fq;->c:I

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/fq;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    iput-boolean v1, v0, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->a:Z

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/unionpay/upomp/bypay/other/fq;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    aget-char v6, v6, v4

    const/16 v7, 0x20

    if-ne v6, v7, :cond_6

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/unionpay/upomp/bypay/other/fq;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aget-char v3, v3, v4

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    aget-char v4, v4, v5

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_8

    const/4 v6, 0x7

    if-eq v5, v6, :cond_8

    const/16 v6, 0xb

    if-eq v5, v6, :cond_8

    if-ne v5, v8, :cond_9

    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v5, v6, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_a
    iget v0, p0, Lcom/unionpay/upomp/bypay/other/fq;->d:I

    iget v6, p0, Lcom/unionpay/upomp/bypay/other/fq;->a:I

    if-ge v0, v6, :cond_c

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->h()Landroid/widget/EditText;

    move-result-object v0

    add-int/lit8 v3, v5, -0x1

    if-gez v3, :cond_b

    :goto_6
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_4

    :cond_b
    add-int/lit8 v2, v5, -0x1

    goto :goto_6

    :cond_c
    iget v0, p0, Lcom/unionpay/upomp/bypay/other/fq;->d:I

    iget v6, p0, Lcom/unionpay/upomp/bypay/other/fq;->a:I

    if-ne v0, v6, :cond_2

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->h()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v3, :cond_d

    move v2, v1

    :cond_d
    add-int/2addr v2, v5

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_4

    :cond_e
    if-eq v5, v9, :cond_f

    if-eq v5, v10, :cond_f

    if-eq v5, v8, :cond_f

    const/16 v6, 0x14

    if-ne v5, v6, :cond_11

    :cond_f
    if-eqz v0, :cond_10

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->h()Landroid/widget/EditText;

    move-result-object v0

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_4

    :cond_10
    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->h()Landroid/widget/EditText;

    move-result-object v0

    add-int/lit8 v2, v5, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_4

    :cond_11
    iget v0, p0, Lcom/unionpay/upomp/bypay/other/fq;->d:I

    iget v6, p0, Lcom/unionpay/upomp/bypay/other/fq;->a:I

    if-le v0, v6, :cond_13

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->h()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v3, :cond_12

    move v2, v1

    :cond_12
    add-int/2addr v2, v5

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_4

    :cond_13
    iget v0, p0, Lcom/unionpay/upomp/bypay/other/fq;->d:I

    iget v3, p0, Lcom/unionpay/upomp/bypay/other/fq;->a:I

    if-ge v0, v3, :cond_15

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->h()Landroid/widget/EditText;

    move-result-object v0

    add-int/lit8 v3, v5, -0x1

    if-gez v3, :cond_14

    :goto_7
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_4

    :cond_14
    add-int/lit8 v2, v5, -0x1

    goto :goto_7

    :cond_15
    iget v0, p0, Lcom/unionpay/upomp/bypay/other/fq;->d:I

    iget v2, p0, Lcom/unionpay/upomp/bypay/other/fq;->a:I

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->h()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_4

    :cond_16
    move v3, v2

    goto/16 :goto_3
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/unionpay/upomp/bypay/other/fq;->a:I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->h()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/other/fq;->a:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/unionpay/upomp/bypay/other/fq;->d:I

    iget v0, p0, Lcom/unionpay/upomp/bypay/other/fq;->d:I

    iget v1, p0, Lcom/unionpay/upomp/bypay/other/fq;->c:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/unionpay/upomp/bypay/other/fq;->d:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/unionpay/upomp/bypay/other/fq;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/unionpay/upomp/bypay/other/fq;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/unionpay/upomp/bypay/other/fq;->d:I

    iput v0, p0, Lcom/unionpay/upomp/bypay/other/fq;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/upomp/bypay/other/fq;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/upomp/bypay/other/fq;->a:Z

    :cond_0
    return-void
.end method
