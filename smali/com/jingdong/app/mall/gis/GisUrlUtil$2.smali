.class Lcom/jingdong/app/mall/gis/GisUrlUtil$2;
.super Landroid/webkit/WebViewClient;
.source "GisUrlUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/gis/GisUrlUtil;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/gis/GisUrlUtil;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/gis/GisUrlUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil$2;->this$0:Lcom/jingdong/app/mall/gis/GisUrlUtil;

    .line 131
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0
    .parameter "view"
    .parameter "url"
    .parameter "isReload"

    .prologue
    .line 140
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 141
    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .parameter "view"
    .parameter "dontResend"
    .parameter "resend"

    .prologue
    .line 150
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 151
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "url"

    .prologue
    .line 159
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil$2;->this$0:Lcom/jingdong/app/mall/gis/GisUrlUtil;

    #getter for: Lcom/jingdong/app/mall/gis/GisUrlUtil;->defaultEffectHandle:Lcom/jingdong/common/utils/DefaultEffectHandle;
    invoke-static {v0}, Lcom/jingdong/app/mall/gis/GisUrlUtil;->access$7(Lcom/jingdong/app/mall/gis/GisUrlUtil;)Lcom/jingdong/common/utils/DefaultEffectHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/DefaultEffectHandle;->removeModal()V

    .line 169
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil$2;->this$0:Lcom/jingdong/app/mall/gis/GisUrlUtil;

    #getter for: Lcom/jingdong/app/mall/gis/GisUrlUtil;->mMapLoadProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/jingdong/app/mall/gis/GisUrlUtil;->access$8(Lcom/jingdong/app/mall/gis/GisUrlUtil;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 170
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 180
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 181
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 193
    :try_start_0
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void

    .line 194
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "handler"
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 211
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 0
    .parameter "view"
    .parameter "oldScale"
    .parameter "newScale"

    .prologue
    .line 221
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    .line 222
    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .parameter "view"
    .parameter "cancelMsg"
    .parameter "continueMsg"

    .prologue
    .line 231
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 232
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 0
    .parameter "view"
    .parameter "event"

    .prologue
    .line 240
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    .line 241
    return-void
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 249
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 258
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
