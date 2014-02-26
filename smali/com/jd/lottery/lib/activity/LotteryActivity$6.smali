.class Lcom/jd/lottery/lib/activity/LotteryActivity$6;
.super Ljava/lang/Object;
.source "LotteryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/activity/LotteryActivity;->init(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/activity/LotteryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jd/lottery/lib/activity/LotteryActivity$6;)Lcom/jd/lottery/lib/activity/LotteryActivity;
    .locals 1
    .parameter

    .prologue
    .line 353
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 358
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$2(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/data/Constants$LotteryType;

    move-result-object v1

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DoubleColor:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v1, v2, :cond_6

    .line 359
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mCurrentPager:I
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$4(Lcom/jd/lottery/lib/activity/LotteryActivity;)I

    move-result v1

    if-nez v1, :cond_3

    .line 360
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$5(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    .line 362
    sget v2, Lcom/jd/lottery/lib/formatter/Formatter;->SSQ:I

    .line 363
    iget-object v3, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mIssueEntity:Lcom/jd/lottery/lib/model/LotteryEntity;
    invoke-static {v3}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$9(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/model/LotteryEntity;

    move-result-object v3

    .line 361
    invoke-static {v1, v2, v4, v3}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->launch(Landroid/app/Activity;IILcom/jd/lottery/lib/model/IssueEntity;)V

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$5(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->isLegalLottery()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 366
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$5(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->addLottery()V

    .line 368
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    sget v2, Lcom/jd/lottery/lib/formatter/Formatter;->SSQ:I

    .line 369
    iget-object v3, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mIssueEntity:Lcom/jd/lottery/lib/model/LotteryEntity;
    invoke-static {v3}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$9(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/model/LotteryEntity;

    move-result-object v3

    .line 367
    invoke-static {v1, v2, v4, v3}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->launch(Landroid/app/Activity;IILcom/jd/lottery/lib/model/IssueEntity;)V

    goto :goto_0

    .line 374
    :cond_2
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    sget v2, Lcom/jd/lottery/lib/R$string;->dialog_clear_lottery_title:I

    invoke-virtual {v1, v2}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 375
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    sget v3, Lcom/jd/lottery/lib/R$string;->dialog_legal_lottery:I

    invoke-virtual {v2, v3}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 373
    invoke-static {v1, v2}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;

    move-result-object v0

    .line 377
    .local v0, alertDialogFragment:Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;
    new-instance v1, Lcom/jd/lottery/lib/activity/LotteryActivity$6$1;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/activity/LotteryActivity$6$1;-><init>(Lcom/jd/lottery/lib/activity/LotteryActivity$6;)V

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->setOnActionClickListener(Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$ActionClickListener;)V

    .line 393
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 394
    const-string v2, "mFragmentOptionalPanel"

    .line 392
    invoke-virtual {v0, v1, v2}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 397
    .end local v0           #alertDialogFragment:Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;
    :cond_3
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mCurrentPager:I
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$4(Lcom/jd/lottery/lib/activity/LotteryActivity;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 398
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmentDuplexPanel:Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$6(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 399
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    .line 400
    sget v2, Lcom/jd/lottery/lib/formatter/Formatter;->SSQ:I

    .line 401
    iget-object v3, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mIssueEntity:Lcom/jd/lottery/lib/model/LotteryEntity;
    invoke-static {v3}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$9(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/model/LotteryEntity;

    move-result-object v3

    .line 399
    invoke-static {v1, v2, v4, v3}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->launch(Landroid/app/Activity;IILcom/jd/lottery/lib/model/IssueEntity;)V

    goto :goto_0

    .line 403
    :cond_4
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmentDuplexPanel:Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$6(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->isLegalLottery()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 404
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmentDuplexPanel:Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$6(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->addLottery()V

    .line 406
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    sget v2, Lcom/jd/lottery/lib/formatter/Formatter;->SSQ:I

    .line 407
    iget-object v3, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mIssueEntity:Lcom/jd/lottery/lib/model/LotteryEntity;
    invoke-static {v3}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$9(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/model/LotteryEntity;

    move-result-object v3

    .line 405
    invoke-static {v1, v2, v4, v3}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->launch(Landroid/app/Activity;IILcom/jd/lottery/lib/model/IssueEntity;)V

    goto/16 :goto_0

    .line 411
    :cond_5
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    sget v2, Lcom/jd/lottery/lib/R$string;->dialog_clear_lottery_title:I

    invoke-virtual {v1, v2}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 412
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    sget v3, Lcom/jd/lottery/lib/R$string;->dialog_legal_lottery:I

    invoke-virtual {v2, v3}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 410
    invoke-static {v1, v2}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;

    move-result-object v0

    .line 414
    .restart local v0       #alertDialogFragment:Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;
    new-instance v1, Lcom/jd/lottery/lib/activity/LotteryActivity$6$2;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/activity/LotteryActivity$6$2;-><init>(Lcom/jd/lottery/lib/activity/LotteryActivity$6;)V

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->setOnActionClickListener(Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$ActionClickListener;)V

    .line 430
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 431
    const-string v2, "mFragmentDuplexPanel"

    .line 429
    invoke-virtual {v0, v1, v2}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 436
    .end local v0           #alertDialogFragment:Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;
    :cond_6
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$2(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/data/Constants$LotteryType;

    move-result-object v1

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DaLeTou:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v1, v2, :cond_0

    .line 437
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mCurrentPager:I
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$4(Lcom/jd/lottery/lib/activity/LotteryActivity;)I

    move-result v1

    if-nez v1, :cond_9

    .line 438
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mDaletouFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$7(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 439
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    .line 440
    sget v2, Lcom/jd/lottery/lib/formatter/Formatter;->DLT:I

    .line 441
    iget-object v3, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mIssueEntity:Lcom/jd/lottery/lib/model/LotteryEntity;
    invoke-static {v3}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$9(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/model/LotteryEntity;

    move-result-object v3

    .line 439
    invoke-static {v1, v2, v4, v3}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->launch(Landroid/app/Activity;IILcom/jd/lottery/lib/model/IssueEntity;)V

    goto/16 :goto_0

    .line 443
    :cond_7
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mDaletouFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$7(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->isLegalLottery()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 444
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mDaletouFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$7(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->addLottery()V

    .line 446
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    sget v2, Lcom/jd/lottery/lib/formatter/Formatter;->DLT:I

    .line 447
    iget-object v3, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mIssueEntity:Lcom/jd/lottery/lib/model/LotteryEntity;
    invoke-static {v3}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$9(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/model/LotteryEntity;

    move-result-object v3

    .line 445
    invoke-static {v1, v2, v4, v3}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->launch(Landroid/app/Activity;IILcom/jd/lottery/lib/model/IssueEntity;)V

    goto/16 :goto_0

    .line 451
    :cond_8
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    sget v2, Lcom/jd/lottery/lib/R$string;->dialog_clear_lottery_title:I

    invoke-virtual {v1, v2}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 452
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    sget v3, Lcom/jd/lottery/lib/R$string;->dialog_legal_lottery:I

    invoke-virtual {v2, v3}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 450
    invoke-static {v1, v2}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;

    move-result-object v0

    .line 454
    .restart local v0       #alertDialogFragment:Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;
    new-instance v1, Lcom/jd/lottery/lib/activity/LotteryActivity$6$3;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/activity/LotteryActivity$6$3;-><init>(Lcom/jd/lottery/lib/activity/LotteryActivity$6;)V

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->setOnActionClickListener(Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$ActionClickListener;)V

    .line 470
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 471
    const-string v2, "mDaletouFragmentOptionalPanel"

    .line 469
    invoke-virtual {v0, v1, v2}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 474
    .end local v0           #alertDialogFragment:Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;
    :cond_9
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mCurrentPager:I
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$4(Lcom/jd/lottery/lib/activity/LotteryActivity;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 475
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mDaletouFragmentDuplexPanel:Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$8(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 476
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    .line 477
    sget v2, Lcom/jd/lottery/lib/formatter/Formatter;->DLT:I

    .line 478
    iget-object v3, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mIssueEntity:Lcom/jd/lottery/lib/model/LotteryEntity;
    invoke-static {v3}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$9(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/model/LotteryEntity;

    move-result-object v3

    .line 476
    invoke-static {v1, v2, v4, v3}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->launch(Landroid/app/Activity;IILcom/jd/lottery/lib/model/IssueEntity;)V

    goto/16 :goto_0

    .line 480
    :cond_a
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mDaletouFragmentDuplexPanel:Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$8(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->isLegalLottery()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 481
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mDaletouFragmentDuplexPanel:Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$8(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->addLottery()V

    .line 483
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    sget v2, Lcom/jd/lottery/lib/formatter/Formatter;->DLT:I

    .line 484
    iget-object v3, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mIssueEntity:Lcom/jd/lottery/lib/model/LotteryEntity;
    invoke-static {v3}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$9(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/model/LotteryEntity;

    move-result-object v3

    .line 482
    invoke-static {v1, v2, v4, v3}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->launch(Landroid/app/Activity;IILcom/jd/lottery/lib/model/IssueEntity;)V

    goto/16 :goto_0

    .line 488
    :cond_b
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    sget v2, Lcom/jd/lottery/lib/R$string;->dialog_clear_lottery_title:I

    invoke-virtual {v1, v2}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 489
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    sget v3, Lcom/jd/lottery/lib/R$string;->dialog_legal_lottery:I

    invoke-virtual {v2, v3}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 487
    invoke-static {v1, v2}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;

    move-result-object v0

    .line 491
    .restart local v0       #alertDialogFragment:Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;
    new-instance v1, Lcom/jd/lottery/lib/activity/LotteryActivity$6$4;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/activity/LotteryActivity$6$4;-><init>(Lcom/jd/lottery/lib/activity/LotteryActivity$6;)V

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->setOnActionClickListener(Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$ActionClickListener;)V

    .line 507
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 508
    const-string v2, "mDaletouFragmentDuplexPanel"

    .line 506
    invoke-virtual {v0, v1, v2}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
