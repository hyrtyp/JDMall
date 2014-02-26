.class public Lcom/jingdong/app/mall/register/RegisterActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "RegisterActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
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

.field private sRegMailAddr:Ljava/lang/String;

.field private sRegName:Ljava/lang/String;

.field private sRegPwd1:Ljava/lang/String;

.field private sRegPwd2:Ljava/lang/String;

.field private sRegUuid:Ljava/lang/String;

.field showAgreement:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/jingdong/app/mall/register/RegisterActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/app/mall/register/RegisterActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 68
    iput-boolean v1, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->bVerifiedName:Z

    iput-boolean v1, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->bVerifiedMail:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->bThreadStop:Z

    .line 76
    iput-boolean v1, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->bShowPassword:Z

    .line 58
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/register/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 663
    invoke-direct {p0}, Lcom/jingdong/app/mall/register/RegisterActivity;->onRegister()V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/register/RegisterActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/jingdong/app/mall/register/RegisterActivity;->nameCheck()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/register/RegisterActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/jingdong/app/mall/register/RegisterActivity;->mailCheck()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/register/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->sRegName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/register/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->sRegPwd2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/register/RegisterActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/register/RegisterActivity;->loginSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/register/RegisterActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 600
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/register/RegisterActivity;->loginError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/register/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/jingdong/app/mall/register/RegisterActivity;->onRegisterSuccess()V

    return-void
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/register/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/jingdong/app/mall/register/RegisterActivity;->onLogin()V

    return-void
.end method

.method private clearTextview()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterName:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterMail:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterFirstPwd:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterSecondPwd:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 223
    return-void
.end method

.method private getUserPassword()V
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->sRegPwd1:Ljava/lang/String;

    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity;->EncryptPassword2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->sRegPwd2:Ljava/lang/String;

    .line 591
    return-void
.end method

