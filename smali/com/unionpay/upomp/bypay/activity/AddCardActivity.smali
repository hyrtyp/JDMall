.class public Lcom/unionpay/upomp/bypay/activity/AddCardActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field private static a:Landroid/widget/Button;

.field private static a:Landroid/widget/EditText;

.field private static b:Landroid/widget/Button;

.field private static b:Landroid/widget/EditText;

.field private static c:Landroid/widget/Button;

.field private static c:Landroid/widget/EditText;

.field private static d:Landroid/widget/Button;

.field private static d:Landroid/widget/EditText;

.field private static e:Landroid/widget/Button;

.field private static f:Landroid/widget/Button;

.field private static g:Landroid/widget/Button;


# instance fields
.field public final a:Landroid/view/MenuItem$OnMenuItemClickListener;

.field a:Landroid/view/View$OnCreateContextMenuListener;

.field private a:Landroid/view/View$OnFocusChangeListener;

.field private a:Landroid/widget/CheckBox;

.field private a:Landroid/widget/RadioGroup;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Landroid/widget/TextView;

.field private a:Ljava/lang/Boolean;

.field private a:Ljava/lang/String;

.field public final b:Landroid/view/MenuItem$OnMenuItemClickListener;

.field b:Landroid/view/View$OnCreateContextMenuListener;

.field private b:Landroid/widget/RelativeLayout;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/RelativeLayout;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/RelativeLayout;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/RelativeLayout;

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/RelativeLayout;

.field private f:Ljava/lang/String;

