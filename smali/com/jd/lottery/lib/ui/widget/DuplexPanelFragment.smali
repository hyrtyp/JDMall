.class public Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;
.super Lcom/jd/lottery/lib/ui/widget/AbsPanelFragment;
.source "DuplexPanelFragment.java"


# instance fields
.field private formatter:Lcom/jd/lottery/lib/formatter/Formatter;

.field private freagmentView:Landroid/view/View;

.field private selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

.field private selectorPanelDanma:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

.field private selectorPanelTuoma:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/jd/lottery/lib/ui/widget/AbsPanelFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelTuoma:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelDanma:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    return-object v0
.end method

.method private setupViews(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/16 v2, 0x21

    const/4 v3, 0x1

    .line 61
    .line 62
    sget v0, Lcom/jd/lottery/lib/R$id;->duplex_danma_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 61
    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelDanma:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 63
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelDanma:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 64
    sget-object v1, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;->RED:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    .line 63
    invoke-virtual {v0, v3, v2, v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->init(IILcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;)V

    .line 65
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelDanma:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 66
    new-instance v1, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment$1;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment$1;-><init>(Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;)V

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setOnSelectorChangedListener(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$SelectorChangedListener;)V

    .line 91
    sget v0, Lcom/jd/lottery/lib/R$id;->duplex_tuoma_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 90
    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelTuoma:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 92
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelTuoma:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 93
    sget-object v1, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;->RED:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    .line 92
    invoke-virtual {v0, v3, v2, v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->init(IILcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;)V

    .line 94
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelTuoma:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 95
    new-instance v1, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment$2;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment$2;-><init>(Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;)V

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setOnSelectorChangedListener(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$SelectorChangedListener;)V

    .line 114
    sget v0, Lcom/jd/lottery/lib/R$id;->duplex_blue_ball_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 113
    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 115
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 116
    const/16 v1, 0x10

    sget-object v2, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;->BLUE:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    .line 115
    invoke-virtual {v0, v3, v1, v2}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->init(IILcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;)V

    .line 117
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 118
    new-instance v1, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment$3;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment$3;-><init>(Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;)V

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setOnSelectorChangedListener(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$SelectorChangedListener;)V

    .line 125
    return-void
.end method


# virtual methods
.method public addLottery()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 165
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->getSelectedBalls()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lcom/jd/lottery/lib/utils/Util;->checkRule(Landroid/content/Context;Lcom/jd/lottery/lib/formatter/Formatter;Ljava/util/List;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->getTotalMoney()J

    move-result-wide v0

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/jd/lottery/lib/R$string;->toast_not_exceed_2w:I

    invoke-static {v0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v0

    sget v1, Lcom/jd/lottery/lib/formatter/Formatter;->SSQ:I

    .line 172
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->getSelectedBalls()Ljava/util/List;

    move-result-object v2

    .line 171
    invoke-virtual {v0, v1, v4, v2}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->addLottery(IILjava/util/List;)V

    .line 173
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/jd/lottery/lib/R$string;->add_to_basket_success:I

    invoke-static {v0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    .line 175
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->clean()V

    .line 177
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->updateBetBasicInfo()V

    goto :goto_0
.end method

.method public clean()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelDanma:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->clean()V

    .line 157
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelTuoma:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->clean()V

    .line 158
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->clean()V

    .line 159
    return-void
.end method

.method public getSelectedBalls()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v0, lists:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelDanma:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelTuoma:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelDanma:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelTuoma:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_0
    return-object v0
.end method

.method public getTotalMoney()J
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->getSelectedBalls()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/formatter/Formatter;->calculate(Ljava/util/List;)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelDanma:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelTuoma:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLegalLottery()Z
    .locals 5

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->getSelectedBalls()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jd/lottery/lib/utils/Util;->checkRule(Landroid/content/Context;Lcom/jd/lottery/lib/formatter/Formatter;Ljava/util/List;IZ)Z

    move-result v0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/jd/lottery/lib/ui/widget/AbsPanelFragment;->onAttach(Landroid/app/Activity;)V

    .line 34
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/jd/lottery/lib/ui/widget/AbsPanelFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget v0, Lcom/jd/lottery/lib/formatter/Formatter;->SSQ:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/jd/lottery/lib/formatter/Formatter;->getFormatter(II)Lcom/jd/lottery/lib/formatter/Formatter;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    .line 41
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 46
    sget v0, Lcom/jd/lottery/lib/R$layout;->fragment_duplex_selector:I

    .line 47
    const/4 v1, 0x0

    .line 46
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->freagmentView:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->freagmentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->setupViews(Landroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->freagmentView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lcom/jd/lottery/lib/ui/widget/AbsPanelFragment;->onResume()V

    .line 57
    return-void
.end method

.method public selSelectedBalls(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, lists:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelDanma:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setSelected(Ljava/util/List;)V

    .line 150
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelTuoma:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setSelected(Ljava/util/List;)V

    .line 151
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setSelected(Ljava/util/List;)V

    goto :goto_0
.end method

.method public updateBetBasicInfo()V
    .locals 3

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/activity/LotteryActivity;

    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    .line 130
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->getSelectedBalls()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jd/lottery/lib/formatter/Formatter;->calculate(Ljava/util/List;)J

    move-result-wide v1

    .line 129
    invoke-virtual {v0, v1, v2}, Lcom/jd/lottery/lib/activity/LotteryActivity;->setbetBasicInfoText(J)V

    .line 131
    return-void
.end method
