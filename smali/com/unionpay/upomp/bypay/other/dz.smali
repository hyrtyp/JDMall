.class public Lcom/unionpay/upomp/bypay/other/dz;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;


# direct methods
.method public constructor <init>(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/dz;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Lcom/unionpay/upomp/bypay/other/ef;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/dz;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    iget-object v2, p0, Lcom/unionpay/upomp/bypay/other/dz;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v2}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->d(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/upomp/bypay/util/Utils;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->b(Lcom/unionpay/upomp/bypay/activity/PayItActivity;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/dz;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v1}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->e(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/upomp/bypay/other/dz;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v2}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->d(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unionpay/upomp/bypay/other/dz;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v3}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->f(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "login_tag"

    invoke-static {v2, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/unionpay/upomp/bypay/other/dw;

    move-result-object v1

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aM:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/other/dw;->a()Lcom/unionpay/upomp/bypay/other/ef;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected a(Lcom/unionpay/upomp/bypay/other/ef;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {}, Lcom/unionpay/upomp/bypay/util/Utils;->a()V

    sget-boolean v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->d()V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/dz;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "upomp_bypay_error"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/dz;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

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

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/ef;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/ef;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->O:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/ef;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->X:Ljava/lang/String;

    new-instance v0, Lcom/unionpay/upomp/bypay/other/es;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/dz;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-direct {v0, v1}, Lcom/unionpay/upomp/bypay/other/es;-><init>(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/other/es;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->d()V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/dz;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

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

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/ef;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/ef;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->showOKDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/unionpay/upomp/bypay/other/dz;->a([Ljava/lang/Integer;)Lcom/unionpay/upomp/bypay/other/ef;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/unionpay/upomp/bypay/other/ef;

    invoke-virtual {p0, p1}, Lcom/unionpay/upomp/bypay/other/dz;->a(Lcom/unionpay/upomp/bypay/other/ef;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    const-string v0, "loginauth"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/content/Context;I)V

    return-void
.end method
