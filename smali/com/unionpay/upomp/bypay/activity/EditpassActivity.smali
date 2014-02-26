.class public Lcom/unionpay/upomp/bypay/activity/EditpassActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static a:Landroid/widget/Button;

.field private static a:Landroid/widget/EditText;

.field private static b:Landroid/widget/Button;

.field private static c:Landroid/widget/Button;


# instance fields
.field private a:Landroid/view/View$OnFocusChangeListener;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Landroid/widget/TextView;

.field private a:Ljava/lang/String;

.field private b:Landroid/widget/RelativeLayout;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/RelativeLayout;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/Button;

.field private d:Landroid/widget/RelativeLayout;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->d:Ljava/lang/String;

    new-instance v0, Lcom/unionpay/upomp/bypay/other/db;

    invoke-direct {v0, p0}, Lcom/unionpay/upomp/bypay/other/db;-><init>(Lcom/unionpay/upomp/bypay/activity/EditpassActivity;)V

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public static synthetic a()Landroid/widget/Button;
    .locals 1

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->b:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic a(Lcom/unionpay/upomp/bypay/activity/EditpassActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->e:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic a()Landroid/widget/EditText;
    .locals 1

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic a(Lcom/unionpay/upomp/bypay/activity/EditpassActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->b:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->c:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(I)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg_on"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->b:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg_on"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->c:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg_on"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->d:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg_on"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_3
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->b:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->c:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->d:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method public static synthetic a(Lcom/unionpay/upomp/bypay/activity/EditpassActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a(I)V

    return-void
.end method

.method public static synthetic b()Landroid/widget/Button;
    .locals 1

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->c:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic b(Lcom/unionpay/upomp/bypay/activity/EditpassActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "tv_header"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_editpass"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->a(ILjava/lang/String;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_userpass_old_editpass"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/widget/Button;

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFocusable(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_userpass_new_editpass"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->b:Landroid/widget/Button;

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFocusable(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_userpass_re_editpass"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->c:Landroid/widget/Button;

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFocusable(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "tv_tel_content_editpass"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/widget/TextView;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->R:Ljava/lang/String;

    invoke-static {v1, v6, v6}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "et_validcode_editpass"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/widget/EditText;

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_validcode_editpass"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_button_editpass"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_return_editpass"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "tv_welcome_editpass"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v4, "string"

    const-string v5, "upomp_bypay_welcome"

    invoke-static {v3, v4, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rl_userpass_old_editpass"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rl_userpass_new_editpass"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->b:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rl_userpass_re_editpass"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->c:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rl_validcode_editpass"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->d:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static synthetic c(Lcom/unionpay/upomp/bypay/activity/EditpassActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcom/unionpay/upomp/bypay/activity/EditpassActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/16 v3, 0xc

    const/4 v8, 0x0

    const/4 v4, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v6, "id"

    const-string v7, "btn_button_editpass"

    invoke-static {v2, v6, v7}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_3

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "upomp_bypay_error"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_editpassactivity_inputoldpsw"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->showOKDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "upomp_bypay_error"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_editpassactivity_oldpswfail"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->showOKDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->m(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->c:Ljava/lang/String;

    new-instance v0, Lcom/unionpay/upomp/bypay/other/fh;

    invoke-direct {v0, p0}, Lcom/unionpay/upomp/bypay/other/fh;-><init>(Lcom/unionpay/upomp/bypay/activity/EditpassActivity;)V

    new-array v1, v8, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/other/fh;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v6, "id"

    const-string v7, "btn_return_editpass"

    invoke-static {v2, v6, v7}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/AccountMainActivity;

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

    const-string v6, "btn_userpass_old_editpass"

    invoke-static {v1, v2, v6}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_userpass_old_editpass"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v6, "btn_userpass_old_editpass"

    invoke-static {v0, v2, v6}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sget-object v6, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v7, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v8, "string"

    const-string v9, "upomp_bypay_editpassactivity_inputoldpsw_hint"

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

    const-string v6, "btn_userpass_new_editpass"

    invoke-static {v1, v2, v6}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_6

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_userpass_new_editpass"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v6, "btn_userpass_new_editpass"

    invoke-static {v0, v2, v6}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sget-object v6, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v7, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v8, "string"

    const-string v9, "upomp_bypay_utils_inputnewpsw_hint"

    invoke-static {v7, v8, v9}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/content/Context;Landroid/view/View;IIZLandroid/widget/EditText;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v6, "btn_userpass_re_editpass"

    invoke-static {v1, v2, v6}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_userpass_re_editpass"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_userpass_re_editpass"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    sget-object v11, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v6, "upomp_bypay_utils_inputenternewpsw_hint"

    invoke-static {v1, v2, v6}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v6, p0

    move v9, v3

    move v10, v4

    move-object v12, v5

    invoke-static/range {v6 .. v13}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/content/Context;Landroid/view/View;IIZLandroid/widget/EditText;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "btn_validcode_editpass"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->h:Ljava/lang/Boolean;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->R:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->n(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->e:Landroid/widget/Button;

    const-string v1, "60"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/ct;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/other/ct;->b(Landroid/widget/Button;)V

    new-instance v0, Lcom/unionpay/upomp/bypay/other/em;

    invoke-direct {v0, p0}, Lcom/unionpay/upomp/bypay/other/em;-><init>(Lcom/unionpay/upomp/bypay/activity/EditpassActivity;)V

    new-array v1, v8, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/other/em;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1, v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto/16 :goto_0

    :cond_8
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->h:Ljava/lang/Boolean;

    goto :goto_1

    :cond_9
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1, v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_please"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/unionpay/upomp/bypay/other/eh;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_sendMac"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    sput v0, Lcom/unionpay/upomp/bypay/other/eh;->p:I

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "layout"

    const-string v2, "upomp_bypay_edit_pass"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->setContentView(I)V

    sput-object p0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    sput-object p0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->b()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/AccountMainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return v3
.end method
