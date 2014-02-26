.class public Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;
.super Landroid/widget/FrameLayout;
.source "JDThemeEditText.java"


# instance fields
.field private mCleanUesrNameImageView:Landroid/widget/ImageView;

.field private mEditText:Landroid/widget/EditText;

.field private mFrameLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/jd/lottery/lib/R$layout;->widget_username_autocomplete_textview:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 40
    sget v0, Lcom/jd/lottery/lib/R$id;->widget_username_root:I

    invoke-virtual {p0, v0}, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 41
    sget v0, Lcom/jd/lottery/lib/R$id;->widget_username_edit_text:I

    invoke-virtual {p0, v0}, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->mEditText:Landroid/widget/EditText;

    .line 42
    sget v0, Lcom/jd/lottery/lib/R$id;->widget_clear_user_name_imgview:I

    invoke-virtual {p0, v0}, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->mCleanUesrNameImageView:Landroid/widget/ImageView;

    .line 44
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText$1;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText$1;-><init>(Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 58
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText$2;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText$2;-><init>(Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->mCleanUesrNameImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText$3;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText$3;-><init>(Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method static synthetic access$0(Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->mFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->mCleanUesrNameImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private cursorToTheEnd(Landroid/widget/EditText;)V
    .locals 2
    .parameter "et"

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 107
    .local v0, etable:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 108
    return-void
.end method


# virtual methods
.method public getText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 91
    return-void
.end method

.method public setHint(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(I)V

    .line 86
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->mEditText:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->cursorToTheEnd(Landroid/widget/EditText;)V

    .line 87
    return-void
.end method

.method public setText(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(I)V

    .line 81
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->mEditText:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->cursorToTheEnd(Landroid/widget/EditText;)V

    .line 82
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->mEditText:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->cursorToTheEnd(Landroid/widget/EditText;)V

    .line 77
    return-void
.end method
