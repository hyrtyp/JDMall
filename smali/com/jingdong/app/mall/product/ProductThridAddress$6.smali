.class Lcom/jingdong/app/mall/product/ProductThridAddress$6;
.super Ljava/lang/Object;
.source "ProductThridAddress.java"

# interfaces
.implements Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductThridAddress;->queryProvince()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$6;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$6;)Lcom/jingdong/app/mall/product/ProductThridAddress;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$6;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    return-object v0
.end method


# virtual methods
.method public onFinish(Lcom/jingdong/common/entity/Product;IZ)V
    .locals 4
    .parameter "resultProduct"
    .parameter "resultCode"
    .parameter "isSucceed"

    .prologue
    .line 115
    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$6;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$6;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$8(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/entity/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/Product;->getProvinceModeList()Ljava/util/ArrayList;

    move-result-object v3

    #setter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->provinceList:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$47(Lcom/jingdong/app/mall/product/ProductThridAddress;Ljava/util/ArrayList;)V

    .line 121
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$6;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->provinceList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$5(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$6;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$6;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->provinceList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$5(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/util/ArrayList;

    move-result-object v3

    #calls: Lcom/jingdong/app/mall/product/ProductThridAddress;->getAddressStringArray(Ljava/util/ArrayList;)[Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$17(Lcom/jingdong/app/mall/product/ProductThridAddress;Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, provinces:[Ljava/lang/String;
    array-length v0, v1

    .line 128
    .local v0, length:I
    if-lez v0, :cond_0

    .line 129
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$6;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$12(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v2

    new-instance v3, Lcom/jingdong/app/mall/product/ProductThridAddress$6$1;

    invoke-direct {v3, p0, v1}, Lcom/jingdong/app/mall/product/ProductThridAddress$6$1;-><init>(Lcom/jingdong/app/mall/product/ProductThridAddress$6;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
