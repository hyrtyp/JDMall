.class Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;
.super Ljava/lang/Object;
.source "CategoryListActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/category/CategoryListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "loadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/category/CategoryListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;)Lcom/jingdong/app/mall/category/CategoryListActivity;
    .locals 1
    .parameter

    .prologue
    .line 361
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    return-object v0
.end method

.method private showError()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    new-instance v1, Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener$2;-><init>(Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/category/CategoryListActivity;->post(Ljava/lang/Runnable;)V

    .line 398
    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 3
    .parameter "httpResponse"

    .prologue
    .line 368
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    const-string v2, "catelogyList"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 369
    .local v0, jsonArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 370
    :cond_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;->showError()V

    .line 379
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity;->dataList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/category/CategoryListActivity;->access$4(Lcom/jingdong/app/mall/category/CategoryListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/jingdong/common/entity/Catelogy;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 373
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    new-instance v2, Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener$1;-><init>(Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/category/CategoryListActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;->showError()V

    .line 384
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 389
    return-void
.end method
