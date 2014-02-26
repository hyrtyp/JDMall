.class Lcom/jingdong/common/service/MessagePullService$4;
.super Ljava/lang/Object;
.source "MessagePullService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/service/MessagePullService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/service/MessagePullService;


# direct methods
.method constructor <init>(Lcom/jingdong/common/service/MessagePullService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/service/MessagePullService$4;->this$0:Lcom/jingdong/common/service/MessagePullService;

    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/service/MessagePullService$4;)Lcom/jingdong/common/service/MessagePullService;
    .locals 1
    .parameter

    .prologue
    .line 903
    iget-object v0, p0, Lcom/jingdong/common/service/MessagePullService$4;->this$0:Lcom/jingdong/common/service/MessagePullService;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 907
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 909
    .local v2, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "pin"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    :goto_0
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 917
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    iget-object v3, p0, Lcom/jingdong/common/service/MessagePullService$4;->this$0:Lcom/jingdong/common/service/MessagePullService;

    const-string v4, "recommend"

    #calls: Lcom/jingdong/common/service/MessagePullService;->getURL(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    invoke-static {v3, v4, v2}, Lcom/jingdong/common/service/MessagePullService;->access$9(Lcom/jingdong/common/service/MessagePullService;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 918
    new-instance v3, Lcom/jingdong/common/service/MessagePullService$4$1;

    invoke-direct {v3, p0}, Lcom/jingdong/common/service/MessagePullService$4$1;-><init>(Lcom/jingdong/common/service/MessagePullService$4;)V

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 956
    iget-object v3, p0, Lcom/jingdong/common/service/MessagePullService$4;->this$0:Lcom/jingdong/common/service/MessagePullService;

    #getter for: Lcom/jingdong/common/service/MessagePullService;->httpGroup:Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;
    invoke-static {v3}, Lcom/jingdong/common/service/MessagePullService;->access$6(Lcom/jingdong/common/service/MessagePullService;)Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 1001
    return-void

    .line 911
    .end local v1           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :catch_0
    move-exception v0

    .line 912
    .local v0, e:Lorg/json/JSONException;
    const-string v3, "messagePullService"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jingdong/common/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
