.class Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$16;
.super Landroid/webkit/WebViewClient;
.source "SelectPaymentTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->createPickAlertDiglog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

.field private final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Landroid/webkit/WebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$16;->val$webView:Landroid/webkit/WebView;

    .line 789
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .parameter "view"
    .parameter "url"

    .prologue
    .line 804
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 807
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "javascript:setCity("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/jingdong/common/lbs/LocManager;->provinceId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iget-object v4, v4, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v5, "IdProvince"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 808
    .local v1, loadCity:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "javascript:setPickSites("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrSelfId:I
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$5(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)I

    move-result v5

    #calls: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getCurrPickPostionId(I)I
    invoke-static {v4, v5}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$29(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 809
    .local v2, loadPickSites:Ljava/lang/String;
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$16;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 810
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$16;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    .end local v1           #loadCity:Ljava/lang/String;
    .end local v2           #loadPickSites:Ljava/lang/String;
    :goto_0
    return-void

    .line 811
    :catch_0
    move-exception v0

    .line 812
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 793
    :try_start_0
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 800
    return-void

    .line 794
    :catch_0
    move-exception v0

    goto :goto_0
.end method
