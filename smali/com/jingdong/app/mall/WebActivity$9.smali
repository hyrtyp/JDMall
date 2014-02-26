.class Lcom/jingdong/app/mall/WebActivity$9;
.super Lcom/jingdong/common/utils/GeoWebChromeClient;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/WebActivity$9;->this$0:Lcom/jingdong/app/mall/WebActivity;

    .line 507
    invoke-direct {p0}, Lcom/jingdong/common/utils/GeoWebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 523
    invoke-super {p0, p1, p2}, Lcom/jingdong/common/utils/GeoWebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 524
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$9;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-virtual {v0, p2}, Lcom/jingdong/app/mall/WebActivity;->setImageProgress(I)V

    .line 525
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "title"

    .prologue
    .line 513
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$9;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #getter for: Lcom/jingdong/app/mall/WebActivity;->titleView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/WebActivity;->access$14(Lcom/jingdong/app/mall/WebActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/jingdong/common/utils/GeoWebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 519
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$9;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #getter for: Lcom/jingdong/app/mall/WebActivity;->titleView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/WebActivity;->access$14(Lcom/jingdong/app/mall/WebActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
