.class Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;
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
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 1123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1126
    const-string v3, "testMode"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jingdong/common/config/Configuration;->getBooleanProperty(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1128
    const-string v3, "getSlidingScreens"

    iget-object v4, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v4, v4, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getFunctionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1129
    const-string v2, "{\"rightPages\":[{\"title\":\"\u670d\u88c5\u57ce\",\"fuctionModels\":[{\"functionName\":\"\u4e13\u573a\u70ed\u5356\u5546\u54c1\",\"functionID\":\"getHotSaleListByType\",\"params\":\"type=101\"},{\"functionName\":\"\u6d3b\u52a8\u5217\u8868\",\"functionID\":\"getCmsActivityListByType\",\"params\":\"type=101\"}]},{\"title\":\"\u6570\u7801\u9986\",\"fuctionModels\":[{\"functionName\":\"\u4e13\u573a\u70ed\u5356\u5546\u54c1\",\"functionID\":\"getHotSaleListByType\",\"params\":\"type=102\"},{\"functionName\":\"\u6d3b\u52a8\u5217\u8868\",\"functionID\":\"getCmsActivityListByType\",\"params\":\"type=102\"}]},{\"title\":\"\u7f8e\u62a4\u574a\",\"fuctionModels\":[{\"functionName\":\"\u4e13\u573a\u70ed\u5356\u5546\u54c1\",\"functionID\":\"getHotSaleListByType\",\"params\":\"type=103\"},{\"functionName\":\"\u6d3b\u52a8\u5217\u8868\",\"functionID\":\"getCmsActivityListByType\",\"params\":\"type=103\"}]},{\"title\":\"\u4fc3\u9500\u5927\u5356\u573a\",\"fuctionModels\":[{\"functionName\":\"\u4fc3\u9500\u5927\u5356\u573a\",\"functionID\":\"getCmsPromotionsAll\",\"params\":\"\"}]}],\"tip\":\"\u5411\u53f3\u6ed1\u52a8\u66f4\u7cbe\u5f69\",\"code\":\"0\",\"leftPages\":\"\"}"

    .line 1131
    .local v2, jsonstr:Ljava/lang/String;
    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    new-instance v4, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    iget-object v5, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #getter for: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->this$0:Lcom/jingdong/common/utils/HttpGroup;
    invoke-static {v5}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$14(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;-><init>(Lcom/jingdong/common/utils/HttpGroup;)V

    iput-object v4, v3, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    .line 1132
    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v3, v3, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v3, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setString(Ljava/lang/String;)V

    .line 1134
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v3, v3, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    new-instance v4, Lcom/jingdong/common/utils/JSONObjectProxy;

    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v6, v6, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setJsonObject(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    .end local v2           #jsonstr:Ljava/lang/String;
    :goto_0
    return-void

    .line 1135
    .restart local v2       #jsonstr:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1136
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1138
    .end local v0           #e:Lorg/json/JSONException;
    .end local v2           #jsonstr:Ljava/lang/String;
    :cond_0
    const-string v3, "getHotSaleListByType"

    iget-object v4, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v4, v4, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getFunctionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1139
    const-string v2, "{\"hotSaleList\":[{\"jdPrice\":\"375.00\",\"wname\":\"\u897f\u53a2\u8bb0\",\"totalEvaluation\":0,\"adword\":\"\",\"martPrice\":\"22.0000\",\"startRemainTime\":0,\"book\":\"false\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"10008472\",\"imageurl\":\"http://img10.360buyimg.com/n1/10366/bdfdf6a4-83b2-4a39-a988-b65167c33195.jpg\"},{\"jdPrice\":\"375.00\",\"wname\":\"\u897f\u53a2\u8bb0\",\"totalEvaluation\":0,\"adword\":\"\",\"martPrice\":\"22.0000\",\"startRemainTime\":0,\"book\":\"false\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"10008472\",\"imageurl\":\"http://img10.360buyimg.com/n1/10366/bdfdf6a4-83b2-4a39-a988-b65167c33195.jpg\"},{\"jdPrice\":\"375.00\",\"wname\":\"\u897f\u53a2\u8bb0\",\"totalEvaluation\":0,\"adword\":\"\",\"martPrice\":\"22.0000\",\"startRemainTime\":0,\"book\":\"false\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"10008472\",\"imageurl\":\"http://img10.360buyimg.com/n1/10366/bdfdf6a4-83b2-4a39-a988-b65167c33195.jpg\"},{\"jdPrice\":\"375.00\",\"wname\":\"\u897f\u53a2\u8bb0\",\"totalEvaluation\":0,\"adword\":\"\",\"martPrice\":\"22.0000\",\"startRemainTime\":0,\"book\":\"false\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"10008472\",\"imageurl\":\"http://img10.360buyimg.com/n1/10366/bdfdf6a4-83b2-4a39-a988-b65167c33195.jpg\"},{\"jdPrice\":\"375.00\",\"wname\":\"\u897f\u53a2\u8bb0\",\"totalEvaluation\":0,\"adword\":\"\",\"martPrice\":\"22.0000\",\"startRemainTime\":0,\"book\":\"false\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"10008472\",\"imageurl\":\"http://img10.360buyimg.com/n1/10366/bdfdf6a4-83b2-4a39-a988-b65167c33195.jpg\"},{\"wname\":\"\u975e\u5e38\u5988\u5988\",\"totalEvaluation\":0,\"adword\":\"\",\"martPrice\":\"16.0000\",\"startRemainTime\":0,\"book\":\"false\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"10368686\",\"imageurl\":\"http://img10.360buyimg.com/n1/19452/156afa86-9825-40e7-8c55-af3b53e14372.jpg\"}],\"title\":\"\u670d\u88c5\u57ce\",\"code\":\"0\"}"

    .line 1141
    .restart local v2       #jsonstr:Ljava/lang/String;
    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    new-instance v4, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    iget-object v5, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #getter for: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->this$0:Lcom/jingdong/common/utils/HttpGroup;
    invoke-static {v5}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$14(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;-><init>(Lcom/jingdong/common/utils/HttpGroup;)V

    iput-object v4, v3, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    .line 1142
    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v3, v3, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v3, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setString(Ljava/lang/String;)V

    .line 1144
    :try_start_1
    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v3, v3, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    new-instance v4, Lcom/jingdong/common/utils/JSONObjectProxy;

    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v6, v6, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setJsonObject(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1145
    :catch_1
    move-exception v0

    .line 1146
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1148
    .end local v0           #e:Lorg/json/JSONException;
    .end local v2           #jsonstr:Ljava/lang/String;
    :cond_1
    const-string v3, "getCmsActivityListByType"

    iget-object v4, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v4, v4, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getFunctionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1149
    const-string v2, "{\"activityList\":[{\"content\":\"\",\"title\":\"\u624b\u673a\u6570\u7801\u6d3b\u52a81-\u52ff\u5220\",\"end_date\":\"2012-12-31\",\"catelogyId\":652,\"activity_id\":472,\"start_date\":\"2012-12-05\",\"imageUrl\":\"http://img10.360buyimg.com/n1/g8/M03/0C/1A/rBEHaFCLVWEIAAAAAAF5O72teMsAACgawOjBSAAAXlT725.jpg\"},{\"content\":\"\",\"title\":\"\u624b\u673a\u6570\u7801\u6d3b\u52a81-\u52ff\u5220\",\"end_date\":\"2012-12-31\",\"catelogyId\":652,\"activity_id\":472,\"start_date\":\"2012-12-05\",\"imageUrl\":\"http://img10.360buyimg.com/n1/g8/M03/0C/1A/rBEHaFCLVWEIAAAAAAF5O72teMsAACgawOjBSAAAXlT725.jpg\"},{\"content\":\"\",\"title\":\"\u624b\u673a\u6570\u7801\u6d3b\u52a81-\u52ff\u5220\",\"end_date\":\"2012-12-31\",\"catelogyId\":652,\"activity_id\":472,\"start_date\":\"2012-12-05\",\"imageUrl\":\"http://img10.360buyimg.com/n1/g8/M03/0C/1A/rBEHaFCLVWEIAAAAAAF5O72teMsAACgawOjBSAAAXlT725.jpg\"},{\"content\":\"\",\"title\":\"\u624b\u673a\u6570\u7801\u6d3b\u52a81-\u52ff\u5220\",\"end_date\":\"2012-12-31\",\"catelogyId\":652,\"activity_id\":472,\"start_date\":\"2012-12-05\",\"imageUrl\":\"http://img10.360buyimg.com/n1/g8/M03/0C/1A/rBEHaFCLVWEIAAAAAAF5O72teMsAACgawOjBSAAAXlT725.jpg\"},{\"content\":\"\",\"title\":\"\u624b\u673a\u6570\u7801\u6d3b\u52a81-\u52ff\u5220\",\"end_date\":\"2012-12-31\",\"catelogyId\":652,\"activity_id\":472,\"start_date\":\"2012-12-05\",\"imageUrl\":\"http://img10.360buyimg.com/n1/g8/M03/0C/1A/rBEHaFCLVWEIAAAAAAF5O72teMsAACgawOjBSAAAXlT725.jpg\"}],\"title\":\"\u6570\u7801\u9986\",\"code\":\"0\"}"

    .line 1151
    .restart local v2       #jsonstr:Ljava/lang/String;
    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    new-instance v4, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    iget-object v5, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #getter for: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->this$0:Lcom/jingdong/common/utils/HttpGroup;
    invoke-static {v5}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$14(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;-><init>(Lcom/jingdong/common/utils/HttpGroup;)V

    iput-object v4, v3, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    .line 1152
    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v3, v3, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v3, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setString(Ljava/lang/String;)V

    .line 1154
    :try_start_2
    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v3, v3, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    new-instance v4, Lcom/jingdong/common/utils/JSONObjectProxy;

    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v6, v6, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setJsonObject(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1155
    :catch_2
    move-exception v0

    .line 1156
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 1158
    .end local v0           #e:Lorg/json/JSONException;
    .end local v2           #jsonstr:Ljava/lang/String;
    :cond_2
    const-string v3, "strollChannel"

    iget-object v4, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v4, v4, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getFunctionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1159
    const-string v2, "{\"guang_index_list\":[{\"foldFlag\":1,\"icon\":\"\",\"title\":\"Win8\u4e13\u533a\",\"type\":0,\"functionId\":\"sectionlist_festivalSection\",\"url\":\"\"},{\"foldFlag\":1,\"icon\":\"\",\"title\":\"\u7279\u60e0\u7cbe\u9009\",\"type\":0,\"functionId\":\"sectionlist_specialPrice\",\"url\":\"\"}],\"code\":\"0\"}"

    .line 1161
    .restart local v2       #jsonstr:Ljava/lang/String;
    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    new-instance v4, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    iget-object v5, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #getter for: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->this$0:Lcom/jingdong/common/utils/HttpGroup;
    invoke-static {v5}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$14(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;-><init>(Lcom/jingdong/common/utils/HttpGroup;)V

    iput-object v4, v3, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    .line 1162
    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v3, v3, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v3, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setString(Ljava/lang/String;)V

    .line 1164
    :try_start_3
    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v3, v3, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    new-instance v4, Lcom/jingdong/common/utils/JSONObjectProxy;

    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v6, v6, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setJsonObject(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1165
    :catch_3
    move-exception v0

    .line 1166
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 1168
    .end local v0           #e:Lorg/json/JSONException;
    .end local v2           #jsonstr:Ljava/lang/String;
    :cond_3
    const-string v3, "sectionlist_specialPrice"

    iget-object v4, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v4, v4, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getFunctionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1169
    const-string v2, "{\"wareInfoList\":[{\"wname\":\"\u96c5\u8bd7\u5170\u9edb\u9c9c\u6d3b\u8425\u517b\u7ea2\u77f3\u69b4\u7cbe\u534e\u6c34200ml\",\"totalEvaluation\":0,\"adword\":\"\u660e\u661f\u4ea7\u54c1\u5168\u573a\u76f4\u964d\",\"martPrice\":\"750.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"375.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"1000731821\",\"imageurl\":\"http://img10.360buyimg.com/n4/9420/7e3296c1-b0ae-4de5-ae9e-3da5086fa8f1.jpg\"},{\"wname\":\"CAMEL/\u9a86\u9a7c 2012\u65b0\u6b3e\u7537\u978b\u7537\u58eb\u5546\u52a1\u978b\u4f11\u95f2\u7537\u978b\u4f11\u95f2\u771f\u76ae\u76ae\u978b \u68d5\u8272 43\",\"totalEvaluation\":0,\"adword\":\"\u9886\u5238\u4e0b\u5355\u6ee1450\u51cf50 \u9886\u5238\u65f6\u95f412\u67087\u65e5\u8d77 \u7528\u5238\u65f6\u95f4\uff1a12\u670812\u65e5 \u4ec5\u9650\u4e00\u5929\uff01\",\"martPrice\":\"897.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"299.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"1004863407\",\"imageurl\":\"http://img10.360buyimg.com/n4/g7/M03/05/1D/rBEHZlBRPdcIAAAAAAGwEo3dotcAABKJgOfiIMAAbAq828.jpg\"},{\"wname\":\"\u7d22\u5c3c\uff08Sony\uff09MDR-EX42LP \u65bd\u534e\u6d1b\u4e16\u5947\u9506\u77f3\u8033\u673a \u96cf\u83ca\u767d\",\"totalEvaluation\":0,\"adword\":\"\u3010\u76f4\u964d120\u5143\u3011\u5973\u5b69\u6700\u4f73\u793c\u7269 \u542c\u97f3\u4e50\u4e5f\u65f6\u5c1a\",\"martPrice\":\"249.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"99.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"599354\",\"imageurl\":\"http://img10.360buyimg.com/n4/2425/3703d862-fbe2-425b-919b-c36b6ec1ff90.jpg\"},{\"wname\":\"EAIBOSSCAN 2012\u79cb\u51ac\u65b0\u6b3e\u7537\u58eb\u65f6\u5c1a\u4f11\u95f2\u9488\u7ec7\u886b \u7537\u58eb\u7ebf\u886b 7732 3# M\",\"totalEvaluation\":0,\"adword\":\"\u75af\u72c2\u79d2\u6740\u4ef7\uff0c\u4e0d\u62a2\u4f60\u5728\u7b49\u4ec0\u4e48\uff1f\",\"martPrice\":\"399.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"58.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"1012503502\",\"imageurl\":\"http://img10.360buyimg.com/n4/g7/M03/0E/09/rBEHZVCi_ogIAAAAAAPXv8RezLMAACyyAHvOFYAA9fX718.jpg\"},{\"wname\":\"\u98de\u8dc3\u591a\u529f\u80fd\u5bb6\u7528\u7f1d\u7eab\u673aFY811\",\"totalEvaluation\":0,\"adword\":\"\u5e74\u672b\u5927\u4fc3\uff01\u53c2\u52a0\u65e5\u767e\u6ee1299\u5143\u8fd4399\u5143\u4e1c\u5238\u6d3b\u52a8\uff01\u65f6\u95f412.10 9:00-12.21 18:00\",\"martPrice\":\"688.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"479.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"590241\",\"imageurl\":\"http://img10.360buyimg.com/n4/2585/2c4f25ca-e38f-44ac-b358-ffdfe8d7ca3c.jpg\"},{\"wname\":\"\u6b27\u6da6\u54f2 \u4e0d\u9508\u94a2\u5fc3\u5f62\u7259\u5237\u67b6\u914d\u6ce2\u6d6a\u60c5\u4fa3\u53e3\u676f\u5957\u88c5\uff08\u84dd\u8272+\u73ab\u7ea2\u8272\uff09\",\"totalEvaluation\":0,\"adword\":\"\u5e74\u672b\u5927\u4fc3\uff01\u53c2\u52a0\u65e5\u767e\u6ee1299\u5143\u8fd4399\u5143\u4e1c\u5238\u6d3b\u52a8\uff01\u65f6\u95f412.10 9:00-12.21 18:00  \",\"martPrice\":\"99.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"79.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"713619\",\"imageurl\":\"http://img10.360buyimg.com/n4/g8/M03/07/00/rBEHaFBWuPsIAAAAAAIfOgYhOqUAABXmQLCJTYAAh9S366.jpg\"},{\"wname\":\"Gateway NE71B02c 17.3\u82f1\u5bf8\u7b14\u8bb0\u672c\u7535\u8111\uff08E-450 2G 500G D\u523b USB3.0 \u9ad8\u6e05\u6444\u50cf\u5934 6\u82af\u7535\u6c60 Linux\uff09\u9ed1\",\"totalEvaluation\":0,\"adword\":\"\u76f4\u964d600\u5143\uff0c17.3\u82f1\u5bf8\u8d85\u5927\u5c4f\u663e\u793a \u5b8c\u7f8e\u4f53\u9a8c\uff01\",\"martPrice\":\"3299.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"2499.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"657917\",\"imageurl\":\"http://img10.360buyimg.com/n4/g5/M01/02/02/rBEDik_NwScIAAAAAAFfyYGSc9AAAAZygM0ZFoAAV_h166.jpg\"},{\"wname\":\"\u7a7a\u95f4\u751f\u6d3b\u5b89\u5409\u62c9\u53ef\u8f6c\u53ef\u9065\u529e\u516c\u7535\u8111\u6905ITY60128RW\",\"totalEvaluation\":0,\"adword\":\"\u5e74\u672b\u5927\u4fc3\uff01\u53c2\u52a0\u65e5\u767e\u6ee1299\u5143\u8fd4399\u5143\u4e1c\u5238\u6d3b\u52a8\uff01\u65f6\u95f412.10 9:00-12.21 18:00\",\"martPrice\":\"620.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"299.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"672774\",\"imageurl\":\"http://img10.360buyimg.com/n4/g5/M02/12/14/rBEIDE_yxkUIAAAAAADtD-apgp4AADpAQPB8RUAAO0n619.jpg\"},{\"wname\":\"TPOS 18M11W 11000mAh\u4fbf\u643a\u5f0f\u79fb\u52a8\u7535\u6e90  \u767d\u8272\uff08\u9002\u7528\u4e8e\u82f9\u679ciPad\u3001iPhone\u3001\u4e09\u661fS3\u3001HTC\u3001\u5c0f\u7c73\u7b49\u624b\u673a\uff09 \",\"totalEvaluation\":0,\"adword\":\"\",\"martPrice\":\"659.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"299.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"348042\",\"imageurl\":\"http://img10.360buyimg.com/n4/4268/d18cfdd0-8293-445c-9230-d07282c7b260.jpg\"}],\"code\":\"0\"}"

    .line 1171
    .restart local v2       #jsonstr:Ljava/lang/String;
    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    new-instance v4, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    iget-object v5, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #getter for: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->this$0:Lcom/jingdong/common/utils/HttpGroup;
    invoke-static {v5}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$14(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;-><init>(Lcom/jingdong/common/utils/HttpGroup;)V

    iput-object v4, v3, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    .line 1172
    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v3, v3, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v3, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setString(Ljava/lang/String;)V

    .line 1174
    :try_start_4
    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v3, v3, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    new-instance v4, Lcom/jingdong/common/utils/JSONObjectProxy;

    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v6, v6, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setJsonObject(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 1175
    :catch_4
    move-exception v0

    .line 1176
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 1178
    .end local v0           #e:Lorg/json/JSONException;
    .end local v2           #jsonstr:Ljava/lang/String;
    :cond_4
    const-string v3, "sectionlist_festivalSection"

    iget-object v4, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v4, v4, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getFunctionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1179
    const-string v2, "{\"wareInfoList\":[{\"wname\":\"\u4e09\u661f\uff08SAMSUNG\uff09XE500T1C-A01CN 11.6\u82f1\u5bf8\u5e73\u677f\u7535\u8111(Z2760 2G 64G ssd \u96c6\u6210\u663e\u5361 WIN8 \u84dd\u7259 \u89e6\u63a7\u5c4f\uff09\u84dd\u8272\",\"totalEvaluation\":0,\"adword\":\"WIN8\u5e73\u677f \u5e26\u7ed9\u4f60\u5168\u65b0\u4f53\u9a8c\uff01\",\"martPrice\":\"5699.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"4699.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"742507\",\"imageurl\":\"http://img10.360buyimg.com/n4/g9/M03/08/1C/rBEHaVB733QIAAAAAAHmcBIIfFsAABvRQMYxBUAAeaI119.jpg\"},{\"wname\":\"\u534e\u7855\uff08ASUS\uff09VivoBook S400E3317CA 14.0\u82f1\u5bf8\u89e6\u63a7\u8d85\u6781\u672c\uff08i5-3317U 4G 500G+24G\u56fa\u6001\u786c\u76d8 Win8 \u7235\u58eb\u9ed1\uff09\",\"totalEvaluation\":0,\"adword\":\"\",\"martPrice\":\"6999.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"5299.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"743579\",\"imageurl\":\"http://img10.360buyimg.com/n4/g7/M03/0C/17/rBEHZlCJ6vUIAAAAAAGsWUnswLIAACfVwOhMZkAAaxx266.jpg\"},{\"wname\":\"ThinkPad S230U-3QC 12.5\u82f1\u5bf8\u8d85\u6781\u672c (i5-3317U 4G 500G+24G SSD HD4000 \u84dd\u7259 \u6444\u50cf\u5934 Win8\uff09\u6469\u5361\u9ed1\",\"totalEvaluation\":0,\"adword\":\"\",\"martPrice\":\"7199.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"6999.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"754012\",\"imageurl\":\"http://img10.360buyimg.com/n4/g6/M04/01/0D/rBEGDFCQwSMIAAAAAAHIbCk_-YkAAARpgFTSLsAAciE780.jpg\"},{\"wname\":\"\u4e09\u661f\uff08SAMSUNG\uff09DP300A2A-B01CN 21.5\u82f1\u5bf8\u4e00\u4f53\u673a\u7535\u8111(G645T 4G 500GB \u6838\u82af\u663e\u5361 WIN8 \u6444\u50cf\u5934 \u9ed1\u8272\uff09\",\"totalEvaluation\":0,\"adword\":\"\u9884\u88c5WIN8\u7cfb\u7edf\u7684\u4e00\u4f53\u673a \u5e26\u60a8\u4f53\u9a8c\u65b0\u611f\u89c9\uff01\",\"martPrice\":\"5099.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"4099.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"742593\",\"imageurl\":\"http://img10.360buyimg.com/n4/g7/M03/0C/17/rBEHZlCJ6lAIAAAAAAG9YW4RCf8AACfVwDkiTEAAb15745.jpg\"},{\"wname\":\"\u5b8f\u7881(Acer) A7600U 27\u82f1\u5bf8\u4e00\u4f53\u7535\u8111 \uff08i7-3630QM 8G 1TB+32G 2G\u72ec\u663e \u84dd\u5149\u523b\u5f55 \u65e0\u7ebf\u952e\u9f20 WIFI \u84dd\u7259 Win8\uff09\",\"totalEvaluation\":0,\"adword\":\"27\u5bf8\u5168\u9ad8\u6e0510\u70b9\u89e6\u63a7\u5c4f\uff0c\u84dd\u5149COMB0,USB3.0\u652f\u6301\u5173\u673a\u5145\u7535\uff0c\u84dd\u7259\uff0c\u8d85\u8584\u5916\u89c2\uff0c\u9884\u8ba112\u6708\u4e2d\u65ec\u5230\u8d27\",\"martPrice\":\"21599.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"17999.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"764305\",\"imageurl\":\"http://img10.360buyimg.com/n4/g9/M02/0E/0E/rBEHalCkqDsIAAAAAAEq76ZzhpYAAC0egI7R5IAASsH471.jpg\"},{\"wname\":\"\u4e09\u661f\uff08SAMSUNG\uff09NP535U3C-A05CN 13.3\u82f1\u5bf8\u8d85\u8584\u672c (A6-4455M 4G 500G \u6838\u82af\u663e\u5361 WIN8 \u84dd\u72594.0\uff09\u7c89\u8272\",\"totalEvaluation\":0,\"adword\":\"\u9644\u4e09\u661f\u539f\u88c5\u5305\uff01\",\"martPrice\":\"5699.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"4699.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"742606\",\"imageurl\":\"http://img10.360buyimg.com/n4/g6/M02/00/1E/rBEGC1CJ6scIAAAAAAHuOdN2WwUAAAL-ADKYCkAAe5R475.jpg\"},{\"wname\":\"\u4e09\u661f\uff08SAMSUNG\uff09NP900X3C-A02CN 13.3\u82f1\u5bf8\u8d85\u6781\u672c (i5-3317M 4G 128G SSD \u6838\u82af\u663e\u5361 WIN8 \u84dd\u72594.0\uff09\u84dd\u9ed1\u8272\",\"totalEvaluation\":0,\"adword\":\"\u8d60\u9001\u4ef7\u503c499\u5143\u5e0c\u6377\u79fb\u52a8\u786c\u76d8\uff01\",\"martPrice\":\"11099.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"9999.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"742589\",\"imageurl\":\"http://img10.360buyimg.com/n4/g6/M01/00/1E/rBEGF1CJ6kQIAAAAAAHAVuuZneAAAAL9wMcuNAAAcBu312.jpg\"},{\"wname\":\"\u60e0\u666e\uff08hp\uff09Pavilion14-B042TU\uff08C8C74PA\uff0914.0\u82f1\u5bf8\u8d85\u6781\u672c\uff08i3-3217U 2G 320G+32G SSD Win8 \u9ed1\u8272\uff09\",\"totalEvaluation\":0,\"adword\":\"\",\"martPrice\":\"5499.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"3899.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"744731\",\"imageurl\":\"http://img10.360buyimg.com/n4/g9/M03/0C/17/rBEHaVCJ6wsIAAAAAAGkb8l7l7EAACfVwOK9z4AAaSH300.jpg\"},{\"wname\":\"\u6234\u5c14(Dell) XPS12R-1708 12.5\u5bf8\u8d85\u6781\u672c \uff08i7-3517U 8G 256G\u56fa\u6001\u786c\u76d8 \u84dd\u7259 WIN8 \u89e6\u63a7\u7ffb\u8f6c\u5c4f1920*1080 \uff09\",\"totalEvaluation\":0,\"adword\":\"\",\"martPrice\":\"13999.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"12999.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"766403\",\"imageurl\":\"http://img10.360buyimg.com/n4/g8/M00/0F/0B/rBEHaFCvVpgIAAAAAAEVVIZHAEMAADAJwLuffsAARVs632.jpg\"}],\"code\":\"0\"}"

    .line 1181
    .restart local v2       #jsonstr:Ljava/lang/String;
    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    new-instance v4, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    iget-object v5, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #getter for: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->this$0:Lcom/jingdong/common/utils/HttpGroup;
    invoke-static {v5}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$14(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;-><init>(Lcom/jingdong/common/utils/HttpGroup;)V

    iput-object v4, v3, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    .line 1182
    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v3, v3, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v3, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setString(Ljava/lang/String;)V

    .line 1184
    :try_start_5
    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v3, v3, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    new-instance v4, Lcom/jingdong/common/utils/JSONObjectProxy;

    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v6, v6, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setJsonObject(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 1185
    :catch_5
    move-exception v0

    .line 1186
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 1188
    .end local v0           #e:Lorg/json/JSONException;
    .end local v2           #jsonstr:Ljava/lang/String;
    :cond_5
    const-string v3, "getCmsPromotionsAll"

    iget-object v4, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v4, v4, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getFunctionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1189
    const-string v1, "{\"cmsPromotionsAll\":[{\"promition_info\":\"\u89c4\u5219\",\"catelogyId\":652,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g9/M03/0D/16/rBEHaVCY2-sIAAAAAAN7z1lgq_cAACrXgNYClwAA3vn853.jpg\",\"promotion_name\":\"\u624b\u673a\u6570\u7801\u4fc3\u9500\u4e13\u573a\",\"promotion_id\":11},{\"promition_info\":\"\u670d\u88c5\u978b\u5e3d\",\"catelogyId\":1315,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g6/M03/01/1D/rBEGC1CY3DoIAAAAAAN7zxzsoosAAAX_wHLFwoAA3vn248.jpg\",\"promotion_name\":\"\u670d\u88c5\u978b\u5e3d\u4fc3\u9500\u4e13\u573a\",\"promotion_id\":14},{\"promition_info\":\"\u6ce8\u518c\u4ee5\u4e0a\u4f1a\u5458\u5747\u53ef\u53c2\u52a0\u6b64\u6d3b\u52a8\",\"catelogyId\":1713,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g7/M03/0D/16/rBEHZVCY274IAAAAAAN7z1oeZXMAACrXgIU-uwAA3vn385.jpg\",\"promotion_name\":\"\u56fe\u4e66\u4fc3\u9500\u4e13\u573a\",\"promotion_id\":8},{\"promition_info\":\"\u7535\u8111\u3001\u529e\u516c\",\"catelogyId\":670,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g8/M03/0D/16/rBEHZ1CY3B8IAAAAAAN7zzWtp2EAACrXgMBqZIAA3vn128.jpg\",\"promotion_name\":\"\u7535\u8111\u529e\u516c\u4fc3\u9500\u4e13\u573a\",\"promotion_id\":12},{\"promition_info\":\"\u4e2a\u62a4\u5316\u5986\",\"catelogyId\":1316,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g6/M03/01/1D/rBEGC1CY3EsIAAAAAAN7z9GVGQAAAAX_wKoHV4AA3vn536.jpg\",\"promotion_name\":\"\u4e2a\u62a4\u5316\u5986\u4fc3\u9500\u4e13\u573a\",\"promotion_id\":15},{\"promition_info\":\"\u89c4\u5219\",\"catelogyId\":737,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g7/M03/0D/16/rBEHZlCY2-sIAAAAAAN7z66FoZQAACrXwGO_tsAA3vn629.jpg\",\"promotion_name\":\"\u5bb6\u7528\u7535\u5668\u4fc3\u9500\u4e13\u573a\",\"promotion_id\":10},{\"promition_info\":\"\u65e0\",\"catelogyId\":1319,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g6/M05/02/05/rBEGC1Cbk0AIAAAAAAN7z4UVBZcAAAbTwG7q2gAA3vn241.jpg\",\"promotion_name\":\"\u6bcd\u5a74\u4fc3\u9500\u4e13\u573a\",\"promotion_id\":31},{\"promition_info\":\"\u5bb6\u5c45\u5bb6\u88c5\",\"catelogyId\":1620,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g8/M03/0D/16/rBEHZ1CY3C8IAAAAAAN7z5Yz-y8AACrXwAEssgAA3vn269.jpg\",\"promotion_name\":\"\u5bb6\u5c45\u5bb6\u88c5\u4fc3\u9500\u4e13\u573a\",\"promotion_id\":13},{\"promition_info\":\"\u8fd0\u52a8\u5065\u5eb7\",\"catelogyId\":1318,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g9/M03/0D/16/rBEHaVCY3EwIAAAAAAN7z0YyvTsAACrXwCsqeMAA3vn624.jpg\",\"promotion_name\":\"\u8fd0\u52a8\u5065\u5eb7\u4fc3\u9500\u4e13\u573a\",\"promotion_id\":17},{\"promition_info\":\"\u793c\u54c1\u7bb1\u5305\",\"catelogyId\":1672,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g9/M03/0D/16/rBEHalCY3FkIAAAAAAN7z7Fqbb4AACrXgOmsisAA3vn576.jpg\",\"promotion_name\":\"\u793c\u54c1\u7bb1\u5305\u4fc3\u9500\u4e13\u573a\",\"promotion_id\":16},{\"promition_info\":\"\u6c7d\u8f66\u7528\u54c1\",\"catelogyId\":6728,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g8/M03/0D/16/rBEHaFCY3HQIAAAAAAN7zxsi4osAACrXwA2iAgAA3vn066.jpg\",\"promotion_name\":\"\u6c7d\u8f66\u7528\u54c1\u4fc3\u9500\u4e13\u573a\",\"promotion_id\":18},{\"promition_info\":\"\u53a8\u5177\",\"catelogyId\":6196,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g8/M03/0D/16/rBEHaFCY3Q0IAAAAAAN7z9aasoQAACrXwOWtGIAA3vn318.jpg\",\"promotion_name\":\"\u53a8\u5177\u4fc3\u9500\u4e13\u573a\",\"promotion_id\":24},{\"promition_info\":\"\u949f\u8868\",\"catelogyId\":5025,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g9/M03/0D/16/rBEHalCY3O8IAAAAAAN7zwhI72kAACrXwJkNuEAA3vn875.jpg\",\"promotion_name\":\"\u949f\u8868\u4fc3\u9500\u4e13\u573a\",\"promotion_id\":22},{\"promition_info\":\"\u73e0\u5b9d\u9996\u9970\",\"catelogyId\":6144,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g8/M03/0D/16/rBEHZ1CY3QMIAAAAAAN7z032WDsAACrXwJERfcAA3vn458.jpg\",\"promotion_name\":\"\u73e0\u5b9d\u9996\u9970\u4fc3\u9500\u4e13\u573a\",\"promotion_id\":23},{\"promition_info\":\"\u5ba0\u7269\u751f\u6d3b\",\"catelogyId\":6994,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g6/M04/01/1D/rBEGC1CY3UIIAAAAAAN7z-Y_B0AAAAYAALPB2MAA3vn201.jpg\",\"promotion_name\":\"\u5ba0\u7269\u751f\u6d3b\u4fc3\u9500\u4e13\u573a\",\"promotion_id\":26},{\"promition_info\":\"\u7968\u52a1\",\"catelogyId\":4938,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g6/M04/01/1D/rBEGF1CY3MEIAAAAAAN7z9yyEmoAAAYAAC6-H0AA3vn379.jpg\",\"promotion_name\":\"\u7968\u52a1\u4fc3\u9500\u4e13\u573a\",\"promotion_id\":21}],\"code\":\"0\"}"

    .line 1190
    .local v1, jsonStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    new-instance v4, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    iget-object v5, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #getter for: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->this$0:Lcom/jingdong/common/utils/HttpGroup;
    invoke-static {v5}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$14(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;-><init>(Lcom/jingdong/common/utils/HttpGroup;)V

    iput-object v4, v3, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    .line 1191
    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v3, v3, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v3, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setString(Ljava/lang/String;)V

    .line 1193
    :try_start_6
    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v3, v3, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    new-instance v4, Lcom/jingdong/common/utils/JSONObjectProxy;

    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v6, v6, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setJsonObject(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 1194
    :catch_6
    move-exception v0

    .line 1195
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 1370
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #jsonStr:Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #calls: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->nextHandler()V
    invoke-static {v3}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$0(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    goto/16 :goto_0

    .line 1376
    :cond_7
    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #calls: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->nextHandler()V
    invoke-static {v3}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$0(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    goto/16 :goto_0
.end method
