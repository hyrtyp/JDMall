.class public Lcom/jingdong/app/mall/search/CorrectionActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "CorrectionActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private choosedType:Landroid/widget/TextView;

.field private mFeedbackContent:Landroid/widget/EditText;

.field private mFeedbackPhone:Landroid/widget/EditText;

.field private mFeedbackPrice:Landroid/widget/EditText;

.field private mLinearlayoutFeedbackType:Landroid/widget/LinearLayout;

.field private mSubmitBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 26
    const-string v0, "CorrectionActivity"

    iput-object v0, p0, Lcom/jingdong/app/mall/search/CorrectionActivity;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/search/CorrectionActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jingdong/app/mall/search/CorrectionActivity;->choosedType:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/search/CorrectionActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jingdong/app/mall/search/CorrectionActivity;->mFeedbackContent:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/search/CorrectionActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jingdong/app/mall/search/CorrectionActivity;->mFeedbackPrice:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/search/CorrectionActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jingdong/app/mall/search/CorrectionActivity;->mFeedbackPhone:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v4, 0x7f03000f

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/search/CorrectionActivity;->setContentView(I)V

    .line 40
    const v4, 0x7f0c007e

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/search/CorrectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 41
    .local v3, title:Landroid/widget/TextView;
    const v4, 0x7f0703fd

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 42
    const v4, 0x7f0c008c

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/search/CorrectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/jingdong/app/mall/search/CorrectionActivity;->mSubmitBtn:Landroid/widget/Button;

    .line 43
    const v4, 0x7f0c0087

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/search/CorrectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/jingdong/app/mall/search/CorrectionActivity;->mFeedbackContent:Landroid/widget/EditText;

    .line 44
    const v4, 0x7f0c0089

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/search/CorrectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/jingdong/app/mall/search/CorrectionActivity;->mFeedbackPrice:Landroid/widget/EditText;

    .line 45
    const v4, 0x7f0c008b

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/search/CorrectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/jingdong/app/mall/search/CorrectionActivity;->mFeedbackPhone:Landroid/widget/EditText;

    .line 46
    const v4, 0x7f0c0083

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/search/CorrectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/jingdong/app/mall/search/CorrectionActivity;->mLinearlayoutFeedbackType:Landroid/widget/LinearLayout;

    .line 47
    const v4, 0x7f0c0084

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/search/CorrectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jingdong/app/mall/search/CorrectionActivity;->choosedType:Landroid/widget/TextView;

    .line 49
    :try_start_0
    sget-object v0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->category_name_array:[Ljava/lang/String;

    .line 50
    .local v0, items:[Ljava/lang/String;
    sget v4, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->category_selected_index:I

    if-ltz v4, :cond_0

    sget v4, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->category_selected_index:I

    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 51
    iget-object v4, p0, Lcom/jingdong/app/mall/search/CorrectionActivity;->choosedType:Landroid/widget/TextView;

    sget v5, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->category_selected_index:I

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v4, p0, Lcom/jingdong/app/mall/search/CorrectionActivity;->choosedType:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/Integer;

    sget v6, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->category_selected_index:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 56
    :cond_0
    new-instance v1, Lcom/jingdong/app/mall/search/CorrectionActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/jingdong/app/mall/search/CorrectionActivity$1;-><init>(Lcom/jingdong/app/mall/search/CorrectionActivity;[Ljava/lang/String;)V

    .line 81
    .local v1, listener:Landroid/view/View$OnClickListener;
    iget-object v4, p0, Lcom/jingdong/app/mall/search/CorrectionActivity;->mLinearlayoutFeedbackType:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v4, 0x7f0c0085

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/search/CorrectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 83
    .local v2, mLinearlayoutFeedbackTypeBtn:Landroid/widget/ImageButton;
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v4, p0, Lcom/jingdong/app/mall/search/CorrectionActivity;->mSubmitBtn:Landroid/widget/Button;

    new-instance v5, Lcom/jingdong/app/mall/search/CorrectionActivity$2;

    invoke-direct {v5, p0}, Lcom/jingdong/app/mall/search/CorrectionActivity$2;-><init>(Lcom/jingdong/app/mall/search/CorrectionActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v0           #items:[Ljava/lang/String;
    .end local v1           #listener:Landroid/view/View$OnClickListener;
    .end local v2           #mLinearlayoutFeedbackTypeBtn:Landroid/widget/ImageButton;
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v4

    goto :goto_0
.end method