.field private g:Landroid/widget/RelativeLayout;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->i:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Ljava/lang/Boolean;

    const-string v0, "01"

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->j:Ljava/lang/String;

    new-instance v0, Lcom/unionpay/upomp/bypay/other/s;

    invoke-direct {v0, p0}, Lcom/unionpay/upomp/bypay/other/s;-><init>(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;)V

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/view/View$OnCreateContextMenuListener;

    new-instance v0, Lcom/unionpay/upomp/bypay/other/y;

    invoke-direct {v0, p0}, Lcom/unionpay/upomp/bypay/other/y;-><init>(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;)V

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/view/MenuItem$OnMenuItemClickListener;

    new-instance v0, Lcom/unionpay/upomp/bypay/other/w;

    invoke-direct {v0, p0}, Lcom/unionpay/upomp/bypay/other/w;-><init>(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;)V

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->b:Landroid/view/View$OnCreateContextMenuListener;

    new-instance v0, Lcom/unionpay/upomp/bypay/other/ad;

    invoke-direct {v0, p0}, Lcom/unionpay/upomp/bypay/other/ad;-><init>(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;)V

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->b:Landroid/view/MenuItem$OnMenuItemClickListener;

    new-instance v0, Lcom/unionpay/upomp/bypay/other/aa;

    invoke-direct {v0, p0}, Lcom/unionpay/upomp/bypay/other/aa;-><init>(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;)V

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public static synthetic a()Landroid/widget/Button;
    .locals 1

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->e:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic a()Landroid/widget/EditText;
    .locals 1

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic a(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static synthetic a(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(I)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg_on"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->b:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg_on"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->c:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg_on"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg_on"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->e:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg_on"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->f:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg_on"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->g:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg_on"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_6
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->b:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->c:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->e:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->f:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->g:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_6
.end method

.method public static synthetic a(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a(I)V

    return-void
.end method

.method public static synthetic a(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic a(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic b()Landroid/widget/Button;
    .locals 1

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->f:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic b()Landroid/widget/EditText;
    .locals 1

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic b(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static b()V
    .locals 2

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->e:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->f:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->g:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic c()Landroid/widget/Button;
    .locals 1

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic c()Landroid/widget/EditText;
    .locals 1

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic c(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "tv_header"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_addcard"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->a(ILjava/lang/String;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "tv_username_content_add_card"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/TextView;

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "et_card_id_content_add_card"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/EditText;

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/unionpay/upomp/bypay/other/aj;

    invoke-direct {v1, p0}, Lcom/unionpay/upomp/bypay/other/aj;-><init>(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/EditText;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "btn_mm_add_card"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/unionpay/upomp/bypay/other/al;

    invoke-direct {v1, p0}, Lcom/unionpay/upomp/bypay/other/al;-><init>(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_card_pass_content_add_card"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/Button;

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFocusable(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "et_validaty_content_add_card"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->b:Landroid/widget/EditText;

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "et_cvn2_content_add_card"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->g:Landroid/widget/Button;

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFocusable(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->g:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "tv_telnum_content_add_card"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->c:Landroid/widget/EditText;

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->c:Landroid/widget/EditText;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->R:Ljava/lang/String;

    invoke-static {v1, v6, v6}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "et_mobilevalidcode_add_card"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Landroid/widget/EditText;

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_mobilevalidcode_add_card"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->b:Landroid/widget/Button;

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFocusable(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_get"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_addcard_add_card"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->c:Landroid/widget/Button;

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_return_add_card"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Landroid/widget/Button;

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rg_card_type_add_card"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "cb_use_default_add_card"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_mm_add_card"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->e:Landroid/widget/Button;

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_yy_add_card"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->f:Landroid/widget/Button;

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->b:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rl_cardtype_add_card"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rl_card_id_add_card"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->b:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rl_card_pass_add_card"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->c:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rl_validaty_add_card"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rl_cvn2_add_card"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->e:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rl_telnum_add_card"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->f:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rl_mobilevalidcode_add_card"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->g:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->e()V

    return-void
.end method

.method public static synthetic d()Landroid/widget/Button;
    .locals 1

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->g:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic d(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 5

    const/16 v1, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/EditText;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "btn_card_pass_content_add_card"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    sput v4, Lcom/unionpay/upomp/bypay/other/eh;->i:I

    return-void
.end method

.method public static synthetic e()Landroid/widget/Button;
    .locals 1

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->b:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic e(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->c:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/EditText;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "btn_mm_add_card"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    const/4 v0, 0x1

    sput v0, Lcom/unionpay/upomp/bypay/other/eh;->i:I

    return-void
.end method

.method public static synthetic f(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic g(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic h(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic i(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "cb_type_1_add_card"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_1

    invoke-direct {p0, v3}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a(I)V

    invoke-direct {p0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d()V

    const-string v0, "00"

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->j:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->c:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "cb_type_2_add_card"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-direct {p0, v3}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a(I)V

    invoke-direct {p0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->e()V

    const-string v0, "01"

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->j:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->e:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->f:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->c:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->g:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v6, 0x0

    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v5, "btn_addcard_add_card"

    invoke-static {v1, v2, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_9

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->w(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->j:Ljava/lang/String;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->x(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Ljava/lang/String;

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->v:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/other/dh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->R:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->i:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->n(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "upomp_bypay_error"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_pay_it_inputtel"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->showOKDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->f:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_5

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "upomp_bypay_error"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_selectdate"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->showOKDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->n:[Ljava/lang/String;

    sget v2, Lcom/unionpay/upomp/bypay/other/eh;->m:I

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->aL:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->f:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->A(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "1"

    :goto_1
    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->h:Ljava/lang/String;

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->b:Ljava/lang/String;

    new-instance v0, Lcom/unionpay/upomp/bypay/other/fw;

    invoke-direct {v0, p0}, Lcom/unionpay/upomp/bypay/other/fw;-><init>(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;)V

    new-array v1, v4, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/other/fw;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_8
    const-string v0, "0"

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v5, "btn_return_add_card"

    invoke-static {v1, v2, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_b

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-boolean v1, Lcom/unionpay/upomp/bypay/other/eh;->j:Z

    if-eqz v1, :cond_a

    sput v4, Lcom/unionpay/upomp/bypay/other/eh;->q:I

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_a
    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v5, "btn_card_pass_content_add_card"

    invoke-static {v1, v2, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_c

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sget-object v1, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "id"

    const-string v5, "btn_card_pass_content_add_card"

    invoke-static {v2, v3, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "id"

    const-string v5, "btn_card_pass_content_add_card"

    invoke-static {v2, v3, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x6

    sget-object v5, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->c:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v9, "string"

    const-string v10, "upomp_bypay_utils_cardpsw_hint"

    invoke-static {v8, v9, v10}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/content/Context;Landroid/view/View;IIZLandroid/widget/EditText;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v5, "btn_mobilevalidcode_add_card"

    invoke-static {v1, v2, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_10

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->R:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Ljava/lang/String;

    :cond_d
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->n(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->b:Landroid/widget/Button;

    const-string v1, "60"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/ct;

    sget-object v1, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/other/ct;->b(Landroid/widget/Button;)V

    new-instance v0, Lcom/unionpay/upomp/bypay/other/fn;

    invoke-direct {v0, p0}, Lcom/unionpay/upomp/bypay/other/fn;-><init>(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;)V

    new-array v1, v4, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/other/fn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_e
    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sget-object v1, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto/16 :goto_0

    :cond_f
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sget-object v1, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->getResources()Landroid/content/res/Resources;

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

    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v5, "btn_mm_add_card"

    invoke-static {v1, v2, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_11

    invoke-direct {p0, v3}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a(I)V

    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v5, "btn_yy_add_card"

    invoke-static {v1, v2, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_12

    invoke-direct {p0, v3}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a(I)V

    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v5, "et_cvn2_content_add_card"

    invoke-static {v1, v2, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sget-object v1, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->g:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "et_cvn2_content_add_card"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v5, "et_cvn2_content_add_card"

    invoke-static {v0, v2, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sget-object v5, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->c:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v7, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v8, "string"

    const-string v9, "upomp_bypay_utils_cvn2_hint"

    invoke-static {v7, v8, v9}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/content/Context;Landroid/view/View;IIZLandroid/widget/EditText;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x2

    sput v0, Lcom/unionpay/upomp/bypay/other/eh;->p:I

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "layout"

    const-string v2, "upomp_bypay_add_card"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->setContentView(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->h:Ljava/lang/Boolean;

    sput-object p0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    sput-object p0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->c()V

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

    sget-byte v1, Lcom/unionpay/upomp/bypay/other/eh;->c:B

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_1
    sput v3, Lcom/unionpay/upomp/bypay/other/eh;->q:I

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sput-object p0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    sput-object p0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/widget/TextView;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
