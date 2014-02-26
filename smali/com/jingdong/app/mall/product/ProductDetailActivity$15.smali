.class Lcom/jingdong/app/mall/product/ProductDetailActivity$15;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProduct(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$15;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/jingdong/common/entity/Product;IZ)V
    .locals 2
    .parameter "resultProduct"
    .parameter "resultCode"
    .parameter "isSucceed"

    .prologue
    .line 582
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$15;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailActivity;->statClick()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$21(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    .line 585
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$15;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    const/4 v1, 0x0

    #calls: Lcom/jingdong/app/mall/product/ProductDetailActivity;->showStockRunnable(Z)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$22(Lcom/jingdong/app/mall/product/ProductDetailActivity;Z)V

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 588
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$15;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProductForPromotion()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$23(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    goto :goto_0

    .line 590
    :cond_2
    const/16 v0, 0x9

    if-ne p2, v0, :cond_3

    .line 591
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$15;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProductForDeliver()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$24(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    goto :goto_0

    .line 593
    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 594
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$15;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProductForOptoins()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$25(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    goto :goto_0

    .line 596
    :cond_4
    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    .line 597
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$15;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProductForEasyBuy()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$10(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    goto :goto_0

    .line 599
    :cond_5
    const/4 v0, 0x5

    if-ne p2, v0, :cond_6

    .line 600
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$15;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProductForPacks()V

    goto :goto_0

    .line 602
    :cond_6
    const/4 v0, 0x6

    if-ne p2, v0, :cond_7

    .line 603
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$15;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProductForCommentCount(Z)V
    invoke-static {v0, p3}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$26(Lcom/jingdong/app/mall/product/ProductDetailActivity;Z)V

    goto :goto_0

    .line 605
    :cond_7
    const/4 v0, 0x7

    if-ne p2, v0, :cond_8

    .line 606
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$15;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProductForConsultationCount(Z)V
    invoke-static {v0, p3}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$27(Lcom/jingdong/app/mall/product/ProductDetailActivity;Z)V

    goto :goto_0

    .line 608
    :cond_8
    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$15;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProductForOrderCommentCount(Z)V
    invoke-static {v0, p3}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$28(Lcom/jingdong/app/mall/product/ProductDetailActivity;Z)V

    goto :goto_0
.end method
