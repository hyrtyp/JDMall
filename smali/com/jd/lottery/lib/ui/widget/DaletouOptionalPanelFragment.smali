.class public Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;
.super Lcom/jd/lottery/lib/ui/widget/AbsPanelFragment;
.source "DaletouOptionalPanelFragment.java"


# instance fields
.field private formatter:Lcom/jd/lottery/lib/formatter/Formatter;

.field private freagmentView:Landroid/view/View;

.field private mShakeListener:Lcom/jd/lottery/lib/utils/ShakeListener;

.field private randomBallsTextView:Landroid/widget/TextView;

.field private selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

.field private selectorPanelRed:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

.field ssqRandomListDialogFragment:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

.field yaoyiyaoCleanDialogFragment:Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;

.field private yaoyiyaorandomBallsTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/jd/lottery/lib/ui/widget/AbsPanelFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->showYaoyiyaoRandom()V

    return-void
.end method

.method static synthetic access$1(Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->selectorPanelRed:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->showNumberPicker()V

    return-void
.end method

.method static synthetic access$4(Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->showPopupWindow(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$5(Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;)Lcom/jd/lottery/lib/formatter/Formatter;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->shouYaoyiyaoResult()V

    return-void
.end method

.method static synthetic access$7(Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->yaoyiyaorandomBallsTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private setupViews(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    .line 97
    sget v0, Lcom/jd/lottery/lib/R$id;->optional_red_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 98
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 99
    sget v2, Lcom/jd/lottery/lib/R$string;->dlt_red_panel_title:I

    .line 98
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    sget v0, Lcom/jd/lottery/lib/R$id;->optional_blue_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 101
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 102
    sget v2, Lcom/jd/lottery/lib/R$string;->dlt_blue_panel_title:I

    .line 101
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    sget v0, Lcom/jd/lottery/lib/R$id;->optional_red_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 104
    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->selectorPanelRed:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 107
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->selectorPanelRed:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 108
    const/16 v1, 0x23

    sget-object v2, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;->RED:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    .line 107
    invoke-virtual {v0, v7, v1, v2}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->init(IILcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;)V

    .line 110
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->selectorPanelRed:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 111
    new-instance v1, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$2;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$2;-><init>(Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;)V

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setOnSelectorChangedListener(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$SelectorChangedListener;)V

    .line 132
    sget v0, Lcom/jd/lottery/lib/R$id;->optional_blue_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 131
    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 133
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 134
    const/16 v1, 0xc

    sget-object v2, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;->BLUE:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    .line 133
    invoke-virtual {v0, v7, v1, v2}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->init(IILcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;)V

    .line 135
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 136
    new-instance v1, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$3;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$3;-><init>(Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;)V

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setOnSelectorChangedListener(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$SelectorChangedListener;)V

    .line 145
    sget v0, Lcom/jd/lottery/lib/R$id;->optional_random:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->randomBallsTextView:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->randomBallsTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$4;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$4;-><init>(Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    sget v0, Lcom/jd/lottery/lib/R$id;->yaoyiyao_random:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 154
    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->yaoyiyaorandomBallsTextView:Landroid/widget/TextView;

    .line 156
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->yaoyiyaorandomBallsTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 157
    sget v2, Lcom/jd/lottery/lib/R$string;->shake_random_select_num:I

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 159
    const-string v6, "shake_random_num_dlt"

    .line 158
    invoke-static {v5, v6, v7}, Lcom/jd/lottery/lib/utils/PreferenceUtil;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 156
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->yaoyiyaorandomBallsTextView:Landroid/widget/TextView;

    .line 161
    new-instance v1, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$5;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$5;-><init>(Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    return-void
.end method

.method private shouYaoyiyaoResult()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 254
    iget-object v4, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->selectorPanelRed:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v4}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->clean()V

    .line 255
    iget-object v4, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v4}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->clean()V

    .line 257
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 258
    const-string v5, "shake_random_num_dlt"

    .line 257
    invoke-static {v4, v5, v7}, Lcom/jd/lottery/lib/utils/PreferenceUtil;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 259
    .local v2, num:I
    if-ne v2, v7, :cond_0

    .line 260
    iget-object v4, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    const/4 v5, 0x5

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/jd/lottery/lib/formatter/Formatter;->random(II)Ljava/util/List;

    move-result-object v1

    .line 262
    .local v1, lists:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->selectorPanelRed:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v5, v4}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setSelected(Ljava/util/List;)V

    .line 263
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v5, v4}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setSelected(Ljava/util/List;)V

    .line 265
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->updateBetBasicInfo()V

    .line 289
    .end local v1           #lists:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 277
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "daletou"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 278
    .local v3, prev:Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_1

    .line 279
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 280
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 284
    :cond_1
    sget-object v4, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DaLeTou:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    invoke-static {v2, v4}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->newInstance(ILcom/jd/lottery/lib/data/Constants$LotteryType;)Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    move-result-object v4

    .line 283
    iput-object v4, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->ssqRandomListDialogFragment:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    .line 285
    iget-object v4, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->ssqRandomListDialogFragment:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    const-string v5, "daletou"

    invoke-virtual {v4, v0, v5}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showNumberPicker()V
    .locals 6

    .prologue
    .line 198
    const/4 v1, 0x5

    const/16 v2, 0x10

    const/4 v3, 0x2

    const/16 v4, 0xc

    sget-object v5, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DaLeTou:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->newInstance(IIIILcom/jd/lottery/lib/data/Constants$LotteryType;)Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;

    move-result-object v0

    .line 199
    .local v0, numberPickerFragment:Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 200
    const-string v2, "numberpicker"

    .line 199
    invoke-virtual {v0, v1, v2}, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 202
    new-instance v1, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$6;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$6;-><init>(Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;)V

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->setNumberPickeredListener(Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$NumberPickeredListener;)V

    .line 217
    return-void
.end method

.method private showPopupWindow(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x2

    .line 293
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 292
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 293
    sget v4, Lcom/jd/lottery/lib/R$layout;->widget_shake_random_select:I

    .line 294
    const/4 v5, 0x0

    .line 293
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 292
    check-cast v1, Landroid/widget/LinearLayout;

    .line 295
    .local v1, linearLayout:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 297
    .local v2, popup:Landroid/widget/PopupWindow;
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 298
    sget v4, Lcom/jd/lottery/lib/R$drawable;->public_box_bg:I

    .line 297
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    invoke-virtual {v2, v6, v6}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 302
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 304
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 306
    sget v3, Lcom/jd/lottery/lib/R$id;->shake_ranom_select_1:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 307
    new-instance v4, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$8;

    invoke-direct {v4, p0, v2}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$8;-><init>(Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;Landroid/widget/PopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    sget v3, Lcom/jd/lottery/lib/R$id;->shake_ranom_select_2:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 320
    new-instance v4, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$9;

    invoke-direct {v4, p0, v2}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$9;-><init>(Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;Landroid/widget/PopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    sget v3, Lcom/jd/lottery/lib/R$id;->shake_ranom_select_3:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 333
    new-instance v4, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$10;

    invoke-direct {v4, p0, v2}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$10;-><init>(Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;Landroid/widget/PopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private showYaoyiyaoRandom()V
    .locals 5

    .prologue
    .line 221
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->selectorPanelRed:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v2}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 222
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v2}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 224
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "yaoyiyao_clean"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 225
    .local v1, prev:Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1

    .line 226
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 227
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 250
    .end local v0           #ft:Landroid/support/v4/app/FragmentTransaction;
    .end local v1           #prev:Landroid/support/v4/app/Fragment;
    :goto_0
    return-void

    .line 231
    .restart local v0       #ft:Landroid/support/v4/app/FragmentTransaction;
    .restart local v1       #prev:Landroid/support/v4/app/Fragment;
    :cond_1
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/jd/lottery/lib/R$string;->shake_random_clean_panel_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/jd/lottery/lib/R$string;->shake_random_clean_panel_message:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 230
    invoke-static {v2, v3}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;

    move-result-object v2

    .line 229
    iput-object v2, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->yaoyiyaoCleanDialogFragment:Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;

    .line 233
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->yaoyiyaoCleanDialogFragment:Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;

    .line 234
    new-instance v3, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$7;

    invoke-direct {v3, p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$7;-><init>(Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;)V

    invoke-virtual {v2, v3}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->setOnActionClickListener(Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$ActionClickListener;)V

    .line 245
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->yaoyiyaoCleanDialogFragment:Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;

    const-string v3, "yaoyiyao_clean"

    invoke-virtual {v2, v0, v3}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    .end local v0           #ft:Landroid/support/v4/app/FragmentTransaction;
    .end local v1           #prev:Landroid/support/v4/app/Fragment;
    :cond_2
    invoke-direct {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->shouYaoyiyaoResult()V

    goto :goto_0
.end method


# virtual methods
.method public addLottery()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 361
    const/4 v0, -0x1

    .line 362
    .local v0, type:I
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getSelectedBalls()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getSelectedBalls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 363
    const/4 v0, 0x0

    .line 368
    :goto_0
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getSelectedBalls()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, v3, v0, v4}, Lcom/jd/lottery/lib/utils/Util;->checkRule(Landroid/content/Context;Lcom/jd/lottery/lib/formatter/Formatter;Ljava/util/List;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getTotalMoney()J

    move-result-wide v1

    const-wide/16 v3, 0x4e20

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 371
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/jd/lottery/lib/R$string;->toast_not_exceed_2w:I

    invoke-static {v1, v2}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    .line 383
    :cond_0
    :goto_1
    return-void

    .line 365
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 374
    :cond_2
    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v1

    sget v2, Lcom/jd/lottery/lib/formatter/Formatter;->DLT:I

    .line 375
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getSelectedBalls()Ljava/util/List;

    move-result-object v3

    .line 374
    invoke-virtual {v1, v2, v0, v3}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->addLottery(IILjava/util/List;)V

    .line 376
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/jd/lottery/lib/R$string;->add_to_basket_success:I

    invoke-static {v1, v2}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    .line 378
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->clean()V

    .line 380
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->updateBetBasicInfo()V

    goto :goto_1
.end method

.method public clean()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->selectorPanelRed:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->clean()V

    .line 193
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->clean()V

    .line 194
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
    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, lists:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->selectorPanelRed:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    return-object v0
.end method

.method public getTotalMoney()J
    .locals 4

    .prologue
    .line 387
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getSelectedBalls()Ljava/util/List;

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
    .line 393
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->selectorPanelRed:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    const/4 v0, 0x1

    .line 397
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLegalLottery()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 402
    const/4 v0, -0x1

    .line 403
    .local v0, type:I
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getSelectedBalls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getSelectedBalls()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 404
    const/4 v0, 0x0

    .line 408
    :goto_0
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getSelectedBalls()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, v3, v0, v4}, Lcom/jd/lottery/lib/utils/Util;->checkRule(Landroid/content/Context;Lcom/jd/lottery/lib/formatter/Formatter;Ljava/util/List;IZ)Z

    move-result v1

    return v1

    .line 406
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/jd/lottery/lib/ui/widget/AbsPanelFragment;->onAttach(Landroid/app/Activity;)V

    .line 66
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/jd/lottery/lib/ui/widget/AbsPanelFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    sget v0, Lcom/jd/lottery/lib/formatter/Formatter;->DLT:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jd/lottery/lib/formatter/Formatter;->getFormatter(II)Lcom/jd/lottery/lib/formatter/Formatter;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    .line 73
    new-instance v0, Lcom/jd/lottery/lib/utils/ShakeListener;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jd/lottery/lib/utils/ShakeListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->mShakeListener:Lcom/jd/lottery/lib/utils/ShakeListener;

    .line 74
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->mShakeListener:Lcom/jd/lottery/lib/utils/ShakeListener;

    new-instance v1, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$1;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment$1;-><init>(Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;)V

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/utils/ShakeListener;->setOnShakeListener(Lcom/jd/lottery/lib/utils/ShakeListener$OnShakeListener;)V

    .line 82
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 87
    sget v0, Lcom/jd/lottery/lib/R$layout;->fragment_optional_selector:I

    .line 88
    const/4 v1, 0x0

    .line 87
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->freagmentView:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->freagmentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->setupViews(Landroid/view/View;)V

    .line 92
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->freagmentView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->mShakeListener:Lcom/jd/lottery/lib/utils/ShakeListener;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/utils/ShakeListener;->stop()V

    .line 36
    invoke-super {p0}, Lcom/jd/lottery/lib/ui/widget/AbsPanelFragment;->onPause()V

    .line 37
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->mShakeListener:Lcom/jd/lottery/lib/utils/ShakeListener;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/utils/ShakeListener;->start()V

    .line 42
    invoke-super {p0}, Lcom/jd/lottery/lib/ui/widget/AbsPanelFragment;->onResume()V

    .line 43
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
    .line 186
    .local p1, lists:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->selectorPanelRed:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setSelected(Ljava/util/List;)V

    .line 187
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setSelected(Ljava/util/List;)V

    .line 188
    return-void
.end method

.method public setShakeSensorWork(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->mShakeListener:Lcom/jd/lottery/lib/utils/ShakeListener;

    if-eqz v0, :cond_0

    .line 413
    if-eqz p1, :cond_1

    .line 414
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->mShakeListener:Lcom/jd/lottery/lib/utils/ShakeListener;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/utils/ShakeListener;->start()V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->mShakeListener:Lcom/jd/lottery/lib/utils/ShakeListener;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/utils/ShakeListener;->stop()V

    goto :goto_0
.end method

.method public updateBetBasicInfo()V
    .locals 3

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/activity/LotteryActivity;

    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    .line 173
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->getSelectedBalls()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jd/lottery/lib/formatter/Formatter;->calculate(Ljava/util/List;)J

    move-result-wide v1

    .line 172
    invoke-virtual {v0, v1, v2}, Lcom/jd/lottery/lib/activity/LotteryActivity;->setbetBasicInfoText(J)V

    .line 174
    return-void
.end method
