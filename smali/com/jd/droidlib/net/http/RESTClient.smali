.class public Lcom/jd/droidlib/net/http/RESTClient;
.super Ljava/lang/Object;
.source "RESTClient.java"


# static fields
.field private static volatile cookieJar:Lcom/jd/droidlib/net/http/CookieJar;


# instance fields
.field private cookie:Ljava/lang/String;

.field private final ctx:Landroid/content/Context;

.field private final forceApacheHttpClient:Z

.field private final httpClientWorker:Lcom/jd/droidlib/net/http/worker/HttpClientWorker;

.field private final httpURLConnectionWorker:Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jd/droidlib/net/http/RESTClient;->getUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/jd/droidlib/net/http/RESTClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "ctx"
    .parameter "userAgent"
    .parameter "forceApacheHttpClient"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/droidlib/net/http/RESTClient;->ctx:Landroid/content/Context;

    .line 62
    iput-boolean p3, p0, Lcom/jd/droidlib/net/http/RESTClient;->forceApacheHttpClient:Z

    .line 63
    invoke-direct {p0}, Lcom/jd/droidlib/net/http/RESTClient;->useHttpURLConnection()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/jd/droidlib/net/http/RESTClient;->httpClientWorker:Lcom/jd/droidlib/net/http/worker/HttpClientWorker;

    .line 65
    invoke-direct {p0}, Lcom/jd/droidlib/net/http/RESTClient;->useHttpURLConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;

    .line 66
    invoke-direct {v1, p2}, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;-><init>(Ljava/lang/String;)V

    .line 65
    :cond_0
    iput-object v1, p0, Lcom/jd/droidlib/net/http/RESTClient;->httpURLConnectionWorker:Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;

    .line 67
    sget-object v0, Lcom/jd/droidlib/net/http/RESTClient;->cookieJar:Lcom/jd/droidlib/net/http/CookieJar;

    if-nez v0, :cond_1

    .line 68
    new-instance v0, Lcom/jd/droidlib/net/http/CookieJar;

    invoke-direct {v0, p1}, Lcom/jd/droidlib/net/http/CookieJar;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jd/droidlib/net/http/RESTClient;->cookieJar:Lcom/jd/droidlib/net/http/CookieJar;

    .line 74
    :cond_1
    return-void

    .line 64
    :cond_2
    new-instance v0, Lcom/jd/droidlib/net/http/worker/HttpClientWorker;

    invoke-direct {v0, p2}, Lcom/jd/droidlib/net/http/worker/HttpClientWorker;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "nameHint"

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    .end local p0
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    const-string v1, " (Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    const-string v1, " Build/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .restart local p0
    :cond_0
    const-string p0, " jd.com"

    goto :goto_0
.end method

.method private useHttpURLConnection()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 201
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_0

    move v0, v1

    .line 202
    .local v0, recentAndroid:Z
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/jd/droidlib/net/http/RESTClient;->forceApacheHttpClient:Z

    if-nez v3, :cond_1

    :goto_1
    return v1

    .end local v0           #recentAndroid:Z
    :cond_0
    move v0, v2

    .line 201
    goto :goto_0

    .restart local v0       #recentAndroid:Z
    :cond_1
    move v1, v2

    .line 202
    goto :goto_1
.end method


