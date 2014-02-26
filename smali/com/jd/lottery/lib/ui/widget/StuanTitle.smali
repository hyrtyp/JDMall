.class public Lcom/jd/lottery/lib/ui/widget/StuanTitle;
.super Landroid/widget/RelativeLayout;
.source "StuanTitle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jd/lottery/lib/ui/widget/StuanTitle$TitleClickListener;
    }
.end annotation


# instance fields
.field leftDrawableId:I

.field private leftImageView:Landroid/widget/ImageView;

.field private leftSplitLine:Landroid/widget/ImageView;

.field rightBtnTextResId:I

.field private rightButton:Landroid/widget/TextView;

.field rightDrawableId:I

.field private rightImageView:Landroid/widget/ImageView;

.field private titleClickListener:Lcom/jd/lottery/lib/ui/widget/StuanTitle$TitleClickListener;

.field titleDrawableId:I

.field private titleImageView:Landroid/widget/ImageView;

.field titleTextResId:I

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jd/lottery/lib/ui/widget/StuanTitle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/jd/lottery/lib/R$layout;->stuan_title:I

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 41
    sget v1, Lcom/jd/lottery/lib/R$id;->stuan_title_left_img:I

    invoke-virtual {p0, v1}, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->leftImageView:Landroid/widget/ImageView;

    .line 42
    sget v1, Lcom/jd/lottery/lib/R$id;->stuan_title_right_img:I

    invoke-virtual {p0, v1}, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->rightImageView:Landroid/widget/ImageView;

    .line 43
    sget v1, Lcom/jd/lottery/lib/R$id;->stuan_title_right_btn:I

    invoke-virtual {p0, v1}, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->rightButton:Landroid/widget/TextView;

    .line 44
    sget v1, Lcom/jd/lottery/lib/R$id;->stuan_title_title_text:I

    invoke-virtual {p0, v1}, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->titleTextView:Landroid/widget/TextView;

    .line 45
    sget v1, Lcom/jd/lottery/lib/R$id;->stuan_title_title_icon:I

    invoke-virtual {p0, v1}, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->titleImageView:Landroid/widget/ImageView;

    .line 46
    sget v1, Lcom/jd/lottery/lib/R$id;->stuan_title_left_split_line:I

    invoke-virtual {p0, v1}, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->leftSplitLine:Landroid/widget/ImageView;

    .line 48
    sget-object v1, Lcom/jd/lottery/lib/R$styleable;->stuan_title:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->leftDrawableId:I

    .line 50
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->rightDrawableId:I

    .line 51
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->rightBtnTextResId:I

    .line 52
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->titleTextResId:I

    .line 53
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->titleDrawableId:I

    .line 55
    iget v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->leftDrawableId:I

    if-eq v1, v3, :cond_0

    .line 56
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->leftImageView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->leftDrawableId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->leftImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->leftSplitLine:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->leftImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/jd/lottery/lib/ui/widget/StuanTitle$1;

    invoke-direct {v2, p0}, Lcom/jd/lottery/lib/ui/widget/StuanTitle$1;-><init>(Lcom/jd/lottery/lib/ui/widget/StuanTitle;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    :cond_0
    iget v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->rightDrawableId:I

    if-eq v1, v3, :cond_1

    .line 71
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->rightImageView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->rightDrawableId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->rightImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->rightImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/jd/lottery/lib/ui/widget/StuanTitle$2;

    invoke-direct {v2, p0}, Lcom/jd/lottery/lib/ui/widget/StuanTitle$2;-><init>(Lcom/jd/lottery/lib/ui/widget/StuanTitle;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_1
    iget v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->rightBtnTextResId:I

    if-eq v1, v3, :cond_2

    .line 85
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->rightButton:Landroid/widget/TextView;

    iget v2, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->rightBtnTextResId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->rightButton:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->rightButton:Landroid/widget/TextView;

    new-instance v2, Lcom/jd/lottery/lib/ui/widget/StuanTitle$3;

    invoke-direct {v2, p0}, Lcom/jd/lottery/lib/ui/widget/StuanTitle$3;-><init>(Lcom/jd/lottery/lib/ui/widget/StuanTitle;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :cond_2
    iget v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->titleTextResId:I

    if-eq v1, v3, :cond_3

    .line 99
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->titleTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->titleTextResId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 100
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    :cond_3
    iget v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->titleDrawableId:I

    if-eq v1, v3, :cond_4

    .line 104
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->titleImageView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->titleDrawableId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->titleImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    return-void
.end method

.method static synthetic access$0(Lcom/jd/lottery/lib/ui/widget/StuanTitle;)Lcom/jd/lottery/lib/ui/widget/StuanTitle$TitleClickListener;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->titleClickListener:Lcom/jd/lottery/lib/ui/widget/StuanTitle$TitleClickListener;

    return-object v0
.end method


# virtual methods
.method public setOnTitleClickListener(Lcom/jd/lottery/lib/ui/widget/StuanTitle$TitleClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->titleClickListener:Lcom/jd/lottery/lib/ui/widget/StuanTitle$TitleClickListener;

    .line 113
    return-void
.end method

.method public setRightImageViewBackgroundResource(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->rightImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 176
    return-void
.end method

.method public setRightVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    const/4 v1, -0x1

    .line 167
    iget v0, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->rightDrawableId:I

    if-eq v0, v1, :cond_1

    .line 168
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->rightImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget v0, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->rightBtnTextResId:I

    if-eq v0, v1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->rightButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitleImageResource(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->titleTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->titleImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->titleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    return-void
.end method

.method public setTitleText(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->titleImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 124
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->titleImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    return-void
.end method

.method public setnRightClickable(Z)V
    .locals 2
    .parameter "clickable"

    .prologue
    const/4 v1, -0x1

    .line 154
    iget v0, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->rightDrawableId:I

    if-eq v0, v1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->rightImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget v0, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->rightBtnTextResId:I

    if-eq v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->rightButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0
.end method
