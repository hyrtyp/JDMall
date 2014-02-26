.class Lcom/jingdong/app/mall/HomeSharedToPersionActivity$2;
.super Ljava/lang/Object;
.source "HomeSharedToPersionActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/HomeSharedToPersionActivity;->showCrazyBuy(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/app/mall/HomeSharedToPersionActivity$OnEndListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/HomeSharedToPersionActivity;

.field private final synthetic val$listener:Lcom/jingdong/app/mall/HomeSharedToPersionActivity$OnEndListener;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/HomeSharedToPersionActivity;Lcom/jingdong/app/mall/HomeSharedToPersionActivity$OnEndListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$2;->this$0:Lcom/jingdong/app/mall/HomeSharedToPersionActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$2;->val$listener:Lcom/jingdong/app/mall/HomeSharedToPersionActivity$OnEndListener;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    .line 233
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    const-string v3, "carzyInfo"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 236
    .local v0, jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 237
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    sput-object v1, Lcom/jingdong/app/mall/HomeSharedToPersionActivity;->crazyBuyProductList:Ljava/util/ArrayList;

    .line 238
    iget-object v2, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$2;->val$listener:Lcom/jingdong/app/mall/HomeSharedToPersionActivity$OnEndListener;

    invoke-interface {v2}, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$OnEndListener;->onEnd()V

    .line 239
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 229
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 222
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method
