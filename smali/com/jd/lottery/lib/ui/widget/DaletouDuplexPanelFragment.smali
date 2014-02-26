.class public Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;
.super Lcom/jd/lottery/lib/ui/widget/AbsPanelFragment;
.source "DaletouDuplexPanelFragment.java"


# instance fields
.field private formatter:Lcom/jd/lottery/lib/formatter/Formatter;

.field private freagmentView:Landroid/view/View;

.field private selectorPanelHoudan:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

.field private selectorPanelHoutuo:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

.field private selectorPanelQiandan:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

.field private selectorPanelQiantuo:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/jd/lottery/lib/ui/widget/AbsPanelFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelQiantuo:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelQiandan:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelHoutuo:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelHoudan:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    return-object v0
.end method

.method private setupViews(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/16 v4, 0x23

    const/16 v3, 0xc

    const/4 v2, 0x1

    .line 64
    .line 65
    sget v0, Lcom/jd/lottery/lib/R$id;->dlt_duplex_qiandan_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 64
    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelQiandan:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 66
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelQiandan:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 67
    sget-object v1, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;->RED:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    .line 66
    invoke-virtual {v0, v2, v4, v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->init(IILcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;)V

    .line 68
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelQiandan:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 69
    new-instance v1, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment$1;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment$1;-><init>(Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;)V

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setOnSelectorChangedListener(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$SelectorChangedListener;)V

    .line 88
    sget v0, Lcom/jd/lottery/lib/R$id;->dlt_duplex_qiantuo_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 87
    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelQiantuo:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 89
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelQiantuo:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 90
    sget-object v1, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;->RED:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    .line 89
    invoke-virtual {v0, v2, v4, v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->init(IILcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;)V

    .line 91
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelQiantuo:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 92
    new-instance v1, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment$2;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment$2;-><init>(Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;)V

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setOnSelectorChangedListener(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$SelectorChangedListener;)V

    .line 106
    sget v0, Lcom/jd/lottery/lib/R$id;->dlt_duplex_houdan_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 105
    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelHoudan:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 107
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelHoudan:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 108
    sget-object v1, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;->BLUE:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    .line 107
    invoke-virtual {v0, v2, v3, v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->init(IILcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;)V

    .line 109
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelHoudan:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 110
    new-instance v1, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment$3;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment$3;-><init>(Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;)V

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setOnSelectorChangedListener(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$SelectorChangedListener;)V

    .line 127
    sget v0, Lcom/jd/lottery/lib/R$id;->dlt_duplex_houtuo_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 126
    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelHoutuo:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 128
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelHoutuo:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 129
    sget-object v1, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;->BLUE:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    .line 128
    invoke-virtual {v0, v2, v3, v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->init(IILcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;)V

    .line 130
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelHoutuo:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 131
    new-instance v1, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment$4;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment$4;-><init>(Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;)V

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setOnSelectorChangedListener(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$SelectorChangedListener;)V

    .line 143
    return-void
.end method


# virtual methods
.method public addLottery()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 183
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->getSelectedBalls()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lcom/jd/lottery/lib/utils/Util;->checkRule(Landroid/content/Context;Lcom/jd/lottery/lib/formatter/Formatter;Ljava/util/List;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->getTotalMoney()J

    move-result-wide v0

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/jd/lottery/lib/R$string;->toast_not_exceed_2w:I

    invoke-static {v0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v0

    sget v1, Lcom/jd/lottery/lib/formatter/Formatter;->DLT:I

    .line 189
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->getSelectedBalls()Ljava/util/List;

    move-result-object v2

    .line 188
    invoke-virtual {v0, v1, v4, v2}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->addLottery(IILjava/util/List;)V

    .line 191
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/jd/lottery/lib/R$string;->add_to_basket_success:I

    invoke-static {v0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    .line 193
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->clean()V

    .line 195
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->updateBetBasicInfo()V

    goto :goto_0
.end method

.method public clean()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelQiandan:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->clean()V

    .line 175
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelQiantuo:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->clean()V

    .line 176
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelHoudan:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->clean()V

    .line 177
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelHoutuo:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->clean()V

    .line 178
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
    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v0, lists:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelQiandan:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelQiantuo:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelHoudan:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelHoutuo:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    return-object v0
.end method

.method public getTotalMoney()J
    .locals 4

    .prologue
    .line 218
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->getSelectedBalls()Ljava/util/List;

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
    .line 202
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelQiandan:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelQiantuo:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelHoudan:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelHoutuo:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLegalLottery()Z
    .locals 5

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->getSelectedBalls()Ljava/util/List;

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
    .line 36
    invoke-super {p0, p1}, Lcom/jd/lottery/lib/ui/widget/AbsPanelFragment;->onAttach(Landroid/app/Activity;)V

    .line 37
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/jd/lottery/lib/ui/widget/AbsPanelFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v0, Lcom/jd/lottery/lib/formatter/Formatter;->DLT:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/jd/lottery/lib/formatter/Formatter;->getFormatter(II)Lcom/jd/lottery/lib/formatter/Formatter;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    .line 44
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 49
    .line 50
    sget v0, Lcom/jd/lottery/lib/R$layout;->fragment_daletou_duplex_selector:I

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->freagmentView:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->freagmentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->setupViews(Landroid/view/View;)V

    .line 54
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->freagmentView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/jd/lottery/lib/ui/widget/AbsPanelFragment;->onResume()V

    .line 60
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
    .line 163
    .local p1, lists:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelQiandan:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setSelected(Ljava/util/List;)V

    .line 167
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelQiantuo:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setSelected(Ljava/util/List;)V

    .line 168
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelHoudan:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setSelected(Ljava/util/List;)V

    .line 169
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelHoutuo:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setSelected(Ljava/util/List;)V

    goto :goto_0
.end method

.method public updateBetBasicInfo()V
    .locals 3

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/activity/LotteryActivity;

    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    .line 148
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->getSelectedBalls()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jd/lottery/lib/formatter/Formatter;->calculate(Ljava/util/List;)J

    move-result-wide v1

    .line 147
    invoke-virtual {v0, v1, v2}, Lcom/jd/lottery/lib/activity/LotteryActivity;->setbetBasicInfoText(J)V

    .line 149
    return-void
.end method
