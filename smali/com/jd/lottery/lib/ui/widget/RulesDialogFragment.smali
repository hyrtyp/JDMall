.class public Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "RulesDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesAdapter;,
        Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesItem;,
        Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$ViewHolder;
    }
.end annotation


# static fields
.field private static final LOTTERY_TYPE:Ljava/lang/String; = "lottery_money"


# instance fields
.field private liResId:[I

.field private mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

.field private rulesItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/jd/lottery/lib/R$drawable;->shape_oval_red:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/jd/lottery/lib/R$drawable;->shape_oval_blue:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;->liResId:[I

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;)[I
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;->liResId:[I

    return-object v0
.end method

.method public static newInstance(Lcom/jd/lottery/lib/data/Constants$LotteryType;)Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;
    .locals 3
    .parameter "lotteryType"

    .prologue
    .line 42
    new-instance v1, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;

    invoke-direct {v1}, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;-><init>()V

    .line 44
    .local v1, rulesDialogFragment:Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "lottery_money"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 47
    invoke-virtual {v1, v0}, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;->setStyle(II)V

    .line 58
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "lottery_money"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/jd/lottery/lib/data/Constants$LotteryType;

    iput-object v4, p0, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    .line 60
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;->rulesItems:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/jd/lottery/lib/R$array;->lottery_rules_title:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, titles:[Ljava/lang/String;
    iget-object v4, p0, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    sget-object v5, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DoubleColor:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v4, v5, :cond_2

    .line 64
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/jd/lottery/lib/R$array;->lottery_rules_content_doublecolor:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, contents:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-lt v1, v4, :cond_1

    .line 76
    .end local v0           #contents:[Ljava/lang/String;
    .end local v1           #i:I
    :cond_0
    return-void

    .line 66
    .restart local v0       #contents:[Ljava/lang/String;
    .restart local v1       #i:I
    :cond_1
    new-instance v2, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesItem;

    aget-object v4, v3, v1

    aget-object v5, v0, v1

    invoke-direct {v2, p0, v4, v5}, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesItem;-><init>(Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .local v2, item:Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesItem;
    iget-object v4, p0, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;->rulesItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v0           #contents:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #item:Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesItem;
    :cond_2
    iget-object v4, p0, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    sget-object v5, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DaLeTou:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v4, v5, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/jd/lottery/lib/R$array;->lottery_rules_content_daletou:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 71
    .restart local v0       #contents:[Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 72
    new-instance v2, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesItem;

    aget-object v4, v3, v1

    aget-object v5, v0, v1

    invoke-direct {v2, p0, v4, v5}, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesItem;-><init>(Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .restart local v2       #item:Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesItem;
    iget-object v4, p0, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;->rulesItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 84
    .line 85
    sget v3, Lcom/jd/lottery/lib/R$layout;->fragmentdialog_rules:I

    const/4 v4, 0x0

    .line 84
    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 87
    .local v0, layout:Landroid/widget/LinearLayout;
    sget v3, Lcom/jd/lottery/lib/R$id;->fragment_rules_title:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 88
    .local v2, titleTextView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    sget-object v4, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DoubleColor:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v3, v4, :cond_1

    .line 89
    sget v3, Lcom/jd/lottery/lib/R$string;->double_color_rules:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 94
    :cond_0
    :goto_0
    sget v3, Lcom/jd/lottery/lib/R$id;->fragment_rules_list:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 95
    .local v1, listView:Landroid/widget/ListView;
    new-instance v3, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesAdapter;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;->rulesItems:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4, v5}, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesAdapter;-><init>(Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    return-object v0

    .line 90
    .end local v1           #listView:Landroid/widget/ListView;
    :cond_1
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    sget-object v4, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DaLeTou:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v3, v4, :cond_0

    .line 91
    sget v3, Lcom/jd/lottery/lib/R$string;->da_le_tou_rules:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
