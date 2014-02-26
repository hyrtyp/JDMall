.class Lcom/jingdong/app/mall/product/ProductListActivity$7;
.super Ljava/lang/Object;
.source "ProductListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductListActivity;->initComponent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$7;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductListActivity$7;)Lcom/jingdong/app/mall/product/ProductListActivity;
    .locals 1
    .parameter

    .prologue
    .line 395
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$7;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 505
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 400
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 405
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v2, v5, :cond_3

    .line 406
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$7;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->searchWithVoice:Landroid/view/View;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$22(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v3, v2, :cond_1

    .line 407
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$7;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->searchWithVoice:Landroid/view/View;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$22(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 409
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$7;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->cleanSearchTextView:Landroid/view/View;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$23(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 410
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$7;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->cleanSearchTextView:Landroid/view/View;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$23(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 501
    :cond_2
    :goto_0
    return-void

    .line 415
    :cond_3
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$7;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->cleanSearchTextView:Landroid/view/View;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$23(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v3, v2, :cond_4

    .line 416
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$7;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->cleanSearchTextView:Landroid/view/View;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$23(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 418
    :cond_4
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$7;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->searchWithVoice:Landroid/view/View;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$22(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 419
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$7;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->searchWithVoice:Landroid/view/View;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$22(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 422
    :cond_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 425
    .local v1, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "keyword"

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :goto_1
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 433
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v2, "tip"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v0, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 435
    invoke-virtual {v0, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCache(Z)V

    .line 436
    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCacheTime(J)V

    .line 437
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 438
    new-instance v2, Lcom/jingdong/app/mall/product/ProductListActivity$7$1;

    invoke-direct {v2, p0, p1}, Lcom/jingdong/app/mall/product/ProductListActivity$7$1;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity$7;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 500
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$7;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0

    .line 426
    .end local v0           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :catch_0
    move-exception v2

    goto :goto_1
.end method
