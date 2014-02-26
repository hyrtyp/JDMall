.class public Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
.super Lcom/jd/lottery/lib/activity/BaseActivity;
.source "ConfirmOrderActivity.java"


# static fields
.field private static final ISSUE_ENTITY:Ljava/lang/String; = "essueEntity"

.field private static final KIND:Ljava/lang/String; = "kind"

.field private static final MONEY:Ljava/lang/String; = "money"

.field private static final NUMBER:Ljava/lang/String; = "number"

.field private static final REQUEST_CODE_ORDER:I = 0x1

.field private static final REQUEST_CODE_UPDATE_USER_INFO:I = 0x0

.field private static final STOP_FLAG:Ljava/lang/String; = "stop_flag"

.field private static final TERM:Ljava/lang/String; = "term"

.field private static final TIME:Ljava/lang/String; = "time"

.field private static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field private comfirm_order_pay_message:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private confirm_order_info_content:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private confirm_order_info_idcard:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private confirm_order_info_layout:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private confirm_order_info_mobile:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private confirm_order_info_name:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private confirm_order_info_no:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private confirm_order_info_scrollView:Landroid/widget/ScrollView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private confirm_order_list:Lcom/jd/lottery/lib/ui/widget/FullSizeListView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private confirm_order_pay_find_pwd:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private confirm_order_pay_pwd:Lcom/jd/lottery/lib/ui/widget/PasswordEditText;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private confirm_order_payway:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private confirm_order_payway_layout:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private confirm_order_payway_pwd_layout:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private confirm_order_submit:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private confirm_order_total_number:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private confirm_order_total_price:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private final getUserInfoReceiver:Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;

.field private issueEntity:Lcom/jd/lottery/lib/model/IssueEntity;

.field private lotteryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCouponIds:Ljava/lang/String;

.field private mFormatter:Lcom/jd/lottery/lib/formatter/Formatter;

.field private mIssueArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jd/lottery/lib/model/LotteryEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mKind:I

.field private mMoney:I

.field private mNumber:I

.field private mPayType:Lcom/jd/lottery/lib/data/Constants$PayType;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mPwd:Ljava/lang/String;

.field private mStopFlag:I

.field private mTerm:I

.field private mTime:I

.field private mType:I

.field private orderInfoEntity:Lcom/jd/lottery/lib/model/OrderInfoEntity;

.field paymentMethodDialogFragment:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

.field private pin:Ljava/lang/String;

.field private runnable:Ljava/lang/Runnable;

.field private final takeOrderReceiver:Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;

.field private upoadLotteries:Ljava/lang/String;

