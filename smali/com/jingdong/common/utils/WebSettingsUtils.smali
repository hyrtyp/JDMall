.class public Lcom/jingdong/common/utils/WebSettingsUtils;
.super Ljava/lang/Object;
.source "WebSettingsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setGeolocationEnabled(Landroid/webkit/WebSettings;)V
    .locals 1
    .parameter "settings"

    .prologue
    .line 8
    if-eqz p1, :cond_0

    .line 9
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 11
    :cond_0
    return-void
.end method
