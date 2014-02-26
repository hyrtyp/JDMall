.class public Lcom/jingdong/common/utils/BitmapkitUtils;
.super Ljava/lang/Object;
.source "BitmapkitUtils.java"


# static fields
.field private static final RETRY_TIMES:I = 0x3


# instance fields
.field public isLoadLibFailed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/common/utils/BitmapkitUtils;->isLoadLibFailed:Z

    .line 16
    return-void
.end method

.method public static native encodeJni([BZLandroid/app/Activity;)[B
.end method


# virtual methods
.method public actionClose()V
    .locals 0

    .prologue
    .line 102
    invoke-static {}, Lcom/jingdong/common/MyApplication;->exitAll()V

    .line 103
    return-void
.end method

.method public actionFeedbackWebsite(Lcom/jingdong/common/frame/IMainActivity;)V
    .locals 5
    .parameter "aMainFrameActivity"

    .prologue
    .line 91
    const-string v1, "http://m.jd.com/showvote.html"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 93
    .local v0, uri:Landroid/net/Uri;
    invoke-interface {p1}, Lcom/jingdong/common/frame/IMainActivity;->getCurrentMyActivity()Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v1

    invoke-interface {p1}, Lcom/jingdong/common/frame/IMainActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/jingdong/common/frame/IMyActivity;->startActivityForResultNoExceptionStatic(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 95
    invoke-static {}, Lcom/jingdong/common/MyApplication;->exitAll()V

    .line 96
    return-void
.end method

.method public alertLoadlibFailedDialog(Landroid/os/Handler;)V
    .locals 4
    .parameter "handler"

    .prologue
    .line 46
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v0

    .line 47
    .local v0, application:Lcom/jingdong/common/MyApplication;
    invoke-virtual {v0}, Lcom/jingdong/common/MyApplication;->getMainFrameActivity()Lcom/jingdong/common/frame/IMainActivity;

    move-result-object v2

    .line 49
    .local v2, mainFrameActivity:Lcom/jingdong/common/frame/IMainActivity;
    new-instance v1, Lcom/jingdong/common/utils/BitmapkitUtils$1;

    invoke-direct {v1, p0, v2}, Lcom/jingdong/common/utils/BitmapkitUtils$1;-><init>(Lcom/jingdong/common/utils/BitmapkitUtils;Lcom/jingdong/common/frame/IMainActivity;)V

    .line 68
    .local v1, httpDialogController:Lcom/jingdong/common/ui/DialogController;
    sget-object v3, Lcom/jingdong/common/res/StringUtil;->prompt:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/jingdong/common/ui/DialogController;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    sget-object v3, Lcom/jingdong/common/res/StringUtil;->comment_feedback:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/jingdong/common/ui/DialogController;->setMessage(Ljava/lang/CharSequence;)V

    .line 71
    sget-object v3, Lcom/jingdong/common/res/StringUtil;->label_feedback:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/jingdong/common/ui/DialogController;->setPositiveButton(Ljava/lang/CharSequence;)V

    .line 72
    sget-object v3, Lcom/jingdong/common/res/StringUtil;->app_error_close:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/jingdong/common/ui/DialogController;->setNegativeButton(Ljava/lang/CharSequence;)V

    .line 73
    invoke-interface {v2}, Lcom/jingdong/common/frame/IMainActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jingdong/common/ui/DialogController;->init(Landroid/content/Context;)V

    .line 74
    new-instance v3, Lcom/jingdong/common/utils/BitmapkitUtils$2;

    invoke-direct {v3, p0, v1}, Lcom/jingdong/common/utils/BitmapkitUtils$2;-><init>(Lcom/jingdong/common/utils/BitmapkitUtils;Lcom/jingdong/common/ui/DialogController;)V

    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    return-void
.end method

.method public isLoadLibFailed()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/jingdong/common/utils/BitmapkitUtils;->isLoadLibFailed:Z

    return v0
.end method

.method public loadNativeLibrary()V
    .locals 3

    .prologue
    .line 24
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_0
    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 40
    :goto_1
    return-void

    .line 26
    :cond_0
    :try_start_0
    const-string v2, "jdbitmapkit"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 27
    :catch_0
    move-exception v0

    .line 31
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jingdong/common/utils/BitmapkitUtils;->isLoadLibFailed:Z

    goto :goto_1
.end method
