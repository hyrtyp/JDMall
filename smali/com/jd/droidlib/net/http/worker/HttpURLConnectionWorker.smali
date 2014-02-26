.class public Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;
.super Lcom/jd/droidlib/net/http/worker/HTTPWorker;
.source "HttpURLConnectionWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker$FixedAuthenticator;
    }
.end annotation


# instance fields
.field private authScope:Lorg/apache/http/auth/AuthScope;

.field private cookie:Ljava/lang/String;

.field private passAuth:Ljava/net/PasswordAuthentication;

.field private proxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "userAgent"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/jd/droidlib/net/http/worker/HTTPWorker;-><init>(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private static connectAndGetResponseCodeOrThrow(Ljava/net/HttpURLConnection;)I
    .locals 5
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jd/droidlib/net/http/HTTPException;
        }
    .end annotation

    .prologue
    .line 162
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 163
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 164
    .local v2, respCode:I
    invoke-static {v2}, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->isErrorResponseCode(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 165
    :goto_0
    invoke-static {p0, v3}, Lcom/jd/droidlib/net/http/worker/HTTPInputStream;->getInstance(Ljava/net/HttpURLConnection;Z)Lcom/jd/droidlib/net/http/worker/HTTPInputStream;

    move-result-object v1

    .line 167
    .local v1, is:Lcom/jd/droidlib/net/http/worker/HTTPInputStream;
    new-instance v3, Lcom/jd/droidlib/net/http/HTTPException;

    invoke-virtual {v1}, Lcom/jd/droidlib/net/http/worker/HTTPInputStream;->readAndClose()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/jd/droidlib/net/http/HTTPException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/jd/droidlib/net/http/HTTPException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    .end local v1           #is:Lcom/jd/droidlib/net/http/worker/HTTPInputStream;
    .end local v2           #respCode:I
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Lcom/jd/droidlib/net/http/HTTPException;
    throw v0

    .line 166
    .end local v0           #e:Lcom/jd/droidlib/net/http/HTTPException;
    .restart local v2       #respCode:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 172
    .end local v2           #respCode:I
    :catch_1
    move-exception v0

    .line 173
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->throwIfNetworkOnMainThreadException(Ljava/lang/Exception;)V

    .line 174
    new-instance v3, Lcom/jd/droidlib/net/http/HTTPException;

    invoke-direct {v3, v0}, Lcom/jd/droidlib/net/http/HTTPException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 169
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #respCode:I
    :cond_1
    return v2
.end method

.method public static getReponse(Ljava/net/HttpURLConnection;Z)Lcom/jd/droidlib/net/http/HTTPResponse;
    .locals 3
    .parameter "conn"
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jd/droidlib/net/http/HTTPException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v1, Lcom/jd/droidlib/net/http/HTTPResponse;

    invoke-direct {v1}, Lcom/jd/droidlib/net/http/HTTPResponse;-><init>()V

    .line 148
    .local v1, response:Lcom/jd/droidlib/net/http/HTTPResponse;
    invoke-static {p0}, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->connectAndGetResponseCodeOrThrow(Ljava/net/HttpURLConnection;)I

    move-result v2

    iput v2, v1, Lcom/jd/droidlib/net/http/HTTPResponse;->code:I

    .line 149
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lcom/jd/droidlib/net/http/HTTPResponse;->headers:Ljava/util/Map;

    .line 150
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/jd/droidlib/net/http/worker/HTTPInputStream;->getInstance(Ljava/net/HttpURLConnection;Z)Lcom/jd/droidlib/net/http/worker/HTTPInputStream;

    move-result-object v0

    .line 151
    .local v0, is:Lcom/jd/droidlib/net/http/worker/HTTPInputStream;
    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/jd/droidlib/net/http/worker/HTTPInputStream;->readAndClose()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jd/droidlib/net/http/HTTPResponse;->body:Ljava/lang/String;

    .line 156
    :goto_0
    return-object v1

    .line 154
    :cond_0
    iput-object v0, v1, Lcom/jd/droidlib/net/http/HTTPResponse;->inputStream:Lcom/jd/droidlib/net/http/worker/HTTPInputStream;

    goto :goto_0
.end method

.method public static postOrPut(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "conn"
    .parameter "contentType"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jd/droidlib/net/http/HTTPException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    const-string v2, "Accept-Charset"

    const-string v3, "utf-8"

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v2, "Content-Type"

    invoke-virtual {p0, v2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v1, 0x0

    .line 135
    .local v1, os:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 136
    const-string v2, "utf-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    new-array v2, v5, [Ljava/io/Closeable;

    .line 141
    aput-object v1, v2, v4

    invoke-static {v2}, Lcom/jd/droidlib/util/IOUtils;->silentlyClose([Ljava/io/Closeable;)V

    .line 143
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->throwIfNetworkOnMainThreadException(Ljava/lang/Exception;)V

    .line 139
    new-instance v2, Lcom/jd/droidlib/net/http/HTTPException;

    invoke-direct {v2, v0}, Lcom/jd/droidlib/net/http/HTTPException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    new-array v3, v5, [Ljava/io/Closeable;

    .line 141
    aput-object v1, v3, v4

    invoke-static {v3}, Lcom/jd/droidlib/util/IOUtils;->silentlyClose([Ljava/io/Closeable;)V

    .line 142
    throw v2
.end method

.method public static setHttpResponseCacheEnabled(Landroid/content/Context;Z)V
    .locals 11
    .parameter "ctx"
    .parameter "enabled"

    .prologue
    .line 54
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "http"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    .local v0, cacheDir:Ljava/io/File;
    const-wide/32 v1, 0xa00000

    .line 57
    .local v1, cacheSize:J
    :try_start_0
    const-string v6, "android.net.http.HttpResponseCache"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 58
    .local v3, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p1, :cond_1

    .line 59
    const-string v6, "install"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/io/File;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 60
    aput-object v0, v8, v9

    const/4 v9, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    .line 59
    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .end local v3           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 62
    .restart local v3       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    const-string v6, "getInstalled"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 63
    .local v5, instance:Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 64
    const-string v6, "delete"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    .end local v3           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #instance:Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 68
    .local v4, e:Ljava/lang/Exception;
    invoke-static {v4}, Lcom/jd/droidlib/util/L;->i(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setupBasicAuth()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 180
    iget-object v3, p0, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->passAuth:Ljava/net/PasswordAuthentication;

    if-eqz v3, :cond_1

    .line 181
    new-instance v3, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker$FixedAuthenticator;

    iget-object v4, p0, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->passAuth:Ljava/net/PasswordAuthentication;

    invoke-direct {v3, v4}, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker$FixedAuthenticator;-><init>(Ljava/net/PasswordAuthentication;)V

    invoke-static {v3}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    .line 182
    sget-object v3, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    iget-object v4, p0, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->authScope:Lorg/apache/http/auth/AuthScope;

    invoke-virtual {v3, v4}, Lorg/apache/http/auth/AuthScope;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 183
    const/4 v1, 0x0

    .line 184
    .local v1, host:Ljava/net/InetAddress;
    iget-object v3, p0, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->authScope:Lorg/apache/http/auth/AuthScope;

    invoke-virtual {v3}, Lorg/apache/http/auth/AuthScope;->getHost()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 186
    :try_start_0
    iget-object v3, p0, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->authScope:Lorg/apache/http/auth/AuthScope;

    invoke-virtual {v3}, Lorg/apache/http/auth/AuthScope;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 194
    :cond_0
    iget-object v3, p0, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->authScope:Lorg/apache/http/auth/AuthScope;

    invoke-virtual {v3}, Lorg/apache/http/auth/AuthScope;->getPort()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    const/4 v2, 0x0

    .line 197
    .local v2, port:I
    :goto_0
    iget-object v3, p0, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->authScope:Lorg/apache/http/auth/AuthScope;

    invoke-virtual {v3}, Lorg/apache/http/auth/AuthScope;->getRealm()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->authScope:Lorg/apache/http/auth/AuthScope;

    invoke-virtual {v4}, Lorg/apache/http/auth/AuthScope;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 196
    invoke-static {v1, v2, v5, v3, v4}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;

    .line 200
    .end local v1           #host:Ljava/net/InetAddress;
    .end local v2           #port:I
    :cond_1
    :goto_1
    return-void

    .line 187
    .restart local v1       #host:Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 188
    .local v0, e:Ljava/net/UnknownHostException;
    const-string v3, "Failed to setup basic auth."

    invoke-static {v3}, Lcom/jd/droidlib/util/L;->e(Ljava/lang/Object;)V

    .line 189
    invoke-static {v0}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 190
    invoke-static {v5}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    goto :goto_1

    .line 195
    .end local v0           #e:Ljava/net/UnknownHostException;
    :cond_2
    iget-object v3, p0, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->authScope:Lorg/apache/http/auth/AuthScope;

    invoke-virtual {v3}, Lorg/apache/http/auth/AuthScope;->getPort()I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public authenticateBasic(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V
    .locals 2
    .parameter "user"
    .parameter "password"
    .parameter "scope"

    .prologue
    .line 83
    new-instance v0, Ljava/net/PasswordAuthentication;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/net/PasswordAuthentication;-><init>(Ljava/lang/String;[C)V

    iput-object v0, p0, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->passAuth:Ljava/net/PasswordAuthentication;

    .line 84
    iput-object p3, p0, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->authScope:Lorg/apache/http/auth/AuthScope;

    .line 85
    return-void
.end method

.method public getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 8
    .parameter "urlStr"
    .parameter "requestMethod"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jd/droidlib/net/http/HTTPException;
        }
    .end annotation

    .prologue
    .line 98
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 100
    .local v3, url:Ljava/net/URL;
    iget-object v5, p0, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->proxy:Ljava/net/Proxy;

    if-eqz v5, :cond_4

    .line 101
    iget-object v5, p0, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->proxy:Ljava/net/Proxy;

    invoke-virtual {v3, v5}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 105
    .local v0, conn:Ljava/net/HttpURLConnection;
    :goto_0
    iget-object v5, p0, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->headers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 110
    const/16 v5, 0x7530

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 111
    const/16 v5, 0x7530

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 112
    const-string v5, "http.agent"

    iget-object v6, p0, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v5, "Accept-Encoding"

    const-string v6, "gzip,deflate"

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v5, p0, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->cookie:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->cookie:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 115
    const-string v5, "Cookie"

    iget-object v6, p0, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->cookie:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_1
    invoke-direct {p0}, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->setupBasicAuth()V

    .line 117
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 118
    const-string v5, "PUT"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 119
    const-string v5, "POST"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 120
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 122
    :cond_3
    return-object v0

    .line 103
    .end local v0           #conn:Ljava/net/HttpURLConnection;
    :cond_4
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .restart local v0       #conn:Ljava/net/HttpURLConnection;
    goto :goto_0

    .line 105
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 106
    .local v2, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->headers:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 107
    .local v4, val:Ljava/lang/String;
    invoke-virtual {v0, v2, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 123
    .end local v0           #conn:Ljava/net/HttpURLConnection;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #url:Ljava/net/URL;
    .end local v4           #val:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 124
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->throwIfNetworkOnMainThreadException(Ljava/lang/Exception;)V

    .line 125
    new-instance v5, Lcom/jd/droidlib/net/http/HTTPException;

    invoke-direct {v5, v1}, Lcom/jd/droidlib/net/http/HTTPException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public setCookieJar(Lcom/jd/droidlib/net/http/CookieJar;)V
    .locals 0
    .parameter "cookieJar"

    .prologue
    .line 78
    invoke-static {p1}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 79
    return-void
.end method

.method public setCookies(Ljava/lang/String;)V
    .locals 0
    .parameter "cookie"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->cookie:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/jd/droidlib/net/http/worker/HttpURLConnectionWorker;->proxy:Ljava/net/Proxy;

    .line 89
    return-void
.end method
