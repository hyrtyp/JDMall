.class Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$2;
.super Ljava/lang/Object;
.source "ProductDetailInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->initTabContent(Ljava/lang/String;)Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

.field private final synthetic val$tabContentLayout:Landroid/widget/RelativeLayout;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;Ljava/lang/String;Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$2;->val$tabContentLayout:Landroid/widget/RelativeLayout;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 294
    new-instance v7, Landroid/webkit/WebView;

    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    invoke-direct {v7, v8}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 298
    .local v7, webView:Landroid/webkit/WebView;
    new-instance v8, Landroid/webkit/WebChromeClient;

    invoke-direct {v8}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 299
    new-instance v8, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$2$1;

    invoke-direct {v8, p0}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$2$1;-><init>(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$2;)V

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 306
    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    .line 307
    .local v6, webSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v6, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 308
    invoke-virtual {v6, v10}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 309
    invoke-virtual {v6, v10}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 310
    invoke-virtual {v6, v10}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 312
    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v8}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->access$7(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jingdong/common/entity/Product;->isBook()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_0

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v9, 0x7

    if-lt v8, v9, :cond_0

    .line 313
    invoke-virtual {v6, v10}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 316
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$2;->val$url:Ljava/lang/String;

    .line 317
    .local v3, mergerUrl:Ljava/lang/String;
    const-string v8, "mHost"

    invoke-static {v8}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, mHost:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 319
    const/16 v2, 0x50

    .line 320
    .local v2, mPort:I
    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, split:[Ljava/lang/String;
    array-length v8, v4

    if-le v8, v10, :cond_1

    .line 322
    const/4 v8, 0x0

    aget-object v1, v4, v8

    .line 324
    const/4 v8, 0x1

    :try_start_0
    aget-object v8, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 329
    :cond_1
    :goto_0
    :try_start_1
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 330
    .local v5, uri:Ljava/net/URI;
    new-instance v8, Lorg/apache/http/HttpHost;

    invoke-direct {v8, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {v5, v8}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;)Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 339
    .end local v2           #mPort:I
    .end local v4           #split:[Ljava/lang/String;
    .end local v5           #uri:Ljava/net/URI;
    :cond_2
    :goto_1
    invoke-virtual {v7, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 341
    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$2;->val$tabContentLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->access$1()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    return-void

    .line 331
    .restart local v2       #mPort:I
    .restart local v4       #split:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 332
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1

    .line 325
    .end local v0           #e:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v8

    goto :goto_0
.end method
