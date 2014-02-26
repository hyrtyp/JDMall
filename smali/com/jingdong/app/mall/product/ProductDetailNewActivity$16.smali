.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$16;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProduct(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    .line 1005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/jingdong/common/entity/Product;IZ)V
    .locals 3
    .parameter "resultProduct"
    .parameter "resultCode"
    .parameter "isSucceed"

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->initData()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$28(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    .line 1014
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1015
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->statClick()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$29(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    .line 1016
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showAllProductDetail()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$8(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    .line 1018
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductForConsultationCount(Z)V
    invoke-static {v0, p3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$30(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Z)V

    .line 1019
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductForOrderCommentCount(Z)V
    invoke-static {v0, p3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$31(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Z)V

    .line 1020
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductForPacks()V

    .line 1021
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductForEasyBuy()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$14(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    .line 1022
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductForPromotion()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$32(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    .line 1023
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductForOptoins()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$33(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    .line 1024
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductForCommentCount(Z)V
    invoke-static {v0, p3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$34(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Z)V

    .line 1025
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductForDeliver()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$35(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    .line 1031
    :cond_0
    :goto_0
    return-void

    .line 1026
    :cond_1
    const/16 v0, 0xb

    if-ne p2, v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showAllProductDetail()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$8(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    .line 1029
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$16;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    invoke-virtual {p1}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProduct(J)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;J)V

    goto :goto_0
.end method
