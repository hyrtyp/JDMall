.class public Lcom/unionpay/upomp/bypay/other/ag;
.super Lcom/unionpay/upomp/bypay/other/eu;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unionpay/upomp/bypay/other/cq;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/unionpay/upomp/bypay/other/eu;-><init>(Lcom/unionpay/upomp/bypay/other/cq;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/other/ag;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/unionpay/upomp/bypay/other/ag;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/unionpay/upomp/bypay/other/ag;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v2, "utf-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->ay:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/other/ag;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
