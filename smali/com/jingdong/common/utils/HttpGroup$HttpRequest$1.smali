.class Lcom/jingdong/common/utils/HttpGroup$HttpRequest$1;
.super Ljava/lang/Object;
.source "HttpGroup.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$1;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 982
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$1;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v2, v2, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getFunctionId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 983
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$1;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v2, v2, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getFunctionId()Ljava/lang/String;

    move-result-object v1

    .line 984
    .local v1, functionId:Ljava/lang/String;
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$1;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v2, v2, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    const-string v3, "functionId"

    invoke-virtual {v2, v3, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putMapParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$1;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v2, v2, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getJsonParams()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 989
    .local v0, body:Ljava/lang/String;
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$1;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v2, v2, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    const-string v3, "body"

    invoke-virtual {v2, v3, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putMapParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    .end local v0           #body:Ljava/lang/String;
    .end local v1           #functionId:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$1;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #calls: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->nextHandler()V
    invoke-static {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$0(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    .line 992
    return-void
.end method
