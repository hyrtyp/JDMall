.class public Lcom/jd/lottery/lib/activity/LotteryActivity;
.super Lcom/jd/lottery/lib/activity/BaseActivity;
.source "LotteryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jd/lottery/lib/activity/LotteryActivity$MyFragmentAdapter;
    }
.end annotation


# static fields
.field public static final EXTRA_ARR_STR:Ljava/lang/String; = "arr_str"

.field public static final LOTTERY_TYPE:Ljava/lang/String; = "lottery_type"

.field private static final PAGE_FIRST:I = 0x0

.field private static final PAGE_SECOND:I = 0x1

.field private static mFragmeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private addButton:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private awardNumber:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private betBasicInfo:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private betButton:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private clearButton:Landroid/widget/ImageView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field public countInCart:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private currIssuePeriod:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private dialogFactory:Lcom/jd/droidlib/util/ui/AbstractDialogFactory;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectDependency;
    .end annotation
.end field

.field private mAdapter:Lcom/jd/lottery/lib/activity/LotteryActivity$MyFragmentAdapter;

.field private mBallSelectorViewPager:Landroid/support/v4/view/ViewPager;

.field private mCountDownUtil:Lcom/jd/lottery/lib/utils/CountDownUtil;

.field private mCurrentPager:I

.field private mDaletouFragmentDuplexPanel:Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;

.field private mDaletouFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;

.field private mDuplexTextView:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private mFragmentDuplexPanel:Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;

.field private mFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

.field private mIssueEntity:Lcom/jd/lottery/lib/model/LotteryEntity;

.field private mIssueManager:Lcom/jd/lottery/lib/data/LotteryIssueManager;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectDependency;
    .end annotation
.end field

.field private mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectBundleExtra;
        key = "lottery_type"
    .end annotation
.end field

.field private mOptionalTextView:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private mPanelTabLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private prevIssuePeriod:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private final refreshResultReceiver:Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;

.field private stuanTitle:Lcom/jd/lottery/lib/ui/widget/StuanTitle;

.field private timeCounter:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/jd/lottery/lib/activity/BaseActivity;-><init>()V

    .line 544
    new-instance v0, Lcom/jd/lottery/lib/activity/LotteryActivity$1;

    invoke-direct {v0, p0}, Lcom/jd/lottery/lib/activity/LotteryActivity$1;-><init>(Lcom/jd/lottery/lib/activity/LotteryActivity;)V

    iput-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->refreshResultReceiver:Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/jd/lottery/lib/activity/LotteryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->updateCurrIssue()V

    return-void
.end method

