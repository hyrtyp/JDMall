.class public Lcom/jingdong/app/mall/register/QuickRegisterActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "QuickRegisterActivity.java"


# instance fields
.field private agreementCheckBox:Landroid/widget/CheckBox;

.field private agreementShowTextView:Landroid/widget/TextView;

.field private alertDialog:Landroid/app/AlertDialog;

.field bShowPassword:Z

.field bThreadStop:Z

.field bVerifiedMail:Z

.field bVerifiedName:Z

.field mAccept:Landroid/widget/CheckBox;

.field mConfirmBtn:Landroid/widget/Button;

.field mRegisterFirstPwd:Landroid/widget/EditText;

.field mRegisterMail:Landroid/widget/EditText;

.field mRegisterName:Landroid/widget/EditText;

.field mRegisterSecondPwd:Landroid/widget/EditText;

.field mShowPassword:Landroid/widget/CheckBox;

.field mTitle:Landroid/widget/TextView;

.field messageBody:Ljava/lang/String;

.field private myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private phoneNumber:Ljava/lang/String;

.field private phoneNumberEditText:Landroid/widget/EditText;

.field qucikRegisterStatusListener:Lcom/jingdong/app/mall/register/QuickRegisterListener$QuickRegisterStatusListener;

.field quickRegisterListener:Lcom/jingdong/app/mall/register/QuickRegisterListener;

.field private quickRegisterToRegisterLayout:Landroid/widget/RelativeLayout;

.field private returnPwd:Ljava/lang/String;

.field private sRegMailAddr:Ljava/lang/String;

.field private sRegName:Ljava/lang/String;

.field private sRegPwd1:Ljava/lang/String;

.field private sRegPwd2:Ljava/lang/String;

.field private sRegUuid:Ljava/lang/String;

.field private sendRegisterInfoButton:Landroid/widget/Button;

.field showAgreement:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 51
    iput-boolean v1, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->bVerifiedName:Z

    iput-boolean v1, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->bVerifiedMail:Z

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->bThreadStop:Z

    .line 59
    iput-boolean v1, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->bShowPassword:Z

    .line 140
    new-instance v0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->qucikRegisterStatusListener:Lcom/jingdong/app/mall/register/QuickRegisterListener$QuickRegisterStatusListener;

    .line 241
    new-instance v0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$2;

    iget-object v1, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->qucikRegisterStatusListener:Lcom/jingdong/app/mall/register/QuickRegisterListener$QuickRegisterStatusListener;

    invoke-direct {v0, p0, v1, p0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity$2;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterActivity;Lcom/jingdong/app/mall/register/QuickRegisterListener$QuickRegisterStatusListener;Lcom/jingdong/app/mall/utils/MyActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->quickRegisterListener:Lcom/jingdong/app/mall/register/QuickRegisterListener;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/register/QuickRegisterActivity;)Lcom/jingdong/app/mall/utils/MyActivity;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/register/QuickRegisterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/register/QuickRegisterActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/register/QuickRegisterActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->alertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/register/QuickRegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->phoneNumberEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/register/QuickRegisterActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->sendRegisterInfoButton:Landroid/widget/Button;

    return-object v0
.end method

.method private initQuickRegisterElements()V
    .locals 2

    .prologue
    .line 81
    iput-object p0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 82
    const v0, 0x7f0c05dd

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->phoneNumberEditText:Landroid/widget/EditText;

    .line 83
    const v0, 0x7f0c05e0

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->sendRegisterInfoButton:Landroid/widget/Button;

    .line 84
    const v0, 0x7f0c05e5

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->quickRegisterToRegisterLayout:Landroid/widget/RelativeLayout;

    .line 85
    const v0, 0x7f0c05df

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->agreementShowTextView:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f0c05de

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->agreementCheckBox:Landroid/widget/CheckBox;

    .line 87
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->mTitle:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->mTitle:Landroid/widget/TextView;

    const-string v1, "\u5feb\u901f\u6ce8\u518c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->sendRegisterInfoButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->quickRegisterListener:Lcom/jingdong/app/mall/register/QuickRegisterListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->agreementShowTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/jingdong/app/mall/register/QuickRegisterActivity$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity$3;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->agreementCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/jingdong/app/mall/register/QuickRegisterActivity$4;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity$4;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 118
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->quickRegisterToRegisterLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/jingdong/app/mall/register/QuickRegisterActivity$5;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity$5;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f0300ed

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->setContentView(I)V

    .line 76
    invoke-direct {p0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->initQuickRegisterElements()V

    .line 77
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 135
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->finish()V

    .line 138
    :cond_0
    return-void
.end method

.method public quickRegisterInputCheck()Z
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->phoneNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->phoneNumber:Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->phoneNumberEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070483

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/JDStringUtils;->getErrorSpanned(Landroid/content/Context;I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 265
    const/4 v0, 0x0

    .line 267
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
