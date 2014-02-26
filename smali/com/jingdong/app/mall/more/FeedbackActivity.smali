.class public Lcom/jingdong/app/mall/more/FeedbackActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "FeedbackActivity.java"


# instance fields
.field choosedType:Landroid/widget/TextView;

.field mFeedbackContact:Landroid/widget/EditText;

.field mFeedbackContent:Landroid/widget/EditText;

.field mFeedbackName:Landroid/widget/EditText;

.field mLinearlayoutFeedbackType:Landroid/widget/LinearLayout;

.field mSubmitBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    .line 35
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v4, 0x7f0300a8

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/more/FeedbackActivity;->setContentView(I)V

    .line 37
    const v4, 0x7f0c007e

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/more/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 38
    .local v3, title:Landroid/widget/TextView;
    const v4, 0x7f0701d6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 39
    const v4, 0x7f0c008c

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/more/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/jingdong/app/mall/more/FeedbackActivity;->mSubmitBtn:Landroid/widget/Button;

    .line 40
    const v4, 0x7f0c0087

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/more/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/jingdong/app/mall/more/FeedbackActivity;->mFeedbackContent:Landroid/widget/EditText;

    .line 41
    const v4, 0x7f0c008b

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/more/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/jingdong/app/mall/more/FeedbackActivity;->mFeedbackContact:Landroid/widget/EditText;

    .line 42
    iget-object v4, p0, Lcom/jingdong/app/mall/more/FeedbackActivity;->mFeedbackContact:Landroid/widget/EditText;

    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "FEEDBACKER_CONTACT"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const v4, 0x7f0c0083

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/more/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/jingdong/app/mall/more/FeedbackActivity;->mLinearlayoutFeedbackType:Landroid/widget/LinearLayout;

    .line 44
    const v4, 0x7f0c0084

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/more/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jingdong/app/mall/more/FeedbackActivity;->choosedType:Landroid/widget/TextView;

    .line 45
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/FeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, items:[Ljava/lang/String;
    iget-object v4, p0, Lcom/jingdong/app/mall/more/FeedbackActivity;->choosedType:Landroid/widget/TextView;

    aget-object v5, v0, v8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v4, p0, Lcom/jingdong/app/mall/more/FeedbackActivity;->choosedType:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 48
    new-instance v1, Lcom/jingdong/app/mall/more/FeedbackActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/jingdong/app/mall/more/FeedbackActivity$1;-><init>(Lcom/jingdong/app/mall/more/FeedbackActivity;[Ljava/lang/String;)V

    .line 73
    .local v1, listener:Landroid/view/View$OnClickListener;
    iget-object v4, p0, Lcom/jingdong/app/mall/more/FeedbackActivity;->mLinearlayoutFeedbackType:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v4, 0x7f0c0085

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/more/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 75
    .local v2, mLinearlayoutFeedbackTypeBtn:Landroid/widget/ImageButton;
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v4, p0, Lcom/jingdong/app/mall/more/FeedbackActivity;->mSubmitBtn:Landroid/widget/Button;

    new-instance v5, Lcom/jingdong/app/mall/more/FeedbackActivity$2;

    invoke-direct {v5, p0}, Lcom/jingdong/app/mall/more/FeedbackActivity$2;-><init>(Lcom/jingdong/app/mall/more/FeedbackActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    return-void
.end method
