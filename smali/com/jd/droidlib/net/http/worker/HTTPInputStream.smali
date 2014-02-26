.class public Lcom/jd/droidlib/net/http/worker/HTTPInputStream;
.super Ljava/io/BufferedInputStream;
.source "HTTPInputStream.java"


# instance fields
.field private final conn:Ljava/net/HttpURLConnection;

.field private final entity:Lorg/apache/http/HttpEntity;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lorg/apache/http/HttpEntity;)V
    .locals 1
    .parameter "is"
    .parameter "conn"
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jd/droidlib/net/http/HTTPException;
        }
    .end annotation

    .prologue
    .line 82
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 83
    iput-object p2, p0, Lcom/jd/droidlib/net/http/worker/HTTPInputStream;->conn:Ljava/net/HttpURLConnection;

    .line 84
    iput-object p3, p0, Lcom/jd/droidlib/net/http/worker/HTTPInputStream;->entity:Lorg/apache/http/HttpEntity;

    .line 85
    return-void
.end method

.method public static getInstance(Ljava/net/HttpURLConnection;Z)Lcom/jd/droidlib/net/http/worker/HTTPInputStream;
    .locals 4
    .parameter "conn"
    .parameter "useErrorStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jd/droidlib/net/http/HTTPException;
        }
    .end annotation

    .prologue
    .line 41
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 43
    .local v1, is:Ljava/io/InputStream;
    :goto_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/jd/droidlib/net/http/worker/HTTPInputStream;->getUnpackedInputStream(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    .line 44
    new-instance v2, Lcom/jd/droidlib/net/http/worker/HTTPInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p0, v3}, Lcom/jd/droidlib/net/http/worker/HTTPInputStream;-><init>(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lorg/apache/http/HttpEntity;)V

    return-object v2

    .line 42
    .end local v1           #is:Ljava/io/InputStream;
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/jd/droidlib/net/http/HTTPException;

    invoke-direct {v2, v0}, Lcom/jd/droidlib/net/http/HTTPException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getInstance(Lorg/apache/http/HttpResponse;)Lcom/jd/droidlib/net/http/worker/HTTPInputStream;
    .locals 6
    .parameter "resp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jd/droidlib/net/http/HTTPException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 52
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 54
    .local v2, entity:Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 55
    .local v3, is:Ljava/io/InputStream;
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 56
    .local v0, ce:Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-static {v4, v3}, Lcom/jd/droidlib/net/http/worker/HTTPInputStream;->getUnpackedInputStream(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    .line 57
    new-instance v4, Lcom/jd/droidlib/net/http/worker/HTTPInputStream;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, v2}, Lcom/jd/droidlib/net/http/worker/HTTPInputStream;-><init>(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 58
    .end local v0           #ce:Lorg/apache/http/Header;
    .end local v3           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 59
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Lcom/jd/droidlib/net/http/HTTPException;

    invoke-direct {v4, v1}, Lcom/jd/droidlib/net/http/HTTPException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static getUnpackedInputStream(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 3
    .parameter "contentEncoding"
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    const-string v0, "Content-Encoding: %s."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-static {p0}, Lcom/jd/droidlib/util/Strings;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 68
    const-string v0, "gzip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 74
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 70
    .restart local p1
    :cond_1
    const-string v0, "deflate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V

    .line 100
    iget-object v0, p0, Lcom/jd/droidlib/net/http/worker/HTTPInputStream;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/jd/droidlib/net/http/worker/HTTPInputStream;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/jd/droidlib/net/http/worker/HTTPInputStream;->entity:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/jd/droidlib/net/http/worker/HTTPInputStream;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    goto :goto_0
.end method

.method public readAndClose()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jd/droidlib/net/http/HTTPException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 89
    :try_start_0
    invoke-static {p0}, Lcom/jd/droidlib/util/IOUtils;->readToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 92
    new-array v2, v2, [Ljava/io/Closeable;

    .line 93
    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/jd/droidlib/util/IOUtils;->silentlyClose([Ljava/io/Closeable;)V

    .line 89
    return-object v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Lcom/jd/droidlib/net/http/HTTPException;

    invoke-direct {v1, v0}, Lcom/jd/droidlib/net/http/HTTPException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    new-array v2, v2, [Ljava/io/Closeable;

    .line 93
    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/jd/droidlib/util/IOUtils;->silentlyClose([Ljava/io/Closeable;)V

    .line 94
    throw v1
.end method
