.class Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;
.super Ljava/lang/Object;
.source "ConfirmOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 458
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_submit:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$7(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 461
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$1(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/model/UserInfoEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$1(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/model/UserInfoEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jd/lottery/lib/model/UserInfoEntity;->fullname:Ljava/lang/String;

    invoke-static {v1}, Lcom/jd/lottery/lib/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 463
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$1(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/model/UserInfoEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jd/lottery/lib/model/UserInfoEntity;->idcardnumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/jd/lottery/lib/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$1(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/model/UserInfoEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jd/lottery/lib/model/UserInfoEntity;->mobile:Ljava/lang/String;

    invoke-static {v1}, Lcom/jd/lottery/lib/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 467
    :cond_0
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 468
    sget v2, Lcom/jd/lottery/lib/R$string;->toast_confirm_order_imperfect_personal_info:I

    .line 466
    invoke-static {v1, v2}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    .line 469
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_submit:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$7(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 537
    :cond_1
    :goto_0
    return-void

    .line 474
    :cond_2
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_pay_pwd:Lcom/jd/lottery/lib/ui/widget/PasswordEditText;
    invoke-static {v2}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$23(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/ui/widget/PasswordEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jd/lottery/lib/ui/widget/PasswordEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mPwd:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$24(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;Ljava/lang/String;)V

    .line 475
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mPayType:Lcom/jd/lottery/lib/data/Constants$PayType;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$12(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/data/Constants$PayType;

    move-result-object v1

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$PayType;->PayOnline:Lcom/jd/lottery/lib/data/Constants$PayType;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mPwd:Ljava/lang/String;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$25(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jd/lottery/lib/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 476
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 477
    sget v2, Lcom/jd/lottery/lib/R$string;->toast_confirm_order_no_pwd:I

    .line 476
    invoke-static {v1, v2}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    .line 478
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_submit:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$7(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 483
    :cond_3
    new-instance v0, Lcom/jd/lottery/lib/model/BetRequest;

    invoke-direct {v0}, Lcom/jd/lottery/lib/model/BetRequest;-><init>()V

    .line 484
    .local v0, request:Lcom/jd/lottery/lib/model/BetRequest;
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->issueEntity:Lcom/jd/lottery/lib/model/IssueEntity;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$26(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/model/IssueEntity;

    move-result-object v1

    iget v1, v1, Lcom/jd/lottery/lib/model/IssueEntity;->lotterycategory:I

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/model/BetRequest;->setLotteryCategory(I)V

    .line 485
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->issueEntity:Lcom/jd/lottery/lib/model/IssueEntity;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$26(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/model/IssueEntity;

    move-result-object v1

    iget-wide v1, v1, Lcom/jd/lottery/lib/model/IssueEntity;->issueid:J

    invoke-virtual {v0, v1, v2}, Lcom/jd/lottery/lib/model/BetRequest;->setIssueId(J)V

    .line 486
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->issueEntity:Lcom/jd/lottery/lib/model/IssueEntity;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$26(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/model/IssueEntity;

    move-result-object v1

    iget-wide v1, v1, Lcom/jd/lottery/lib/model/IssueEntity;->issuename:J

    invoke-virtual {v0, v1, v2}, Lcom/jd/lottery/lib/model/BetRequest;->setIssueName(J)V

    .line 488
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mTerm:I
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$17(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)I

    move-result v1

    if-le v1, v3, :cond_6

    .line 489
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/model/BetRequest;->setOrderType(I)V

    .line 495
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mIssueArray:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$27(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mIssueArray:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$27(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mTerm:I
    invoke-static {v2}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$17(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 496
    :cond_4
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 497
    sget v2, Lcom/jd/lottery/lib/R$string;->toast_term_error:I

    .line 496
    invoke-static {v1, v2}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    .line 498
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_submit:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$7(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 501
    :cond_5
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mIssueArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$27(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Ljava/util/ArrayList;

    move-result-object v2

    #calls: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->combineAppendInfo(Ljava/util/ArrayList;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$28(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/model/BetRequest;->setAppendIssueinfo(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0, v4}, Lcom/jd/lottery/lib/model/BetRequest;->setMulti(I)V

    .line 508
    :goto_1
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mPayType:Lcom/jd/lottery/lib/data/Constants$PayType;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$12(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/data/Constants$PayType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/model/BetRequest;->setPayType(Lcom/jd/lottery/lib/data/Constants$PayType;)V

    .line 509
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mPwd:Ljava/lang/String;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$25(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/model/BetRequest;->setPayPassword(Ljava/lang/String;)V

    .line 510
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mNumber:I
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$30(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/model/BetRequest;->setTotalStake(I)V

    .line 511
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->upoadLotteries:Ljava/lang/String;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$31(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/model/BetRequest;->setLotteryNumber(Ljava/lang/String;)V

    .line 512
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mMoney:I
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$15(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/model/BetRequest;->setTotalFee(I)V

    .line 513
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mStopFlag:I
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$32(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/model/BetRequest;->setStopflag(I)V

    .line 522
    invoke-static {}, Lcom/jd/lottery/lib/data/UserManager;->getInstance()Lcom/jd/lottery/lib/data/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jd/lottery/lib/data/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/model/BetRequest;->setPin(Ljava/lang/String;)V

    .line 525
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mCouponIds:Ljava/lang/String;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$16(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/model/BetRequest;->setCouponIds(Ljava/lang/String;)V

    .line 527
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$1(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/model/UserInfoEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jd/lottery/lib/model/UserInfoEntity;->fullname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/model/BetRequest;->setFullName(Ljava/lang/String;)V

    .line 528
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$1(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/model/UserInfoEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jd/lottery/lib/model/UserInfoEntity;->idcardnumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/model/BetRequest;->setIdcardNumber(Ljava/lang/String;)V

    .line 529
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$1(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/model/UserInfoEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jd/lottery/lib/model/UserInfoEntity;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/model/BetRequest;->setMobile(Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$1(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/model/UserInfoEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jd/lottery/lib/model/UserInfoEntity;->usertype:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/model/BetRequest;->setUserType(I)V

    .line 531
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    .line 532
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    iget-object v3, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->takeOrderReceiver:Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;
    invoke-static {v3}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$33(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;

    move-result-object v3

    .line 531
    invoke-static {v2, v0, v3}, Lcom/jd/lottery/lib/service/DataIntentService;->getOrderIntent(Landroid/content/Context;Lcom/jd/lottery/lib/model/BetRequest;Landroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 534
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$8(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 535
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$8(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 504
    :cond_6
    invoke-virtual {v0, v4}, Lcom/jd/lottery/lib/model/BetRequest;->setOrderType(I)V

    .line 505
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mTime:I
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$29(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/model/BetRequest;->setMulti(I)V

    goto/16 :goto_1
.end method
