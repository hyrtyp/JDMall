.class Lcom/jingdong/app/mall/personel/PersonelActivity$23;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->queryNewUserInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$23;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    .line 2258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$23;)Lcom/jingdong/app/mall/personel/PersonelActivity;
    .locals 1
    .parameter

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$23;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 5
    .parameter "httpResponse"

    .prologue
    .line 2275
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 2280
    .local v0, jsonObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v0, :cond_2

    .line 2281
    const-string v3, "userInfoSns"

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 2282
    .local v1, userInfoObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v3, "labels"

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    .line 2283
    .local v2, userLabels:Lcom/jingdong/common/utils/JSONArrayPoxy;
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$23;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    const-string v4, "score"

    invoke-virtual {v0, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->mUserScore:Ljava/lang/Integer;
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$56(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/Integer;)V

    .line 2284
    if-eqz v1, :cond_0

    .line 2285
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$23;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    new-instance v4, Lcom/jingdong/common/entity/NewUserInfoMode;

    invoke-direct {v4, v1}, Lcom/jingdong/common/entity/NewUserInfoMode;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->mNewUserInfoMode:Lcom/jingdong/common/entity/NewUserInfoMode;
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$57(Lcom/jingdong/app/mall/personel/PersonelActivity;Lcom/jingdong/common/entity/NewUserInfoMode;)V

    .line 2288
    :cond_0
    if-eqz v2, :cond_1

    .line 2289
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$23;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/jingdong/common/entity/NewUserInfoLabelsMode;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v4

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->mNewUserInfoLabelsModeList:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$58(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/util/ArrayList;)V

    .line 2292
    :cond_1
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$23;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    new-instance v4, Lcom/jingdong/app/mall/personel/PersonelActivity$23$1;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$23$1;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity$23;)V

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/personel/PersonelActivity;->post(Ljava/lang/Runnable;)V

    .line 2300
    .end local v1           #userInfoObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v2           #userLabels:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_2
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 2271
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 2263
    return-void
.end method
