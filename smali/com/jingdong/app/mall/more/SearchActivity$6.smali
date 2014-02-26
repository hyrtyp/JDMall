.class Lcom/jingdong/app/mall/more/SearchActivity$6;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/more/SearchActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SearchActivity$6;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/more/SearchActivity$6;)Lcom/jingdong/app/mall/more/SearchActivity;
    .locals 1
    .parameter

    .prologue
    .line 230
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity$6;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 369
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 235
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    iget-object v2, p0, Lcom/jingdong/app/mall/more/SearchActivity$6;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity;->voiceButton:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/jingdong/app/mall/more/SearchActivity;->access$8(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 241
    iget-object v2, p0, Lcom/jingdong/app/mall/more/SearchActivity$6;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity;->searchCleanButton:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/jingdong/app/mall/more/SearchActivity;->access$9(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 243
    iget-object v2, p0, Lcom/jingdong/app/mall/more/SearchActivity$6;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/more/SearchActivity;->showHistory()V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/more/SearchActivity$6;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity;->searchCleanButton:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/jingdong/app/mall/more/SearchActivity;->access$9(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 247
    iget-object v2, p0, Lcom/jingdong/app/mall/more/SearchActivity$6;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity;->voiceButton:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/jingdong/app/mall/more/SearchActivity;->access$8(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 248
    iget-object v2, p0, Lcom/jingdong/app/mall/more/SearchActivity$6;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity;->searchCleanButton:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/jingdong/app/mall/more/SearchActivity;->access$9(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    new-instance v3, Lcom/jingdong/app/mall/more/SearchActivity$6$1;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/more/SearchActivity$6$1;-><init>(Lcom/jingdong/app/mall/more/SearchActivity$6;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v2, p0, Lcom/jingdong/app/mall/more/SearchActivity$6;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    iget-boolean v2, v2, Lcom/jingdong/app/mall/more/SearchActivity;->isUseHistoryWord:Z

    if-nez v2, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 259
    :cond_2
    iget-object v2, p0, Lcom/jingdong/app/mall/more/SearchActivity$6;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity;->listView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/jingdong/app/mall/more/SearchActivity;->access$10(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/jingdong/app/mall/more/SearchActivity$6$2;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/more/SearchActivity$6$2;-><init>(Lcom/jingdong/app/mall/more/SearchActivity$6;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 268
    :cond_3
    iget-object v2, p0, Lcom/jingdong/app/mall/more/SearchActivity$6;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    iget-boolean v2, v2, Lcom/jingdong/app/mall/more/SearchActivity;->isUseHistoryWord:Z

    if-nez v2, :cond_0

    .line 274
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 277
    .local v1, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "keyword"

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_1
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 285
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v2, "tip"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 287
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCache(Z)V

    .line 288
    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCacheTime(J)V

    .line 289
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 290
    new-instance v2, Lcom/jingdong/app/mall/more/SearchActivity$6$3;

    invoke-direct {v2, p0, p1}, Lcom/jingdong/app/mall/more/SearchActivity$6$3;-><init>(Lcom/jingdong/app/mall/more/SearchActivity$6;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 364
    iget-object v2, p0, Lcom/jingdong/app/mall/more/SearchActivity$6;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/more/SearchActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto/16 :goto_0

    .line 278
    .end local v0           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :catch_0
    move-exception v2

    goto :goto_1
.end method
