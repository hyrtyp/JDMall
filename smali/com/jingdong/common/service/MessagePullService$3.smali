.class Lcom/jingdong/common/service/MessagePullService$3;
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
    iput-object p1, p0, Lcom/jingdong/common/service/MessagePullService$3;->this$0:Lcom/jingdong/common/service/MessagePullService;

    .line 797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/service/MessagePullService$3;)Lcom/jingdong/common/service/MessagePullService;
    .locals 1
    .parameter

    .prologue
    .line 797
    iget-object v0, p0, Lcom/jingdong/common/service/MessagePullService$3;->this$0:Lcom/jingdong/common/service/MessagePullService;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 800
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 802
    .local v2, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "page"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 803
    const-string v3, "pagesize"

    const-string v4, "50"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    :goto_0
    const-string v3, "MessagePullService"

    const-string v4, "++++mCrazyMessage"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 811
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    iget-object v3, p0, Lcom/jingdong/common/service/MessagePullService$3;->this$0:Lcom/jingdong/common/service/MessagePullService;

    const-string v4, "crazy"

    #calls: Lcom/jingdong/common/service/MessagePullService;->getURL(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    invoke-static {v3, v4, v2}, Lcom/jingdong/common/service/MessagePullService;->access$9(Lcom/jingdong/common/service/MessagePullService;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 812
    new-instance v3, Lcom/jingdong/common/service/MessagePullService$3$1;

    invoke-direct {v3, p0}, Lcom/jingdong/common/service/MessagePullService$3$1;-><init>(Lcom/jingdong/common/service/MessagePullService$3;)V

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 853
    iget-object v3, p0, Lcom/jingdong/common/service/MessagePullService$3;->this$0:Lcom/jingdong/common/service/MessagePullService;

    #getter for: Lcom/jingdong/common/service/MessagePullService;->httpGroup:Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;
    invoke-static {v3}, Lcom/jingdong/common/service/MessagePullService;->access$6(Lcom/jingdong/common/service/MessagePullService;)Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 898
    return-void

    .line 805
    .end local v1           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :catch_0
    move-exception v0

    .line 806
    .local v0, e:Lorg/json/JSONException;
    const-string v3, "messagePullService"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jingdong/common/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
