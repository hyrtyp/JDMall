.class public Lcom/jingdong/app/lib/pay/web/PayWebView$checkUrl;
.super Landroid/webkit/WebViewClient;
.source "PayWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/lib/pay/web/PayWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "checkUrl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/lib/pay/web/PayWebView;


# direct methods
.method protected constructor <init>(Lcom/jingdong/app/lib/pay/web/PayWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/jingdong/app/lib/pay/web/PayWebView$checkUrl;->this$0:Lcom/jingdong/app/lib/pay/web/PayWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private checkUrl2(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, scheme:Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/jingdong/app/lib/pay/web/PayWebView$checkUrl;->this$0:Lcom/jingdong/app/lib/pay/web/PayWebView;

    #getter for: Lcom/jingdong/app/lib/pay/web/PayWebView;->callBack:Lcom/jingdong/app/lib/pay/web/PayWebViewCallBack;
    invoke-static {v1}, Lcom/jingdong/app/lib/pay/web/PayWebView;->access$0(Lcom/jingdong/app/lib/pay/web/PayWebView;)Lcom/jingdong/app/lib/pay/web/PayWebViewCallBack;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/jingdong/app/lib/pay/web/PayWebView$checkUrl;->this$0:Lcom/jingdong/app/lib/pay/web/PayWebView;

    #getter for: Lcom/jingdong/app/lib/pay/web/PayWebView;->callBack:Lcom/jingdong/app/lib/pay/web/PayWebViewCallBack;
    invoke-static {v1}, Lcom/jingdong/app/lib/pay/web/PayWebView;->access$0(Lcom/jingdong/app/lib/pay/web/PayWebView;)Lcom/jingdong/app/lib/pay/web/PayWebViewCallBack;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jingdong/app/lib/pay/web/PayWebViewCallBack;->onLoadSpecialUrl(Ljava/lang/String;)Z

    move-result v1

    .line 81
    :goto_0
    return v1

    .line 79
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 81
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/jingdong/app/lib/pay/web/PayWebView$checkUrl;->this$0:Lcom/jingdong/app/lib/pay/web/PayWebView;

    #getter for: Lcom/jingdong/app/lib/pay/web/PayWebView;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/jingdong/app/lib/pay/web/PayWebView;->access$1(Lcom/jingdong/app/lib/pay/web/PayWebView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/jingdong/app/lib/pay/web/PayWebView$checkUrl;->this$0:Lcom/jingdong/app/lib/pay/web/PayWebView;

    #getter for: Lcom/jingdong/app/lib/pay/web/PayWebView;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/jingdong/app/lib/pay/web/PayWebView;->access$1(Lcom/jingdong/app/lib/pay/web/PayWebView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 103
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/jingdong/app/lib/pay/web/PayWebView$checkUrl;->this$0:Lcom/jingdong/app/lib/pay/web/PayWebView;

    #getter for: Lcom/jingdong/app/lib/pay/web/PayWebView;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/jingdong/app/lib/pay/web/PayWebView;->access$1(Lcom/jingdong/app/lib/pay/web/PayWebView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/jingdong/app/lib/pay/web/PayWebView$checkUrl;->this$0:Lcom/jingdong/app/lib/pay/web/PayWebView;

    #getter for: Lcom/jingdong/app/lib/pay/web/PayWebView;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/jingdong/app/lib/pay/web/PayWebView;->access$1(Lcom/jingdong/app/lib/pay/web/PayWebView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 111
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 112
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 95
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 96
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 86
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jingdong/app/lib/pay/web/PayWebView$checkUrl;->checkUrl2(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
