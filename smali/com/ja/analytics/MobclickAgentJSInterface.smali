.class public Lcom/ja/analytics/MobclickAgentJSInterface;
.super Ljava/lang/Object;
.source "MobclickAgentJSInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 2
    .parameter "context"
    .parameter "webview"

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/ja/analytics/MobclickAgentJSInterface;->context:Landroid/content/Context;

    .line 139
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 140
    new-instance v0, Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;-><init>(Lcom/ja/analytics/MobclickAgentJSInterface;Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebChromeClient;)V
    .locals 2
    .parameter "context"
    .parameter "webview"
    .parameter "webchromeclient"

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/ja/analytics/MobclickAgentJSInterface;->context:Landroid/content/Context;

    .line 146
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 147
    new-instance v0, Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;

    invoke-direct {v0, p0, p3}, Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;-><init>(Lcom/ja/analytics/MobclickAgentJSInterface;Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 148
    return-void
.end method

.method static synthetic access$0(Lcom/ja/analytics/MobclickAgentJSInterface;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/ja/analytics/MobclickAgentJSInterface;->context:Landroid/content/Context;

    return-object v0
.end method

.method static getContext(Lcom/ja/analytics/MobclickAgentJSInterface;)Landroid/content/Context;
    .locals 1
    .parameter "mobclickagentjsinterface"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/ja/analytics/MobclickAgentJSInterface;->context:Landroid/content/Context;

    return-object v0
.end method
