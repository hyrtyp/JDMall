.class public Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unionpay/upomp/bypay/activity/CardMainActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->O:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Lcom/unionpay/upomp/bypay/other/el;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    sput-boolean v0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a:Z

    :try_start_0
    iget-object v2, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/unionpay/upomp/bypay/util/Utils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v2, "aIFpfWl9aXllg2SIZIhohmiIaHtogmiFaH5peWh6aYJkh2l+aIdogmiIaIdpeWh6aYJpfGh+aHxpfml7aH5kh2h8aIhohmSIaXppg2iDaYJkiGaAaHppfWh+Z4BoemmCZIhofWh+aHpohWSHaHpofGl9aIJoiGiH"

    iget-object v3, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/unionpay/upomp/bypay/other/af;

    move-result-object v2

    sput-object v2, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/af;

    new-instance v3, Lcom/unionpay/upomp/bypay/other/fv;

    sget-object v4, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/unionpay/upomp/bypay/other/fv;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/fv;

    sget-object v3, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/fv;

    invoke-virtual {v3, v2}, Lcom/unionpay/upomp/bypay/other/fv;->a(Lcom/unionpay/upomp/bypay/other/eu;)V

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
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

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
    .locals 11

    const/4 v10, 0x4

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v3, 0x0

    sget-boolean v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v4, "string"

    const-string v5, "upomp_bypay_addcard"

    invoke-static {v2, v4, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/unionpay/upomp/bypay/util/Utils;->a()V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a(Lcom/unionpay/upomp/bypay/activity/CardMainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->b(Lcom/unionpay/upomp/bypay/activity/CardMainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    sput-boolean v7, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a:Z

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_updatelist"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "upomp_bypay_error"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_linkerror"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->showOKDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/el;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5309"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sput-boolean v7, Lcom/unionpay/upomp/bypay/other/eh;->d:Z

    sput v3, Lcom/unionpay/upomp/bypay/other/eh;->b:I

    sput v3, Lcom/unionpay/upomp/bypay/other/eh;->c:I

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->getResources()Landroid/content/res/Resources;

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

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/el;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/el;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "9999"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sput-boolean v7, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a:Z

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_updatelist"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->getResources()Landroid/content/res/Resources;

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

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/el;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-static {v1}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a(Lcom/unionpay/upomp/bypay/activity/CardMainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-static {v1}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->b(Lcom/unionpay/upomp/bypay/activity/CardMainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-static {v1}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a(Lcom/unionpay/upomp/bypay/activity/CardMainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-static {v1}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->b(Lcom/unionpay/upomp/bypay/activity/CardMainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move v1, v0

    :goto_1
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->z:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v1, v0, :cond_5

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->b:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->c:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->d:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->e:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->f:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->g:[Ljava/lang/String;

    move v2, v3

    :goto_3
    if-lt v2, v1, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    if-lt v3, v1, :cond_7

    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    sget-object v3, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v4, "layout"

    const-string v5, "upomp_bypay_card_list_item"

    invoke-static {v3, v4, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-static {v4}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a(Lcom/unionpay/upomp/bypay/activity/CardMainActivity;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-static {v5}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a(Lcom/unionpay/upomp/bypay/activity/CardMainActivity;)[I

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-static {v1}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a(Lcom/unionpay/upomp/bypay/activity/CardMainActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-static {}, Lcom/unionpay/upomp/bypay/util/Utils;->a()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a(Lcom/unionpay/upomp/bypay/activity/CardMainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->b(Lcom/unionpay/upomp/bypay/activity/CardMainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a(Lcom/unionpay/upomp/bypay/activity/CardMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->b(Lcom/unionpay/upomp/bypay/activity/CardMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/el;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto/16 :goto_1

    :cond_5
    sget-object v0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    :cond_6
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

    goto/16 :goto_3

    :cond_7
    const-string v0, ""

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->c:[Ljava/lang/String;

    aget-object v0, v0, v3

    const-string v4, "00"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v4, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v5, "string"

    const-string v6, "upomp_bypay_debitcard"

    invoke-static {v4, v5, v6}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "icon"

    sget-object v6, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v7, "drawable"

    const-string v8, "upomp_bypay_icon"

    invoke-static {v6, v7, v8}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/unionpay/upomp/bypay/other/eh;->g:[Ljava/lang/String;

    aget-object v5, v5, v3

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "cardname"

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/unionpay/upomp/bypay/other/eh;->b:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " - "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Lcom/unionpay/upomp/bypay/other/eh;->e:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-direct {p0, v6, v10}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-virtual {v6}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v8, "string"

    const-string v9, "upomp_bypay_cardmainactivity_defultcard"

    invoke-static {v7, v8, v9}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    const-string v0, "cardid"

    sget-object v5, Lcom/unionpay/upomp/bypay/other/eh;->e:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "status"

    sget-object v5, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v6, "drawable"

    const-string v7, "upomp_bypay_icon"

    invoke-static {v5, v6, v7}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_4

    :cond_8
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->c:[Ljava/lang/String;

    aget-object v0, v0, v3

    const-string v4, "01"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v4, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v5, "string"

    const-string v6, "upomp_bypay_creditcard"

    invoke-static {v4, v5, v6}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_9
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a:Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v4, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v5, "string"

    const-string v6, "upomp_bypay_cardunknown"

    invoke-static {v4, v5, v6}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_a
    const-string v5, "cardname"

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/unionpay/upomp/bypay/other/eh;->b:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " - "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Lcom/unionpay/upomp/bypay/other/eh;->e:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-direct {p0, v6, v10}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a([Ljava/lang/Integer;)Lcom/unionpay/upomp/bypay/other/el;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/unionpay/upomp/bypay/other/el;

    invoke-virtual {p0, p1}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->a(Lcom/unionpay/upomp/bypay/other/el;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    const-string v0, "cardmain"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/content/Context;I)V

    return-void
.end method
