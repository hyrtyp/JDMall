.class final Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "MobclickAgentJSInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ja/analytics/MobclickAgentJSInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MobclickAgentWebChromeClient"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final objMobclickAgentJSInterface:Lcom/ja/analytics/MobclickAgentJSInterface;

.field objWebChromeClient:Landroid/webkit/WebChromeClient;

.field final synthetic this$0:Lcom/ja/analytics/MobclickAgentJSInterface;

.field private final type_EKV:Ljava/lang/String;

.field private final type_EVENT:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ja/analytics/MobclickAgentJSInterface;Landroid/webkit/WebChromeClient;)V
    .locals 1
    .parameter
    .parameter "webchromeclient"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;->this$0:Lcom/ja/analytics/MobclickAgentJSInterface;

    .line 122
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 25
    const-class v0, Lcom/ja/analytics/MobclickAgentJSInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;->TAG:Ljava/lang/String;

    .line 27
    const-string v0, "evm"

    iput-object v0, p0, Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;->type_EKV:Ljava/lang/String;

    .line 28
    const-string v0, "event"

    iput-object v0, p0, Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;->type_EVENT:Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;->objMobclickAgentJSInterface:Lcom/ja/analytics/MobclickAgentJSInterface;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;->objWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 126
    if-nez p2, :cond_0

    .line 127
    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object v0, p0, Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;->objWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    iput-object p2, p0, Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;->objWebChromeClient:Landroid/webkit/WebChromeClient;

    goto :goto_0
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1
    .parameter "webview"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;->objWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 78
    return-void
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1
    .parameter "webview"
    .parameter "flag"
    .parameter "flag1"
    .parameter "message"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;->objWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .parameter "webview"
    .parameter "s"
    .parameter "s1"
    .parameter "jsresult"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;->objWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .parameter "webview"
    .parameter "s"
    .parameter "s1"
    .parameter "jsresult"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;->objWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .parameter "webview"
    .parameter "s"
    .parameter "s1"
    .parameter "jsresult"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;->objWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 19
    .parameter "webview"
    .parameter "s"
    .parameter "s1"
    .parameter "s2"
    .parameter "jspromptresult"

    .prologue
    .line 37
    const/16 v16, 0x0

    .line 38
    .local v16, obj:Ljava/lang/Object;
    const-string v1, "evm"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    move-object/from16 v0, p4

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    .local v14, jsonobject:Lorg/json/JSONObject;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v4, hashmap:Ljava/util/HashMap;
    const-string v1, "id"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 44
    .local v3, s3:Ljava/lang/String;
    const-string v1, "duration"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v11, 0x0

    .line 45
    .local v11, i:I
    :goto_0
    invoke-virtual {v14}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v12

    .line 46
    .local v12, iterator:Ljava/util/Iterator;
    const/16 v17, 0x0

    .line 48
    .local v17, obj1:Ljava/lang/Object;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;->objMobclickAgentJSInterface:Lcom/ja/analytics/MobclickAgentJSInterface;

    invoke-static {v2}, Lcom/ja/analytics/MobclickAgentJSInterface;->getContext(Lcom/ja/analytics/MobclickAgentJSInterface;)Landroid/content/Context;

    move-result-object v2

    int-to-long v5, v11

    invoke-virtual/range {v1 .. v6}, Lcom/ja/analytics/logevent/EventLog;->compositeEVMEventLog(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v3           #s3:Ljava/lang/String;
    .end local v4           #hashmap:Ljava/util/HashMap;
    .end local v11           #i:I
    .end local v12           #iterator:Ljava/util/Iterator;
    .end local v14           #jsonobject:Lorg/json/JSONObject;
    .end local v17           #obj1:Ljava/lang/Object;
    :goto_2
    invoke-virtual/range {p5 .. p5}, Landroid/webkit/JsPromptResult;->confirm()V

    .line 72
    const/4 v1, 0x1

    :goto_3
    return v1

    .line 44
    .restart local v3       #s3:Ljava/lang/String;
    .restart local v4       #hashmap:Ljava/util/HashMap;
    .restart local v14       #jsonobject:Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    const-string v1, "duration"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_0

    .line 48
    .restart local v11       #i:I
    .restart local v12       #iterator:Ljava/util/Iterator;
    .restart local v17       #obj1:Ljava/lang/Object;
    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .local v18, s4:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 51
    .end local v3           #s3:Ljava/lang/String;
    .end local v4           #hashmap:Ljava/util/HashMap;
    .end local v11           #i:I
    .end local v12           #iterator:Ljava/util/Iterator;
    .end local v14           #jsonobject:Lorg/json/JSONObject;
    .end local v17           #obj1:Ljava/lang/Object;
    .end local v18           #s4:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_2

    .line 56
    :cond_2
    const-string v1, "event"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 59
    :try_start_2
    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v0, p4

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    .local v15, jsonobject1:Lorg/json/JSONObject;
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 61
    .local v13, jo:Lorg/json/JSONObject;
    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;->objMobclickAgentJSInterface:Lcom/ja/analytics/MobclickAgentJSInterface;

    invoke-static {v1}, Lcom/ja/analytics/MobclickAgentJSInterface;->getContext(Lcom/ja/analytics/MobclickAgentJSInterface;)Landroid/content/Context;

    move-result-object v6

    const-string v1, "tag"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "label"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "duration"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v9, v1

    invoke-virtual/range {v5 .. v10}, Lcom/ja/analytics/logevent/EventLog;->onEventLogDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v13

    .line 62
    if-nez v13, :cond_3

    invoke-virtual {v13}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 63
    :cond_3
    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;->this$0:Lcom/ja/analytics/MobclickAgentJSInterface;

    #getter for: Lcom/ja/analytics/MobclickAgentJSInterface;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/ja/analytics/MobclickAgentJSInterface;->access$0(Lcom/ja/analytics/MobclickAgentJSInterface;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v13}, Lcom/ja/analytics/logevent/EventLog;->writeEventLogToDatabase(Landroid/content/Context;Lorg/json/JSONObject;)J

    goto :goto_2

    .line 68
    .end local v13           #jo:Lorg/json/JSONObject;
    .end local v15           #jsonobject1:Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    goto :goto_2

    .line 65
    .restart local v13       #jo:Lorg/json/JSONObject;
    .restart local v15       #jsonobject1:Lorg/json/JSONObject;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;->TAG:Ljava/lang/String;

    const-string v2, "onEventLogDuration(), There is no data!!"

    invoke-static {v1, v2}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 70
    .end local v13           #jo:Lorg/json/JSONObject;
    .end local v15           #jsonobject1:Lorg/json/JSONObject;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;->objWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v1

    goto/16 :goto_3
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .parameter "webview"
    .parameter "i"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;->objWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 103
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "webview"
    .parameter "bitmap"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;->objWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 108
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "webview"
    .parameter "s"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;->objWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 1
    .parameter "webview"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ja/analytics/MobclickAgentJSInterface$MobclickAgentWebChromeClient;->objWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    .line 118
    return-void
.end method
