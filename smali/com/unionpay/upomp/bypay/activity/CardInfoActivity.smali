.class public Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private a:Landroid/widget/TextView;

.field private a:Ljava/lang/Boolean;

.field private b:Landroid/widget/Button;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic a(Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->b:Landroid/widget/Button;

    return-object v0
.end method

.method private a()V
    .locals 6

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "tv_header"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_cardmanage"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->a(ILjava/lang/String;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_del_card_info"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_default_card_info"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->b:Landroid/widget/Button;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->g:[Ljava/lang/String;

    sget v1, Lcom/unionpay/upomp/bypay/other/eh;->e:I

    aget-object v0, v0, v1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->b:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->b:Landroid/widget/Button;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_card_btn_1a"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->a:Ljava/lang/Boolean;

    :cond_1
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_balance_card_info"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_return_card_info"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "tv_pay_alert_content_card_info"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_cardinfo_hint1"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "tv_card_id_content"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->a:Landroid/widget/TextView;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->b:[Ljava/lang/String;

    sget v2, Lcom/unionpay/upomp/bypay/other/eh;->e:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "tv_card_type_content"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->b:Landroid/widget/TextView;

    const-string v0, ""

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->c:[Ljava/lang/String;

    sget v1, Lcom/unionpay/upomp/bypay/other/eh;->e:I

    aget-object v0, v0, v1

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "upomp_bypay_debitcard"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "tv_card_num_content"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->c:Landroid/widget/TextView;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->b:[Ljava/lang/String;

    sget v1, Lcom/unionpay/upomp/bypay/other/eh;->e:I

    aget-object v0, v0, v1

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aG:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->c:[Ljava/lang/String;

    sget v1, Lcom/unionpay/upomp/bypay/other/eh;->e:I

    aget-object v0, v0, v1

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aC:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->e:[Ljava/lang/String;

    sget v1, Lcom/unionpay/upomp/bypay/other/eh;->e:I

    aget-object v0, v0, v1

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aD:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->d:[Ljava/lang/String;

    sget v1, Lcom/unionpay/upomp/bypay/other/eh;->e:I

    aget-object v0, v0, v1

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aE:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->g:[Ljava/lang/String;

    sget v1, Lcom/unionpay/upomp/bypay/other/eh;->e:I

    aget-object v0, v0, v1

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aF:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->c:Landroid/widget/TextView;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->aD:Ljava/lang/String;

    const/4 v2, 0x6

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->c:[Ljava/lang/String;

    sget v1, Lcom/unionpay/upomp/bypay/other/eh;->e:I

    aget-object v0, v0, v1

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "upomp_bypay_creditcard"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v4, "string"

    const-string v5, "upomp_bypay_cardinfo_hint2"

    invoke-static {v3, v4, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "upomp_bypay_cardunknown"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static synthetic a(Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->a:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "id"

    const-string v4, "btn_del_card_info"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_removecard"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v4, "string"

    const-string v5, "upomp_bypay_affirmremovecard"

    invoke-static {v3, v4, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->aG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->aC:Ljava/lang/String;

    invoke-static {v2}, Lcom/unionpay/upomp/bypay/util/Utils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->aD:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_affirm"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/unionpay/upomp/bypay/other/bi;

    invoke-direct {v2, p0}, Lcom/unionpay/upomp/bypay/other/bi;-><init>(Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_cancel"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/unionpay/upomp/bypay/other/bk;

    invoke-direct {v2, p0}, Lcom/unionpay/upomp/bypay/other/bk;-><init>(Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "id"

    const-string v4, "btn_default_card_info"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_changedefultcard"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v4, "string"

    const-string v5, "upomp_bypay_affirmchangedefultcard"

    invoke-static {v3, v4, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->aG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->aC:Ljava/lang/String;

    invoke-static {v2}, Lcom/unionpay/upomp/bypay/util/Utils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->aD:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_affirm"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/unionpay/upomp/bypay/other/bm;

    invoke-direct {v2, p0}, Lcom/unionpay/upomp/bypay/other/bm;-><init>(Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_cancel"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/unionpay/upomp/bypay/other/bp;

    invoke-direct {v2, p0}, Lcom/unionpay/upomp/bypay/other/bp;-><init>(Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "id"

    const-string v4, "btn_balance_card_info"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    sput-byte v1, Lcom/unionpay/upomp/bypay/other/eh;->d:B

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/CheckCardBalanceActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "id"

    const-string v4, "btn_return_card_info"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x2

    sput v0, Lcom/unionpay/upomp/bypay/other/eh;->p:I

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "layout"

    const-string v2, "upomp_bypay_card_info"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->setContentView(I)V

    sput-object p0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    sput-object p0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->a()V

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

    const-class v2, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return v3
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
