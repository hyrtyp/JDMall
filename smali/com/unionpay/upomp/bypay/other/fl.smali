.class public Lcom/unionpay/upomp/bypay/other/fl;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/unionpay/upomp/bypay/activity/SplashActivity;

.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unionpay/upomp/bypay/activity/SplashActivity;)V
    .locals 3

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/fl;->a:Lcom/unionpay/upomp/bypay/activity/SplashActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->am:Ljava/lang/String;

    const-string v1, "02"

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->ax:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/other/fl;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Lcom/unionpay/upomp/bypay/other/a;
    .locals 5

    const/16 v4, 0xa

    const/4 v1, 0x0

    const-string v0, "ggl"

    const-string v2, "UserJudgeClass"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/unionpay/upomp/bypay/other/ag;

    iget-object v2, p0, Lcom/unionpay/upomp/bypay/other/fl;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/unionpay/upomp/bypay/other/ag;-><init>(Lcom/unionpay/upomp/bypay/other/cq;Ljava/lang/String;)V

    new-instance v2, Lcom/unionpay/upomp/bypay/other/fv;

    sget-object v3, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/unionpay/upomp/bypay/other/fv;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/fv;

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/fv;

    invoke-virtual {v2, v0}, Lcom/unionpay/upomp/bypay/other/fv;->a(Lcom/unionpay/upomp/bypay/other/eu;)V

    const/4 v0, 0x0

    :cond_0
    :try_start_0
    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->ay:Ljava/lang/String;

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/unionpay/upomp/bypay/other/eh;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    sget-boolean v2, Lcom/unionpay/upomp/bypay/other/eh;->a:Z

    if-nez v2, :cond_3

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    if-le v0, v4, :cond_0

    goto :goto_0

    :cond_3
    if-le v0, v4, :cond_4

    move-object v0, v1

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->ay:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->ay:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move-object v0, v1

    goto :goto_1

    :cond_6
    const-string v0, "userjudge_tag"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/ae;->a:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->ay:Ljava/lang/String;

    new-instance v2, Lcom/unionpay/upomp/bypay/other/dw;

    invoke-direct {v2}, Lcom/unionpay/upomp/bypay/other/dw;-><init>()V

    invoke-static {v0, v2}, Lcom/unionpay/upomp/bypay/other/ae;->a(Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)Lorg/xml/sax/helpers/DefaultHandler;

    move-result-object v0

    check-cast v0, Lcom/unionpay/upomp/bypay/other/dw;

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->ay:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/dw;->a()Lcom/unionpay/upomp/bypay/other/a;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected a(Lcom/unionpay/upomp/bypay/other/a;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    sget-boolean v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Lcom/unionpay/upomp/bypay/other/cz;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/fl;->a:Lcom/unionpay/upomp/bypay/activity/SplashActivity;

    invoke-direct {v0, v1}, Lcom/unionpay/upomp/bypay/other/cz;-><init>(Lcom/unionpay/upomp/bypay/activity/SplashActivity;)V

    new-array v1, v3, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/other/cz;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "userjudge"

    const-string v1, "content"

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "userjudge"

    const-string v1, "isExist"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lcom/unionpay/upomp/bypay/other/cz;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/fl;->a:Lcom/unionpay/upomp/bypay/activity/SplashActivity;

    invoke-direct {v0, v1}, Lcom/unionpay/upomp/bypay/other/cz;-><init>(Lcom/unionpay/upomp/bypay/activity/SplashActivity;)V

    new-array v1, v3, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/other/cz;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/unionpay/upomp/bypay/other/fl;->a([Ljava/lang/Integer;)Lcom/unionpay/upomp/bypay/other/a;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/unionpay/upomp/bypay/other/a;

    invoke-virtual {p0, p1}, Lcom/unionpay/upomp/bypay/other/fl;->a(Lcom/unionpay/upomp/bypay/other/a;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
