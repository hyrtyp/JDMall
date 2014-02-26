.class public Lcom/jingdong/common/ui/WebUtils;
.super Ljava/lang/Object;
.source "WebUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setNoCache(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 9
    if-nez p0, :cond_0

    .line 14
    :goto_0
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    goto :goto_0
.end method
