.class Lcom/jingdong/lib/zxing/client/android/AndroidHttpClient$2;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "AndroidHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/lib/zxing/client/android/AndroidHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/lib/zxing/client/android/AndroidHttpClient;


# direct methods
.method constructor <init>(Lcom/jingdong/lib/zxing/client/android/AndroidHttpClient;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/lib/zxing/client/android/AndroidHttpClient$2;->this$0:Lcom/jingdong/lib/zxing/client/android/AndroidHttpClient;

    .line 117
    invoke-direct {p0, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected createHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 131
    .local v0, context:Lorg/apache/http/protocol/HttpContext;
    const-string v1, "http.authscheme-registry"

    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/AndroidHttpClient$2;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    const-string v1, "http.cookiespec-registry"

    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/AndroidHttpClient$2;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    const-string v1, "http.auth.credentials-provider"

    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/AndroidHttpClient$2;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    return-object v0
.end method

.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    .line 122
    .local v0, processor:Lorg/apache/http/protocol/BasicHttpProcessor;
    invoke-static {}, Lcom/jingdong/lib/zxing/client/android/AndroidHttpClient;->access$1()Lorg/apache/http/HttpRequestInterceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 123
    return-object v0
.end method
