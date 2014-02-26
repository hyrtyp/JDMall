.class public Lcom/unionpay/upomp/bypay/other/cz;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/unionpay/upomp/bypay/activity/SplashActivity;

.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unionpay/upomp/bypay/activity/SplashActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/cz;->a:Lcom/unionpay/upomp/bypay/activity/SplashActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/other/cz;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/unionpay/upomp/bypay/other/cz;)Lcom/unionpay/upomp/bypay/activity/SplashActivity;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/cz;->a:Lcom/unionpay/upomp/bypay/activity/SplashActivity;

    return-object v0
.end method

.method private a()V
    .locals 5

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->j:Ljava/lang/String;

    const-string v1, "content"

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "config_tag"

    sput-object v1, Lcom/unionpay/upomp/bypay/other/ae;->a:Ljava/lang/String;

    new-instance v1, Lcom/unionpay/upomp/bypay/other/dw;

    invoke-direct {v1}, Lcom/unionpay/upomp/bypay/other/dw;-><init>()V

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/other/ae;->a(Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)Lorg/xml/sax/helpers/DefaultHandler;

    move-result-object v0

    check-cast v0, Lcom/unionpay/upomp/bypay/other/dw;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/dw;->a()Lcom/unionpay/upomp/bypay/other/ao;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/ao;->g()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->y:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/ao;->f()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->z:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/ao;->a()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->K:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/ao;->d()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->A:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/ao;->b()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->B:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/ao;->i()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->C:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/ao;->h()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->D:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/ao;->e()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->v:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/ao;->c()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->E:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/ao;->a()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Ljava/util/List;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/cz;->a:Lcom/unionpay/upomp/bypay/activity/SplashActivity;

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_splashactivity_custom"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a()Z
    .locals 9

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v3, Lcom/unionpay/upomp/bypay/other/eh;->p:[Ljava/lang/String;

    array-length v0, v3

    new-array v0, v0, [Ljava/lang/String;

    const/16 v0, 0x8

    new-array v4, v0, [Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/p;->b:Ljava/lang/String;

    aput-object v0, v4, v1

    sget-object v0, Lcom/unionpay/upomp/bypay/other/f;->b:Ljava/lang/String;

    aput-object v0, v4, v2

    sget-object v0, Lcom/unionpay/upomp/bypay/other/c;->b:Ljava/lang/String;

    aput-object v0, v4, v8

    const/4 v0, 0x3

    sget-object v5, Lcom/unionpay/upomp/bypay/other/eh;->i:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x4

    sget-object v5, Lcom/unionpay/upomp/bypay/other/eh;->aP:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x5

    sget-object v5, Lcom/unionpay/upomp/bypay/other/c;->d:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x6

    sget-object v5, Lcom/unionpay/upomp/bypay/other/f;->c:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x7

    sget-object v5, Lcom/unionpay/upomp/bypay/other/p;->c:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-direct {p0, v3}, Lcom/unionpay/upomp/bypay/other/cz;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v0, v1

    :goto_0
    array-length v6, v3

    if-lt v0, v6, :cond_1

    sget-object v3, Lcom/unionpay/upomp/bypay/other/p;->a:[Ljava/lang/String;

    array-length v0, v3

    new-array v0, v0, [Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/c;->c:Ljava/lang/String;

    aput-object v0, v4, v1

    sget-object v0, Lcom/unionpay/upomp/bypay/other/c;->e:Ljava/lang/String;

    aput-object v0, v4, v2

    invoke-direct {p0, v3}, Lcom/unionpay/upomp/bypay/other/cz;->b([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v0, v1

    :goto_1
    array-length v6, v3

    if-lt v0, v6, :cond_2

    move v1, v2

    :cond_0
    return v1

    :cond_1
    aget-object v6, v5, v0

    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget-object v6, v5, v0

    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private a(Ljava/io/InputStream;)[B
    .locals 4

    const/16 v1, 0x400

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v1, v1, [B

    :goto_0
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-gez v2, :cond_0

    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    array-length v0, p1

    new-array v3, v0, [Ljava/lang/String;

    move v0, v1

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    return-object v3

    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v5, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v6, "layout"

    aget-object v7, p1, v0

    invoke-static {v5, v6, v7}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    :try_start_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    :goto_1
    const/4 v6, 0x2

    if-ne v2, v6, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v6

    move v2, v1

    :goto_2
    if-lt v2, v6, :cond_2

    :cond_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-interface {v5, v2}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "@\\d*"

    const-string v5, "1"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/upomp/bypay/util/Utils;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private b()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->F:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Android "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->G:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->J:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->am:Ljava/lang/String;

    sget-object v3, Lcom/unionpay/upomp/bypay/other/eh;->K:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v3, "aIFpfWl9aXllg2SIZIhohmiIaHtogmiFaH5peWh6aYJkh2l+aIdogmiIaIdpeWh6aYJpfGh+aHxpfml7aH5kh2h8aIhohmSIaXppg2iDaYJkiGaAaHppfWh+Z4BoemmCZIhofWh+aHpohWSHaHpofGl9aIJoiGiH"

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/unionpay/upomp/bypay/other/af;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/af;

    new-instance v3, Lcom/unionpay/upomp/bypay/other/fv;

    sget-object v4, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/unionpay/upomp/bypay/other/fv;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/fv;

    sget-object v3, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/fv;

    invoke-virtual {v3, v0}, Lcom/unionpay/upomp/bypay/other/fv;->a(Lcom/unionpay/upomp/bypay/other/eu;)V

    move v0, v2

    :goto_1
    sget-object v3, Lcom/unionpay/upomp/bypay/other/eh;->aM:Ljava/lang/String;

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/unionpay/upomp/bypay/other/eh;->a:Z

    if-nez v3, :cond_1

    :cond_0
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aM:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->aM:Ljava/lang/String;

    :goto_2
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/16 v3, 0xf0

    if-gt v0, v3, :cond_2

    :try_start_1
    sget-object v3, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/af;

    if-nez v3, :cond_3

    :cond_2
    const/4 v3, 0x0

    sput-object v3, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/af;

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "mmssSSS"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/unionpay/upomp/bypay/other/eh;->e:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    const-wide/16 v3, 0x1f4

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    goto :goto_2
.end method

.method private b([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    array-length v0, p1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/cz;->a:Lcom/unionpay/upomp/bypay/activity/SplashActivity;

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v3, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v4, "drawable"

    aget-object v5, p1, v0

    invoke-static {v3, v4, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unionpay/upomp/bypay/other/cz;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v3}, Lcom/unionpay/upomp/bypay/util/Utils;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string v0, "ggl"

    const-string v2, "SplashClass"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/unionpay/upomp/bypay/other/cz;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "validfiles"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/cz;->a:Lcom/unionpay/upomp/bypay/activity/SplashActivity;

    iget-object v0, v0, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->a:Ljava/lang/String;

    const-string v2, "xml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "xml"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/cz;->a:Lcom/unionpay/upomp/bypay/activity/SplashActivity;

    iget-object v0, v0, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->a:Ljava/lang/String;

    const-string v2, "want"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "want"

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->j:Ljava/lang/String;

    const-string v2, "isExist"

    invoke-static {v0, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/cz;->a:Lcom/unionpay/upomp/bypay/activity/SplashActivity;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "upomp_bypay_config.xml"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v4

    new-array v4, v4, [B

    invoke-virtual {v2, v4}, Ljava/io/DataInputStream;->read([B)I

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v4, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->j:Ljava/lang/String;

    const-string v4, "content"

    invoke-static {v2, v4, v0}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->j:Ljava/lang/String;

    const-string v2, "isExist"

    const-string v4, "true"

    invoke-static {v0, v2, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/unionpay/upomp/bypay/other/cz;->a()V

    const-string v0, "ggl"

    const-string v2, "updateLocalConfig"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    move v2, v3

    :cond_4
    :goto_2
    if-nez v2, :cond_5

    sget-boolean v4, Lcom/unionpay/upomp/bypay/other/eh;->a:Z

    if-nez v4, :cond_6

    :cond_5
    const-string v2, "ggl"

    const-string v3, "over"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/unionpay/upomp/bypay/other/eh;->a:Z

    if-nez v2, :cond_b

    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/unionpay/upomp/bypay/other/cz;->b()Z

    move-result v0

    if-nez v0, :cond_7

    move-object v0, v1

    goto/16 :goto_0

    :cond_7
    const-string v0, "init_tag"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/ae;->a:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aM:Ljava/lang/String;

    new-instance v4, Lcom/unionpay/upomp/bypay/other/dw;

    invoke-direct {v4}, Lcom/unionpay/upomp/bypay/other/dw;-><init>()V

    invoke-static {v0, v4}, Lcom/unionpay/upomp/bypay/other/ae;->a(Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)Lorg/xml/sax/helpers/DefaultHandler;

    move-result-object v0

    check-cast v0, Lcom/unionpay/upomp/bypay/other/dw;

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->aM:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/dw;->a()Lcom/unionpay/upomp/bypay/other/cx;

    move-result-object v0

    if-nez v0, :cond_8

    move-object v0, v1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/cx;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0000"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/cx;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/cx;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/cx;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/unionpay/upomp/bypay/other/p;->a(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/unionpay/upomp/bypay/other/eh;->J:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unionpay/upomp/bypay/util/Utils;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/cx;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->j:Ljava/lang/String;

    const-string v4, "content"

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/cx;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/unionpay/upomp/bypay/other/p;->a(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Lcom/unionpay/upomp/bypay/util/Utils;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unionpay/upomp/bypay/other/cz;->a()V

    move v2, v3

    goto/16 :goto_2

    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/cx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/cx;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/other/cz;->a:Ljava/lang/String;

    const-string v0, "merchantError"

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/cx;->e()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->L:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/cx;->a()Lcom/unionpay/upomp/bypay/other/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/ah;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->I:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->j:Ljava/lang/String;

    const-string v1, "pluginSerialNo"

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->I:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "done"

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 5

    sget-boolean v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/cz;->a:Lcom/unionpay/upomp/bypay/activity/SplashActivity;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "upomp_bypay_error"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/cz;->a:Lcom/unionpay/upomp/bypay/activity/SplashActivity;

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_linkerror"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "merchantError"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/cz;->a:Lcom/unionpay/upomp/bypay/activity/SplashActivity;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "upomp_bypay_error"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/cz;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "validfiles"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/cz;->a:Lcom/unionpay/upomp/bypay/activity/SplashActivity;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "upomp_bypay_error"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/cz;->a:Lcom/unionpay/upomp/bypay/activity/SplashActivity;

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_fileerror"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "want"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/cz;->a:Lcom/unionpay/upomp/bypay/activity/SplashActivity;

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_error"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/cz;->a:Lcom/unionpay/upomp/bypay/activity/SplashActivity;

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_splashactivity_initfail"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "OK"

    new-instance v2, Lcom/unionpay/upomp/bypay/other/cu;

    invoke-direct {v2, p0}, Lcom/unionpay/upomp/bypay/other/cu;-><init>(Lcom/unionpay/upomp/bypay/other/cz;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_6
    if-eqz p1, :cond_7

    const-string v0, "done"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

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

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/cz;->a:Lcom/unionpay/upomp/bypay/activity/SplashActivity;

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->getResources()Landroid/content/res/Resources;

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

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/cz;->a:Lcom/unionpay/upomp/bypay/activity/SplashActivity;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "upomp_bypay_error"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/cz;->a:Lcom/unionpay/upomp/bypay/activity/SplashActivity;

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_linkerror"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/unionpay/upomp/bypay/other/cz;->a([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/unionpay/upomp/bypay/other/cz;->a(Ljava/lang/String;)V

    return-void
.end method
