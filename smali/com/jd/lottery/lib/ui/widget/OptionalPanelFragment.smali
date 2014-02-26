.class public Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;
.super Lcom/jd/lottery/lib/ui/widget/AbsPanelFragment;
.source "OptionalPanelFragment.java"


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
    .line 30
    invoke-direct {p0}, Lcom/jd/lottery/lib/ui/widget/AbsPanelFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->showYaoyiyaoRandom()V

    return-void
.end method

.method static synthetic access$1(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->selectorPanelRed:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->showNumberPicker()V

    return-void
.end method

.method static synthetic access$4(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->showPopupWindow(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$5(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;)Lcom/jd/lottery/lib/formatter/Formatter;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->shouYaoyiyaoResult()V

    return-void
.end method

.method static synthetic access$7(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->yaoyiyaorandomBallsTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private setupViews(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    .line 94
    .line 95
    sget v0, Lcom/jd/lottery/lib/R$id;->optional_red_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 94
    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->selectorPanelRed:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 97
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->selectorPanelRed:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 98
    const/16 v1, 0x21

    sget-object v2, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;->RED:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    .line 97
    invoke-virtual {v0, v7, v1, v2}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->init(IILcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;)V

    .line 100
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->selectorPanelRed:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 101
    new-instance v1, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$2;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$2;-><init>(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;)V

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setOnSelectorChangedListener(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$SelectorChangedListener;)V

    .line 121
    sget v0, Lcom/jd/lottery/lib/R$id;->optional_blue_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 120
    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 122
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 123
    const/16 v1, 0x10

    sget-object v2, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;->BLUE:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    .line 122
    invoke-virtual {v0, v7, v1, v2}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->init(IILcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;)V

    .line 124
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 125
    new-instance v1, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$3;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$3;-><init>(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;)V

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setOnSelectorChangedListener(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$SelectorChangedListener;)V

    .line 135
    sget v0, Lcom/jd/lottery/lib/R$id;->optional_random:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->randomBallsTextView:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->randomBallsTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$4;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$4;-><init>(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    sget v0, Lcom/jd/lottery/lib/R$id;->yaoyiyao_random:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 144
    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->yaoyiyaorandomBallsTextView:Landroid/widget/TextView;

    .line 147
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->yaoyiyaorandomBallsTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 148
    sget v2, Lcom/jd/lottery/lib/R$string;->shake_random_select_num:I

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 150
    const-string v6, "shake_random_num_ssq"

    .line 149
    invoke-static {v5, v6, v7}, Lcom/jd/lottery/lib/utils/PreferenceUtil;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 147
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->yaoyiyaorandomBallsTextView:Landroid/widget/TextView;

    .line 152
    new-instance v1, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$5;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$5;-><init>(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    return-void
.end method

.method private shouYaoyiyaoResult()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 296
    iget-object v4, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->selectorPanelRed:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v4}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->clean()V

    .line 297
    iget-object v4, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v4}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->clean()V

    .line 299
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 300
    const-string v5, "shake_random_num_ssq"

    .line 299
    invoke-static {v4, v5, v6}, Lcom/jd/lottery/lib/utils/PreferenceUtil;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 301
    .local v2, num:I
    if-ne v2, v6, :cond_0

    .line 302
    iget-object v4, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v6}, Lcom/jd/lottery/lib/formatter/Formatter;->random(II)Ljava/util/List;

    move-result-object v1

    .line 304
    .local v1, lists:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->selectorPanelRed:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v5, v4}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setSelected(Ljava/util/List;)V

    .line 305
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v5, v4}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setSelected(Ljava/util/List;)V

    .line 307
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->updateBetBasicInfo()V

    .line 322
    .end local v1           #lists:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 311
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "yaoyiyao"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 312
    .local v3, prev:Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_1

    .line 313
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 314
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 318
    :cond_1
    sget-object v4, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DoubleColor:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    invoke-static {v2, v4}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->newInstance(ILcom/jd/lottery/lib/data/Constants$LotteryType;)Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    move-result-object v4

    .line 317
    iput-object v4, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->ssqRandomListDialogFragment:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    .line 319
    iget-object v4, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->ssqRandomListDialogFragment:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    const-string v5, "yaoyiyao"

    invoke-virtual {v4, v0, v5}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showNumberPicker()V
    .locals 5

    .prologue
    const/16 v4, 0x10

    .line 189
    const/4 v1, 0x6

    const/4 v2, 0x1

    sget-object v3, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DoubleColor:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    invoke-static {v1, v4, v2, v4, v3}, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->newInstance(IIIILcom/jd/lottery/lib/data/Constants$LotteryType;)Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;

    move-result-object v0

    .line 190
    .local v0, numberPickerFragment:Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 191
    const-string v2, "numberpicker"

    .line 190
    invoke-virtual {v0, v1, v2}, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 193
    new-instance v1, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$6;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$6;-><init>(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;)V

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->setNumberPickeredListener(Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$NumberPickeredListener;)V

    .line 209
    return-void
.end method

.method private showPopupWindow(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x2

    .line 326
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 325
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 326
    sget v4, Lcom/jd/lottery/lib/R$layout;->widget_shake_random_select:I

    .line 327
    const/4 v5, 0x0

    .line 326
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 325
    check-cast v1, Landroid/widget/LinearLayout;

    .line 328
    .local v1, linearLayout:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 330
    .local v2, popup:Landroid/widget/PopupWindow;
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 331
    sget v4, Lcom/jd/lottery/lib/R$drawable;->public_box_bg:I

    .line 330
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 332
    invoke-virtual {v2, v6, v6}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 335
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 337
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 339
    sget v3, Lcom/jd/lottery/lib/R$id;->shake_ranom_select_1:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 340
    new-instance v4, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$8;

    invoke-direct {v4, p0, v2}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$8;-><init>(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;Landroid/widget/PopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    sget v3, Lcom/jd/lottery/lib/R$id;->shake_ranom_select_2:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 353
    new-instance v4, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$9;

    invoke-direct {v4, p0, v2}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$9;-><init>(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;Landroid/widget/PopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    sget v3, Lcom/jd/lottery/lib/R$id;->shake_ranom_select_3:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 366
    new-instance v4, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$10;

    invoke-direct {v4, p0, v2}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$10;-><init>(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;Landroid/widget/PopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private showYaoyiyaoRandom()V
    .locals 5

    .prologue
    .line 265
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->selectorPanelRed:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v2}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v2}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 267
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "yaoyiyao_clean"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 268
    .local v1, prev:Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1

    .line 269
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 270
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 292
    .end local v0           #ft:Landroid/support/v4/app/FragmentTransaction;
    .end local v1           #prev:Landroid/support/v4/app/Fragment;
    :goto_0
    return-void

    .line 274
    .restart local v0       #ft:Landroid/support/v4/app/FragmentTransaction;
    .restart local v1       #prev:Landroid/support/v4/app/Fragment;
    :cond_1
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/jd/lottery/lib/R$string;->shake_random_clean_panel_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/jd/lottery/lib/R$string;->shake_random_clean_panel_message:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-static {v2, v3}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;

    move-result-object v2

    .line 272
    iput-object v2, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->yaoyiyaoCleanDialogFragment:Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;

    .line 276
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->yaoyiyaoCleanDialogFragment:Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;

    new-instance v3, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$7;

    invoke-direct {v3, p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$7;-><init>(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;)V

    invoke-virtual {v2, v3}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->setOnActionClickListener(Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$ActionClickListener;)V

    .line 287
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->yaoyiyaoCleanDialogFragment:Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;

    const-string v3, "yaoyiyao_clean"

    invoke-virtual {v2, v0, v3}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0

    .line 290
    .end local v0           #ft:Landroid/support/v4/app/FragmentTransaction;
    .end local v1           #prev:Landroid/support/v4/app/Fragment;
    :cond_2
    invoke-direct {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->shouYaoyiyaoResult()V

    goto :goto_0
.end method


# virtual methods
.method public addLottery()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 213
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->getSelectedBalls()Ljava/util/List;

    move-result-object v0

    .line 216
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const/4 v1, -0x1

    .line 217
    .local v1, type:I
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 218
    const/4 v1, 0x0

    .line 222
    :goto_0
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    invoke-static {v2, v3, v0, v1, v4}, Lcom/jd/lottery/lib/utils/Util;->checkRule(Landroid/content/Context;Lcom/jd/lottery/lib/formatter/Formatter;Ljava/util/List;IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->getTotalMoney()J

    move-result-wide v2

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 225
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/jd/lottery/lib/R$string;->toast_not_exceed_2w:I

    invoke-static {v2, v3}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    .line 237
    :cond_0
    :goto_1
    return-void

    .line 220
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 228
    :cond_2
    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v2

    sget v3, Lcom/jd/lottery/lib/formatter/Formatter;->SSQ:I

    .line 229
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->getSelectedBalls()Ljava/util/List;

    move-result-object v4

    .line 228
    invoke-virtual {v2, v3, v1, v4}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->addLottery(IILjava/util/List;)V

    .line 230
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/jd/lottery/lib/R$string;->add_to_basket_success:I

    invoke-static {v2, v3}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    .line 232
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->clean()V

    .line 234
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->updateBetBasicInfo()V

    goto :goto_1
.end method

.method public clean()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->selectorPanelRed:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->clean()V

    .line 184
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->clean()V

    .line 185
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
    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v0, lists:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->selectorPanelRed:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    return-object v0
.end method

.method public getTotalMoney()J
    .locals 4

    .prologue
    .line 388
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->getSelectedBalls()Ljava/util/List;

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
    .line 242
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->selectorPanelRed:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 244
    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLegalLottery()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->getSelectedBalls()Ljava/util/List;

    move-result-object v0

    .line 254
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const/4 v1, -0x1

    .line 255
    .local v1, type:I
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 256
    const/4 v1, 0x0

    .line 260
    :goto_0
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    invoke-static {v2, v3, v0, v1, v4}, Lcom/jd/lottery/lib/utils/Util;->checkRule(Landroid/content/Context;Lcom/jd/lottery/lib/formatter/Formatter;Ljava/util/List;IZ)Z

    move-result v2

    return v2

    .line 258
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/jd/lottery/lib/ui/widget/AbsPanelFragment;->onAttach(Landroid/app/Activity;)V

    .line 64
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/jd/lottery/lib/ui/widget/AbsPanelFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget v0, Lcom/jd/lottery/lib/formatter/Formatter;->SSQ:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jd/lottery/lib/formatter/Formatter;->getFormatter(II)Lcom/jd/lottery/lib/formatter/Formatter;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    .line 71
    new-instance v0, Lcom/jd/lottery/lib/utils/ShakeListener;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jd/lottery/lib/utils/ShakeListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->mShakeListener:Lcom/jd/lottery/lib/utils/ShakeListener;

    .line 72
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->mShakeListener:Lcom/jd/lottery/lib/utils/ShakeListener;

    new-instance v1, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$1;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$1;-><init>(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;)V

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/utils/ShakeListener;->setOnShakeListener(Lcom/jd/lottery/lib/utils/ShakeListener$OnShakeListener;)V

    .line 80
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 85
    sget v0, Lcom/jd/lottery/lib/R$layout;->fragment_optional_selector:I

    .line 86
    const/4 v1, 0x0

    .line 85
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->freagmentView:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->freagmentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->setupViews(Landroid/view/View;)V

    .line 90
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->freagmentView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->mShakeListener:Lcom/jd/lottery/lib/utils/ShakeListener;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/utils/ShakeListener;->stop()V

    .line 35
    invoke-super {p0}, Lcom/jd/lottery/lib/ui/widget/AbsPanelFragment;->onPause()V

    .line 36
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->mShakeListener:Lcom/jd/lottery/lib/utils/ShakeListener;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/utils/ShakeListener;->start()V

    .line 41
    invoke-super {p0}, Lcom/jd/lottery/lib/ui/widget/AbsPanelFragment;->onResume()V

    .line 42
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
    .line 177
    .local p1, lists:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->selectorPanelRed:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setSelected(Ljava/util/List;)V

    .line 178
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setSelected(Ljava/util/List;)V

    .line 179
    return-void
.end method

.method public setShakeSensorWork(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->mShakeListener:Lcom/jd/lottery/lib/utils/ShakeListener;

    if-eqz v0, :cond_0

    .line 395
    if-eqz p1, :cond_1

    .line 396
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->mShakeListener:Lcom/jd/lottery/lib/utils/ShakeListener;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/utils/ShakeListener;->start()V

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->mShakeListener:Lcom/jd/lottery/lib/utils/ShakeListener;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/utils/ShakeListener;->stop()V

    goto :goto_0
.end method

.method public updateBetBasicInfo()V
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/activity/LotteryActivity;

    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;

    .line 164
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->getSelectedBalls()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jd/lottery/lib/formatter/Formatter;->calculate(Ljava/util/List;)J

    move-result-wide v1

    .line 163
    invoke-virtual {v0, v1, v2}, Lcom/jd/lottery/lib/activity/LotteryActivity;->setbetBasicInfoText(J)V

    .line 165
    return-void
.end method
