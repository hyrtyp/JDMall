.class public Lcom/unionpay/upomp/bypay/other/es;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->O:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Lcom/unionpay/upomp/bypay/other/el;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "aIFpfWl9aXllg2SIZIhohmiIaHtogmiFaH5peWh6aYJkh2l+aIdogmiIaIdpeWh6aYJpfGh+aHxpfml7aH5kh2h8aIhohmSIaXppg2iDaYJkiGaAaHppfWh+Z4BoemmCZIhofWh+aHpohWSHaHpofGl9aIJoiGiH"

    iget-object v2, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/unionpay/upomp/bypay/other/af;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/af;

    new-instance v2, Lcom/unionpay/upomp/bypay/other/fv;

    sget-object v3, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/unionpay/upomp/bypay/other/fv;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/fv;

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/fv;

    invoke-virtual {v2, v0}, Lcom/unionpay/upomp/bypay/other/fv;->a(Lcom/unionpay/upomp/bypay/other/eu;)V

    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->aM:Ljava/lang/String;

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/unionpay/upomp/bypay/other/eh;->a:Z

    if-nez v2, :cond_1

    :cond_0
    sget-boolean v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Z

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/af;

    if-eqz v2, :cond_2

    const/16 v2, 0xf0

    if-le v0, v2, :cond_3

    :cond_2
    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/af;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "mmssSSS"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->e:Ljava/lang/String;

    move-object v0, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aM:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aM:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->aM:Ljava/lang/String;

    move-object v0, v1

    goto :goto_2

    :cond_5
    const-string v0, "getbindcardlist_tag"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/ae;->a:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aM:Ljava/lang/String;

    new-instance v2, Lcom/unionpay/upomp/bypay/other/dw;

    invoke-direct {v2}, Lcom/unionpay/upomp/bypay/other/dw;-><init>()V

    invoke-static {v0, v2}, Lcom/unionpay/upomp/bypay/other/ae;->a(Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)Lorg/xml/sax/helpers/DefaultHandler;

    move-result-object v0

    check-cast v0, Lcom/unionpay/upomp/bypay/other/dw;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/dw;->a()Lcom/unionpay/upomp/bypay/other/el;

    move-result-object v0

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->aM:Ljava/lang/String;

    goto :goto_2
.end method

