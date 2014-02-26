.class Lcom/jingdong/app/mall/product/ProductThridAddress$5;
.super Ljava/lang/Object;
.source "ProductThridAddress.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductThridAddress;->initProvinceClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductThridAddress;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$5;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$5;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$8(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/entity/Product;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/Product;->setCheckNext(Z)V

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$5;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->clickTime:J
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$5;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->clickTime:J
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$1(Lcom/jingdong/app/mall/product/ProductThridAddress;J)V

    .line 91
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$5;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->productStockProvinceChoosed:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$45(Lcom/jingdong/app/mall/product/ProductThridAddress;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 92
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$5;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #calls: Lcom/jingdong/app/mall/product/ProductThridAddress;->queryProvince()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$46(Lcom/jingdong/app/mall/product/ProductThridAddress;)V

    .line 93
    :cond_0
    return-void
.end method
