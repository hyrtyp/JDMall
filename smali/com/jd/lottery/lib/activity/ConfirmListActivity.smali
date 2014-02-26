.class public Lcom/jd/lottery/lib/activity/ConfirmListActivity;
.super Lcom/jd/lottery/lib/activity/BaseActivity;
.source "ConfirmListActivity.java"


# static fields
.field private static final ISSUE_ENTITY:Ljava/lang/String; = "essueEntity"

.field private static final KIND:Ljava/lang/String; = "kind"

.field private static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field private aggrementCheckBox:Landroid/widget/CheckBox;

.field private aggrementTextView:Landroid/widget/TextView;

.field private issueEntity:Lcom/jd/lottery/lib/model/IssueEntity;

.field private mAdapter:Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;

.field private mCheck:Z

.field private mCheckBox:Landroid/widget/ImageView;

.field private mCheckText:Landroid/widget/TextView;

.field private mDescription:Landroid/widget/TextView;

.field private mFormatter:Lcom/jd/lottery/lib/formatter/Formatter;

.field private mKind:I

.field private mNumbers:Landroid/widget/EditText;

.field private mTimes:Landroid/widget/EditText;

.field private mTitle:Lcom/jd/lottery/lib/ui/widget/StuanTitle;

.field private mTotal:Landroid/widget/TextView;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/jd/lottery/lib/activity/BaseActivity;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheck:Z

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mAdapter:Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 63
    iget v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mKind:I

    return v0
.end method