.method protected a(Lcom/unionpay/upomp/bypay/other/el;)V
    .locals 10

    sget-boolean v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->a(Lcom/unionpay/upomp/bypay/activity/PayItActivity;Z)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->c(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_addcard"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_1

    invoke-static {}, Lcom/unionpay/upomp/bypay/util/Utils;->a()V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "upomp_bypay_error"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_linkerror"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->showOKDialog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->a(Lcom/unionpay/upomp/bypay/activity/PayItActivity;Z)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->c(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_updatelist"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/el;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->a(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/el;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/unionpay/upomp/bypay/util/Utils;->a()V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->b(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "tv_welcome_pay_auth"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v2}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

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

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->c(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->d(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->e(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->f(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->g(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->h(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->i(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->j(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->k(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->l(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->m(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->n(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/el;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5309"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v4, "upomp_bypay_error"

    invoke-static {v1, v2, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/el;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/el;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->showOKDialog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput v0, Lcom/unionpay/upomp/bypay/other/eh;->k:I

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->a(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)V

    :cond_3
    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_6

    move v1, v2

    :cond_4
    sput v3, Lcom/unionpay/upomp/bypay/other/eh;->h:I

    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->b:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->c:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->d:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->e:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->f:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->g:[Ljava/lang/String;

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-lt v2, v3, :cond_7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_3
    if-lt v2, v3, :cond_8

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/el;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/upomp/bypay/other/ev;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/ev;->f()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->S:Ljava/lang/String;

    const-string v0, ""

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->c:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v2, "00"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_debitcard"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iget-object v2, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v2}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->a(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/unionpay/upomp/bypay/other/eh;->b:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    sget-object v4, Lcom/unionpay/upomp/bypay/other/eh;->e:[Ljava/lang/String;

    aget-object v4, v4, v1

    const/4 v5, 0x4

    invoke-static {v3, v4, v5}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->a(Lcom/unionpay/upomp/bypay/activity/PayItActivity;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->b(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->e:[Ljava/lang/String;

    aget-object v2, v2, v1

    const/4 v3, 0x6

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->c(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->f:[Ljava/lang/String;

    aget-object v2, v2, v1

    const/4 v3, 0x3

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->e:[Ljava/lang/String;

    aget-object v0, v0, v1

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->q:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->z:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->z:Ljava/lang/String;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->z:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_5
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->d(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->o(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_5
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->b(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "tv_welcome_pay_auth"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v2}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

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

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->c(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->d(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->e(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->f(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->g(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->h(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->i(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->h:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->b(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_get"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->j(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->k(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->l(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->m(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->n(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_6
    invoke-static {}, Lcom/unionpay/upomp/bypay/util/Utils;->a()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/el;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/upomp/bypay/other/ev;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/ev;->g()Ljava/lang/String;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_7
    sget-object v4, Lcom/unionpay/upomp/bypay/other/eh;->a:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/el;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/upomp/bypay/other/ev;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/ev;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    sget-object v4, Lcom/unionpay/upomp/bypay/other/eh;->b:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/el;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/upomp/bypay/other/ev;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/ev;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    sget-object v4, Lcom/unionpay/upomp/bypay/other/eh;->c:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/el;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/upomp/bypay/other/ev;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/ev;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    sget-object v4, Lcom/unionpay/upomp/bypay/other/eh;->d:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/el;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/upomp/bypay/other/ev;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/ev;->e()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    sget-object v4, Lcom/unionpay/upomp/bypay/other/eh;->e:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/el;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/upomp/bypay/other/ev;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/ev;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    sget-object v4, Lcom/unionpay/upomp/bypay/other/eh;->f:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/el;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/upomp/bypay/other/ev;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/ev;->f()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    sget-object v4, Lcom/unionpay/upomp/bypay/other/eh;->g:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/el;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/upomp/bypay/other/ev;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/ev;->g()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    :cond_8
    const-string v0, ""

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->c:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v5, "00"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v5, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v6, "string"

    const-string v7, "upomp_bypay_debitcard"

    invoke-static {v5, v6, v7}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "icon"

    sget-object v7, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v8, "drawable"

    const-string v9, "upomp_bypay_icon"

    invoke-static {v7, v8, v9}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "cardname"

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/unionpay/upomp/bypay/other/eh;->b:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cardid"

    sget-object v6, Lcom/unionpay/upomp/bypay/other/eh;->e:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "status"

    sget-object v6, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v7, "drawable"

    const-string v8, "upomp_bypay_icon"

    invoke-static {v6, v7, v8}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_3

    :cond_9
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->c:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v5, "01"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v5, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v6, "string"

    const-string v7, "upomp_bypay_creditcard"

    invoke-static {v5, v6, v7}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_a
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v5, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v6, "string"

    const-string v7, "upomp_bypay_cardunknown"

    invoke-static {v5, v6, v7}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_b
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->c:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v2, "01"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_creditcard"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_c
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_cardunknown"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_d
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->d(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->o(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_5

    :cond_e
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/es;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "upomp_bypay_error"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/el;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/el;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->showOKDialog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->c()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->c()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->c()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->c()Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    goto/16 :goto_6
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/unionpay/upomp/bypay/other/es;->a([Ljava/lang/Integer;)Lcom/unionpay/upomp/bypay/other/el;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/unionpay/upomp/bypay/other/el;

    invoke-virtual {p0, p1}, Lcom/unionpay/upomp/bypay/other/es;->a(Lcom/unionpay/upomp/bypay/other/el;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/content/Context;I)V

    return-void
.end method
