.class Lcom/jingdong/app/mall/WebActivity$7;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/jingdong/app/mall/WebActivity$7;->this$0:Lcom/jingdong/app/mall/WebActivity;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 315
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$7;->this$0:Lcom/jingdong/app/mall/WebActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity$7;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #getter for: Lcom/jingdong/app/mall/WebActivity;->url:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/WebActivity;->access$5(Lcom/jingdong/app/mall/WebActivity;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jingdong/app/mall/WebActivity;->oldUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/WebActivity;->access$6(Lcom/jingdong/app/mall/WebActivity;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$7;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #getter for: Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/jingdong/app/mall/WebActivity;->access$0(Lcom/jingdong/app/mall/WebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity$7;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #getter for: Lcom/jingdong/app/mall/WebActivity;->url:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/WebActivity;->access$5(Lcom/jingdong/app/mall/WebActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/jingdong/common/utils/NewJLogUtil;->isUseNewJLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$7;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/WebActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "WebActivity"

    iget-object v2, p0, Lcom/jingdong/app/mall/WebActivity$7;->this$0:Lcom/jingdong/app/mall/WebActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/WebActivity$7;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #getter for: Lcom/jingdong/app/mall/WebActivity;->url:Ljava/lang/String;
    invoke-static {v3}, Lcom/jingdong/app/mall/WebActivity;->access$5(Lcom/jingdong/app/mall/WebActivity;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/jingdong/app/mall/WebActivity;->getUrlMap(Ljava/lang/String;)Ljava/util/Map;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/WebActivity;->access$7(Lcom/jingdong/app/mall/WebActivity;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jingdong/common/utils/NewJLogUtil;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$7;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/WebActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity$7;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #getter for: Lcom/jingdong/app/mall/WebActivity;->url:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/WebActivity;->access$5(Lcom/jingdong/app/mall/WebActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/WebActivity$7;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/WebActivity;->getParamsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jingdong/common/utils/JLogUtil;->onJaVisit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
