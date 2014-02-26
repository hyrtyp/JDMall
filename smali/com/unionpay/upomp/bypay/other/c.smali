.class public Lcom/unionpay/upomp/bypay/other/c;
.super Landroid/os/AsyncTask;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/ProgressBar;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "cLpNaLz6"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/c;->a:Ljava/lang/String;

    const-string v0, "SoQa5/JiRRKvuhX7XPk2lg=="

    sput-object v0, Lcom/unionpay/upomp/bypay/other/c;->b:Ljava/lang/String;

    const-string v0, "hX1MuJUm2lxESlIjeWEjdg=="

    sput-object v0, Lcom/unionpay/upomp/bypay/other/c;->c:Ljava/lang/String;

    const-string v0, "ihTAIZManhHyTTyPjdeovA=="

    sput-object v0, Lcom/unionpay/upomp/bypay/other/c;->d:Ljava/lang/String;

    const-string v0, "5tKCXLwzUGJ0BWCmHi2JUA=="

    sput-object v0, Lcom/unionpay/upomp/bypay/other/c;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/c;->a:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/unionpay/upomp/bypay/other/c;->a:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v0, ""

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/unionpay/upomp/bypay/other/eh;->f:Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v4, Lcom/unionpay/upomp/bypay/other/bh;

    const-string v5, "aIFpfWl9aXllg2SIZIhohmiIaHtogmiFaH5peWh6aYJkh2l+aIdogmiIaIdpeWh6aYJpfGh+aHxpfml7aH5kh2h8aIhohmSIaXppg2iDaYJkiGaAaHppfWh+Z4BoemmCZIhofWh+aHpohWSHaHpofGl9aIJoiGiH"

    invoke-direct {v4, v2, v5, v0, v3}, Lcom/unionpay/upomp/bypay/other/bh;-><init>(Lcom/unionpay/upomp/bypay/other/cq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/bh;

    new-instance v0, Lcom/unionpay/upomp/bypay/other/fv;

    sget-object v5, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/unionpay/upomp/bypay/other/fv;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/fv;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/fv;

    invoke-virtual {v0, v4}, Lcom/unionpay/upomp/bypay/other/fv;->a(Lcom/unionpay/upomp/bypay/other/eu;)V

    move v0, v1

    :goto_1
    sget-object v4, Lcom/unionpay/upomp/bypay/other/eh;->aN:Ljava/lang/String;

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/unionpay/upomp/bypay/other/eh;->a:Z

    if-nez v4, :cond_1

    :cond_0
    sget-boolean v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Z

    if-nez v0, :cond_5

    move-object v0, v2

    :goto_2
    return-object v0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/unionpay/upomp/bypay/other/eh;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/bh;

    if-eqz v4, :cond_3

    const/16 v4, 0x3c

    if-le v0, v4, :cond_4

    :cond_3
    sput-object v2, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/bh;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mmssSSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->f:Ljava/lang/String;

    move-object v0, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aN:Ljava/lang/String;

    if-nez v0, :cond_6

    move-object v0, v2

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aN:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sput-object v2, Lcom/unionpay/upomp/bypay/other/eh;->aN:Ljava/lang/String;

    move-object v0, v2

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aN:Ljava/lang/String;

    if-eqz v0, :cond_d

    const-string v0, "webvalid_tag"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/ae;->a:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aN:Ljava/lang/String;

    new-instance v3, Lcom/unionpay/upomp/bypay/other/dw;

    invoke-direct {v3}, Lcom/unionpay/upomp/bypay/other/dw;-><init>()V

    invoke-static {v0, v3}, Lcom/unionpay/upomp/bypay/other/ae;->a(Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)Lorg/xml/sax/helpers/DefaultHandler;

    move-result-object v0

    check-cast v0, Lcom/unionpay/upomp/bypay/other/dw;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/dw;->a()Lcom/unionpay/upomp/bypay/other/bo;

    move-result-object v0

    sput-object v2, Lcom/unionpay/upomp/bypay/other/eh;->aN:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/bo;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "aIFpfWl9aXllg2SIZIhohmiIaHtogmiFaH5peWh6aYJkh2l+aIdogmiIaIdpeWh6aYJpfGh+aHxpfml7aH5kh2h8aIhohg=="

    invoke-static {v4}, Lcom/unionpay/upomp/bypay/util/Utils;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/bo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?sessionId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/unionpay/upomp/bypay/other/eh;->L:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/other/c;->f:Ljava/lang/String;

    :try_start_2
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/unionpay/upomp/bypay/other/c;->f:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    :goto_3
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8

    if-nez v1, :cond_9

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    const-string v0, "session"

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/c;->a:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_a

    const-string v1, "test"

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/other/c;->a:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_a
    const-string v0, "ok"

    goto/16 :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v2

    goto/16 :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v2

    goto/16 :goto_2

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/bo;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0058"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "session"

    goto/16 :goto_2

    :cond_c
    move-object v0, v2

    goto/16 :goto_2

    :cond_d
    move-object v0, v2

    goto/16 :goto_2
.end method

.method protected a(Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    sget-boolean v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "session"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "upomp_bypay_error"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_sessionhint"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/c;->a:Landroid/widget/ImageView;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_btn_webv"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/c;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/c;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/c;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/c;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/c;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/c;->a:Landroid/widget/ImageView;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_btn_newweb"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/c;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/unionpay/upomp/bypay/other/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/unionpay/upomp/bypay/other/c;->a(Ljava/lang/String;)V

    return-void
.end method
