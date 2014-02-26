.class public Lcom/unionpay/upomp/bypay/other/i;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;


# direct methods
.method public constructor <init>(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/i;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v0, "02"

    const-string v3, ""

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string v3, "aIFpfWl9aXllg2SIZIhohmiIaHtogmiFaH5peWh6aYJkh2l+aIdogmiIaIdpeWh6aYJpfGh+aHxpfml7aH5kh2h8aIhohmSIaXppg2iDaYJkiGaAaHppfWh+Z4BoemmCZIhofWh+aHpohWSHaHpofGl9aIJoiGiH"

    invoke-static {v3, v0}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/unionpay/upomp/bypay/other/af;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/af;

    new-instance v3, Lcom/unionpay/upomp/bypay/other/fv;

    sget-object v4, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/unionpay/upomp/bypay/other/fv;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/fv;

    sget-object v3, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/fv;

    invoke-virtual {v3, v0}, Lcom/unionpay/upomp/bypay/other/fv;->a(Lcom/unionpay/upomp/bypay/other/eu;)V

    move v0, v1

    :goto_1
    sget-object v3, Lcom/unionpay/upomp/bypay/other/eh;->aM:Ljava/lang/String;

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/unionpay/upomp/bypay/other/eh;->a:Z

    if-nez v3, :cond_1

    :cond_0
    sget-boolean v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Z

    if-nez v0, :cond_4

    move-object v0, v2

    :goto_2
    return-object v0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/af;

    if-eqz v3, :cond_2

    const/16 v3, 0xf0

    if-le v0, v3, :cond_3

    :cond_2
    sput-object v2, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/af;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mmssSSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->e:Ljava/lang/String;

    move-object v0, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    const-wide/16 v3, 0x1f4

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aM:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aM:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sput-object v2, Lcom/unionpay/upomp/bypay/other/eh;->aM:Ljava/lang/String;

    move-object v0, v2

    goto :goto_2

    :cond_5
    const-string v0, "getbanklist_tag"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/ae;->a:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aM:Ljava/lang/String;

    new-instance v3, Lcom/unionpay/upomp/bypay/other/dw;

    invoke-direct {v3}, Lcom/unionpay/upomp/bypay/other/dw;-><init>()V

    invoke-static {v0, v3}, Lcom/unionpay/upomp/bypay/other/ae;->a(Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)Lorg/xml/sax/helpers/DefaultHandler;

    move-result-object v0

    check-cast v0, Lcom/unionpay/upomp/bypay/other/dw;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/dw;->a()Lcom/unionpay/upomp/bypay/other/az;

    move-result-object v4

    sput-object v2, Lcom/unionpay/upomp/bypay/other/eh;->aM:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/unionpay/upomp/bypay/other/az;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_6

    move v2, v1

    :goto_3
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->l:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->i:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->q:[Ljava/lang/String;

    move v3, v1

    :goto_4
    if-lt v3, v2, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    if-lt v1, v2, :cond_8

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Ljava/util/ArrayList;

    const-string v0, "ok"

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Lcom/unionpay/upomp/bypay/other/az;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v0

    goto :goto_3

    :cond_7
    sget-object v5, Lcom/unionpay/upomp/bypay/other/eh;->l:[Ljava/lang/String;

    invoke-virtual {v4}, Lcom/unionpay/upomp/bypay/other/az;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/upomp/bypay/other/ed;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/ed;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    sget-object v5, Lcom/unionpay/upomp/bypay/other/eh;->m:[Ljava/lang/String;

    invoke-virtual {v4}, Lcom/unionpay/upomp/bypay/other/az;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/upomp/bypay/other/ed;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/ed;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    sget-object v5, Lcom/unionpay/upomp/bypay/other/eh;->q:[Ljava/lang/String;

    invoke-virtual {v4}, Lcom/unionpay/upomp/bypay/other/az;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/upomp/bypay/other/ed;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/ed;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_8
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "icon"

    sget-object v5, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v6, "drawable"

    const-string v7, "upomp_bypay_icon"

    invoke-static {v5, v6, v7}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "bankname"

    sget-object v5, Lcom/unionpay/upomp/bypay/other/eh;->l:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "bankid"

    sget-object v5, Lcom/unionpay/upomp/bypay/other/eh;->m:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method protected a(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Lcom/unionpay/upomp/bypay/util/Utils;->a()V

    sget-boolean v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/i;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "upomp_bypay_error"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/i;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_pay_it_getlistfail"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->showOKDialog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/i;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->a(Lcom/unionpay/upomp/bypay/activity/PayItActivity;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_1
    sput-boolean v5, Lcom/unionpay/upomp/bypay/other/eh;->f:Z

    const-string v0, "3"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->n:Ljava/lang/String;

    const/4 v0, 0x2

    sput v0, Lcom/unionpay/upomp/bypay/other/eh;->k:I

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/i;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->a(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/i;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->b(Lcom/unionpay/upomp/bypay/activity/PayItActivity;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/i;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->c(Lcom/unionpay/upomp/bypay/activity/PayItActivity;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/i;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->a(Lcom/unionpay/upomp/bypay/activity/PayItActivity;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/unionpay/upomp/bypay/other/i;->a([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/unionpay/upomp/bypay/other/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/content/Context;I)V

    return-void
.end method
