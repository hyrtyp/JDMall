.class public Lcom/jingdong/app/mall/signin/SignActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "SignActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final COMMON:I = 0x0

.field private static final CONGRATULATION:I = 0x1

.field private static final REFRESH_DELAY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SignActivity"

.field private static final VERIFY:I = 0x2


# instance fields
.field ViewFlipperTask:Ljava/lang/Runnable;

.field private commom_view:Landroid/widget/LinearLayout;

.field private congratulation_layout:Landroid/widget/LinearLayout;

.field private content_1:Landroid/widget/TextView;

.field private content_2:Landroid/widget/TextView;

.field private drawer:Landroid/widget/LinearLayout;

.field private drawerIcon:Landroid/widget/ImageButton;

.field handler:Landroid/os/Handler;

.field private hasDone:Z

.field private hasUpdateTimes:Z

.field private hintText:Ljava/lang/String;

.field private hintTextTitle:Ljava/lang/String;

.field private leave:Landroid/widget/Button;

.field private login:Landroid/widget/Button;

.field private loginOrleave:Landroid/widget/LinearLayout;

.field private loginText:Ljava/lang/String;

.field private loginTextTitle:Ljava/lang/String;

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mHandler:Landroid/os/Handler;

.field num_bmps:[I

.field private qiandao_back:Landroid/widget/ImageButton;

.field private qiandao_btn:Landroid/widget/Button;

.field private qiandao_share:Landroid/widget/ImageButton;

.field private radomCodeErrorText:Ljava/lang/String;

.field private randomTimes:I

.field private resultText:Ljava/lang/String;

.field private resultValue:Ljava/lang/String;

.field private reward_tv:Landroid/widget/TextView;

.field private sInfo:Lcom/jingdong/common/entity/SigninInfo;

.field private screenHeight:I

.field private screenWidth:I

.field private signin_verify_result:Landroid/widget/EditText;

.field private test_count:I

.field times:Ljava/lang/String;

.field private toast:Landroid/widget/Toast;

.field private totalNum:Landroid/widget/TextView;

.field private verifyCommit:Landroid/widget/Button;

.field private verifyImg:Landroid/widget/ImageView;

.field private verifyResult:Landroid/widget/EditText;

.field private verify_layout:Landroid/widget/LinearLayout;

.field private vf1:Landroid/widget/ViewFlipper;

.field private vf2:Landroid/widget/ViewFlipper;

.field private vf3:Landroid/widget/ViewFlipper;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->loginOrleave:Landroid/widget/LinearLayout;

    .line 61
    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->congratulation_layout:Landroid/widget/LinearLayout;

    .line 62
    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->commom_view:Landroid/widget/LinearLayout;

    .line 63
    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->verify_layout:Landroid/widget/LinearLayout;

    .line 66
    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->qiandao_back:Landroid/widget/ImageButton;

    .line 67
    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->qiandao_share:Landroid/widget/ImageButton;

    .line 68
    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->qiandao_btn:Landroid/widget/Button;

    .line 70
    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->login:Landroid/widget/Button;

    .line 71
    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->leave:Landroid/widget/Button;

    .line 72
    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->content_1:Landroid/widget/TextView;

    .line 73
    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->content_2:Landroid/widget/TextView;

    .line 74
    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->reward_tv:Landroid/widget/TextView;

    .line 79
    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->totalNum:Landroid/widget/TextView;

    .line 80
    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->signin_verify_result:Landroid/widget/EditText;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->resultText:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->resultValue:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->radomCodeErrorText:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->vf1:Landroid/widget/ViewFlipper;

    .line 86
    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->vf2:Landroid/widget/ViewFlipper;

    .line 87
    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->vf3:Landroid/widget/ViewFlipper;

    .line 90
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 100
    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->num_bmps:[I

    .line 104
    iput v2, p0, Lcom/jingdong/app/mall/signin/SignActivity;->test_count:I

    .line 106
    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->toast:Landroid/widget/Toast;

    .line 108
    iput-boolean v2, p0, Lcom/jingdong/app/mall/signin/SignActivity;->hasUpdateTimes:Z

    .line 109
    iput-boolean v2, p0, Lcom/jingdong/app/mall/signin/SignActivity;->hasDone:Z

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->handler:Landroid/os/Handler;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->loginText:Ljava/lang/String;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->loginTextTitle:Ljava/lang/String;

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->hintTextTitle:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->hintText:Ljava/lang/String;

    .line 124
    new-instance v0, Lcom/jingdong/app/mall/signin/SignActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/signin/SignActivity$1;-><init>(Lcom/jingdong/app/mall/signin/SignActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->mHandler:Landroid/os/Handler;

    .line 775
    new-instance v0, Lcom/jingdong/app/mall/signin/SignActivity$2;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/signin/SignActivity$2;-><init>(Lcom/jingdong/app/mall/signin/SignActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->ViewFlipperTask:Ljava/lang/Runnable;

    .line 49
    return-void

    .line 90
    :array_0
    .array-data 0x4
        0x3at 0x3t 0x2t 0x7ft
        0x3bt 0x3t 0x2t 0x7ft
        0x3ct 0x3t 0x2t 0x7ft
        0x3dt 0x3t 0x2t 0x7ft
        0x3et 0x3t 0x2t 0x7ft
        0x3ft 0x3t 0x2t 0x7ft
        0x40t 0x3t 0x2t 0x7ft
        0x41t 0x3t 0x2t 0x7ft
        0x42t 0x3t 0x2t 0x7ft
        0x43t 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/signin/SignActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->httpSigninInfo()V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/signin/SignActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 104
    iget v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->test_count:I

    return v0
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/signin/SignActivity;)Lcom/jingdong/common/entity/SigninInfo;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->sInfo:Lcom/jingdong/common/entity/SigninInfo;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/signin/SignActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 922
    invoke-direct {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->prepareToLogin()V

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/signin/SignActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->loginText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/signin/SignActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->loginTextTitle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/signin/SignActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->hintText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/signin/SignActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->hintTextTitle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/signin/SignActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 976
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/signin/SignActivity;->toastshort(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/signin/SignActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->updateQianDaoBtn()V

    return-void
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/signin/SignActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->updateTimes()V

    return-void
.end method

.method static synthetic access$19(Lcom/jingdong/app/mall/signin/SignActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->updateShouyeTV()V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/signin/SignActivity;)Landroid/widget/ViewFlipper;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->vf1:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$20(Lcom/jingdong/app/mall/signin/SignActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$21(Lcom/jingdong/app/mall/signin/SignActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->verifyImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$22(Lcom/jingdong/app/mall/signin/SignActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    iput p1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->randomTimes:I

    return-void
.end method

.method static synthetic access$23(Lcom/jingdong/app/mall/signin/SignActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 950
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/signin/SignActivity;->showView(I)V

    return-void
.end method

.method static synthetic access$24(Lcom/jingdong/app/mall/signin/SignActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 122
    iget v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->randomTimes:I

    return v0
.end method

.method static synthetic access$25(Lcom/jingdong/app/mall/signin/SignActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->resultText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$26(Lcom/jingdong/app/mall/signin/SignActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->resultValue:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$27(Lcom/jingdong/app/mall/signin/SignActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 905
    invoke-direct {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->startVF()V

    return-void
.end method

.method static synthetic access$28(Lcom/jingdong/app/mall/signin/SignActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->qiandao_btn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$29(Lcom/jingdong/app/mall/signin/SignActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->hasDone:Z

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/signin/SignActivity;)Landroid/widget/ViewFlipper;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->vf2:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$30(Lcom/jingdong/app/mall/signin/SignActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 889
    invoke-direct {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->showJingDouView()V

    return-void
.end method

.method static synthetic access$31(Lcom/jingdong/app/mall/signin/SignActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->httpVerifyImage()V

    return-void
.end method

.method static synthetic access$32(Lcom/jingdong/app/mall/signin/SignActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->resultValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$33(Lcom/jingdong/app/mall/signin/SignActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->radomCodeErrorText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$34(Lcom/jingdong/app/mall/signin/SignActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->radomCodeErrorText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/signin/SignActivity;)Landroid/widget/ViewFlipper;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->vf3:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/signin/SignActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    iput p1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->test_count:I

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/signin/SignActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->drawer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/signin/SignActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->drawerIcon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/signin/SignActivity;Lcom/jingdong/common/entity/SigninInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->sInfo:Lcom/jingdong/common/entity/SigninInfo;

    return-void
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/signin/SignActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->totalNum:Landroid/widget/TextView;

    return-object v0
.end method

.method private httpGetReward()V
    .locals 4

    .prologue
    .line 642
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 645
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v2, "qdRefundsSubmit"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 646
    const-string v2, "isRandom"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 648
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity;->signin_verify_result:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, result:Ljava/lang/String;
    const-string v2, "randomResult"

    invoke-virtual {v0, v2, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 651
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 658
    new-instance v2, Lcom/jingdong/app/mall/signin/SignActivity$8;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/signin/SignActivity$8;-><init>(Lcom/jingdong/app/mall/signin/SignActivity;)V

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 734
    invoke-virtual {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 735
    return-void
.end method

.method private httpShare()V
    .locals 3

    .prologue
    .line 484
    invoke-static {}, Lcom/jingdong/common/utils/NewJLogUtil;->isUseNewJLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    const-string v1, "SignShare"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/jingdong/common/utils/NewJLogUtil;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :cond_0
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 491
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "qdShareStats"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 492
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 495
    new-instance v1, Lcom/jingdong/app/mall/signin/SignActivity$6;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/signin/SignActivity$6;-><init>(Lcom/jingdong/app/mall/signin/SignActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 541
    invoke-virtual {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 542
    return-void
.end method

.method private httpSigninInfo()V
    .locals 3

    .prologue
    .line 292
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 295
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "qdHomePage"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 296
    const-string v1, "isUpdateSusTimes"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 299
    new-instance v1, Lcom/jingdong/app/mall/signin/SignActivity$4;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/signin/SignActivity$4;-><init>(Lcom/jingdong/app/mall/signin/SignActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 391
    invoke-virtual {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 392
    return-void
.end method

.method private httpSummit()V
    .locals 2

    .prologue
    .line 548
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 551
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "qdSubmit"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 552
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 558
    new-instance v1, Lcom/jingdong/app/mall/signin/SignActivity$7;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/signin/SignActivity$7;-><init>(Lcom/jingdong/app/mall/signin/SignActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 635
    invoke-virtual {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 636
    return-void
.end method

.method private httpVerifyImage()V
    .locals 3

    .prologue
    .line 399
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->signin_verify_result:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 401
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 404
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "qdRandomCodeRefresh"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 405
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 411
    new-instance v1, Lcom/jingdong/app/mall/signin/SignActivity$5;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/signin/SignActivity$5;-><init>(Lcom/jingdong/app/mall/signin/SignActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 476
    invoke-virtual {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 477
    return-void
.end method

.method private initViewAndEvent()V
    .locals 2

    .prologue
    const v1, 0x7f0c06f3

    .line 205
    const v0, 0x7f0c06fc

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/signin/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->congratulation_layout:Landroid/widget/LinearLayout;

    .line 206
    const v0, 0x7f0c06f5

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/signin/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->commom_view:Landroid/widget/LinearLayout;

    .line 207
    const v0, 0x7f0c06f1

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/signin/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->verify_layout:Landroid/widget/LinearLayout;

    .line 209
    const v0, 0x7f0c06e4

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/signin/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->qiandao_back:Landroid/widget/ImageButton;

    .line 210
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->qiandao_back:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    const v0, 0x7f0c06e5

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/signin/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->qiandao_share:Landroid/widget/ImageButton;

    .line 212
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->qiandao_share:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    const v0, 0x7f0c06ef

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/signin/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->qiandao_btn:Landroid/widget/Button;

    .line 214
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->qiandao_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    const v0, 0x7f0c06fe

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/signin/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->drawerIcon:Landroid/widget/ImageButton;

    .line 216
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->drawerIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    const v0, 0x7f0c06f2

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/signin/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->verifyImg:Landroid/widget/ImageView;

    .line 219
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->verifyImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/signin/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->verifyResult:Landroid/widget/EditText;

    .line 221
    const v0, 0x7f0c06f4

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/signin/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->verifyCommit:Landroid/widget/Button;

    .line 222
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->verifyCommit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    const v0, 0x7f0c06f9

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/signin/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->loginOrleave:Landroid/widget/LinearLayout;

    .line 225
    const v0, 0x7f0c06f7

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/signin/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->content_1:Landroid/widget/TextView;

    .line 226
    const v0, 0x7f0c06f8

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/signin/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->content_2:Landroid/widget/TextView;

    .line 227
    const v0, 0x7f0c06e7

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/signin/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->totalNum:Landroid/widget/TextView;

    .line 228
    const v0, 0x7f0c06fd

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/signin/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->reward_tv:Landroid/widget/TextView;

    .line 229
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/signin/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->signin_verify_result:Landroid/widget/EditText;

    .line 230
    const v0, 0x7f0c06fa

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/signin/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->login:Landroid/widget/Button;

    .line 231
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->login:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    const v0, 0x7f0c06fb

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/signin/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->leave:Landroid/widget/Button;

    .line 233
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->leave:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    invoke-direct {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->initViewFilpper()V

    .line 237
    return-void
.end method

.method private initViewFilpper()V
    .locals 8

    .prologue
    const v7, 0x7f040013

    const v6, 0x7f040012

    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 738
    const v2, 0x7f0c06ec

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/signin/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    iput-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity;->vf1:Landroid/widget/ViewFlipper;

    .line 739
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 744
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity;->vf1:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v4}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 745
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity;->vf1:Landroid/widget/ViewFlipper;

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 747
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity;->vf1:Landroid/widget/ViewFlipper;

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 750
    const v2, 0x7f0c06ed

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/signin/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    iput-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity;->vf2:Landroid/widget/ViewFlipper;

    .line 751
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v5, :cond_1

    .line 756
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity;->vf2:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v4}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 757
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity;->vf2:Landroid/widget/ViewFlipper;

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 759
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity;->vf2:Landroid/widget/ViewFlipper;

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 762
    const v2, 0x7f0c06ee

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/signin/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    iput-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity;->vf3:Landroid/widget/ViewFlipper;

    .line 763
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v5, :cond_2

    .line 768
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity;->vf3:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v4}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 769
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity;->vf3:Landroid/widget/ViewFlipper;

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 771
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity;->vf3:Landroid/widget/ViewFlipper;

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 773
    return-void

    .line 740
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 741
    .local v1, view:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity;->num_bmps:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 742
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity;->vf1:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 739
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 752
    .end local v1           #view:Landroid/widget/ImageView;
    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 753
    .restart local v1       #view:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity;->num_bmps:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 754
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity;->vf2:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 751
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 764
    .end local v1           #view:Landroid/widget/ImageView;
    :cond_2
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 765
    .restart local v1       #view:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity;->num_bmps:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 766
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity;->vf3:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 763
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private openDrawer()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    .line 202
    return-void
.end method

.method private prepareToLogin()V
    .locals 3

    .prologue
    .line 923
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->loginOrleave:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 924
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->loginTextTitle:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->content_1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070569

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 931
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->content_1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 932
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->loginText:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 933
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->content_2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07056a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 937
    :goto_1
    return-void

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->content_1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->loginTextTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 935
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->content_2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->loginText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private showJingDouView()V
    .locals 3

    .prologue
    .line 890
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->resultText:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->resultValue:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 891
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->resultText:Ljava/lang/String;

    const-string v1, "%X%X%X%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->resultText:Ljava/lang/String;

    const-string v1, "%X%X%X%"

    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity;->resultValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->resultText:Ljava/lang/String;

    .line 898
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->reward_tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->resultText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 901
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/signin/SignActivity;->showView(I)V

    .line 903
    return-void

    .line 894
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->resultText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 895
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->resultText:Ljava/lang/String;

    goto :goto_0
.end method

.method private showView(I)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 951
    packed-switch p1, :pswitch_data_0

    .line 974
    :goto_0
    return-void

    .line 953
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->congratulation_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 954
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->commom_view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 955
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->verify_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 956
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->loginOrleave:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 957
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->content_1:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 958
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->content_1:Landroid/widget/TextView;

    const/high16 v1, 0x4180

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 959
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->content_1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 960
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->content_1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->hintTextTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 961
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->content_2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->hintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 964
    :pswitch_1
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->congratulation_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 965
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->commom_view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 966
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->verify_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 969
    :pswitch_2
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->congratulation_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 970
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->commom_view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 971
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->verify_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 951
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startVF()V
    .locals 6

    .prologue
    .line 906
    iget-object v5, p0, Lcom/jingdong/app/mall/signin/SignActivity;->times:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 907
    const-string v5, "0"

    iput-object v5, p0, Lcom/jingdong/app/mall/signin/SignActivity;->times:Ljava/lang/String;

    .line 909
    :cond_0
    iget-object v5, p0, Lcom/jingdong/app/mall/signin/SignActivity;->times:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 910
    .local v2, num:I
    div-int/lit8 v5, v2, 0xa

    rem-int/lit8 v4, v5, 0xa

    .line 911
    .local v4, shiwei_old:I
    div-int/lit8 v1, v2, 0x64

    .line 912
    .local v1, baiwei_old:I
    add-int/lit8 v2, v2, 0x1

    .line 913
    div-int/lit8 v5, v2, 0xa

    rem-int/lit8 v3, v5, 0xa

    .line 914
    .local v3, shiwei:I
    div-int/lit8 v0, v2, 0x64

    .line 915
    .local v0, baiwei:I
    iget-object v5, p0, Lcom/jingdong/app/mall/signin/SignActivity;->vf3:Landroid/widget/ViewFlipper;

    invoke-virtual {v5}, Landroid/widget/ViewFlipper;->showNext()V

    .line 916
    if-eq v4, v3, :cond_1

    .line 917
    iget-object v5, p0, Lcom/jingdong/app/mall/signin/SignActivity;->vf2:Landroid/widget/ViewFlipper;

    invoke-virtual {v5}, Landroid/widget/ViewFlipper;->showNext()V

    .line 918
    :cond_1
    if-eq v0, v1, :cond_2

    .line 919
    iget-object v5, p0, Lcom/jingdong/app/mall/signin/SignActivity;->vf1:Landroid/widget/ViewFlipper;

    invoke-virtual {v5}, Landroid/widget/ViewFlipper;->showNext()V

    .line 920
    :cond_2
    return-void
.end method

.method private toastshort(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    const/4 v1, 0x1

    .line 977
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 987
    :cond_0
    :goto_0
    return-void

    .line 980
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 981
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 982
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 986
    :goto_1
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 984
    :cond_2
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->toast:Landroid/widget/Toast;

    goto :goto_1
.end method

.method private updateQianDaoBtn()V
    .locals 5

    .prologue
    const v4, 0x7f02034c

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 250
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->sInfo:Lcom/jingdong/common/entity/SigninInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/SigninInfo;->getIsDone()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 251
    iput-boolean v3, p0, Lcom/jingdong/app/mall/signin/SignActivity;->hasDone:Z

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->sInfo:Lcom/jingdong/common/entity/SigninInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/SigninInfo;->getIsDone()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 255
    .local v0, isDone:I
    if-nez v0, :cond_2

    .line 256
    iput-boolean v3, p0, Lcom/jingdong/app/mall/signin/SignActivity;->hasDone:Z

    .line 257
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->qiandao_btn:Landroid/widget/Button;

    const v2, 0x7f02035e

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 258
    :cond_2
    if-ne v0, v2, :cond_3

    .line 259
    iput-boolean v2, p0, Lcom/jingdong/app/mall/signin/SignActivity;->hasDone:Z

    .line 260
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->qiandao_btn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 261
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 262
    iput-boolean v2, p0, Lcom/jingdong/app/mall/signin/SignActivity;->hasDone:Z

    .line 263
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->qiandao_btn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 264
    invoke-direct {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->httpVerifyImage()V

    goto :goto_0
.end method

.method private updateShouyeTV()V
    .locals 2

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/signin/SignActivity;->showView(I)V

    .line 282
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->content_1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->sInfo:Lcom/jingdong/common/entity/SigninInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/SigninInfo;->getHintTextTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->content_2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->sInfo:Lcom/jingdong/common/entity/SigninInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/SigninInfo;->getHintText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->totalNum:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->sInfo:Lcom/jingdong/common/entity/SigninInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/SigninInfo;->getTotalNumTimes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    return-void
.end method

.method private updateTimes()V
    .locals 3

    .prologue
    .line 269
    iget-boolean v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->hasUpdateTimes:Z

    if-eqz v1, :cond_0

    .line 278
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->sInfo:Lcom/jingdong/common/entity/SigninInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/SigninInfo;->getSustainedNumTimes()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->times:Ljava/lang/String;

    .line 272
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->times:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 273
    const-string v1, "000"

    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->times:Ljava/lang/String;

    .line 274
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->times:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 275
    .local v0, count:I
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->vf3:Landroid/widget/ViewFlipper;

    rem-int/lit8 v2, v0, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 276
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->vf2:Landroid/widget/ViewFlipper;

    div-int/lit8 v2, v0, 0xa

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 277
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->vf1:Landroid/widget/ViewFlipper;

    div-int/lit8 v2, v0, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 884
    if-nez p1, :cond_0

    .line 885
    invoke-direct {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->httpSigninInfo()V

    .line 887
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 807
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 809
    :sswitch_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->finish()V

    goto :goto_0

    .line 812
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 813
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "text/plain"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 815
    const-string v3, "android.intent.extra.SUBJECT"

    .line 816
    const v4, 0x7f07056d

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/signin/SignActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 814
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 818
    iget-object v3, p0, Lcom/jingdong/app/mall/signin/SignActivity;->sInfo:Lcom/jingdong/common/entity/SigninInfo;

    if-eqz v3, :cond_1

    .line 820
    const-string v3, "android.intent.extra.TEXT"

    iget-object v4, p0, Lcom/jingdong/app/mall/signin/SignActivity;->sInfo:Lcom/jingdong/common/entity/SigninInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/SigninInfo;->getShareText()Ljava/lang/String;

    move-result-object v4

    .line 819
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    :cond_1
    const v3, 0x7f07056c

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/signin/SignActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 823
    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/signin/SignActivity;->startActivityNoException(Landroid/content/Intent;)V

    .line 826
    invoke-direct {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->httpShare()V

    goto :goto_0

    .line 830
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_2
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v3

    if-nez v3, :cond_2

    .line 831
    invoke-virtual {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070569

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/signin/SignActivity;->toastshort(Ljava/lang/String;)V

    .line 832
    invoke-direct {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->prepareToLogin()V

    goto :goto_0

    .line 835
    :cond_2
    iget-boolean v3, p0, Lcom/jingdong/app/mall/signin/SignActivity;->hasDone:Z

    if-nez v3, :cond_0

    .line 836
    invoke-direct {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->httpSummit()V

    goto :goto_0

    .line 842
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 843
    .local v0, i:Landroid/content/Intent;
    const-class v3, Lcom/jingdong/app/mall/login/LoginActivity;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 844
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/jingdong/app/mall/signin/SignActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 847
    .end local v0           #i:Landroid/content/Intent;
    :sswitch_4
    invoke-virtual {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->finish()V

    goto :goto_0

    .line 852
    :sswitch_5
    iget v3, p0, Lcom/jingdong/app/mall/signin/SignActivity;->randomTimes:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_3

    .line 853
    const v3, 0x7f070565

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/signin/SignActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/signin/SignActivity;->toastshort(Ljava/lang/String;)V

    goto :goto_0

    .line 857
    :cond_3
    iget-object v3, p0, Lcom/jingdong/app/mall/signin/SignActivity;->verifyResult:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 858
    .local v2, result:Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 859
    :cond_4
    const v3, 0x7f070566

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/signin/SignActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/signin/SignActivity;->toastshort(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 863
    :cond_5
    invoke-direct {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->httpGetReward()V

    goto/16 :goto_0

    .line 867
    .end local v2           #result:Ljava/lang/String;
    :sswitch_6
    invoke-direct {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->httpVerifyImage()V

    goto/16 :goto_0

    .line 871
    :sswitch_7
    invoke-direct {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->openDrawer()V

    goto/16 :goto_0

    .line 807
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c06e4 -> :sswitch_0
        0x7f0c06e5 -> :sswitch_1
        0x7f0c06ef -> :sswitch_2
        0x7f0c06f2 -> :sswitch_6
        0x7f0c06f4 -> :sswitch_5
        0x7f0c06fa -> :sswitch_3
        0x7f0c06fb -> :sswitch_4
        0x7f0c06fe -> :sswitch_7
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f070561

    .line 139
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/signin/SignActivity;->requestWindowFeature(I)Z

    .line 140
    const v1, 0x7f03011c

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/signin/SignActivity;->setContentView(I)V

    .line 142
    invoke-virtual {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    .line 143
    .local v8, windowManager:Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->screenHeight:I

    .line 144
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->screenWidth:I

    .line 146
    const v1, 0x7f0c06ff

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/signin/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->drawer:Landroid/widget/LinearLayout;

    .line 148
    const v1, 0x7f0c06e0

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/signin/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout;

    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 150
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->drawer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 151
    .local v7, param:Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->screenWidth:I

    const/high16 v2, 0x4040

    invoke-static {v2}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    .line 153
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    invoke-direct {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->initViewAndEvent()V

    .line 157
    new-instance v0, Lcom/jingdong/app/mall/signin/SignActivity$3;

    iget-object v3, p0, Lcom/jingdong/app/mall/signin/SignActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 158
    const v4, 0x7f02034d

    move-object v1, p0

    move-object v2, p0

    move v6, v5

    .line 157
    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/signin/SignActivity$3;-><init>(Lcom/jingdong/app/mall/signin/SignActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    .line 190
    .local v0, mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 192
    invoke-static {}, Lcom/jingdong/common/utils/NewJLogUtil;->isUseNewJLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const-string v1, "SignActivity"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/jingdong/common/utils/NewJLogUtil;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 991
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 995
    :cond_0
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onDestroy()V

    .line 996
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/jingdong/app/mall/signin/SignActivity;->httpSigninInfo()V

    .line 243
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onStart()V

    .line 244
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 941
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 942
    .local v0, x:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 947
    .local v1, y:F
    const/4 v2, 0x0

    return v2
.end method
