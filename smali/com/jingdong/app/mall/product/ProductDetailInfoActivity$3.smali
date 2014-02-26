.class Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;
.super Ljava/lang/Object;
.source "ProductDetailInfoActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->showPromotion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;)Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;
    .locals 1
    .parameter

    .prologue
    .line 552
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 5
    .parameter "httpResponse"

    .prologue
    .line 563
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 566
    .local v2, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v3, "promotionInfos"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 567
    .local v1, giftList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->access$7(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jingdong/common/entity/Product;->setGiftList(Ljava/util/ArrayList;)V

    .line 568
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 571
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    new-instance v4, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3$1;

    invoke-direct {v4, p0, v1}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3$1;-><init>(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->post(Ljava/lang/Runnable;)V

    .line 603
    :cond_0
    const-string v3, "tokenInfos"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/jingdong/common/entity/Coupon;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 604
    .local v0, couponList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Coupon;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 606
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    new-instance v4, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3$2;

    invoke-direct {v4, p0, v0}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3$2;-><init>(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->post(Ljava/lang/Runnable;)V

    .line 636
    :cond_1
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 559
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 555
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 640
    return-void
.end method
