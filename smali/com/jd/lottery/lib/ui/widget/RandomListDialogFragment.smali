.class public Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "RandomListDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;,
        Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$ViewHolder;
    }
.end annotation


# static fields
.field private static final LOTTERY_TYPE:Ljava/lang/String; = "lottery_type"

.field private static final RANDOM_SIZE:Ljava/lang/String; = "random_size"


# instance fields
.field private addToLotteryBasketTextView:Landroid/widget/TextView;

.field private cancleTextView:Landroid/widget/TextView;

.field private currentPosition:I

.field private formatter:Lcom/jd/lottery/lib/formatter/Formatter;

.field private handler:Landroid/os/Handler;

.field private lotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

.field private mListAdapter:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mLotteriesShow:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLotteriesSource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private messageTextView:Landroid/widget/TextView;

.field private randomSize:I

.field private resetTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->currentPosition:I

    .line 54
    new-instance v0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$1;-><init>(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)V

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->handler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->mListAdapter:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->updateMessage()V

    return-void
.end method

.method static synthetic access$2(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->currentPosition:I

    return v0
.end method

.method static synthetic access$3(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput p1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->currentPosition:I

    return-void
.end method

.method static synthetic access$4(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->mLotteriesSource:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->mLotteriesShow:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->initRandomLotteryList()V

    return-void
.end method

.method static synthetic access$8(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)Lcom/jd/lottery/lib/data/Constants$LotteryType;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->lotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    return-object v0
.end method

.method private initRandomLotteryList()V
    .locals 4

    .prologue
    .line 166
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->mLotteriesSource:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 167
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->mLotteriesShow:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 169
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    iget v2, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->randomSize:I

    invoke-virtual {v1, v2}, Lcom/jd/lottery/lib/formatter/Formatter;->random(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->mLotteriesSource:Ljava/util/List;

    .line 170
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->randomSize:I

    if-lt v0, v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->mListAdapter:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->notifyDataSetChanged()V

    .line 176
    invoke-direct {p0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->updateMessage()V

    .line 177
    return-void

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->mLotteriesShow:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->mLotteriesSource:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v3, v1}, Lcom/jd/lottery/lib/formatter/Formatter;->show_formatter(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static newInstance(ILcom/jd/lottery/lib/data/Constants$LotteryType;)Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;
    .locals 3
    .parameter "randomSize"
    .parameter "lotteryType"

    .prologue
    .line 65
    new-instance v1, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    invoke-direct {v1}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;-><init>()V

    .line 67
    .local v1, ssqRandomListDialogFragment:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "random_size"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    const-string v2, "lottery_type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 71
    invoke-virtual {v1, v0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 73
    return-object v1
.end method

.method private updateMessage()V
    .locals 7

    .prologue
    .line 180
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->mLotteriesShow:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 181
    .local v0, i:I
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/jd/lottery/lib/R$string;->basic_bet_info:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 182
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    mul-int/lit8 v6, v0, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 181
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "random_size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->randomSize:I

    .line 80
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "lottery_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/data/Constants$LotteryType;

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->lotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    .line 82
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->lotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DoubleColor:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v0, v1, :cond_1

    .line 83
    sget v0, Lcom/jd/lottery/lib/formatter/Formatter;->SSQ:I

    invoke-static {v0, v2}, Lcom/jd/lottery/lib/formatter/Formatter;->getFormatter(II)Lcom/jd/lottery/lib/formatter/Formatter;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    .line 88
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->mLotteriesSource:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->mLotteriesShow:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->mLotteriesShow:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;-><init>(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->mListAdapter:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;

    .line 91
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->lotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DaLeTou:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v0, v1, :cond_0

    .line 85
    sget v0, Lcom/jd/lottery/lib/formatter/Formatter;->DLT:I

    invoke-static {v0, v2}, Lcom/jd/lottery/lib/formatter/Formatter;->getFormatter(II)Lcom/jd/lottery/lib/formatter/Formatter;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 100
    sget v1, Lcom/jd/lottery/lib/R$layout;->fragmentdialog_random:I

    const/4 v2, 0x0

    .line 99
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 103
    .local v0, layout:Landroid/widget/LinearLayout;
    sget v1, Lcom/jd/lottery/lib/R$id;->random_reset_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->resetTextView:Landroid/widget/TextView;

    .line 104
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->resetTextView:Landroid/widget/TextView;

    new-instance v2, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$2;-><init>(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    sget v1, Lcom/jd/lottery/lib/R$id;->random_message:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->messageTextView:Landroid/widget/TextView;

    .line 112
    sget v1, Lcom/jd/lottery/lib/R$id;->fragment_dialog_cancle:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->cancleTextView:Landroid/widget/TextView;

    .line 113
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->cancleTextView:Landroid/widget/TextView;

    new-instance v2, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$3;-><init>(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    sget v1, Lcom/jd/lottery/lib/R$id;->fragment_dialog_ok:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->addToLotteryBasketTextView:Landroid/widget/TextView;

    .line 121
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->addToLotteryBasketTextView:Landroid/widget/TextView;

    new-instance v2, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$4;

    invoke-direct {v2, p0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$4;-><init>(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    sget v1, Lcom/jd/lottery/lib/R$id;->random_list:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->mListView:Landroid/widget/ListView;

    .line 157
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->mListAdapter:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    invoke-direct {p0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->initRandomLotteryList()V

    .line 161
    return-object v0
.end method
