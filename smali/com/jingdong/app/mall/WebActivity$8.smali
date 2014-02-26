.class Lcom/jingdong/app/mall/WebActivity$8;
.super Landroid/webkit/WebViewClient;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/WebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/WebActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/WebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    .line 325
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private checkUrl(Ljava/lang/String;)Z
    .locals 8
    .parameter "url"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 331
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 337
    .local v2, uri:Landroid/net/Uri;
    const-string v6, "/user/login.action"

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 338
    iget-object v6, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #getter for: Lcom/jingdong/app/mall/WebActivity;->loginFlag:Z
    invoke-static {v6}, Lcom/jingdong/app/mall/WebActivity;->access$8(Lcom/jingdong/app/mall/WebActivity;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 374
    :goto_0
    return v4

    .line 341
    :cond_0
    iget-object v6, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #setter for: Lcom/jingdong/app/mall/WebActivity;->loginFlag:Z
    invoke-static {v6, v4}, Lcom/jingdong/app/mall/WebActivity;->access$1(Lcom/jingdong/app/mall/WebActivity;Z)V

    .line 342
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 343
    iget-object v6, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #getter for: Lcom/jingdong/app/mall/WebActivity;->loginStateSynchro:Z
    invoke-static {v6}, Lcom/jingdong/app/mall/WebActivity;->access$9(Lcom/jingdong/app/mall/WebActivity;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 345
    new-instance v0, Lcom/jingdong/app/mall/utils/ui/DialogController;

    invoke-direct {v0}, Lcom/jingdong/app/mall/utils/ui/DialogController;-><init>()V

    .line 346
    .local v0, dialogController:Lcom/jingdong/app/mall/utils/ui/DialogController;
    iget-object v6, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    const v7, 0x7f0701a9

    invoke-virtual {v6, v7}, Lcom/jingdong/app/mall/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setTitle(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v6, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    const v7, 0x7f070418

    invoke-virtual {v6, v7}, Lcom/jingdong/app/mall/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setMessage(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v6, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    const v7, 0x7f07014d

    invoke-virtual {v6, v7}, Lcom/jingdong/app/mall/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setNeutralButton(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v6, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-virtual {v0, v6}, Lcom/jingdong/app/mall/utils/ui/DialogController;->init(Landroid/content/Context;)V

    .line 350
    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/ui/DialogController;->show()V

    .line 351
    iget-object v6, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #setter for: Lcom/jingdong/app/mall/WebActivity;->loginStateSynchro:Z
    invoke-static {v6, v5}, Lcom/jingdong/app/mall/WebActivity;->access$10(Lcom/jingdong/app/mall/WebActivity;Z)V

    goto :goto_0

    .line 354
    .end local v0           #dialogController:Lcom/jingdong/app/mall/utils/ui/DialogController;
    :cond_1
    iget-object v5, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #setter for: Lcom/jingdong/app/mall/WebActivity;->loginStateSynchro:Z
    invoke-static {v5, v4}, Lcom/jingdong/app/mall/WebActivity;->access$10(Lcom/jingdong/app/mall/WebActivity;Z)V

    .line 355
    iget-object v5, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #calls: Lcom/jingdong/app/mall/WebActivity;->loginStateSynchro(Landroid/net/Uri;)V
    invoke-static {v5, v2}, Lcom/jingdong/app/mall/WebActivity;->access$3(Lcom/jingdong/app/mall/WebActivity;Landroid/net/Uri;)V

    goto :goto_0

    .line 358
    :cond_2
    iget-object v5, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #calls: Lcom/jingdong/app/mall/WebActivity;->loginCallback(Landroid/net/Uri;)V
    invoke-static {v5, v2}, Lcom/jingdong/app/mall/WebActivity;->access$11(Lcom/jingdong/app/mall/WebActivity;Landroid/net/Uri;)V

    .line 359
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    const-class v6, Lcom/jingdong/app/mall/login/LoginActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 360
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "com.360buy:singleInstanceFlag"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 361
    const-string v5, "com.360buy:navigationDisplayFlag"

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    iget-object v5, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-virtual {v5, v1}, Lcom/jingdong/app/mall/WebActivity;->startActivityInFrame(Landroid/content/Intent;)V

    goto :goto_0

    .line 365
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    new-instance v3, Landroid/net/UrlQuerySanitizer;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/net/UrlQuerySanitizer;-><init>(Ljava/lang/String;)V

    .line 366
    .local v3, urlQuery:Landroid/net/UrlQuerySanitizer;
    const-string v6, "_blank"

    const-string v7, "target"

    invoke-virtual {v3, v7}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 367
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/CommonUtil;->toBrowser(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 369
    :cond_4
    const-string v6, ".apk"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 370
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/CommonUtil;->toBrowser(Landroid/net/Uri;)V

    goto/16 :goto_0

    :cond_5
    move v4, v5

    .line 374
    goto/16 :goto_0
.end method

.method private checkUrl2(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 379
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, scheme:Ljava/lang/String;
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 387
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 388
    .local v0, i:Landroid/content/Intent;
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    iget-object v2, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-virtual {v2, v0}, Lcom/jingdong/app/mall/WebActivity;->startActivityNoException(Landroid/content/Intent;)V

    .line 390
    const/4 v2, 0x1

    .line 392
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private lotteryCheck(Ljava/lang/String;)Z
    .locals 4
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 421
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/jingdong/common/entity/HomeLayout;->hasNativeLottery:Z

    if-nez v3, :cond_1

    .line 443
    :cond_0
    :goto_0
    return v2

    .line 426
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/jd/lottery/lib/utils/Util;->shouldRedirect(Ljava/lang/String;)Z

    move-result v0

    .line 428
    .local v0, flag:Z
    if-eqz v0, :cond_0

    .line 429
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.LOTTERY_MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 431
    const-string v3, "FROM"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    iget-object v3, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/WebActivity;->finish()V

    .line 433
    iget-object v3, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-virtual {v3, v1}, Lcom/jingdong/app/mall/WebActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    const/4 v2, 0x1

    goto :goto_0

    .line 437
    .end local v0           #flag:Z
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/WebActivity;->hideImageProgress()V

    .line 477
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #getter for: Lcom/jingdong/app/mall/WebActivity;->loginStateSynchro:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/WebActivity;->access$9(Lcom/jingdong/app/mall/WebActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/user/login.action"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/app/mall/WebActivity;->loginStateSynchro:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/WebActivity;->access$10(Lcom/jingdong/app/mall/WebActivity;Z)V

    .line 480
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #calls: Lcom/jingdong/app/mall/WebActivity;->initMenuView()V
    invoke-static {v0}, Lcom/jingdong/app/mall/WebActivity;->access$13(Lcom/jingdong/app/mall/WebActivity;)V

    .line 482
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 451
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/WebActivity$8;->checkUrl2(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #getter for: Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/jingdong/app/mall/WebActivity;->access$0(Lcom/jingdong/app/mall/WebActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 467
    :goto_0
    return-void

    .line 455
    :cond_0
    invoke-direct {p0, p2}, Lcom/jingdong/app/mall/WebActivity$8;->checkUrl(Ljava/lang/String;)Z

    move-result v0

    .line 457
    .local v0, result:Z
    if-eqz v0, :cond_1

    .line 458
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #getter for: Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/jingdong/app/mall/WebActivity;->access$0(Lcom/jingdong/app/mall/WebActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/WebActivity;->showImagePregress()V

    .line 462
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #getter for: Lcom/jingdong/app/mall/WebActivity;->oldUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/WebActivity;->access$12(Lcom/jingdong/app/mall/WebActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:window.jd_android_obj.save(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #getter for: Lcom/jingdong/app/mall/WebActivity;->oldUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/app/mall/WebActivity;->access$12(Lcom/jingdong/app/mall/WebActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'<head>\' + document.getElementsByTagName(\'html\')[0].innerHTML+\'</head>\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 465
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #setter for: Lcom/jingdong/app/mall/WebActivity;->oldUrl:Ljava/lang/String;
    invoke-static {v1, p2}, Lcom/jingdong/app/mall/WebActivity;->access$6(Lcom/jingdong/app/mall/WebActivity;Ljava/lang/String;)V

    .line 466
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 489
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    .line 490
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 497
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 498
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v0, 0x1

    .line 400
    invoke-static {}, Lcom/jingdong/common/utils/NewJLogUtil;->isUseNewJLog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/WebActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "WebActivity"

    iget-object v3, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #calls: Lcom/jingdong/app/mall/WebActivity;->getUrlMap(Ljava/lang/String;)Ljava/util/Map;
    invoke-static {v3, p2}, Lcom/jingdong/app/mall/WebActivity;->access$7(Lcom/jingdong/app/mall/WebActivity;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/jingdong/common/utils/NewJLogUtil;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 406
    :goto_0
    invoke-direct {p0, p2}, Lcom/jingdong/app/mall/WebActivity$8;->lotteryCheck(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 415
    :cond_0
    :goto_1
    return v0

    .line 403
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/WebActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/WebActivity;->getParamsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/jingdong/common/utils/JLogUtil;->onJaVisit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :cond_2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/WebActivity$8;->checkUrl2(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p2}, Lcom/jingdong/app/mall/WebActivity$8;->checkUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 414
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$8;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/WebActivity;->showImagePregress()V

    .line 415
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1
.end method
