.class public Lcom/jingdong/app/mall/product/CommentListActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "CommentListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader;,
        Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;
    }
.end annotation


# static fields
.field private static final SCORE_ALL:I = 0x0

.field private static final SCORE_BAD:I = 0x1

.field private static final SCORE_CENTER:I = 0x2

.field private static final SCORE_GOOD:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private commentBundle:Landroid/os/Bundle;

.field private commentListContentAll:Landroid/widget/ListView;

.field private commentListContentAllNextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

.field private commentListContentBad:Landroid/widget/ListView;

.field private commentListContentBadNextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

.field private commentListContentGood:Landroid/widget/ListView;

.field private commentListContentGoodNextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

.field private commentListContentMiddle:Landroid/widget/ListView;

.field private commentListContentMiddleNextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

.field private id:J

.field private mProductDetailController:Lcom/jingdong/common/controller/ProductDetailController;

.field private mSource:Lcom/jingdong/common/entity/SourceEntity;

.field private messageBad:Ljava/lang/String;

.field private messageGood:Ljava/lang/String;

.field private messageMiddle:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private product:Lcom/jingdong/common/entity/Product;

.field private scoreCountBad:Ljava/lang/String;

.field private scoreCountCenter:Ljava/lang/String;

.field private scoreCountGood:Ljava/lang/String;

.field private showScoreType:I

.field private subName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/jingdong/app/mall/product/CommentListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/app/mall/product/CommentListActivity;->TAG:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->showScoreType:I

    .line 94
    new-instance v0, Lcom/jingdong/common/entity/SourceEntity;

    const-string v1, "unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->mSource:Lcom/jingdong/common/entity/SourceEntity;

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentBundle:Landroid/os/Bundle;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/CommentListActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/CommentListActivity;->showContent(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/product/CommentListActivity;)Landroid/os/Bundle;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/product/CommentListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->messageGood:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/product/CommentListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->messageMiddle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/product/CommentListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->messageBad:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/product/CommentListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/CommentListActivity;->trimIntForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/product/CommentListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->scoreCountGood:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/product/CommentListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->scoreCountCenter:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/product/CommentListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->scoreCountBad:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/product/CommentListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/CommentListActivity;->first()V

    return-void
.end method

