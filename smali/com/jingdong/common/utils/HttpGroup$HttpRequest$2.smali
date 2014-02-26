.class Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;
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
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0x1388

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1003
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1004
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v3, v3, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/client.action"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 1009
    :cond_0
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getAttempts()I

    move-result v1

    if-nez v1, :cond_1

    .line 1010
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$0()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setAttempts(I)V

    .line 1013
    :cond_1
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getConnectTimeout()I

    move-result v1

    if-nez v1, :cond_2

    .line 1014
    invoke-static {}, Lcom/jingdong/common/utils/NetUtils;->isWifi()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1015
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$1()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setConnectTimeout(I)V

    .line 1021
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getReadTimeout()I

    move-result v1

    if-nez v1, :cond_3

    .line 1022
    invoke-static {}, Lcom/jingdong/common/utils/NetUtils;->isWifi()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1023
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$3()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setReadTimeout(I)V

    .line 1030
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getType()I

    move-result v1

    if-eq v1, v6, :cond_4

    .line 1031
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getType()I

    move-result v1

    const/16 v2, 0x1f4

    if-ne v1, v2, :cond_5

    .line 1032
    :cond_4
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPost(Z)V

    .line 1043
    :cond_5
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getType()I

    move-result v1

    if-ne v1, v6, :cond_6

    .line 1044
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCache(Z)V

    .line 1045
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    const-wide/32 v2, 0xf731400

    invoke-virtual {v1, v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCacheTime(J)V

    .line 1049
    :cond_6
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getType()I

    move-result v1

    if-ne v1, v6, :cond_7

    .line 1050
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNeedGlobalInitialization(Z)V

    .line 1053
    :cond_7
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isNeedGlobalInitialization()Z

    .line 1059
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isForeverCache()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1060
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCacheTime(J)V

    .line 1061
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCache(Z)V

    .line 1065
    :cond_8
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #getter for: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->this$0:Lcom/jingdong/common/utils/HttpGroup;
    invoke-static {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$14(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/jingdong/common/utils/HttpGroup;->addMaxStep(I)V

    .line 1067
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #calls: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->urlParam()V
    invoke-static {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$1(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    .line 1069
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    invoke-virtual {v1, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->checkModule(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1089
    :goto_2
    return-void

    .line 1017
    :cond_9
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$2()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setConnectTimeout(I)V

    goto/16 :goto_0

    .line 1025
    :cond_a
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$4()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setReadTimeout(I)V

    goto/16 :goto_1

    .line 1076
    :cond_b
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getFunctionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1077
    :cond_c
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".bmp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1078
    :cond_d
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpError;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpError;-><init>()V

    .line 1079
    .local v0, error:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->setErrorCode(I)V

    .line 1080
    const/16 v1, 0x194

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->setResponseCode(I)V

    .line 1081
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->throwError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    .line 1082
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #calls: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->getLastError()Lcom/jingdong/common/utils/HttpGroup$HttpError;
    invoke-static {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$2(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)Lcom/jingdong/common/utils/HttpGroup$HttpError;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    goto :goto_2

    .line 1085
    .end local v0           #error:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    :cond_e
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #calls: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->nextHandler()V
    invoke-static {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$0(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    .line 1087
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #calls: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->callBack()V
    invoke-static {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$3(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    goto/16 :goto_2
.end method