.method private initBtn()V
    .locals 2

    .prologue
    .line 100
    const v0, 0x7f0c060c

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mConfirmBtn:Landroid/widget/Button;

    .line 101
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mConfirmBtn:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/register/RegisterActivity$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/register/RegisterActivity$1;-><init>(Lcom/jingdong/app/mall/register/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mTitle:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f070213

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 112
    const v0, 0x7f0c039e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mShowPassword:Landroid/widget/CheckBox;

    .line 113
    const v0, 0x7f0c060a

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mAccept:Landroid/widget/CheckBox;

    .line 114
    const v0, 0x7f0c060b

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->showAgreement:Landroid/widget/TextView;

    .line 116
    return-void
.end method

.method private initCheckBox()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mShowPassword:Landroid/widget/CheckBox;

    new-instance v1, Lcom/jingdong/app/mall/register/RegisterActivity$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/register/RegisterActivity$2;-><init>(Lcom/jingdong/app/mall/register/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 139
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mAccept:Landroid/widget/CheckBox;

    new-instance v1, Lcom/jingdong/app/mall/register/RegisterActivity$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/register/RegisterActivity$3;-><init>(Lcom/jingdong/app/mall/register/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 154
    return-void
.end method

.method private initTextView()V
    .locals 2

    .prologue
    .line 166
    const v0, 0x7f0c0603

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterName:Landroid/widget/EditText;

    .line 167
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterName:Landroid/widget/EditText;

    new-instance v1, Lcom/jingdong/app/mall/register/RegisterActivity$4;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/register/RegisterActivity$4;-><init>(Lcom/jingdong/app/mall/register/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 181
    const v0, 0x7f0c0605

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterMail:Landroid/widget/EditText;

    .line 182
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterMail:Landroid/widget/EditText;

    new-instance v1, Lcom/jingdong/app/mall/register/RegisterActivity$5;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/register/RegisterActivity$5;-><init>(Lcom/jingdong/app/mall/register/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 196
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterMail:Landroid/widget/EditText;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 197
    const v0, 0x7f0c0607

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterFirstPwd:Landroid/widget/EditText;

    .line 198
    const v0, 0x7f0c0609

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterSecondPwd:Landroid/widget/EditText;

    .line 199
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->showAgreement:Landroid/widget/TextView;

    new-instance v1, Lcom/jingdong/app/mall/register/RegisterActivity$6;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/register/RegisterActivity$6;-><init>(Lcom/jingdong/app/mall/register/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    return-void
.end method

.method private inputCheck()Z
    .locals 5

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, checkFlag:Z
    invoke-direct {p0}, Lcom/jingdong/app/mall/register/RegisterActivity;->nameCheck()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/jingdong/app/mall/register/RegisterActivity;->mailCheck()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    :cond_0
    const/4 v0, 0x1

    .line 283
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterFirstPwd:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, checkStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 285
    const/4 v0, 0x1

    .line 287
    iget-object v2, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterFirstPwd:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/register/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f07020d

    invoke-static {v3, v4}, Lcom/jingdong/common/utils/JDStringUtils;->getErrorSpanned(Landroid/content/Context;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 303
    :cond_2
    :goto_0
    return v0

    .line 288
    :cond_3
    const/4 v2, 0x6

    const/16 v3, 0x14

    invoke-static {v1, v2, v3}, Lcom/jingdong/app/mall/utils/CommonUtil;->checkPassword(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_4

    .line 289
    const/4 v0, 0x1

    .line 291
    iget-object v2, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterFirstPwd:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/register/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f07020f

    invoke-static {v3, v4}, Lcom/jingdong/common/utils/JDStringUtils;->getErrorSpanned(Landroid/content/Context;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 293
    :cond_4
    iget-object v2, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterSecondPwd:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 294
    const/4 v0, 0x1

    .line 297
    iget-object v2, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterSecondPwd:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/register/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f07021e

    invoke-static {v3, v4}, Lcom/jingdong/common/utils/JDStringUtils;->getErrorSpanned(Landroid/content/Context;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private loginError(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 601
    new-instance v0, Lcom/jingdong/app/mall/register/RegisterActivity$12;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/register/RegisterActivity$12;-><init>(Lcom/jingdong/app/mall/register/RegisterActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/RegisterActivity;->post(Ljava/lang/Runnable;)V

    .line 614
    return-void
.end method

.method private loginSuccess(Ljava/lang/String;)V
    .locals 1
    .parameter "pinName"

    .prologue
    .line 527
    new-instance v0, Lcom/jingdong/app/mall/register/RegisterActivity$11;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/register/RegisterActivity$11;-><init>(Lcom/jingdong/app/mall/register/RegisterActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/RegisterActivity;->post(Ljava/lang/Runnable;)V

    .line 577
    return-void
.end method

.method private mailCheck()Z
    .locals 5

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, checkFlag:Z
    iget-object v2, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterMail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, checkStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    const/4 v0, 0x1

    .line 231
    iget-object v2, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterMail:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/register/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070218

    invoke-static {v3, v4}, Lcom/jingdong/common/utils/JDStringUtils;->getErrorSpanned(Landroid/content/Context;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 232
    :cond_1
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->checkEmailWithSuffix(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    const/4 v0, 0x1

    .line 235
    iget-object v2, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterMail:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/register/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f07021f

    invoke-static {v3, v4}, Lcom/jingdong/common/utils/JDStringUtils;->getErrorSpanned(Landroid/content/Context;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private nameCheck()Z
    .locals 6

    .prologue
    const v5, 0x7f07020e

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, checkFlag:Z
    iget-object v3, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, checkStr:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jingdong/app/mall/utils/CommonUtil;->getLength(Ljava/lang/String;)I

    move-result v2

    .line 250
    .local v2, length:I
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    const/4 v0, 0x1

    .line 253
    iget-object v3, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/register/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070217

    invoke-static {v4, v5}, Lcom/jingdong/common/utils/JDStringUtils;->getErrorSpanned(Landroid/content/Context;I)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 266
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->checkUsername(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 255
    const/4 v0, 0x1

    .line 257
    iget-object v3, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/register/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/jingdong/common/utils/JDStringUtils;->getErrorSpanned(Landroid/content/Context;I)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 258
    :cond_2
    const/4 v3, 0x4

    if-lt v2, v3, :cond_3

    const/16 v3, 0x14

    if-le v2, v3, :cond_0

    .line 259
    :cond_3
    const/4 v0, 0x1

    .line 261
    iget-object v3, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/register/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/jingdong/common/utils/JDStringUtils;->getErrorSpanned(Landroid/content/Context;I)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private onLogin()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 625
    invoke-direct {p0}, Lcom/jingdong/app/mall/register/RegisterActivity;->getUserPassword()V

    .line 626
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->sRegPwd1:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->sRegName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->sRegName:Ljava/lang/String;

    iget-object v2, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->sRegPwd2:Ljava/lang/String;

    new-instance v5, Lcom/jingdong/app/mall/register/RegisterActivity$13;

    invoke-direct {v5, p0}, Lcom/jingdong/app/mall/register/RegisterActivity$13;-><init>(Lcom/jingdong/app/mall/register/RegisterActivity;)V

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/jingdong/common/login/LoginUserBase;->login(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/jingdong/common/login/LoginUserBase$LoginRequestListener;)V

    goto :goto_0
.end method

.method private onRegister()V
    .locals 7

    .prologue
    .line 665
    :try_start_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/register/RegisterActivity;->inputCheck()Z

    move-result v0

    .line 667
    .local v0, contentFormatCheck:Z
    if-eqz v0, :cond_0

    .line 767
    .end local v0           #contentFormatCheck:Z
    :goto_0
    return-void

    .line 669
    .restart local v0       #contentFormatCheck:Z
    :cond_0
    iget-boolean v5, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->bVerifiedMail:Z

    if-eqz v5, :cond_1

    .line 674
    :cond_1
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/register/RegisterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 675
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v5, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterSecondPwd:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 676
    invoke-virtual {p0}, Lcom/jingdong/app/mall/register/RegisterActivity;->getRegisterUserInfo()V

    .line 677
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    .local v4, params:Lorg/json/JSONObject;
    :try_start_1
    const-string v5, "username"

    iget-object v6, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->sRegName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 681
    const-string v5, "pwd"

    iget-object v6, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->sRegPwd1:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 682
    const-string v5, "pwd2"

    iget-object v6, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->sRegPwd2:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 683
    const-string v5, "mail"

    iget-object v6, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->sRegMailAddr:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 684
    const-string v5, "uuid"

    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->readDeviceUUID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 692
    :try_start_2
    new-instance v2, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 693
    .local v2, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const v5, 0xea60

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setReadTimeout(I)V

    .line 694
    const-string v5, "register"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 696
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPost(Z)V

    .line 697
    new-instance v5, Lcom/jingdong/app/mall/register/RegisterActivity$14;

    invoke-direct {v5, p0}, Lcom/jingdong/app/mall/register/RegisterActivity$14;-><init>(Lcom/jingdong/app/mall/register/RegisterActivity;)V

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 758
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 759
    invoke-virtual {p0}, Lcom/jingdong/app/mall/register/RegisterActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 761
    .end local v0           #contentFormatCheck:Z
    .end local v2           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v4           #params:Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 686
    .restart local v0       #contentFormatCheck:Z
    .restart local v3       #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v4       #params:Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .local v1, e:Lorg/json/JSONException;
    goto :goto_0
.end method

.method private onRegisterSuccess()V
    .locals 1

    .prologue
    .line 507
    new-instance v0, Lcom/jingdong/app/mall/register/RegisterActivity$10;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/register/RegisterActivity$10;-><init>(Lcom/jingdong/app/mall/register/RegisterActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/RegisterActivity;->post(Ljava/lang/Runnable;)V

    .line 517
    return-void
.end method

.method private popupToast(Ljava/lang/String;)V
    .locals 1
    .parameter "sMsg"

    .prologue
    .line 488
    new-instance v0, Lcom/jingdong/app/mall/register/RegisterActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/register/RegisterActivity$9;-><init>(Lcom/jingdong/app/mall/register/RegisterActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/RegisterActivity;->post(Ljava/lang/Runnable;)V

    .line 497
    return-void
.end method

.method private verifyUserMailAddr()V
    .locals 5

    .prologue
    .line 404
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->bVerifiedMail:Z

    .line 405
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 407
    .local v2, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "email"

    iget-object v4, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterMail:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 416
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v3, "validate"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 418
    new-instance v3, Lcom/jingdong/app/mall/register/RegisterActivity$8;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/register/RegisterActivity$8;-><init>(Lcom/jingdong/app/mall/register/RegisterActivity;)V

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 484
    invoke-virtual {p0}, Lcom/jingdong/app/mall/register/RegisterActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 485
    .end local v1           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 413
    .local v0, e:Lorg/json/JSONException;
    goto :goto_0
.end method

.method private verifyUserName()V
    .locals 5

    .prologue
    .line 323
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->bVerifiedName:Z

    .line 324
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 326
    .local v2, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "userName"

    iget-object v4, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 335
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v3, "validate"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 337
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPost(Z)V

    .line 338
    new-instance v3, Lcom/jingdong/app/mall/register/RegisterActivity$7;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/register/RegisterActivity$7;-><init>(Lcom/jingdong/app/mall/register/RegisterActivity;)V

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 400
    invoke-virtual {p0}, Lcom/jingdong/app/mall/register/RegisterActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 401
    .end local v1           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 332
    .local v0, e:Lorg/json/JSONException;
    goto :goto_0
.end method


# virtual methods
.method protected getRegisterUserInfo()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->sRegName:Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterMail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->sRegMailAddr:Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterFirstPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->sRegPwd1:Ljava/lang/String;

    .line 319
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterSecondPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->sRegPwd2:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f0300f2

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/RegisterActivity;->setContentView(I)V

    .line 83
    invoke-direct {p0}, Lcom/jingdong/app/mall/register/RegisterActivity;->initBtn()V

    .line 84
    invoke-direct {p0}, Lcom/jingdong/app/mall/register/RegisterActivity;->initTextView()V

    .line 85
    invoke-direct {p0}, Lcom/jingdong/app/mall/register/RegisterActivity;->initCheckBox()V

    .line 86
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mTitle:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity;->mTitle:Landroid/widget/TextView;

    const-string v1, "\u666e\u901a\u7528\u6237\u6ce8\u518c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 791
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 794
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    new-instance v0, Lcom/jingdong/app/mall/register/RegisterActivity$17;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/register/RegisterActivity$17;-><init>(Lcom/jingdong/app/mall/register/RegisterActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/register/RegisterActivity;->post(Ljava/lang/Runnable;)V

    .line 803
    :cond_0
    return-void
.end method

.method showDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "messageBody"

    .prologue
    .line 770
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 771
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070212

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 772
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 773
    const v1, 0x7f07037c

    new-instance v2, Lcom/jingdong/app/mall/register/RegisterActivity$15;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/register/RegisterActivity$15;-><init>(Lcom/jingdong/app/mall/register/RegisterActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 779
    new-instance v1, Lcom/jingdong/app/mall/register/RegisterActivity$16;

    invoke-direct {v1, p0, v0}, Lcom/jingdong/app/mall/register/RegisterActivity$16;-><init>(Lcom/jingdong/app/mall/register/RegisterActivity;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/register/RegisterActivity;->post(Ljava/lang/Runnable;)V

    .line 787
    return-void
.end method