.method private first()V
    .locals 14

    .prologue
    const v10, 0x7f0c018b

    const v13, 0x7f090028

    const/16 v12, 0x21

    const/4 v11, 0x0

    .line 156
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/CommentListActivity;->initContent()V

    .line 159
    const v1, 0x7f0c018a

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/CommentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    .line 161
    .local v6, commentGroup:Landroid/widget/RadioGroup;
    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/product/CommentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 162
    .local v5, buttonAll:Landroid/widget/RadioButton;
    const v1, 0x7f0c018c

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/CommentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 163
    .local v2, buttonGood:Landroid/widget/RadioButton;
    const v1, 0x7f0c018d

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/CommentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 164
    .local v3, buttonCenter:Landroid/widget/RadioButton;
    const v1, 0x7f0c018e

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/CommentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 167
    .local v4, buttonBad:Landroid/widget/RadioButton;
    invoke-virtual {v6, v10}, Landroid/widget/RadioGroup;->check(I)V

    .line 170
    const v1, 0x7f0701fb

    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setText(I)V

    .line 171
    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->messageGood:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->messageMiddle:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->messageBad:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 175
    new-instance v7, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->scoreCountGood:Ljava/lang/String;

    invoke-direct {v7, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 177
    .local v7, spannableStringBuilder1:Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/CommentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-direct {v1, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 179
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    .line 176
    invoke-virtual {v7, v1, v11, v10, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 181
    invoke-virtual {v2, v7}, Landroid/widget/RadioButton;->append(Ljava/lang/CharSequence;)V

    .line 183
    new-instance v8, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->scoreCountCenter:Ljava/lang/String;

    invoke-direct {v8, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 185
    .local v8, spannableStringBuilder2:Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/CommentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-direct {v1, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 187
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    .line 184
    invoke-virtual {v8, v1, v11, v10, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 189
    invoke-virtual {v3, v8}, Landroid/widget/RadioButton;->append(Ljava/lang/CharSequence;)V

    .line 191
    new-instance v9, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->scoreCountBad:Ljava/lang/String;

    invoke-direct {v9, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 193
    .local v9, spannableStringBuilder3:Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/CommentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-direct {v1, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 195
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    .line 192
    invoke-virtual {v9, v1, v11, v10, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 197
    invoke-virtual {v4, v9}, Landroid/widget/RadioButton;->append(Ljava/lang/CharSequence;)V

    .line 200
    new-instance v0, Lcom/jingdong/app/mall/product/CommentListActivity$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/product/CommentListActivity$1;-><init>(Lcom/jingdong/app/mall/product/CommentListActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    .line 215
    .local v0, scoreButtonClickListener:Landroid/view/View$OnClickListener;
    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    return-void
.end method

.method private initContent()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 356
    const v1, 0x7f0c018f

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/CommentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentAll:Landroid/widget/ListView;

    .line 357
    const v1, 0x7f0c0190

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/CommentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentGood:Landroid/widget/ListView;

    .line 358
    const v1, 0x7f0c0191

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/CommentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentMiddle:Landroid/widget/ListView;

    .line 359
    const v1, 0x7f0c0192

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/CommentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentBad:Landroid/widget/ListView;

    .line 365
    const v1, 0x7f030087

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 366
    .local v7, loadingLayout:Landroid/widget/LinearLayout;
    const/16 v1, 0x11

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 369
    new-instance v0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->scoreCountGood:Ljava/lang/String;

    invoke-static {v1}, Lcom/jingdong/common/utils/MathsUtils;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->scoreCountCenter:Ljava/lang/String;

    invoke-static {v1}, Lcom/jingdong/common/utils/MathsUtils;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->scoreCountBad:Ljava/lang/String;

    invoke-static {v1}, Lcom/jingdong/common/utils/MathsUtils;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;-><init>(Lcom/jingdong/app/mall/product/CommentListActivity;Landroid/content/Context;III)V

    .line 371
    .local v0, ev:Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/CommentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentAll:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 375
    new-instance v1, Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader;

    iget-object v4, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentAll:Landroid/widget/ListView;

    const-string v6, "comment"

    move-object v2, p0

    move-object v3, p0

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader;-><init>(Lcom/jingdong/app/mall/product/CommentListActivity;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/AbsListView;Landroid/view/View;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentAllNextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    .line 376
    new-instance v1, Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader;

    iget-object v4, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentGood:Landroid/widget/ListView;

    const-string v6, "comment"

    move-object v2, p0

    move-object v3, p0

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader;-><init>(Lcom/jingdong/app/mall/product/CommentListActivity;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/AbsListView;Landroid/view/View;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentGoodNextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    .line 377
    new-instance v1, Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader;

    iget-object v4, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentMiddle:Landroid/widget/ListView;

    const-string v6, "comment"

    move-object v2, p0

    move-object v3, p0

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader;-><init>(Lcom/jingdong/app/mall/product/CommentListActivity;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/AbsListView;Landroid/view/View;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentMiddleNextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    .line 378
    new-instance v1, Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader;

    iget-object v4, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentBad:Landroid/widget/ListView;

    const-string v6, "comment"

    move-object v2, p0

    move-object v3, p0

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader;-><init>(Lcom/jingdong/app/mall/product/CommentListActivity;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/AbsListView;Landroid/view/View;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentBadNextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    .line 380
    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentAllNextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/jingdong/app/mall/product/CommentListActivity;->setParams(Lcom/jingdong/common/utils/NextPageLoader;I)V

    .line 381
    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentGoodNextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/jingdong/app/mall/product/CommentListActivity;->setParams(Lcom/jingdong/common/utils/NextPageLoader;I)V

    .line 382
    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentMiddleNextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/jingdong/app/mall/product/CommentListActivity;->setParams(Lcom/jingdong/common/utils/NextPageLoader;I)V

    .line 383
    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentBadNextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    invoke-direct {p0, v1, v8}, Lcom/jingdong/app/mall/product/CommentListActivity;->setParams(Lcom/jingdong/common/utils/NextPageLoader;I)V

    .line 385
    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentAllNextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    invoke-virtual {v1, v8}, Lcom/jingdong/common/utils/NextPageLoader;->showPageOne(Z)V

    .line 387
    return-void
.end method

.method private setParams(Lcom/jingdong/common/utils/NextPageLoader;I)V
    .locals 5
    .parameter "nextPageLoader"
    .parameter "scoreType"

    .prologue
    .line 403
    invoke-virtual {p1}, Lcom/jingdong/common/utils/NextPageLoader;->getParams()Lorg/json/JSONObject;

    move-result-object v0

    .line 405
    .local v0, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "wareId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    const-string v1, "score"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    const-string v1, "version"

    const-string v2, "new"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    return-void

    .line 408
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showCommentCount(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->mProductDetailController:Lcom/jingdong/common/controller/ProductDetailController;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->mSource:Lcom/jingdong/common/entity/SourceEntity;

    new-instance v2, Lcom/jingdong/app/mall/product/CommentListActivity$2;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/product/CommentListActivity$2;-><init>(Lcom/jingdong/app/mall/product/CommentListActivity;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/jingdong/common/controller/ProductDetailController;->queryCommentCount(JLcom/jingdong/common/entity/SourceEntity;Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V

    .line 455
    return-void
.end method

.method private showContent(I)V
    .locals 5
    .parameter "scoreType"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 303
    iget v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->showScoreType:I

    .line 304
    .local v0, oldShowScoreType:I
    iput p1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->showScoreType:I

    .line 306
    packed-switch v0, :pswitch_data_0

    .line 321
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 340
    :goto_1
    return-void

    .line 308
    :pswitch_0
    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentAll:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 311
    :pswitch_1
    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentGood:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 314
    :pswitch_2
    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentMiddle:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 317
    :pswitch_3
    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentBad:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 323
    :pswitch_4
    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentAll:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 324
    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentAllNextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/NextPageLoader;->showPageOne(Z)V

    goto :goto_1

    .line 327
    :pswitch_5
    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentGood:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 328
    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentGoodNextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/NextPageLoader;->showPageOne(Z)V

    goto :goto_1

    .line 331
    :pswitch_6
    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentMiddle:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 332
    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentMiddleNextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/NextPageLoader;->showPageOne(Z)V

    goto :goto_1

    .line 335
    :pswitch_7
    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentBad:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 336
    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->commentListContentBadNextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/NextPageLoader;->showPageOne(Z)V

    goto :goto_1

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 321
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private trimIntForString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "oldStr"

    .prologue
    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const-string p1, "0"

    .line 139
    .end local p1
    :cond_0
    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0xe

    const/4 v5, 0x0

    .line 100
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/CommentListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 103
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "product"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/Product;

    iput-object v2, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->product:Lcom/jingdong/common/entity/Product;

    .line 106
    iget-object v2, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->product:Lcom/jingdong/common/entity/Product;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getShowId()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_1

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/CommentListActivity;->finish()V

    .line 128
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getShowId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->id:J

    .line 112
    iget-object v2, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->name:Ljava/lang/String;

    .line 114
    const v2, 0x7f03003e

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/product/CommentListActivity;->setContentView(I)V

    .line 116
    const v2, 0x7f0c007e

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/product/CommentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 117
    .local v1, title:Landroid/widget/TextView;
    new-instance v2, Lcom/jingdong/common/controller/ProductDetailController;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/CommentListActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jingdong/common/controller/ProductDetailController;-><init>(Lcom/jingdong/common/utils/HttpGroup;)V

    iput-object v2, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->mProductDetailController:Lcom/jingdong/common/controller/ProductDetailController;

    .line 119
    iget-object v2, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_2

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->name:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->subName:Ljava/lang/String;

    .line 124
    :goto_1
    const v2, 0x7f070299

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->subName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/jingdong/app/mall/product/CommentListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-wide v2, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->id:J

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/product/CommentListActivity;->showCommentCount(J)V

    goto :goto_0

    .line 122
    :cond_2
    iget-object v2, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/jingdong/app/mall/product/CommentListActivity;->subName:Ljava/lang/String;

    goto :goto_1
.end method
