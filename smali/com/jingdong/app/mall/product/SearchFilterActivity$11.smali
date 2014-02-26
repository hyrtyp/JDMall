.class Lcom/jingdong/app/mall/product/SearchFilterActivity$11;
.super Ljava/lang/Object;
.source "SearchFilterActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/SearchFilterActivity;->queryAllCategoryFilter(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/SearchFilterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$11;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    .line 1117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 7
    .parameter "httpResponse"

    .prologue
    .line 1144
    const/4 v3, 0x0

    .line 1145
    .local v3, jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    const-string v6, "catelogyList"

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v3

    .line 1146
    if-eqz v3, :cond_0

    .line 1152
    iget-object v5, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$11;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->categoryJsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v5, v3}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$39(Lcom/jingdong/app/mall/product/SearchFilterActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 1155
    :cond_0
    const/4 v0, 0x0

    .line 1156
    .local v0, expandAttrDataJsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    const-string v6, "expandAttrData"

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 1157
    const/4 v4, 0x0

    .line 1159
    .local v4, priceJsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0, v5}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    const-string v6, "price"

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 1165
    :goto_0
    if-eqz v4, :cond_1

    .line 1169
    iget-object v5, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$11;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->mPriceJsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v5, v4}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$40(Lcom/jingdong/app/mall/product/SearchFilterActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 1172
    :cond_1
    const/4 v2, 0x0

    .line 1174
    .local v2, expressionKeyJsonArrayList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v0, v5}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    const-string v6, "expressionKey"

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1186
    :goto_1
    iget-object v5, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$11;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->mExpressionKeyJsonArrayList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v5, v2}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$41(Lcom/jingdong/app/mall/product/SearchFilterActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 1189
    const/4 v1, 0x0

    .line 1191
    .local v1, expandNameJsonArrayList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    const/4 v5, 0x2

    :try_start_2
    invoke-virtual {v0, v5}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    const-string v6, "expandName"

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 1203
    :goto_2
    iget-object v5, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$11;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->mExpandNameJsonArrayList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v5, v1}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$42(Lcom/jingdong/app/mall/product/SearchFilterActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 1205
    iget-object v5, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$11;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #calls: Lcom/jingdong/app/mall/product/SearchFilterActivity;->querySelectRegion()V
    invoke-static {v5}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$38(Lcom/jingdong/app/mall/product/SearchFilterActivity;)V

    .line 1207
    return-void

    .line 1192
    :catch_0
    move-exception v5

    goto :goto_2

    .line 1175
    .end local v1           #expandNameJsonArrayList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :catch_1
    move-exception v5

    goto :goto_1

    .line 1160
    .end local v2           #expressionKeyJsonArrayList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :catch_2
    move-exception v5

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$11;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #calls: Lcom/jingdong/app/mall/product/SearchFilterActivity;->querySelectRegion()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$38(Lcom/jingdong/app/mall/product/SearchFilterActivity;)V

    .line 1140
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 1122
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1212
    return-void
.end method
