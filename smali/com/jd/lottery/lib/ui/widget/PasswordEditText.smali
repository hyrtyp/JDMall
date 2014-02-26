.class public Lcom/jd/lottery/lib/ui/widget/PasswordEditText;
.super Landroid/widget/FrameLayout;
.source "PasswordEditText.java"


# instance fields
.field private mCleanUesrPasswordImageView:Landroid/widget/ImageView;

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mPasswordEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jd/lottery/lib/ui/widget/PasswordEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/jd/lottery/lib/R$layout;->widget_password_edittext:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 41
    sget v0, Lcom/jd/lottery/lib/R$id;->widget_password_root:I

    invoke-virtual {p0, v0}, Lcom/jd/lottery/lib/ui/widget/PasswordEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PasswordEditText;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 42
    sget v0, Lcom/jd/lottery/lib/R$id;->widget_password_edit_text:I

    invoke-virtual {p0, v0}, Lcom/jd/lottery/lib/ui/widget/PasswordEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PasswordEditText;->mPasswordEditText:Landroid/widget/EditText;

    .line 43
    sget v0, Lcom/jd/lottery/lib/R$id;->widget_clear_psw_imgview:I

    invoke-virtual {p0, v0}, Lcom/jd/lottery/lib/ui/widget/PasswordEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PasswordEditText;->mCleanUesrPasswordImageView:Landroid/widget/ImageView;

    .line 46
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PasswordEditText;->mPasswordEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/jd/lottery/lib/ui/widget/PasswordEditText$1;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/ui/widget/PasswordEditText$1;-><init>(Lcom/jd/lottery/lib/ui/widget/PasswordEditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 61
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PasswordEditText;->mPasswordEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/jd/lottery/lib/ui/widget/PasswordEditText$2;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/ui/widget/PasswordEditText$2;-><init>(Lcom/jd/lottery/lib/ui/widget/PasswordEditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PasswordEditText;->mPasswordEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/jd/lottery/lib/ui/widget/PasswordEditText$3;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/ui/widget/PasswordEditText$3;-><init>(Lcom/jd/lottery/lib/ui/widget/PasswordEditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 87
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PasswordEditText;->mCleanUesrPasswordImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/jd/lottery/lib/ui/widget/PasswordEditText$4;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/ui/widget/PasswordEditText$4;-><init>(Lcom/jd/lottery/lib/ui/widget/PasswordEditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-void
.end method

.method static synthetic access$0(Lcom/jd/lottery/lib/ui/widget/PasswordEditText;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PasswordEditText;->mPasswordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jd/lottery/lib/ui/widget/PasswordEditText;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PasswordEditText;->mFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jd/lottery/lib/ui/widget/PasswordEditText;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PasswordEditText;->mCleanUesrPasswordImageView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public getText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PasswordEditText;->mPasswordEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PasswordEditText;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PasswordEditText;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 129
    return-void
.end method

.method public setHint(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PasswordEditText;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(I)V

    .line 125
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .parameter "I"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PasswordEditText;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 161
    return-void
.end method

.method public setPasswordClearText(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PasswordEditText;->mPasswordEditText:Landroid/widget/EditText;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PasswordEditText;->mPasswordEditText:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method public setText(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PasswordEditText;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(I)V

    .line 121
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PasswordEditText;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method
