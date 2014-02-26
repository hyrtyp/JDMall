.class Lcom/jingdong/app/mall/product/SearchFilterActivity$12;
.super Ljava/lang/Object;
.source "SearchFilterActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/SearchFilterActivity;->querySelectRegion()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$12;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    .line 1237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 3
    .parameter "httpResponse"

    .prologue
    .line 1251
    const/4 v0, 0x0

    .line 1252
    .local v0, jsonArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    const-string v2, "provinces"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 1253
    if-eqz v0, :cond_0

    .line 1259
    iget-object v1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$12;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->provinceJsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v1, v0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$44(Lcom/jingdong/app/mall/product/SearchFilterActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 1261
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$12;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #calls: Lcom/jingdong/app/mall/product/SearchFilterActivity;->showSearchFilter()V
    invoke-static {v1}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$43(Lcom/jingdong/app/mall/product/SearchFilterActivity;)V

    .line 1262
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$12;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #calls: Lcom/jingdong/app/mall/product/SearchFilterActivity;->showSearchFilter()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$43(Lcom/jingdong/app/mall/product/SearchFilterActivity;)V

    .line 1247
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 1242
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1267
    return-void
.end method
