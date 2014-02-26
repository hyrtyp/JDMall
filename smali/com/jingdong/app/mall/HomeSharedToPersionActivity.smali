.class public Lcom/jingdong/app/mall/HomeSharedToPersionActivity;
.super Ljava/lang/Object;
.source "HomeSharedToPersionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/HomeSharedToPersionActivity$OnEndListener;
    }
.end annotation


# static fields
.field public static crazyBuyProductList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private reportJsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity;->crazyBuyProductList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/HomeSharedToPersionActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity;->reportJsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/HomeSharedToPersionActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity;->reportJsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-object v0
.end method


# virtual methods
.method public showCrazyBuy(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/app/mall/HomeSharedToPersionActivity$OnEndListener;)V
    .locals 4
    .parameter "myActivity"
    .parameter "listener"

    .prologue
    .line 196
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 198
    .local v1, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "page"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v2, "pagesize"

    const-string v3, "50"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 207
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v2, "crazy"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 211
    new-instance v2, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$2;

    invoke-direct {v2, p0, p2}, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$2;-><init>(Lcom/jingdong/app/mall/HomeSharedToPersionActivity;Lcom/jingdong/app/mall/HomeSharedToPersionActivity$OnEndListener;)V

    .line 209
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 246
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 247
    invoke-virtual {p1}, Lcom/jingdong/app/mall/utils/MyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 248
    return-void

    .line 201
    .end local v0           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public showReportList(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/app/mall/HomeSharedToPersionActivity$OnEndListener;)V
    .locals 6
    .parameter "myActivity"
    .parameter "listener"

    .prologue
    const/4 v5, 0x1

    .line 50
    const v3, 0x7f0c0109

    invoke-virtual {p1, v3}, Lcom/jingdong/app/mall/utils/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 52
    .local v2, reportText:Landroid/widget/TextView;
    new-instance v1, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;-><init>(Lcom/jingdong/app/mall/HomeSharedToPersionActivity;Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/app/mall/HomeSharedToPersionActivity$OnEndListener;Landroid/widget/TextView;)V

    .line 171
    .local v1, onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 172
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v3, "jdNews"

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 173
    const-string v3, "page"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    const-string v3, "pagesize"

    const-string v4, "8"

    invoke-virtual {v0, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 176
    invoke-virtual {v0, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCache(Z)V

    .line 177
    const-wide/32 v3, 0x493e0

    invoke-virtual {v0, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCacheTime(J)V

    .line 178
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNeedGlobalInitialization(Z)V

    .line 179
    invoke-virtual {v0, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 180
    invoke-virtual {p1}, Lcom/jingdong/app/mall/utils/MyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 182
    return-void
.end method