# virtual methods
.method public authenticateBasic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "username"
    .parameter "password"

    .prologue
    .line 90
    sget-object v0, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    invoke-virtual {p0, p1, p2, v0}, Lcom/jd/droidlib/net/http/RESTClient;->authenticateBasic(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V

    .line 91
    return-void
.end method

.method public authenticateBasic(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V
    .locals 1
    .parameter "username"
    .parameter "password"
    .parameter "scope"

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/jd/droidlib/net/http/RESTClient;->getWorker()Lcom/jd/droidlib/net/http/worker/HTTPWorker;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/jd/droidlib/net/http/worker/HTTPWorker;->authenticateBasic(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V

    .line 96
    return-void
.end method

.method public delete(Ljava/lang/String;)Lcom/jd/droidlib/net/http/HTTPResponse;
    .locals 7
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jd/droidlib/net/http/HTTPException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 177
    const-string v3, "DELETE on \'%s\'."

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/jd/droidlib/util/L;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-direct {p0}, Lcom/jd/droidlib/net/http/RESTClient;->useHttpURLConnection()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    iget-object v3, p0, Lcom/jd/droidlib/net/http/RESTClient;->httpURLConnectionWorker:Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;

    .line 181
    const-string v4, "DELETE"

    .line 180
    invoke-virtual {v3, p1, v4}, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 182
    .local v0, conn:Ljava/net/HttpURLConnection;
    invoke-static {v0, v6}, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->getReponse(Ljava/net/HttpURLConnection;Z)Lcom/jd/droidlib/net/http/HTTPResponse;

    move-result-object v2

    .line 187
    .end local v0           #conn:Ljava/net/HttpURLConnection;
    .local v2, response:Lcom/jd/droidlib/net/http/HTTPResponse;
    :goto_0
    invoke-static {v2}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 188
    return-object v2

    .line 184
    .end local v2           #response:Lcom/jd/droidlib/net/http/HTTPResponse;
    :cond_0
    new-instance v1, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, req:Lorg/apache/http/client/methods/HttpDelete;
    iget-object v3, p0, Lcom/jd/droidlib/net/http/RESTClient;->httpClientWorker:Lcom/jd/droidlib/net/http/worker/HttpClientWorker;

    invoke-virtual {v3, v1, v6}, Lcom/jd/droidlib/net/http/worker/HttpClientWorker;->getReponse(Lorg/apache/http/client/methods/HttpUriRequest;Z)Lcom/jd/droidlib/net/http/HTTPResponse;

    move-result-object v2

    .restart local v2       #response:Lcom/jd/droidlib/net/http/HTTPResponse;
    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lcom/jd/droidlib/net/http/HTTPResponse;
    .locals 6
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jd/droidlib/net/http/HTTPException;
        }
    .end annotation

    .prologue
    .line 101
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/jd/droidlib/net/http/RESTClient;->get(Ljava/lang/String;JLjava/lang/String;Z)Lcom/jd/droidlib/net/http/HTTPResponse;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;JLjava/lang/String;Z)Lcom/jd/droidlib/net/http/HTTPResponse;
    .locals 9
    .parameter "uri"
    .parameter "ifModifiedSince"
    .parameter "etag"
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jd/droidlib/net/http/HTTPException;
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x0

    .line 110
    const-string v3, "GET on \'%s\', If-Modified-Since: \'%d\', ETag: \'%s\', body: \'%b\'."

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 111
    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p4, v4, v5

    const/4 v5, 0x3

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    .line 110
    invoke-static {v3, v4}, Lcom/jd/droidlib/util/L;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-direct {p0}, Lcom/jd/droidlib/net/http/RESTClient;->useHttpURLConnection()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    iget-object v3, p0, Lcom/jd/droidlib/net/http/RESTClient;->httpURLConnectionWorker:Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;

    iget-object v4, p0, Lcom/jd/droidlib/net/http/RESTClient;->cookie:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->setCookies(Ljava/lang/String;)V

    .line 115
    iget-object v3, p0, Lcom/jd/droidlib/net/http/RESTClient;->httpURLConnectionWorker:Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;

    .line 116
    const-string v4, "GET"

    .line 115
    invoke-virtual {v3, p1, v4}, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 117
    .local v0, conn:Ljava/net/HttpURLConnection;
    cmp-long v3, p2, v7

    if-lez v3, :cond_0

    .line 118
    invoke-virtual {v0, p2, p3}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 120
    :cond_0
    if-eqz p4, :cond_1

    .line 121
    const-string v3, "If-None-Match"

    invoke-virtual {v0, v3, p4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_1
    invoke-static {v0, p5}, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->getReponse(Ljava/net/HttpURLConnection;Z)Lcom/jd/droidlib/net/http/HTTPResponse;

    move-result-object v2

    .line 135
    .end local v0           #conn:Ljava/net/HttpURLConnection;
    .local v2, response:Lcom/jd/droidlib/net/http/HTTPResponse;
    :goto_0
    invoke-static {v2}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 136
    return-object v2

    .line 125
    .end local v2           #response:Lcom/jd/droidlib/net/http/HTTPResponse;
    :cond_2
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 126
    .local v1, req:Lorg/apache/http/client/methods/HttpGet;
    cmp-long v3, p2, v7

    if-lez v3, :cond_3

    .line 127
    const-string v3, "If-Modified-Since"

    new-instance v4, Ljava/util/Date;

    .line 128
    invoke-direct {v4, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-virtual {v1, v3, v4}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_3
    if-eqz p4, :cond_4

    .line 131
    const-string v3, "If-None-Match"

    invoke-virtual {v1, v3, p4}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_4
    iget-object v3, p0, Lcom/jd/droidlib/net/http/RESTClient;->httpClientWorker:Lcom/jd/droidlib/net/http/worker/HttpClientWorker;

    invoke-virtual {v3, v1, p5}, Lcom/jd/droidlib/net/http/worker/HttpClientWorker;->getReponse(Lorg/apache/http/client/methods/HttpUriRequest;Z)Lcom/jd/droidlib/net/http/HTTPResponse;

    move-result-object v2

    .restart local v2       #response:Lcom/jd/droidlib/net/http/HTTPResponse;
    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jd/droidlib/net/http/RESTClient;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method public getInputStream(Ljava/lang/String;)Lcom/jd/droidlib/net/http/HTTPResponse;
    .locals 6
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jd/droidlib/net/http/HTTPException;
        }
    .end annotation

    .prologue
    .line 105
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/jd/droidlib/net/http/RESTClient;->get(Ljava/lang/String;JLjava/lang/String;Z)Lcom/jd/droidlib/net/http/HTTPResponse;

    move-result-object v0

    return-object v0
.end method

.method protected final getWorker()Lcom/jd/droidlib/net/http/worker/HTTPWorker;
    .locals 2

    .prologue
    .line 194
    iget-object v1, p0, Lcom/jd/droidlib/net/http/RESTClient;->httpClientWorker:Lcom/jd/droidlib/net/http/worker/HttpClientWorker;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/jd/droidlib/net/http/RESTClient;->httpClientWorker:Lcom/jd/droidlib/net/http/worker/HttpClientWorker;

    .line 196
    .local v0, worker:Lcom/jd/droidlib/net/http/worker/HTTPWorker;
    :goto_0
    return-object v0

    .line 195
    .end local v0           #worker:Lcom/jd/droidlib/net/http/worker/HTTPWorker;
    :cond_0
    iget-object v0, p0, Lcom/jd/droidlib/net/http/RESTClient;->httpURLConnectionWorker:Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;

    goto :goto_0
.end method

.method public post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/jd/droidlib/net/http/HTTPResponse;
    .locals 7
    .parameter "uri"
    .parameter "contentType"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jd/droidlib/net/http/HTTPException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 141
    const-string v3, "POST on \'%s\', data: \'%s\'."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object p3, v4, v6

    invoke-static {v3, v4}, Lcom/jd/droidlib/util/L;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    invoke-direct {p0}, Lcom/jd/droidlib/net/http/RESTClient;->useHttpURLConnection()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    iget-object v3, p0, Lcom/jd/droidlib/net/http/RESTClient;->httpURLConnectionWorker:Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;

    iget-object v4, p0, Lcom/jd/droidlib/net/http/RESTClient;->cookie:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->setCookies(Ljava/lang/String;)V

    .line 145
    iget-object v3, p0, Lcom/jd/droidlib/net/http/RESTClient;->httpURLConnectionWorker:Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;

    .line 146
    const-string v4, "POST"

    .line 145
    invoke-virtual {v3, p1, v4}, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 147
    .local v0, conn:Ljava/net/HttpURLConnection;
    invoke-static {v0, p2, p3}, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->postOrPut(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {v0, v6}, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->getReponse(Ljava/net/HttpURLConnection;Z)Lcom/jd/droidlib/net/http/HTTPResponse;

    move-result-object v2

    .line 154
    .end local v0           #conn:Ljava/net/HttpURLConnection;
    .local v2, response:Lcom/jd/droidlib/net/http/HTTPResponse;
    :goto_0
    invoke-static {v2}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 155
    return-object v2

    .line 150
    .end local v2           #response:Lcom/jd/droidlib/net/http/HTTPResponse;
    :cond_0
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 151
    .local v1, req:Lorg/apache/http/client/methods/HttpPost;
    invoke-static {p2, p3}, Lcom/jd/droidlib/net/http/worker/HttpClientWorker;->buildStringEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/entity/StringEntity;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 152
    iget-object v3, p0, Lcom/jd/droidlib/net/http/RESTClient;->httpClientWorker:Lcom/jd/droidlib/net/http/worker/HttpClientWorker;

    invoke-virtual {v3, v1, v6}, Lcom/jd/droidlib/net/http/worker/HttpClientWorker;->getReponse(Lorg/apache/http/client/methods/HttpUriRequest;Z)Lcom/jd/droidlib/net/http/HTTPResponse;

    move-result-object v2

    .restart local v2       #response:Lcom/jd/droidlib/net/http/HTTPResponse;
    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/jd/droidlib/net/http/HTTPResponse;
    .locals 7
    .parameter "uri"
    .parameter "contentType"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jd/droidlib/net/http/HTTPException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 160
    const-string v3, "PUT on \'%s\', data: \'%s\'."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object p3, v4, v6

    invoke-static {v3, v4}, Lcom/jd/droidlib/util/L;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-direct {p0}, Lcom/jd/droidlib/net/http/RESTClient;->useHttpURLConnection()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    iget-object v3, p0, Lcom/jd/droidlib/net/http/RESTClient;->httpURLConnectionWorker:Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;

    .line 164
    const-string v4, "PUT"

    .line 163
    invoke-virtual {v3, p1, v4}, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 165
    .local v0, conn:Ljava/net/HttpURLConnection;
    invoke-static {v0, p2, p3}, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->postOrPut(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {v0, v6}, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->getReponse(Ljava/net/HttpURLConnection;Z)Lcom/jd/droidlib/net/http/HTTPResponse;

    move-result-object v2

    .line 172
    .end local v0           #conn:Ljava/net/HttpURLConnection;
    .local v2, response:Lcom/jd/droidlib/net/http/HTTPResponse;
    :goto_0
    invoke-static {v2}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 173
    return-object v2

    .line 168
    .end local v2           #response:Lcom/jd/droidlib/net/http/HTTPResponse;
    :cond_0
    new-instance v1, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 169
    .local v1, req:Lorg/apache/http/client/methods/HttpPut;
    invoke-static {p2, p3}, Lcom/jd/droidlib/net/http/worker/HttpClientWorker;->buildStringEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/entity/StringEntity;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 170
    iget-object v3, p0, Lcom/jd/droidlib/net/http/RESTClient;->httpClientWorker:Lcom/jd/droidlib/net/http/worker/HttpClientWorker;

    invoke-virtual {v3, v1, v6}, Lcom/jd/droidlib/net/http/worker/HttpClientWorker;->getReponse(Lorg/apache/http/client/methods/HttpUriRequest;Z)Lcom/jd/droidlib/net/http/HTTPResponse;

    move-result-object v2

    .restart local v2       #response:Lcom/jd/droidlib/net/http/HTTPResponse;
    goto :goto_0
.end method

.method public putHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/jd/droidlib/net/http/RESTClient;->getWorker()Lcom/jd/droidlib/net/http/worker/HTTPWorker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/jd/droidlib/net/http/worker/HTTPWorker;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public setCookie(Ljava/lang/String;)V
    .locals 0
    .parameter "cookie"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/jd/droidlib/net/http/RESTClient;->cookie:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setCookieCacheEnabled(ZZ)V
    .locals 2
    .parameter "enabled"
    .parameter "persistent"

    .prologue
    .line 81
    sget-object v0, Lcom/jd/droidlib/net/http/RESTClient;->cookieJar:Lcom/jd/droidlib/net/http/CookieJar;

    invoke-virtual {v0, p2}, Lcom/jd/droidlib/net/http/CookieJar;->setPersistent(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/jd/droidlib/net/http/RESTClient;->getWorker()Lcom/jd/droidlib/net/http/worker/HTTPWorker;

    move-result-object v1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/jd/droidlib/net/http/RESTClient;->cookieJar:Lcom/jd/droidlib/net/http/CookieJar;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/jd/droidlib/net/http/worker/HTTPWorker;->setCookieJar(Lcom/jd/droidlib/net/http/CookieJar;)V

    .line 83
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
