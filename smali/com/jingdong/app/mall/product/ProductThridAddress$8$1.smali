.class Lcom/jingdong/app/mall/product/ProductThridAddress$8$1;
.super Ljava/lang/Object;
.source "ProductThridAddress.java"

# interfaces
.implements Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductThridAddress$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$8;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductThridAddress$8;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$8$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$8;

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$8$1;)Lcom/jingdong/app/mall/product/ProductThridAddress$8;
    .locals 1
    .parameter

    .prologue
    .line 603
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$8$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$8;

    return-object v0
.end method


# virtual methods
.method public onFinish(Lcom/jingdong/common/entity/Product;IZ)V
    .locals 4
    .parameter "resultProduct"
    .parameter "resultCode"
    .parameter "isSucceed"

    .prologue
    .line 613
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$8$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$8;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$8;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress$8;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$8;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v2

    const/4 v3, 0x0

    #setter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->isCountyClicked:Z
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$50(Lcom/jingdong/app/mall/product/ProductThridAddress;Z)V

    .line 615
    if-nez p3, :cond_1

    .line 616
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$8$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$8;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$8;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress$8;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$8;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/product/ProductThridAddress;->closeDialog()V
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$14(Lcom/jingdong/app/mall/product/ProductThridAddress;)V

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    if-eqz p2, :cond_0

    .line 624
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$8$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$8;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$8;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress$8;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$8;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$8$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$8;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$8;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductThridAddress$8;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$8;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$8(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/entity/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/Product;->getTownModeList()Ljava/util/ArrayList;

    move-result-object v3

    #setter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->townList:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$51(Lcom/jingdong/app/mall/product/ProductThridAddress;Ljava/util/ArrayList;)V

    .line 626
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$8$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$8;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$8;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress$8;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$8;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->townList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$35(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 630
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$8$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$8;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$8;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress$8;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$8;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$8$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$8;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$8;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductThridAddress$8;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$8;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->townList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$35(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/util/ArrayList;

    move-result-object v3

    #calls: Lcom/jingdong/app/mall/product/ProductThridAddress;->getAddressStringArray(Ljava/util/ArrayList;)[Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$17(Lcom/jingdong/app/mall/product/ProductThridAddress;Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, towns:[Ljava/lang/String;
    array-length v0, v1

    .line 634
    .local v0, length:I
    if-lez v0, :cond_0

    .line 635
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$8$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$8;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$8;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress$8;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$8;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$12(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v2

    new-instance v3, Lcom/jingdong/app/mall/product/ProductThridAddress$8$1$1;

    invoke-direct {v3, p0, v1}, Lcom/jingdong/app/mall/product/ProductThridAddress$8$1$1;-><init>(Lcom/jingdong/app/mall/product/ProductThridAddress$8$1;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
