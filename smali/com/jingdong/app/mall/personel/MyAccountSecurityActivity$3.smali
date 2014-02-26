.class Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$3;
.super Ljava/lang/Object;
.source "MyAccountSecurityActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->queryAccountSecurity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 188
    .local v1, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v1, :cond_1

    .line 189
    const-string v3, "subItemList"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 190
    .local v0, jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->accountSecurityList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->access$0(Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 191
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->accountSecurityList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->access$0(Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 193
    :cond_0
    invoke-static {v0}, Lcom/jingdong/common/entity/BackExchange;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/ArrayList;

    move-result-object v2

    .line 194
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/BackExchange;>;"
    if-eqz v2, :cond_1

    .line 195
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->accountSecurityList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->access$0(Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 196
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;

    #calls: Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->createListView()V
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->access$1(Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;)V

    .line 199
    .end local v0           #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/BackExchange;>;"
    :cond_1
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 179
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 2
    .parameter "httpSettingParams"

    .prologue
    .line 173
    const-string v0, "type"

    const-string v1, "AccountSecurity"

    invoke-interface {p1, v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    return-void
.end method