.field private userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/jd/lottery/lib/activity/BaseActivity;-><init>()V

    .line 116
    sget-object v0, Lcom/jd/lottery/lib/data/Constants$PayType;->PayOnline:Lcom/jd/lottery/lib/data/Constants$PayType;

    iput-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mPayType:Lcom/jd/lottery/lib/data/Constants$PayType;

    .line 182
    new-instance v0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$1;

    invoke-direct {v0, p0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$1;-><init>(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)V

    iput-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->getUserInfoReceiver:Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;

    .line 217
    new-instance v0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;

    invoke-direct {v0, p0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;-><init>(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)V

    iput-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->takeOrderReceiver:Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;

    .line 543
    new-instance v0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$3;

    invoke-direct {v0, p0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$3;-><init>(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)V

    iput-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->runnable:Ljava/lang/Runnable;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;Lcom/jd/lottery/lib/model/UserInfoEntity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;

    return-void
.end method

.method static synthetic access$1(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/model/UserInfoEntity;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/model/OrderInfoEntity;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->orderInfoEntity:Lcom/jd/lottery/lib/model/OrderInfoEntity;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 98
    iget v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mKind:I

    return v0
.end method

.method static synthetic access$12(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/data/Constants$PayType;
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mPayType:Lcom/jd/lottery/lib/data/Constants$PayType;

    return-object v0
.end method

.method static synthetic access$13(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/ScrollView;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_info_scrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mIssueArray:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$15(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 103
    iget v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mMoney:I

    return v0
.end method

.method static synthetic access$16(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mCouponIds:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 100
    iget v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mTerm:I

    return v0
.end method

.method static synthetic access$18(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;Lcom/jd/lottery/lib/data/Constants$PayType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mPayType:Lcom/jd/lottery/lib/data/Constants$PayType;

    return-void
.end method

.method static synthetic access$19(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mCouponIds:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_info_content:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$20(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_payway:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$21(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->comfirm_order_pay_message:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$22(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_payway_pwd_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$23(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/ui/widget/PasswordEditText;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_pay_pwd:Lcom/jd/lottery/lib/ui/widget/PasswordEditText;

    return-object v0
.end method

.method static synthetic access$24(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mPwd:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$25(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mPwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$26(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/model/IssueEntity;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->issueEntity:Lcom/jd/lottery/lib/model/IssueEntity;

    return-object v0
.end method

.method static synthetic access$27(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mIssueArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$28(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 551
    invoke-direct {p0, p1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->combineAppendInfo(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$29(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 101
    iget v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mTime:I

    return v0
.end method

.method static synthetic access$3(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_info_no:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$30(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 102
    iget v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mNumber:I

    return v0
.end method

.method static synthetic access$31(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->upoadLotteries:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$32(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 104
    iget v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mStopFlag:I

    return v0
.end method

.method static synthetic access$33(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;
    .locals 1
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->takeOrderReceiver:Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_info_name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_info_idcard:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_info_mobile:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_submit:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;Lcom/jd/lottery/lib/model/OrderInfoEntity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->orderInfoEntity:Lcom/jd/lottery/lib/model/OrderInfoEntity;

    return-void
.end method

.method private combineAppendInfo(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jd/lottery/lib/model/LotteryEntity;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, lotteryEntities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jd/lottery/lib/model/LotteryEntity;>;"
    const/16 v5, 0x3a

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 553
    .local v1, sBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 563
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 564
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@@@@@@@@@22"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 565
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 553
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/model/LotteryEntity;

    .line 554
    .local v0, lotteryEntity:Lcom/jd/lottery/lib/model/LotteryEntity;
    iget-wide v3, v0, Lcom/jd/lottery/lib/model/LotteryEntity;->issueid:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 556
    iget-wide v3, v0, Lcom/jd/lottery/lib/model/LotteryEntity;->issuename:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 558
    iget v3, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mTime:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 560
    iget v3, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mMoney:I

    iget v4, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mTerm:I

    div-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 561
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static launch(Landroid/app/Activity;IIIIIIILcom/jd/lottery/lib/model/IssueEntity;)V
    .locals 2
    .parameter "activity"
    .parameter "kind"
    .parameter "type"
    .parameter "term"
    .parameter "time"
    .parameter "number"
    .parameter "money"
    .parameter "stopFlag"
    .parameter "issueEntity"

    .prologue
    .line 328
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 329
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "kind"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 331
    const-string v1, "term"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 332
    const-string v1, "time"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    const-string v1, "number"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    const-string v1, "money"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    const-string v1, "stop_flag"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    const-string v1, "essueEntity"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 337
    const-class v1, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 338
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 339
    return-void
.end method

.method private setupViews()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 346
    sget-object v1, Lcom/jd/lottery/lib/data/Constants$PayType;->PayOnline:Lcom/jd/lottery/lib/data/Constants$PayType;

    iput-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mPayType:Lcom/jd/lottery/lib/data/Constants$PayType;

    .line 347
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_payway:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mPayType:Lcom/jd/lottery/lib/data/Constants$PayType;

    invoke-virtual {v2}, Lcom/jd/lottery/lib/data/Constants$PayType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_payway_pwd_layout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 352
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_total_price:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 353
    sget v3, Lcom/jd/lottery/lib/R$string;->total_money_formater:I

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mMoney:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 352
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_total_number:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 355
    sget v3, Lcom/jd/lottery/lib/R$string;->total_term_formater:I

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget v5, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mTerm:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    iget v6, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mTime:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 354
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    new-instance v0, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;

    .line 359
    invoke-virtual {p0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 358
    invoke-direct {v0, v1}, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;-><init>(Landroid/content/Context;)V

    .line 361
    .local v0, mAdapter:Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->lotteryItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->setLotterys(Ljava/util/List;)V

    .line 362
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mFormatter:Lcom/jd/lottery/lib/formatter/Formatter;

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->setFormatter(Lcom/jd/lottery/lib/formatter/Formatter;)V

    .line 363
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_list:Lcom/jd/lottery/lib/ui/widget/FullSizeListView;

    invoke-virtual {v1, v0}, Lcom/jd/lottery/lib/ui/widget/FullSizeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 365
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_info_layout:Landroid/widget/RelativeLayout;

    .line 366
    new-instance v2, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$5;

    invoke-direct {v2, p0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$5;-><init>(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_payway_layout:Landroid/widget/LinearLayout;

    .line 383
    new-instance v2, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;

    invoke-direct {v2, p0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;-><init>(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_pay_find_pwd:Landroid/widget/TextView;

    .line 445
    new-instance v2, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$7;

    invoke-direct {v2, p0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$7;-><init>(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_submit:Landroid/widget/TextView;

    new-instance v2, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;

    invoke-direct {v2, p0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$8;-><init>(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_info_scrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 541
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 570
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@@@@@@@@@@@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 572
    packed-switch p1, :pswitch_data_0

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 574
    :pswitch_0
    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 577
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_info_no:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 578
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_info_content:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 580
    const-string v1, "data"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/jd/lottery/lib/model/UserInfoEntity;

    iput-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@@@@@@@@@22"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 582
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_info_name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;

    iget-object v2, v2, Lcom/jd/lottery/lib/model/UserInfoEntity;->fullname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_info_idcard:Landroid/widget/TextView;

    .line 587
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;

    iget-object v2, v2, Lcom/jd/lottery/lib/model/UserInfoEntity;->idcardnumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/StringUtils;->idCardNumber2Safe4Show(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 586
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_info_mobile:Landroid/widget/TextView;

    .line 590
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;

    iget-object v2, v2, Lcom/jd/lottery/lib/model/UserInfoEntity;->mobile:Ljava/lang/String;

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/StringUtils;->phoneNum2Safe4Show(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 589
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 594
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 595
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 596
    invoke-virtual {p0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jd/lottery/lib/activity/MainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 597
    invoke-virtual {p0, v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 572
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 132
    invoke-super {p0, p1}, Lcom/jd/lottery/lib/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 135
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 136
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    sget v2, Lcom/jd/lottery/lib/R$string;->loading:I

    invoke-virtual {p0, v2}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 139
    invoke-virtual {p0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 140
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "kind"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mKind:I

    .line 141
    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mType:I

    .line 142
    const-string v1, "term"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mTerm:I

    .line 143
    const-string v1, "time"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mTime:I

    .line 144
    const-string v1, "number"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mNumber:I

    .line 145
    const-string v1, "money"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mMoney:I

    .line 146
    const-string v1, "stop_flag"

    .line 147
    const/4 v2, 0x3

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mStopFlag:I

    .line 148
    const-string v1, "essueEntity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/jd/lottery/lib/model/IssueEntity;

    iput-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->issueEntity:Lcom/jd/lottery/lib/model/IssueEntity;

    .line 150
    iget v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mKind:I

    iget v2, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mType:I

    invoke-static {v1, v2}, Lcom/jd/lottery/lib/formatter/Formatter;->getFormatter(II)Lcom/jd/lottery/lib/formatter/Formatter;

    move-result-object v1

    iput-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mFormatter:Lcom/jd/lottery/lib/formatter/Formatter;

    .line 153
    invoke-static {}, Lcom/jd/lottery/lib/data/UserManager;->getInstance()Lcom/jd/lottery/lib/data/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jd/lottery/lib/data/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->pin:Ljava/lang/String;

    .line 156
    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v1

    .line 157
    invoke-virtual {p0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mKind:I

    .line 156
    invoke-virtual {v1, v2, v3}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getShowLotterys(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->lotteryItems:Ljava/util/List;

    .line 159
    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v1

    .line 160
    invoke-virtual {p0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mKind:I

    .line 159
    invoke-virtual {v1, v2, v3}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getUploadLotterys(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->upoadLotteries:Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->getUserInfoReceiver:Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;

    .line 162
    invoke-static {p0, v1}, Lcom/jd/lottery/lib/service/DataIntentService;->getUserInfoIntent(Landroid/content/Context;Landroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 164
    iget v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mTerm:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 166
    iget v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mTerm:I

    .line 167
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->issueEntity:Lcom/jd/lottery/lib/model/IssueEntity;

    iget v2, v2, Lcom/jd/lottery/lib/model/IssueEntity;->lotterycategory:I

    invoke-static {v2}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->getTypeByValue(I)Lcom/jd/lottery/lib/data/Constants$LotteryType;

    move-result-object v2

    .line 168
    new-instance v3, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$4;

    invoke-direct {v3, p0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$4;-><init>(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)V

    .line 165
    invoke-static {p0, v1, v2, v3}, Lcom/jd/lottery/lib/service/DataIntentService;->getZhuiHaoIntent(Landroid/content/Context;ILcom/jd/lottery/lib/data/Constants$LotteryType;Landroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->setupViews()V

    .line 180
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 305
    invoke-super {p0}, Lcom/jd/lottery/lib/activity/BaseActivity;->onPause()V

    .line 306
    return-void
.end method

.method public onPreInject()V
    .locals 1

    .prologue
    .line 127
    sget v0, Lcom/jd/lottery/lib/R$layout;->activity_confirm_order:I

    invoke-virtual {p0, v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->setContentView(I)V

    .line 128
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 299
    invoke-super {p0}, Lcom/jd/lottery/lib/activity/BaseActivity;->onResume()V

    .line 300
    return-void
.end method
