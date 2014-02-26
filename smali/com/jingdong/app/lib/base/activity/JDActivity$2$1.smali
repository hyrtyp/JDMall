.class Lcom/jingdong/app/lib/base/activity/JDActivity$2$1;
.super Ljava/lang/Object;
.source "JDActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/lib/base/activity/JDActivity$2;->onLoadSpecialUrl(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/lib/base/activity/JDActivity$2;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/lib/base/activity/JDActivity$2;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/lib/base/activity/JDActivity$2$1;->this$1:Lcom/jingdong/app/lib/base/activity/JDActivity$2;

    iput-object p2, p0, Lcom/jingdong/app/lib/base/activity/JDActivity$2$1;->val$url:Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 70
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    iget-object v9, p0, Lcom/jingdong/app/lib/base/activity/JDActivity$2$1;->val$url:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const-string v10, "params"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    .local v4, jo:Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 72
    .local v0, body:Lorg/json/JSONObject;
    const-string v9, "tokenKey"

    const-string v10, "tokenKey"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    invoke-static {}, Lcom/jingdong/app/lib/pay/web/PayWebView;->getHostCookie()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, cookie:Ljava/lang/String;
    invoke-static {}, Lcom/jingdong/app/lib/pay/web/PayWebView;->getHostDeviceInfo()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, device:Ljava/lang/String;
    const-string v9, "getToken"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    .line 75
    invoke-static {v2, v9, v10}, Lcom/jingdong/app/lib/pay/web/TokenRequest;->getUriFromJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 78
    .local v8, u:Landroid/net/Uri;
    new-instance v6, Lcom/jd/droidlib/net/http/RESTClient2;

    iget-object v9, p0, Lcom/jingdong/app/lib/base/activity/JDActivity$2$1;->this$1:Lcom/jingdong/app/lib/base/activity/JDActivity$2;

    #getter for: Lcom/jingdong/app/lib/base/activity/JDActivity$2;->this$0:Lcom/jingdong/app/lib/base/activity/JDActivity;
    invoke-static {v9}, Lcom/jingdong/app/lib/base/activity/JDActivity$2;->access$0(Lcom/jingdong/app/lib/base/activity/JDActivity$2;)Lcom/jingdong/app/lib/base/activity/JDActivity;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/jd/droidlib/net/http/RESTClient2;-><init>(Landroid/content/Context;)V

    .line 79
    .local v6, restClient:Lcom/jd/droidlib/net/http/RESTClient2;
    invoke-virtual {v6, v1}, Lcom/jd/droidlib/net/http/RESTClient2;->setCookie(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    const/4 v5, 0x0

    .line 82
    .local v5, response:Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/jd/droidlib/net/http/RESTClient2;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lcom/jd/droidlib/net/http/HTTPException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 87
    :goto_0
    :try_start_2
    const-string v9, "tokenValue"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 88
    .local v7, tokenValue:Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    .end local v0           #body:Lorg/json/JSONObject;
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 89
    .restart local v0       #body:Lorg/json/JSONObject;
    const-string v9, "action"

    const-string v10, "action"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v9, "pin"

    const-string v10, "pin"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v9, "orderId"

    const-string v10, "orderId"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v9, "plat"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 93
    const-string v9, "plat"

    const-string v10, "mobile"

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    :goto_1
    const-string v9, "jdMPay"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    .line 98
    invoke-static {v2, v9, v10}, Lcom/jingdong/app/lib/pay/web/TokenRequest;->getUriFromJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v8

    .line 101
    :try_start_3
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/jd/droidlib/net/http/RESTClient2;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lcom/jd/droidlib/net/http/HTTPException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    .line 106
    :goto_2
    :try_start_4
    iget-object v9, p0, Lcom/jingdong/app/lib/base/activity/JDActivity$2$1;->this$1:Lcom/jingdong/app/lib/base/activity/JDActivity$2;

    #getter for: Lcom/jingdong/app/lib/base/activity/JDActivity$2;->this$0:Lcom/jingdong/app/lib/base/activity/JDActivity;
    invoke-static {v9}, Lcom/jingdong/app/lib/base/activity/JDActivity$2;->access$0(Lcom/jingdong/app/lib/base/activity/JDActivity$2;)Lcom/jingdong/app/lib/base/activity/JDActivity;

    move-result-object v9

    const-string v10, "message"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/jingdong/app/lib/base/activity/JDActivity;->xml:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/jingdong/app/lib/base/activity/JDActivity;->access$2(Lcom/jingdong/app/lib/base/activity/JDActivity;Ljava/lang/String;)V

    .line 107
    iget-object v9, p0, Lcom/jingdong/app/lib/base/activity/JDActivity$2$1;->this$1:Lcom/jingdong/app/lib/base/activity/JDActivity$2;

    #getter for: Lcom/jingdong/app/lib/base/activity/JDActivity$2;->this$0:Lcom/jingdong/app/lib/base/activity/JDActivity;
    invoke-static {v9}, Lcom/jingdong/app/lib/base/activity/JDActivity$2;->access$0(Lcom/jingdong/app/lib/base/activity/JDActivity$2;)Lcom/jingdong/app/lib/base/activity/JDActivity;

    move-result-object v9

    iget-object v10, p0, Lcom/jingdong/app/lib/base/activity/JDActivity$2$1;->this$1:Lcom/jingdong/app/lib/base/activity/JDActivity$2;

    #getter for: Lcom/jingdong/app/lib/base/activity/JDActivity$2;->this$0:Lcom/jingdong/app/lib/base/activity/JDActivity;
    invoke-static {v10}, Lcom/jingdong/app/lib/base/activity/JDActivity$2;->access$0(Lcom/jingdong/app/lib/base/activity/JDActivity$2;)Lcom/jingdong/app/lib/base/activity/JDActivity;

    move-result-object v10

    #getter for: Lcom/jingdong/app/lib/base/activity/JDActivity;->xml:Ljava/lang/String;
    invoke-static {v10}, Lcom/jingdong/app/lib/base/activity/JDActivity;->access$0(Lcom/jingdong/app/lib/base/activity/JDActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/jingdong/app/lib/pay/PayUtils;->doPay(Lcom/jingdong/app/lib/base/activity/JDActivity;Ljava/lang/String;)V

    .line 112
    .end local v0           #body:Lorg/json/JSONObject;
    .end local v1           #cookie:Ljava/lang/String;
    .end local v2           #device:Ljava/lang/String;
    .end local v4           #jo:Lorg/json/JSONObject;
    .end local v5           #response:Lorg/json/JSONObject;
    .end local v6           #restClient:Lcom/jd/droidlib/net/http/RESTClient2;
    .end local v7           #tokenValue:Lorg/json/JSONObject;
    .end local v8           #u:Landroid/net/Uri;
    :goto_3
    return-void

    .line 83
    .restart local v0       #body:Lorg/json/JSONObject;
    .restart local v1       #cookie:Ljava/lang/String;
    .restart local v2       #device:Ljava/lang/String;
    .restart local v4       #jo:Lorg/json/JSONObject;
    .restart local v5       #response:Lorg/json/JSONObject;
    .restart local v6       #restClient:Lcom/jd/droidlib/net/http/RESTClient2;
    .restart local v8       #u:Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 85
    .local v3, e:Lcom/jd/droidlib/net/http/HTTPException;
    invoke-virtual {v3}, Lcom/jd/droidlib/net/http/HTTPException;->printStackTrace()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 108
    .end local v0           #body:Lorg/json/JSONObject;
    .end local v1           #cookie:Ljava/lang/String;
    .end local v2           #device:Ljava/lang/String;
    .end local v3           #e:Lcom/jd/droidlib/net/http/HTTPException;
    .end local v4           #jo:Lorg/json/JSONObject;
    .end local v5           #response:Lorg/json/JSONObject;
    .end local v6           #restClient:Lcom/jd/droidlib/net/http/RESTClient2;
    .end local v8           #u:Landroid/net/Uri;
    :catch_1
    move-exception v3

    .line 110
    .local v3, e:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 95
    .end local v3           #e:Lorg/json/JSONException;
    .restart local v0       #body:Lorg/json/JSONObject;
    .restart local v1       #cookie:Ljava/lang/String;
    .restart local v2       #device:Ljava/lang/String;
    .restart local v4       #jo:Lorg/json/JSONObject;
    .restart local v5       #response:Lorg/json/JSONObject;
    .restart local v6       #restClient:Lcom/jd/droidlib/net/http/RESTClient2;
    .restart local v7       #tokenValue:Lorg/json/JSONObject;
    .restart local v8       #u:Landroid/net/Uri;
    :cond_0
    :try_start_5
    const-string v9, "plat"

    const-string v10, "plat"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 102
    :catch_2
    move-exception v3

    .line 104
    .local v3, e:Lcom/jd/droidlib/net/http/HTTPException;
    invoke-virtual {v3}, Lcom/jd/droidlib/net/http/HTTPException;->printStackTrace()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2
.end method
