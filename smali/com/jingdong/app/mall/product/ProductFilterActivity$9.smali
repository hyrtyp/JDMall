.class Lcom/jingdong/app/mall/product/ProductFilterActivity$9;
.super Ljava/lang/Object;
.source "ProductFilterActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductFilterActivity;->querySelectRegion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductFilterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$9;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 2
    .parameter "httpResponse"

    .prologue
    .line 625
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$9;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    #setter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->provinceJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$19(Lcom/jingdong/app/mall/product/ProductFilterActivity;Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 626
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$9;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductFilterActivity;->getProductFilter()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$18(Lcom/jingdong/app/mall/product/ProductFilterActivity;)V

    .line 628
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$9;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductFilterActivity;->getProductFilter()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$18(Lcom/jingdong/app/mall/product/ProductFilterActivity;)V

    .line 620
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 614
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 633
    return-void
.end method