.method static synthetic access$1(Lcom/jd/lottery/lib/activity/LotteryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->updatePrevIssue()V

    return-void
.end method

.method static synthetic access$10(Lcom/jd/lottery/lib/activity/LotteryActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mBallSelectorViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jd/lottery/lib/activity/LotteryActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 693
    invoke-direct {p0, p1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->updateTab(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/data/Constants$LotteryType;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jd/lottery/lib/activity/LotteryActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->timeCounter:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jd/lottery/lib/activity/LotteryActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 119
    iget v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mCurrentPager:I

    return v0
.end method

.method static synthetic access$5(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmentDuplexPanel:Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mDaletouFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mDaletouFragmentDuplexPanel:Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/model/LotteryEntity;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mIssueEntity:Lcom/jd/lottery/lib/model/LotteryEntity;

    return-object v0
.end method

.method public static getIntent(Landroid/content/Context;Lcom/jd/lottery/lib/data/Constants$LotteryType;)Landroid/content/Intent;
    .locals 2
    .parameter "ctx"
    .parameter "lotteryType"

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jd/lottery/lib/activity/LotteryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "lottery_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 68
    return-object v0
.end method

.method private init(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 257
    new-instance v1, Lcom/jd/lottery/lib/utils/CountDownUtil;

    invoke-direct {v1}, Lcom/jd/lottery/lib/utils/CountDownUtil;-><init>()V

    iput-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mCountDownUtil:Lcom/jd/lottery/lib/utils/CountDownUtil;

    .line 258
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mCountDownUtil:Lcom/jd/lottery/lib/utils/CountDownUtil;

    new-instance v2, Lcom/jd/lottery/lib/activity/LotteryActivity$3;

    invoke-direct {v2, p0}, Lcom/jd/lottery/lib/activity/LotteryActivity$3;-><init>(Lcom/jd/lottery/lib/activity/LotteryActivity;)V

    invoke-virtual {v1, v2}, Lcom/jd/lottery/lib/utils/CountDownUtil;->setCountDownListner(Lcom/jd/lottery/lib/utils/CountDownUtil$CountDownListner;)V

    .line 279
    invoke-direct {p0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->updateCurrIssue()V

    .line 280
    invoke-direct {p0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->updatePrevIssue()V

    .line 282
    sget v1, Lcom/jd/lottery/lib/R$id;->titlebar:I

    invoke-virtual {p0, v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/jd/lottery/lib/ui/widget/StuanTitle;

    iput-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->stuanTitle:Lcom/jd/lottery/lib/ui/widget/StuanTitle;

    .line 284
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DoubleColor:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v1, v2, :cond_1

    .line 285
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->stuanTitle:Lcom/jd/lottery/lib/ui/widget/StuanTitle;

    sget v2, Lcom/jd/lottery/lib/R$string;->double_color:I

    invoke-virtual {v1, v2}, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->setTitleText(I)V

    .line 290
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->stuanTitle:Lcom/jd/lottery/lib/ui/widget/StuanTitle;

    new-instance v2, Lcom/jd/lottery/lib/activity/LotteryActivity$4;

    invoke-direct {v2, p0}, Lcom/jd/lottery/lib/activity/LotteryActivity$4;-><init>(Lcom/jd/lottery/lib/activity/LotteryActivity;)V

    invoke-virtual {v1, v2}, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->setOnTitleClickListener(Lcom/jd/lottery/lib/ui/widget/StuanTitle$TitleClickListener;)V

    .line 308
    invoke-direct {p0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->initBallSelectorPanelTab()V

    .line 309
    invoke-direct {p0, p1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->initBallSelectorPanelViewPager(Landroid/os/Bundle;)V

    .line 315
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->refreshResultReceiver:Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;

    .line 314
    invoke-static {p0, v1}, Lcom/jd/lottery/lib/service/DataIntentService;->getIssueIntent(Landroid/content/Context;Landroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v0

    .line 316
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 317
    invoke-virtual {p0, v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 322
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->timeCounter:Landroid/widget/TextView;

    sget v2, Lcom/jd/lottery/lib/R$string;->time_counter:I

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->timeCounter:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 326
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->addButton:Landroid/widget/TextView;

    new-instance v2, Lcom/jd/lottery/lib/activity/LotteryActivity$5;

    invoke-direct {v2, p0}, Lcom/jd/lottery/lib/activity/LotteryActivity$5;-><init>(Lcom/jd/lottery/lib/activity/LotteryActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->betButton:Landroid/widget/TextView;

    new-instance v2, Lcom/jd/lottery/lib/activity/LotteryActivity$6;

    invoke-direct {v2, p0}, Lcom/jd/lottery/lib/activity/LotteryActivity$6;-><init>(Lcom/jd/lottery/lib/activity/LotteryActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->clearButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/jd/lottery/lib/activity/LotteryActivity$7;

    invoke-direct {v2, p0}, Lcom/jd/lottery/lib/activity/LotteryActivity$7;-><init>(Lcom/jd/lottery/lib/activity/LotteryActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/jd/lottery/lib/activity/LotteryActivity;->setbetBasicInfoText(J)V

    .line 540
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->awardNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 541
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->timeCounter:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 542
    return-void

    .line 286
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DaLeTou:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v1, v2, :cond_0

    .line 287
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->stuanTitle:Lcom/jd/lottery/lib/ui/widget/StuanTitle;

    sget v2, Lcom/jd/lottery/lib/R$string;->da_le_tou:I

    invoke-virtual {v1, v2}, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->setTitleText(I)V

    goto/16 :goto_0
.end method

.method private initBallSelectorPanelTab()V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mOptionalTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/jd/lottery/lib/activity/LotteryActivity$8;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/activity/LotteryActivity$8;-><init>(Lcom/jd/lottery/lib/activity/LotteryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mDuplexTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/jd/lottery/lib/activity/LotteryActivity$9;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/activity/LotteryActivity$9;-><init>(Lcom/jd/lottery/lib/activity/LotteryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    return-void
.end method

.method private initBallSelectorPanelViewPager(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmeList:Ljava/util/ArrayList;

    .line 612
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DoubleColor:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v0, v1, :cond_1

    .line 631
    new-instance v0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    invoke-direct {v0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;-><init>()V

    iput-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    .line 632
    new-instance v0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;

    invoke-direct {v0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;-><init>()V

    iput-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmentDuplexPanel:Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;

    .line 633
    sget-object v0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmeList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    sget-object v0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmeList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmentDuplexPanel:Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_0
    :goto_0
    new-instance v0, Lcom/jd/lottery/lib/activity/LotteryActivity$MyFragmentAdapter;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 643
    sget-object v2, Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmeList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/jd/lottery/lib/activity/LotteryActivity$MyFragmentAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    .line 642
    iput-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mAdapter:Lcom/jd/lottery/lib/activity/LotteryActivity$MyFragmentAdapter;

    .line 644
    sget v0, Lcom/jd/lottery/lib/R$id;->ball_selector_panel_pager:I

    invoke-virtual {p0, v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mBallSelectorViewPager:Landroid/support/v4/view/ViewPager;

    .line 645
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mBallSelectorViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mAdapter:Lcom/jd/lottery/lib/activity/LotteryActivity$MyFragmentAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 646
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mBallSelectorViewPager:Landroid/support/v4/view/ViewPager;

    .line 647
    new-instance v1, Lcom/jd/lottery/lib/activity/LotteryActivity$10;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/activity/LotteryActivity$10;-><init>(Lcom/jd/lottery/lib/activity/LotteryActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 664
    const/4 v0, 0x0

    iput v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mCurrentPager:I

    .line 665
    return-void

    .line 635
    :cond_1
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DaLeTou:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v0, v1, :cond_0

    .line 636
    new-instance v0, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;

    invoke-direct {v0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;-><init>()V

    iput-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mDaletouFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;

    .line 637
    new-instance v0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;

    invoke-direct {v0}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;-><init>()V

    iput-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mDaletouFragmentDuplexPanel:Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;

    .line 638
    sget-object v0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmeList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mDaletouFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    sget-object v0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmeList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mDaletouFragmentDuplexPanel:Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateCurrIssue()V
    .locals 9

    .prologue
    .line 558
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mIssueManager:Lcom/jd/lottery/lib/data/LotteryIssueManager;

    iget-object v6, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    invoke-virtual {v5, v6}, Lcom/jd/lottery/lib/data/LotteryIssueManager;->selectCurr(Lcom/jd/lottery/lib/data/Constants$LotteryType;)Lcom/jd/droidlib/persist/sql/stmt/Select;

    move-result-object v4

    .line 559
    .local v4, select:Lcom/jd/droidlib/persist/sql/stmt/Select;,"Lcom/jd/droidlib/persist/sql/stmt/Select<Lcom/jd/lottery/lib/model/LotteryEntity;>;"
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mIssueManager:Lcom/jd/lottery/lib/data/LotteryIssueManager;

    invoke-virtual {v5, v4}, Lcom/jd/lottery/lib/data/LotteryIssueManager;->readFirst(Lcom/jd/droidlib/persist/sql/stmt/Select;)Lcom/jd/droidlib/model/Entity;

    move-result-object v5

    check-cast v5, Lcom/jd/lottery/lib/model/LotteryEntity;

    iput-object v5, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mIssueEntity:Lcom/jd/lottery/lib/model/LotteryEntity;

    .line 560
    const-string v3, "?"

    .line 561
    .local v3, issueString:Ljava/lang/String;
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mIssueEntity:Lcom/jd/lottery/lib/model/LotteryEntity;

    if-eqz v5, :cond_0

    .line 562
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mIssueEntity:Lcom/jd/lottery/lib/model/LotteryEntity;

    iget-wide v5, v5, Lcom/jd/lottery/lib/model/LotteryEntity;->issuename:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 563
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 565
    .local v1, dateFormat:Ljava/text/DateFormat;
    :try_start_0
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mIssueEntity:Lcom/jd/lottery/lib/model/LotteryEntity;

    iget-object v5, v5, Lcom/jd/lottery/lib/model/LotteryEntity;->endtime:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 566
    .local v0, date:Ljava/util/Date;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "@@@@@@@@@@@"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 567
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mCountDownUtil:Lcom/jd/lottery/lib/utils/CountDownUtil;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/jd/lottery/lib/utils/CountDownUtil;->start(J)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #dateFormat:Ljava/text/DateFormat;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->currIssuePeriod:Landroid/widget/TextView;

    sget v6, Lcom/jd/lottery/lib/R$string;->curr_issue_peroid:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 573
    aput-object v3, v7, v8

    .line 572
    invoke-virtual {p0, v6, v7}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    return-void

    .line 568
    .restart local v1       #dateFormat:Ljava/text/DateFormat;
    :catch_0
    move-exception v2

    .line 569
    .local v2, e:Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private updatePrevIssue()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 577
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mIssueManager:Lcom/jd/lottery/lib/data/LotteryIssueManager;

    iget-object v5, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    invoke-virtual {v4, v5}, Lcom/jd/lottery/lib/data/LotteryIssueManager;->selectPrev(Lcom/jd/lottery/lib/data/Constants$LotteryType;)Lcom/jd/droidlib/persist/sql/stmt/Select;

    move-result-object v3

    .line 578
    .local v3, select:Lcom/jd/droidlib/persist/sql/stmt/Select;,"Lcom/jd/droidlib/persist/sql/stmt/Select<Lcom/jd/lottery/lib/model/LotteryEntity;>;"
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mIssueManager:Lcom/jd/lottery/lib/data/LotteryIssueManager;

    invoke-virtual {v4, v3}, Lcom/jd/lottery/lib/data/LotteryIssueManager;->readFirst(Lcom/jd/droidlib/persist/sql/stmt/Select;)Lcom/jd/droidlib/model/Entity;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/model/IssueEntity;

    .line 579
    .local v0, issueEntity:Lcom/jd/lottery/lib/model/IssueEntity;
    const-string v1, "?"

    .line 580
    .local v1, issueString:Ljava/lang/String;
    const-string v2, "?"

    .line 581
    .local v2, sAwardNumber:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 582
    iget-wide v4, v0, Lcom/jd/lottery/lib/model/IssueEntity;->issuename:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 583
    iget-object v2, v0, Lcom/jd/lottery/lib/model/IssueEntity;->awardcode:Ljava/lang/String;

    .line 585
    :cond_0
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->prevIssuePeriod:Landroid/widget/TextView;

    sget v5, Lcom/jd/lottery/lib/R$string;->prev_issue_peroid:I

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 586
    aput-object v1, v6, v7

    .line 585
    invoke-virtual {p0, v5, v6}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->awardNumber:Landroid/widget/TextView;

    .line 588
    invoke-static {v2}, Lcom/jd/lottery/lib/utils/LotteryNumberDecor;->decorLotteryNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->awardNumber:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 591
    return-void
.end method

.method private updateTab(I)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 695
    packed-switch p1, :pswitch_data_0

    .line 741
    :goto_0
    return-void

    .line 698
    :pswitch_0
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mPanelTabLayout:Landroid/widget/LinearLayout;

    .line 699
    sget v1, Lcom/jd/lottery/lib/R$drawable;->widget_ssq_tab_bg_optional:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 700
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mOptionalTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 701
    sget v2, Lcom/jd/lottery/lib/R$color;->lottery_panel_tab_selected:I

    .line 700
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 702
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mDuplexTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 703
    sget v2, Lcom/jd/lottery/lib/R$color;->lottery_panel_tab_unselected:I

    .line 702
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 706
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DoubleColor:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v0, v1, :cond_1

    .line 707
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->updateBetBasicInfo()V

    .line 708
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    invoke-virtual {v0, v4}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->setShakeSensorWork(Z)V

    .line 715
    :cond_0
    :goto_1
    iput v3, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mCurrentPager:I

    goto :goto_0

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DaLeTou:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v0, v1, :cond_0

    .line 710
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mDaletouFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->updateBetBasicInfo()V

    .line 711
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mDaletouFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;

    invoke-virtual {v0, v4}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->setShakeSensorWork(Z)V

    goto :goto_1

    .line 719
    :pswitch_1
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mPanelTabLayout:Landroid/widget/LinearLayout;

    .line 720
    sget v1, Lcom/jd/lottery/lib/R$drawable;->widget_ssq_tab_bg_duplex:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 721
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mOptionalTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 722
    sget v2, Lcom/jd/lottery/lib/R$color;->lottery_panel_tab_unselected:I

    .line 721
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 723
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mDuplexTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 724
    sget v2, Lcom/jd/lottery/lib/R$color;->lottery_panel_tab_selected:I

    .line 723
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 727
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DoubleColor:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v0, v1, :cond_3

    .line 728
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmentDuplexPanel:Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->updateBetBasicInfo()V

    .line 729
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    invoke-virtual {v0, v3}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->setShakeSensorWork(Z)V

    .line 736
    :cond_2
    :goto_2
    iput v4, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mCurrentPager:I

    goto/16 :goto_0

    .line 730
    :cond_3
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DaLeTou:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v0, v1, :cond_2

    .line 731
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mDaletouFragmentDuplexPanel:Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->updateBetBasicInfo()V

    .line 732
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mDaletouFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;

    invoke-virtual {v0, v3}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->setShakeSensorWork(Z)V

    goto :goto_2

    .line 695
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 142
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/jd/lottery/lib/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-direct {p0, p1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->init(Landroid/os/Bundle;)V

    .line 133
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 194
    const/4 v2, 0x4

    if-ne p1, v2, :cond_6

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "latest_red"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    invoke-virtual {v3}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Lcom/jd/lottery/lib/utils/PreferenceUtil;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "latest_blue"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    invoke-virtual {v3}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Lcom/jd/lottery/lib/utils/PreferenceUtil;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 199
    const/4 v1, 0x0

    .line 200
    .local v1, isSeletcedBalls:Z
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    sget-object v3, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DoubleColor:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v2, v3, :cond_3

    .line 201
    iget v2, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mCurrentPager:I

    if-nez v2, :cond_2

    .line 202
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    invoke-virtual {v2}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    const/4 v1, 0x1

    .line 223
    :cond_0
    :goto_0
    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v2

    .line 224
    iget-object v3, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    invoke-virtual {v3}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getLotterys(I)I

    move-result v2

    .line 223
    if-nez v2, :cond_1

    .line 225
    if-eqz v1, :cond_5

    .line 228
    :cond_1
    sget v2, Lcom/jd/lottery/lib/R$string;->dialog_clear_lottery_title:I

    invoke-virtual {p0, v2}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 229
    sget v3, Lcom/jd/lottery/lib/R$string;->dialog_clear_lottery_content:I

    invoke-virtual {p0, v3}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-static {v2, v3}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;

    move-result-object v0

    .line 231
    .local v0, alertDialogFragment:Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;
    new-instance v2, Lcom/jd/lottery/lib/activity/LotteryActivity$2;

    invoke-direct {v2, p0}, Lcom/jd/lottery/lib/activity/LotteryActivity$2;-><init>(Lcom/jd/lottery/lib/activity/LotteryActivity;)V

    invoke-virtual {v0, v2}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->setOnActionClickListener(Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$ActionClickListener;)V

    .line 246
    invoke-virtual {p0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 247
    const-string v3, "finishLotteryActivity"

    .line 246
    invoke-virtual {v0, v2, v3}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 248
    const/4 v2, 0x1

    .line 253
    .end local v0           #alertDialogFragment:Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;
    .end local v1           #isSeletcedBalls:Z
    :goto_1
    return v2

    .line 206
    .restart local v1       #isSeletcedBalls:Z
    :cond_2
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmentDuplexPanel:Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;

    invoke-virtual {v2}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    const/4 v1, 0x1

    .line 210
    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    sget-object v3, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DaLeTou:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v2, v3, :cond_0

    .line 211
    iget v2, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mCurrentPager:I

    if-nez v2, :cond_4

    .line 212
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mDaletouFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;

    invoke-virtual {v2}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    const/4 v1, 0x1

    .line 215
    goto :goto_0

    .line 216
    :cond_4
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mDaletouFragmentDuplexPanel:Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;

    invoke-virtual {v2}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 217
    const/4 v1, 0x1

    goto :goto_0

    .line 250
    :cond_5
    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v2

    .line 251
    iget-object v3, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    invoke-virtual {v3}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->getValue()I

    move-result v3

    .line 250
    invoke-virtual {v2, v3}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->clear(I)V

    .line 253
    .end local v1           #isSeletcedBalls:Z
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/jd/lottery/lib/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mCountDownUtil:Lcom/jd/lottery/lib/utils/CountDownUtil;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/utils/CountDownUtil;->pause()V

    .line 147
    invoke-super {p0}, Lcom/jd/lottery/lib/activity/BaseActivity;->onPause()V

    .line 148
    return-void
.end method

.method public onPreInject()V
    .locals 1

    .prologue
    .line 125
    sget v0, Lcom/jd/lottery/lib/R$layout;->activity_lottery_ssq:I

    invoke-virtual {p0, v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->setContentView(I)V

    .line 126
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mCountDownUtil:Lcom/jd/lottery/lib/utils/CountDownUtil;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/utils/CountDownUtil;->resume()V

    .line 154
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DoubleColor:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v0, v1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->countInCart:Landroid/widget/TextView;

    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v1

    .line 156
    sget v2, Lcom/jd/lottery/lib/formatter/Formatter;->SSQ:I

    invoke-virtual {v1, v2}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getLotterys(I)I

    move-result v1

    .line 155
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/jd/lottery/lib/activity/BaseActivity;->onResume()V

    .line 163
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DaLeTou:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->countInCart:Landroid/widget/TextView;

    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v1

    .line 159
    sget v2, Lcom/jd/lottery/lib/formatter/Formatter;->DLT:I

    invoke-virtual {v1, v2}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getLotterys(I)I

    move-result v1

    .line 158
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 168
    if-eqz p1, :cond_2

    .line 169
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DoubleColor:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v0, v1, :cond_1

    .line 170
    iget v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mCurrentPager:I

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    invoke-virtual {v0, v3}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->setShakeSensorWork(Z)V

    .line 189
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/jd/lottery/lib/activity/BaseActivity;->onWindowFocusChanged(Z)V

    .line 190
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DaLeTou:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v0, v1, :cond_0

    .line 174
    iget v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mCurrentPager:I

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mDaletouFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;

    invoke-virtual {v0, v3}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->setShakeSensorWork(Z)V

    goto :goto_0

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DoubleColor:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v0, v1, :cond_3

    .line 180
    iget v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mCurrentPager:I

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    invoke-virtual {v0, v2}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->setShakeSensorWork(Z)V

    goto :goto_0

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DaLeTou:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v0, v1, :cond_0

    .line 184
    iget v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mCurrentPager:I

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->mDaletouFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;

    invoke-virtual {v0, v2}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->setShakeSensorWork(Z)V

    goto :goto_0
.end method

.method public setbetBasicInfoText(J)V
    .locals 7
    .parameter "i"

    .prologue
    .line 745
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity;->betBasicInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/jd/lottery/lib/R$string;->basic_bet_info:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 746
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-wide/16 v5, 0x2

    mul-long/2addr v5, p1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 745
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    return-void
.end method
