.class Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsListener;
.super Ljava/lang/Object;
.source "CategoryActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/category/CategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadCategoryPromotionsListener"
.end annotation


# instance fields
.field private cId:Ljava/lang/String;

.field final synthetic this$0:Lcom/jingdong/app/mall/category/CategoryActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "cId"

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1003
    iput-object p2, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsListener;->cId:Ljava/lang/String;

    .line 1004
    return-void
.end method

.method private gc()V
    .locals 0

    .prologue
    .line 1052
    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 5
    .parameter "httpResponse"

    .prologue
    .line 1021
    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsListener;->cId:Ljava/lang/String;

    iget-object v4, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->categoryId:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$0(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1049
    :goto_0
    return-void

    .line 1025
    :cond_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    const-string v4, "cmsPromotionsList"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    .line 1027
    .local v2, promotionsList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    .line 1028
    :cond_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsListener;->gc()V

    goto :goto_0

    .line 1031
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 1032
    .local v1, promotionInfo:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-nez v1, :cond_3

    .line 1033
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsListener;->gc()V

    goto :goto_0

    .line 1037
    :cond_3
    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    const-string v4, "promotion_id"

    invoke-virtual {v1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/jingdong/app/mall/category/CategoryActivity;->promotionId:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$2(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/lang/String;)V

    .line 1038
    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    const-string v4, "promotion_name"

    invoke-virtual {v1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/jingdong/app/mall/category/CategoryActivity;->promotionName:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$3(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/lang/String;)V

    .line 1040
    const-string v3, "imageUrl"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1041
    .local v0, iUrl:Ljava/lang/String;
    if-nez v0, :cond_4

    .line 1042
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsListener;->gc()V

    goto :goto_0

    .line 1045
    :cond_4
    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    iget-object v4, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsListener;->cId:Ljava/lang/String;

    #calls: Lcom/jingdong/app/mall/category/CategoryActivity;->loadCategoryPromotionsImage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v0, v4}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$4(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsListener;->gc()V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 1015
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsListener;->gc()V

    .line 1016
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 1009
    return-void
.end method
