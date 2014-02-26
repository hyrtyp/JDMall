.class public Lcom/unionpay/upomp/bypay/activity/SplashActivity;
.super Landroid/app/Activity;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->b:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v1, "xml"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->b:Ljava/lang/String;

    const-string v1, "ggl"

    iget-object v2, p0, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->b:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "xml"

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/unionpay/upomp/bypay/util/Utils;->k(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "pkg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->al:Ljava/lang/String;

    const-string v0, "localconfigdata_tag"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/ae;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/unionpay/upomp/bypay/other/dw;

    invoke-direct {v1}, Lcom/unionpay/upomp/bypay/other/dw;-><init>()V

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/other/ae;->a(Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)Lorg/xml/sax/helpers/DefaultHandler;

    move-result-object v0

    check-cast v0, Lcom/unionpay/upomp/bypay/other/dw;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/dw;->a()Lcom/unionpay/upomp/bypay/other/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/h;->i()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->at:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/h;->j()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->u:Ljava/lang/String;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->u:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->u:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->u:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, ""

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->u:Ljava/lang/String;

    :cond_3
    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/h;->c()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->am:Ljava/lang/String;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->am:Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->am:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const-string v0, "want"

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/h;->d()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->an:Ljava/lang/String;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->an:Ljava/lang/String;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->an:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const-string v0, "want"

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/h;->h()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->ao:Ljava/lang/String;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->ao:Ljava/lang/String;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->ao:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    const-string v0, "want"

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/h;->e()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->ap:Ljava/lang/String;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->ap:Ljava/lang/String;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->ap:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    const-string v0, "want"

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/h;->g()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->as:Ljava/lang/String;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->as:Ljava/lang/String;

    if-eqz v1, :cond_c

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->as:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    const-string v0, "want"

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/h;->a()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->az:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/h;->f()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->aj:Ljava/lang/String;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->aj:Ljava/lang/String;

    if-eqz v1, :cond_e

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->aj:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    const-string v0, "want"

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/h;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->ak:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->ak:Ljava/lang/String;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->ak:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    const-string v0, "want"

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "upomp_bypay_splashactivity_rmb"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aq:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "upomp_bypay_splashactivity_pay"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->ar:Ljava/lang/String;

    :cond_12
    const-string v0, "ok"

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->requestWindowFeature(I)Z

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "layout"

    const-string v2, "upomp_bypay_splash"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->setContentView(I)V

    sput-object p0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    sput-object p0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<upomp application=\"UpClose.Rsp\" pluginVersion=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<merchantId>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->am:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</merchantId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<respCode>0001</respCode>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<respDesc>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_splashactivity_quit"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</respDesc>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "</upomp>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    invoke-direct {p0}, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->a:Ljava/lang/String;

    const-string v0, "userjudge"

    const-string v1, "isExist"

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "userjudge"

    const-string v1, "merchantId"

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->am:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/unionpay/upomp/bypay/other/cz;

    invoke-direct {v0, p0}, Lcom/unionpay/upomp/bypay/other/cz;-><init>(Lcom/unionpay/upomp/bypay/activity/SplashActivity;)V

    new-array v1, v5, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/other/cz;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/unionpay/upomp/bypay/other/fl;

    invoke-direct {v0, p0}, Lcom/unionpay/upomp/bypay/other/fl;-><init>(Lcom/unionpay/upomp/bypay/activity/SplashActivity;)V

    new-array v1, v5, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/other/fl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/unionpay/upomp/bypay/other/fl;

    invoke-direct {v0, p0}, Lcom/unionpay/upomp/bypay/other/fl;-><init>(Lcom/unionpay/upomp/bypay/activity/SplashActivity;)V

    new-array v1, v5, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/other/fl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
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

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
