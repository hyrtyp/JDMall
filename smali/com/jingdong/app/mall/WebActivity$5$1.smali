.class Lcom/jingdong/app/mall/WebActivity$5$1;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/WebActivity$5;->onComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/WebActivity$5;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/WebActivity$5;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/WebActivity$5$1;->this$1:Lcom/jingdong/app/mall/WebActivity$5;

    iput-object p2, p0, Lcom/jingdong/app/mall/WebActivity$5$1;->val$url:Ljava/lang/String;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$5$1;->this$1:Lcom/jingdong/app/mall/WebActivity$5;

    #getter for: Lcom/jingdong/app/mall/WebActivity$5;->this$0:Lcom/jingdong/app/mall/WebActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/WebActivity$5;->access$0(Lcom/jingdong/app/mall/WebActivity$5;)Lcom/jingdong/app/mall/WebActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/jingdong/app/mall/WebActivity;->access$0(Lcom/jingdong/app/mall/WebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity$5$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$5$1;->this$1:Lcom/jingdong/app/mall/WebActivity$5;

    #getter for: Lcom/jingdong/app/mall/WebActivity$5;->this$0:Lcom/jingdong/app/mall/WebActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/WebActivity$5;->access$0(Lcom/jingdong/app/mall/WebActivity$5;)Lcom/jingdong/app/mall/WebActivity;

    move-result-object v0

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/app/mall/WebActivity;->loginFlag:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/WebActivity;->access$1(Lcom/jingdong/app/mall/WebActivity;Z)V

    .line 238
    return-void
.end method
