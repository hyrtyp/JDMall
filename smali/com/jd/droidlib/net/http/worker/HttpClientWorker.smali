.class public Lcom/jd/droidlib/net/http/worker/HttpClientWorker;
.super Lcom/jd/droidlib/net/http/worker/HTTPWorker;
.source "HttpClientWorker.java"


# instance fields
.field private final httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "userAgent"

    .prologue
    const/16 v3, 0x7530

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0, p1}, Lcom/jd/droidlib/net/http/worker/HTTPWorker;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v1, p0, Lcom/jd/droidlib/net/http/worker/HttpClientWorker;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 52
    iget-object v1, p0, Lcom/jd/droidlib/net/http/worker/HttpClientWorker;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 53
    .local v0, params:Lorg/apache/http/params/HttpParams;
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 54
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 55
    invoke-static {v0, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 56
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 58
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 59
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 60
    const-string v1, "compatibility"

    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setCookiePolicy(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static buildStringEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/entity/StringEntity;
    .locals 3
    .parameter "contentType"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jd/droidlib/net/http/HTTPException;
        }
    .end annotation

    .prologue
    .line 82
    :try_start_0
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    const-string v2, "utf-8"

    invoke-direct {v1, p1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .local v1, entity:Lorg/apache/http/entity/StringEntity;
    invoke-virtual {v1, p0}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    return-object v1

    .line 85
    .end local v1           #entity:Lorg/apache/http/entity/StringEntity;
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/jd/droidlib/net/http/HTTPException;

    invoke-direct {v2, v0}, Lcom/jd/droidlib/net/http/HTTPException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static getHeaders(Lorg/apache/http/HttpResponse;)Ljava/util/Map;
    .locals 8
    .parameter "resp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 133
    .local v1, headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    array-length v6, v5

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v6, :cond_0

    .line 140
    return-object v1

    .line 133
    :cond_0
    aget-object v0, v5, v4

    .line 134
    .local v0, header:Lorg/apache/http/Header;
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 136
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0
.end method

.method private getHttpResponse(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 6
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jd/droidlib/net/http/HTTPException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v3, p0, Lcom/jd/droidlib/net/http/worker/HttpClientWorker;->headers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 112
    const-string v3, "Accept-Encoding"

    const-string v4, "gzip,deflate"

    invoke-interface {p1, v3, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :try_start_0
    iget-object v3, p0, Lcom/jd/droidlib/net/http/worker/HttpClientWorker;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v3, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 107
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 108
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/jd/droidlib/net/http/worker/HttpClientWorker;->headers:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 109
    .local v2, val:Ljava/lang/String;
    invoke-interface {p1, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #val:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jd/droidlib/net/http/worker/HttpClientWorker;->throwIfNetworkOnMainThreadException(Ljava/lang/Exception;)V

    .line 117
    new-instance v3, Lcom/jd/droidlib/net/http/HTTPException;

    invoke-direct {v3, v0}, Lcom/jd/droidlib/net/http/HTTPException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static getResponseCodeOrThrow(Lorg/apache/http/HttpResponse;)I
    .locals 3
    .parameter "resp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jd/droidlib/net/http/HTTPException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 124
    .local v1, respCode:I
    invoke-static {v1}, Lcom/jd/droidlib/net/http/worker/HttpClientWorker;->isErrorResponseCode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    invoke-static {p0}, Lcom/jd/droidlib/net/http/worker/HTTPInputStream;->getInstance(Lorg/apache/http/HttpResponse;)Lcom/jd/droidlib/net/http/worker/HTTPInputStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jd/droidlib/net/http/worker/HTTPInputStream;->readAndClose()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, respBody:Ljava/lang/String;
    new-instance v2, Lcom/jd/droidlib/net/http/HTTPException;

    invoke-direct {v2, v1, v0}, Lcom/jd/droidlib/net/http/HTTPException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 128
    .end local v0           #respBody:Ljava/lang/String;
    :cond_0
    return v1
.end method


# virtual methods
.method public authenticateBasic(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V
    .locals 2
    .parameter "user"
    .parameter "password"
    .parameter "scope"

    .prologue
    .line 70
    new-instance v0, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .local v0, credentials:Lorg/apache/http/auth/UsernamePasswordCredentials;
    iget-object v1, p0, Lcom/jd/droidlib/net/http/worker/HttpClientWorker;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 73
    return-void
.end method

.method public getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/jd/droidlib/net/http/worker/HttpClientWorker;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public getReponse(Lorg/apache/http/client/methods/HttpUriRequest;Z)Lcom/jd/droidlib/net/http/HTTPResponse;
    .locals 4
    .parameter "req"
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jd/droidlib/net/http/HTTPException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v2, Lcom/jd/droidlib/net/http/HTTPResponse;

    invoke-direct {v2}, Lcom/jd/droidlib/net/http/HTTPResponse;-><init>()V

    .line 93
    .local v2, response:Lcom/jd/droidlib/net/http/HTTPResponse;
    invoke-direct {p0, p1}, Lcom/jd/droidlib/net/http/worker/HttpClientWorker;->getHttpResponse(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 94
    .local v1, resp:Lorg/apache/http/HttpResponse;
    invoke-static {v1}, Lcom/jd/droidlib/net/http/worker/HttpClientWorker;->getResponseCodeOrThrow(Lorg/apache/http/HttpResponse;)I

    move-result v3

    iput v3, v2, Lcom/jd/droidlib/net/http/HTTPResponse;->code:I

    .line 95
    invoke-static {v1}, Lcom/jd/droidlib/net/http/worker/HttpClientWorker;->getHeaders(Lorg/apache/http/HttpResponse;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v2, Lcom/jd/droidlib/net/http/HTTPResponse;->headers:Ljava/util/Map;

    .line 96
    invoke-static {v1}, Lcom/jd/droidlib/net/http/worker/HTTPInputStream;->getInstance(Lorg/apache/http/HttpResponse;)Lcom/jd/droidlib/net/http/worker/HTTPInputStream;

    move-result-object v0

    .line 97
    .local v0, is:Lcom/jd/droidlib/net/http/worker/HTTPInputStream;
    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/jd/droidlib/net/http/worker/HTTPInputStream;->readAndClose()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/jd/droidlib/net/http/HTTPResponse;->body:Ljava/lang/String;

    .line 102
    :goto_0
    return-object v2

    .line 100
    :cond_0
    iput-object v0, v2, Lcom/jd/droidlib/net/http/HTTPResponse;->inputStream:Lcom/jd/droidlib/net/http/worker/HTTPInputStream;

    goto :goto_0
.end method

.method public setCookieJar(Lcom/jd/droidlib/net/http/CookieJar;)V
    .locals 1
    .parameter "cookieJar"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jd/droidlib/net/http/worker/HttpClientWorker;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 66
    return-void
.end method
