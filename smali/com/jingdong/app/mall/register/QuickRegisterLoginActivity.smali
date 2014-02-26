.class public Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "QuickRegisterLoginActivity.java"


# static fields
.field public static final RESEND_FLAG:Ljava/lang/String; = "com.360buy:loginResendFlag"

.field public static final TO_MY_JD:I = 0x1


# instance fields
.field private final TIME_LONG:I

.field private TIME_TAG:I

.field private alertDialog:Landroid/app/AlertDialog;

.field private mTitle:Landroid/widget/TextView;

.field private myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private phoneNumber:Ljava/lang/String;

.field quickRegisterLoginListener:Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;

.field quickRegisterLoginStatusListener:Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$QuickRegisterLoginStatusListener;

.field private registerPwdEditText:Landroid/widget/EditText;

.field private registerPwdLoginButton:Landroid/widget/Button;

.field private registerResendButton:Landroid/widget/Button;

.field private task:Ljava/util/TimerTask;

.field private timeTextView:Landroid/widget/TextView;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v0, 0x78

    .line 33
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 43
    iput v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->TIME_LONG:I

    .line 44
    iput v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->TIME_TAG:I

    .line 228
    new-instance v0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$1;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->quickRegisterLoginStatusListener:Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$QuickRegisterLoginStatusListener;

    .line 252
    new-instance v0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$2;

    iget-object v1, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->quickRegisterLoginStatusListener:Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$QuickRegisterLoginStatusListener;

    invoke-direct {v0, p0, v1, p0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$2;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$QuickRegisterLoginStatusListener;Lcom/jingdong/app/mall/utils/MyActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->quickRegisterLoginListener:Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;

    .line 33
    return-void
.end method

.method private LoginError(Ljava/lang/String;)V
    .locals 1
    .parameter "tip"

    .prologue
    .line 560
    new-instance v0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$6;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->post(Ljava/lang/Runnable;)V

    .line 595
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;)Lcom/jingdong/app/mall/utils/MyActivity;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 556
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->LoginError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->alertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->registerPwdEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->TIME_TAG:I

    return v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->registerResendButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->timeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->TIME_TAG:I

    return-void
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->newTwoMinutesTimeCount()V

    return-void
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 509
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->resendError(Ljava/lang/String;)V

    return-void
.end method

.method private newTwoMinutesTimeCount()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 409
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->registerResendButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 410
    const/16 v0, 0x78

    iput v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->TIME_TAG:I

    .line 411
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->timeTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u60a8\u53ef\u4ee5\u5728"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->TIME_TAG:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u79d2\u540e\u91cd\u65b0\u8bf7\u6c42"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    return-void
.end method

.method private passWordCheck()Z
    .locals 5

    .prologue
    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, checkFlag:Z
    iget-object v2, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->registerPwdEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, checkStr:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 493
    const/4 v0, 0x1

    .line 498
    iget-object v2, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->registerPwdEditText:Landroid/widget/EditText;

    .line 499
    invoke-virtual {p0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f07020d

    invoke-static {v3, v4}, Lcom/jingdong/common/utils/JDStringUtils;->getErrorSpanned(Landroid/content/Context;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 506
    :cond_0
    return v0
.end method

.method private resendError(Ljava/lang/String;)V
    .locals 1
    .parameter "tip"

    .prologue
    .line 513
    new-instance v0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$5;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->post(Ljava/lang/Runnable;)V

    .line 547
    return-void
.end method


# virtual methods
.method public afterSuccess()V
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    .line 481
    .local v0, activity:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->removeRecordSecond()V

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->finish()V

    .line 487
    return-void
.end method

.method public inputCheck(Ljava/lang/String;)Z
    .locals 3
    .parameter "testString"

    .prologue
    .line 597
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->registerPwdEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070484

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/JDStringUtils;->getErrorSpanned(Landroid/content/Context;I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 601
    const/4 v0, 0x0

    .line 603
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    iput-object p0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 55
    const v0, 0x7f0300ee

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->setContentView(I)V

    .line 59
    const v0, 0x7f0c05ec

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->registerPwdEditText:Landroid/widget/EditText;

    .line 60
    const v0, 0x7f0c05ed

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->registerPwdLoginButton:Landroid/widget/Button;

    .line 61
    const v0, 0x7f0c05f1

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->registerResendButton:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->registerResendButton:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 65
    .local v6, b:Landroid/os/Bundle;
    const-string v0, "phoneNumber"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->phoneNumber:Ljava/lang/String;

    .line 66
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->mTitle:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->mTitle:Landroid/widget/TextView;

    const-string v1, "\u5feb\u901f\u6ce8\u518c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v0, 0x7f0c05f2

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->timeTextView:Landroid/widget/TextView;

    .line 70
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->timer:Ljava/util/Timer;

    .line 71
    new-instance v0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->task:Ljava/util/TimerTask;

    .line 109
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->task:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 110
    invoke-virtual {p0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 111
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "newNumber"

    invoke-virtual {v8, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 115
    .local v9, isNewNumber:Ljava/lang/Boolean;
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->newTwoMinutesTimeCount()V

    .line 125
    :goto_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    .line 126
    .local v7, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->registerPwdEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v7, v0, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 127
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->registerResendButton:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->registerPwdLoginButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->quickRegisterLoginListener:Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    return-void

    .line 119
    .end local v7           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->registerResendButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 120
    iput v10, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->TIME_TAG:I

    .line 121
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->timeTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 396
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 402
    return-void
.end method