.method static synthetic access$10(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->submit()V

    return-void
.end method

.method static synthetic access$2(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->displayTotalMoney()V

    return-void
.end method

.method static synthetic access$3(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Lcom/jd/lottery/lib/formatter/Formatter;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mFormatter:Lcom/jd/lottery/lib/formatter/Formatter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheck:Z

    return v0
.end method

.method static synthetic access$5(Lcom/jd/lottery/lib/activity/ConfirmListActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheck:Z

    return-void
.end method

.method static synthetic access$6(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheckBox:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mNumbers:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheckText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTimes:Landroid/widget/EditText;

    return-object v0
.end method

.method private calculateTotalMoney(II)I
    .locals 4
    .parameter "times"
    .parameter "numbers"

    .prologue
    .line 384
    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v1

    iget v2, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mKind:I

    iget-object v3, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mFormatter:Lcom/jd/lottery/lib/formatter/Formatter;

    invoke-virtual {v1, v2, v3}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->totalMoney(ILcom/jd/lottery/lib/formatter/Formatter;)I

    move-result v0

    .line 385
    .local v0, total:I
    mul-int v1, v0, p2

    mul-int v0, v1, p1

    .line 386
    return v0
.end method

.method private displayTotalMoney()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 401
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTimes:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getEditValue(Landroid/widget/EditText;)I

    move-result v1

    .line 402
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mNumbers:Landroid/widget/EditText;

    invoke-direct {p0, v2}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getEditValue(Landroid/widget/EditText;)I

    move-result v2

    .line 401
    invoke-direct {p0, v1, v2}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->calculateTotalMoney(II)I

    move-result v0

    .line 403
    .local v0, total:I
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 404
    sget v3, Lcom/jd/lottery/lib/R$string;->total_term_formater:I

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 405
    div-int/lit8 v5, v0, 0x2

    iget-object v6, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTimes:Landroid/widget/EditText;

    invoke-direct {p0, v6}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getEditValue(Landroid/widget/EditText;)I

    move-result v6

    div-int/2addr v5, v6

    iget-object v6, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mNumbers:Landroid/widget/EditText;

    invoke-direct {p0, v6}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getEditValue(Landroid/widget/EditText;)I

    move-result v6

    div-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 406
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mNumbers:Landroid/widget/EditText;

    invoke-direct {p0, v5}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getEditValue(Landroid/widget/EditText;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTimes:Landroid/widget/EditText;

    invoke-direct {p0, v6}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getEditValue(Landroid/widget/EditText;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 403
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTotal:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/jd/lottery/lib/R$string;->total_money_formater:I

    new-array v4, v8, [Ljava/lang/Object;

    .line 408
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 407
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    return-void
.end method

.method private getEditValue(Landroid/widget/EditText;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 390
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, value:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 392
    const/4 v1, 0x1

    .line 394
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private getStopFlag()I
    .locals 1

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheck:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 465
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static launch(Landroid/app/Activity;IILcom/jd/lottery/lib/model/IssueEntity;)V
    .locals 2
    .parameter "activity"
    .parameter "kind"
    .parameter "type"
    .parameter "issueEntity"

    .prologue
    .line 455
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 456
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "kind"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 457
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 458
    const-string v1, "essueEntity"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 459
    const-class v1, Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 460
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 461
    return-void
.end method

.method private submit()V
    .locals 12

    .prologue
    .line 413
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->aggrementCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 414
    invoke-virtual {p0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/jd/lottery/lib/R$string;->toast_aggrement_unchecked:I

    invoke-static {v0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v0

    iget v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mKind:I

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getLotterys(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 419
    invoke-virtual {p0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/jd/lottery/lib/R$string;->toast_basket_is_empty:I

    invoke-static {v0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mNumbers:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getEditValue(Landroid/widget/EditText;)I

    move-result v3

    .line 424
    .local v3, numbers:I
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTimes:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getEditValue(Landroid/widget/EditText;)I

    move-result v4

    .line 426
    .local v4, times:I
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTimes:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getEditValue(Landroid/widget/EditText;)I

    move-result v0

    .line 427
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mNumbers:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getEditValue(Landroid/widget/EditText;)I

    move-result v1

    .line 426
    invoke-direct {p0, v0, v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->calculateTotalMoney(II)I

    move-result v6

    .line 428
    .local v6, total:I
    const/16 v0, 0x4e20

    if-le v6, v0, :cond_3

    .line 429
    sget v0, Lcom/jd/lottery/lib/R$string;->toast_not_exceed_2w:I

    invoke-static {p0, v0}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 433
    :cond_3
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mAdapter:Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->getLotterys()Ljava/util/List;

    move-result-object v11

    .line 434
    .local v11, list:Ljava/util/List;,"Ljava/util/List<Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lt v9, v0, :cond_4

    .line 442
    invoke-static {}, Lcom/jd/lottery/lib/data/LoginManager;->getInstance()Lcom/jd/lottery/lib/data/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jd/lottery/lib/data/LoginManager;->hasLogin()Z

    move-result v0

    if-nez v0, :cond_5

    .line 443
    invoke-static {}, Lcom/jd/lottery/lib/data/LoginManager;->getInstance()Lcom/jd/lottery/lib/data/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jd/lottery/lib/data/LoginManager;->loginIntent()Landroid/content/Intent;

    move-result-object v10

    .line 444
    .local v10, intent:Landroid/content/Intent;
    const/16 v0, 0x38f

    invoke-virtual {p0, v10, v0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 435
    .end local v10           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mFormatter:Lcom/jd/lottery/lib/formatter/Formatter;

    .line 436
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mFormatter:Lcom/jd/lottery/lib/formatter/Formatter;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;

    iget-object v0, v0, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mLottery:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/jd/lottery/lib/formatter/Formatter;->data_formatter(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 437
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;

    iget v0, v0, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mType:I

    const/4 v5, 0x1

    .line 435
    invoke-static {p0, v1, v2, v0, v5}, Lcom/jd/lottery/lib/utils/Util;->checkRule(Landroid/content/Context;Lcom/jd/lottery/lib/formatter/Formatter;Ljava/util/List;IZ)Z

    move-result v0

    .line 437
    if-eqz v0, :cond_0

    .line 434
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 447
    :cond_5
    iget v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mKind:I

    iget v2, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mType:I

    .line 448
    div-int/lit8 v0, v6, 0x2

    div-int/2addr v0, v4

    div-int v5, v0, v3

    .line 449
    invoke-direct {p0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getStopFlag()I

    move-result v7

    iget-object v8, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->issueEntity:Lcom/jd/lottery/lib/model/IssueEntity;

    move-object v0, p0

    .line 447
    invoke-static/range {v0 .. v8}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->launch(Landroid/app/Activity;IIIIIIILcom/jd/lottery/lib/model/IssueEntity;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 5

    .prologue
    .line 39
    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v0

    iget v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mKind:I

    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTimes:Landroid/widget/EditText;

    invoke-direct {p0, v2}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getEditValue(Landroid/widget/EditText;)I

    move-result v2

    .line 40
    iget-object v3, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mNumbers:Landroid/widget/EditText;

    invoke-direct {p0, v3}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getEditValue(Landroid/widget/EditText;)I

    move-result v3

    iget-boolean v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheck:Z

    .line 39
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->setTimeAndNumber(IIIZ)V

    .line 41
    invoke-super {p0}, Lcom/jd/lottery/lib/activity/BaseActivity;->finish()V

    .line 42
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 47
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mNumbers:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getEditValue(Landroid/widget/EditText;)I

    move-result v3

    .line 49
    .local v3, numbers:I
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTimes:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getEditValue(Landroid/widget/EditText;)I

    move-result v4

    .line 50
    .local v4, times:I
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTimes:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getEditValue(Landroid/widget/EditText;)I

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mNumbers:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getEditValue(Landroid/widget/EditText;)I

    move-result v1

    .line 50
    invoke-direct {p0, v0, v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->calculateTotalMoney(II)I

    move-result v6

    .line 53
    .local v6, total:I
    iget v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mKind:I

    iget v2, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mType:I

    .line 54
    div-int/lit8 v0, v6, 0x2

    div-int/2addr v0, v4

    div-int v5, v0, v3

    .line 55
    invoke-direct {p0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getStopFlag()I

    move-result v7

    iget-object v8, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->issueEntity:Lcom/jd/lottery/lib/model/IssueEntity;

    move-object v0, p0

    .line 53
    invoke-static/range {v0 .. v8}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->launch(Landroid/app/Activity;IIIIIIILcom/jd/lottery/lib/model/IssueEntity;)V

    .line 57
    .end local v3           #numbers:I
    .end local v4           #times:I
    .end local v6           #total:I
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, -0x1

    .line 90
    invoke-super {p0, p1}, Lcom/jd/lottery/lib/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    sget v4, Lcom/jd/lottery/lib/R$layout;->confirm_list:I

    invoke-virtual {p0, v4}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->setContentView(I)V

    .line 93
    invoke-virtual {p0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 94
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "kind"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mKind:I

    .line 95
    const-string v4, "type"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mType:I

    .line 96
    const-string v4, "essueEntity"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/jd/lottery/lib/model/IssueEntity;

    iput-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->issueEntity:Lcom/jd/lottery/lib/model/IssueEntity;

    .line 98
    iget v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mKind:I

    iget v5, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mType:I

    invoke-static {v4, v5}, Lcom/jd/lottery/lib/formatter/Formatter;->getFormatter(II)Lcom/jd/lottery/lib/formatter/Formatter;

    move-result-object v4

    iput-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mFormatter:Lcom/jd/lottery/lib/formatter/Formatter;

    .line 100
    sget v4, Lcom/jd/lottery/lib/R$id;->titlebar:I

    invoke-virtual {p0, v4}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/jd/lottery/lib/ui/widget/StuanTitle;

    iput-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTitle:Lcom/jd/lottery/lib/ui/widget/StuanTitle;

    .line 101
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTitle:Lcom/jd/lottery/lib/ui/widget/StuanTitle;

    new-instance v5, Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;

    invoke-direct {v5, p0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;-><init>(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)V

    invoke-virtual {v4, v5}, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->setOnTitleClickListener(Lcom/jd/lottery/lib/ui/widget/StuanTitle$TitleClickListener;)V

    .line 142
    sget v4, Lcom/jd/lottery/lib/R$id;->add_special:I

    invoke-virtual {p0, v4}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 143
    new-instance v5, Lcom/jd/lottery/lib/activity/ConfirmListActivity$2;

    invoke-direct {v5, p0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity$2;-><init>(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)V

    .line 142
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    sget v4, Lcom/jd/lottery/lib/R$id;->add_random:I

    invoke-virtual {p0, v4}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/jd/lottery/lib/activity/ConfirmListActivity$3;

    invoke-direct {v5, p0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity$3;-><init>(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    sget v4, Lcom/jd/lottery/lib/R$id;->check_text:I

    invoke-virtual {p0, v4}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheckText:Landroid/widget/TextView;

    .line 169
    sget v4, Lcom/jd/lottery/lib/R$id;->check:I

    invoke-virtual {p0, v4}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheckBox:Landroid/widget/ImageView;

    .line 170
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheckBox:Landroid/widget/ImageView;

    new-instance v5, Lcom/jd/lottery/lib/activity/ConfirmListActivity$4;

    invoke-direct {v5, p0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity$4;-><init>(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    sget v4, Lcom/jd/lottery/lib/R$id;->numbers:I

    invoke-virtual {p0, v4}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mNumbers:Landroid/widget/EditText;

    .line 184
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mNumbers:Landroid/widget/EditText;

    new-instance v5, Lcom/jd/lottery/lib/activity/ConfirmListActivity$5;

    invoke-direct {v5, p0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity$5;-><init>(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 226
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mNumbers:Landroid/widget/EditText;

    new-instance v5, Lcom/jd/lottery/lib/activity/ConfirmListActivity$6;

    invoke-direct {v5, p0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity$6;-><init>(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 244
    sget v4, Lcom/jd/lottery/lib/R$id;->times:I

    invoke-virtual {p0, v4}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTimes:Landroid/widget/EditText;

    .line 245
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTimes:Landroid/widget/EditText;

    new-instance v5, Lcom/jd/lottery/lib/activity/ConfirmListActivity$7;

    invoke-direct {v5, p0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity$7;-><init>(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 280
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTimes:Landroid/widget/EditText;

    new-instance v5, Lcom/jd/lottery/lib/activity/ConfirmListActivity$8;

    invoke-direct {v5, p0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity$8;-><init>(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 299
    sget v4, Lcom/jd/lottery/lib/R$id;->total:I

    invoke-virtual {p0, v4}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTotal:Landroid/widget/TextView;

    .line 300
    sget v4, Lcom/jd/lottery/lib/R$id;->description:I

    invoke-virtual {p0, v4}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mDescription:Landroid/widget/TextView;

    .line 302
    sget v4, Lcom/jd/lottery/lib/R$id;->check_aggrement:I

    invoke-virtual {p0, v4}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->aggrementCheckBox:Landroid/widget/CheckBox;

    .line 303
    sget v4, Lcom/jd/lottery/lib/R$id;->check_aggrement_text:I

    invoke-virtual {p0, v4}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->aggrementTextView:Landroid/widget/TextView;

    .line 304
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->aggrementTextView:Landroid/widget/TextView;

    new-instance v5, Lcom/jd/lottery/lib/activity/ConfirmListActivity$9;

    invoke-direct {v5, p0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity$9;-><init>(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    new-instance v4, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mAdapter:Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;

    .line 316
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mAdapter:Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;

    new-instance v5, Lcom/jd/lottery/lib/activity/ConfirmListActivity$10;

    invoke-direct {v5, p0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity$10;-><init>(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)V

    invoke-virtual {v4, v5}, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->setOnItemLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 344
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mAdapter:Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;

    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v5

    .line 345
    invoke-virtual {p0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mKind:I

    .line 344
    invoke-virtual {v5, v6, v7}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getShowLotterys(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->setLotterys(Ljava/util/List;)V

    .line 346
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mAdapter:Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;

    iget-object v5, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mFormatter:Lcom/jd/lottery/lib/formatter/Formatter;

    invoke-virtual {v4, v5}, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->setFormatter(Lcom/jd/lottery/lib/formatter/Formatter;)V

    .line 348
    sget v4, Lcom/jd/lottery/lib/R$id;->list:I

    invoke-virtual {p0, v4}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 349
    .local v1, lv:Landroid/widget/ListView;
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mAdapter:Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 351
    sget v4, Lcom/jd/lottery/lib/R$id;->submit:I

    invoke-virtual {p0, v4}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/jd/lottery/lib/activity/ConfirmListActivity$11;

    invoke-direct {v5, p0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity$11;-><init>(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v4

    iget v5, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mKind:I

    invoke-virtual {v4, v5}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getTime(I)I

    move-result v3

    .line 360
    .local v3, time:I
    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v4

    iget v5, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mKind:I

    invoke-virtual {v4, v5}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getNumber(I)I

    move-result v2

    .line 361
    .local v2, number:I
    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v4

    iget v5, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mKind:I

    invoke-virtual {v4, v5}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getCheck(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheck:Z

    .line 362
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mNumbers:Landroid/widget/EditText;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mNumbers:Landroid/widget/EditText;

    invoke-static {v4}, Lcom/jd/lottery/lib/utils/UiUtils;->setSelectionToTheEnd(Landroid/widget/EditText;)V

    .line 364
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTimes:Landroid/widget/EditText;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTimes:Landroid/widget/EditText;

    invoke-static {v4}, Lcom/jd/lottery/lib/utils/UiUtils;->setSelectionToTheEnd(Landroid/widget/EditText;)V

    .line 366
    iget-boolean v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheck:Z

    if-eqz v4, :cond_0

    .line 367
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheckBox:Landroid/widget/ImageView;

    sget v5, Lcom/jd/lottery/lib/R$drawable;->touzhu_choice_icon_hl:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 379
    :goto_0
    invoke-direct {p0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->displayTotalMoney()V

    .line 380
    return-void

    .line 369
    :cond_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 370
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheckBox:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 371
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheckBox:Landroid/widget/ImageView;

    sget v5, Lcom/jd/lottery/lib/R$drawable;->touzhu_choice_disable:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 372
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheckText:Landroid/widget/TextView;

    const v5, -0x5c5c5d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 374
    :cond_1
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheckBox:Landroid/widget/ImageView;

    sget v5, Lcom/jd/lottery/lib/R$drawable;->touzhu_choice_icon:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 375
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheckText:Landroid/widget/TextView;

    const v5, -0xcccccd

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
