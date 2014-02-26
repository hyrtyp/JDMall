.class public Lcom/unionpay/upomp/bypay/activity/LoginActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static a:Landroid/widget/Button;

.field private static a:Landroid/widget/ImageView;

.field private static a:Landroid/widget/ProgressBar;

.field private static b:Landroid/widget/EditText;

.field public static d:Ljava/lang/String;


# instance fields
.field private a:Landroid/view/View$OnFocusChangeListener;

.field private a:Landroid/widget/EditText;

.field private a:Landroid/widget/RelativeLayout;

.field public a:Ljava/lang/String;

.field private a:Z

.field private b:Landroid/widget/Button;

.field private b:Landroid/widget/RelativeLayout;

.field public b:Ljava/lang/String;

.field private c:Landroid/widget/Button;

.field private c:Landroid/widget/RelativeLayout;

.field public c:Ljava/lang/String;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Z

    new-instance v0, Lcom/unionpay/upomp/bypay/other/cv;

    invoke-direct {v0, p0}, Lcom/unionpay/upomp/bypay/other/cv;-><init>(Lcom/unionpay/upomp/bypay/activity/LoginActivity;)V

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public static synthetic a()Landroid/widget/EditText;
    .locals 1

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic a()Landroid/widget/ImageView;
    .locals 1

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic a()Landroid/widget/ProgressBar;
    .locals 1

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->b:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/ImageView;

    sget-object v1, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    return-void
.end method

.method private a(I)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg_on"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->b:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg_on"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->c:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg_on"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->b:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->c:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method public static synthetic a(Lcom/unionpay/upomp/bypay/activity/LoginActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a(I)V

    return-void
.end method

.method private b()V
    .locals 6

    const/4 v5, 0x1

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "tv_header"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_loginactivity_userlogin"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->a(ILjava/lang/String;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "et_username_login"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "et_userpass_login"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/Button;

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFocusable(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_getpass"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "et_webvalidcode_login"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->b:Landroid/widget/EditText;

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_login_login"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_register_login"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_login"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "iv_webvalidcode_login"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/ImageView;

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setFocusable(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "p_webvalidcode_login"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    sput-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/ProgressBar;

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rl_username_login"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rl_userpass_login"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->b:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rl_webvalidcode_login"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->c:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v5, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "id"

    const-string v4, "btn_login"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->j(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->k(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->e:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->q(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/unionpay/upomp/bypay/other/eg;

    invoke-direct {v0, p0}, Lcom/unionpay/upomp/bypay/other/eg;-><init>(Lcom/unionpay/upomp/bypay/activity/LoginActivity;)V

    new-array v1, v5, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/other/eg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "id"

    const-string v4, "btn_register_login"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->f:Ljava/lang/Boolean;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/RegisterActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "id"

    const-string v4, "btn_getpass"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->f:Ljava/lang/Boolean;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/GetpassActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "et_userpass_login"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "et_userpass_login"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "et_userpass_login"

    invoke-static {v0, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc

    const/4 v4, 0x1

    sget-object v5, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->b:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v7, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v8, "string"

    const-string v9, "upomp_bypay_utils_inputpsw_hint"

    invoke-static {v7, v8, v9}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/content/Context;Landroid/view/View;IIZLandroid/widget/EditText;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "iv_webvalidcode_login"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/ImageView;

    sget-object v1, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->b:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sget-object v1, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->b:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    sput v0, Lcom/unionpay/upomp/bypay/other/eh;->p:I

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "layout"

    const-string v2, "upomp_bypay_login"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->setContentView(I)V

    sput-object p0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    sput-object p0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->b()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/unionpay/upomp/bypay/util/Utils;->b()V

    :cond_0
    return v1
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unionpay/upomp/bypay/other/eh;->c:Z

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/ImageView;

    sget-object v1, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    return-void
.end method
