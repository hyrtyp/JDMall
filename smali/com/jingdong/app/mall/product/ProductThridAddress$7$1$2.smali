.class Lcom/jingdong/app/mall/product/ProductThridAddress$7$1$2;
.super Ljava/lang/Object;
.source "ProductThridAddress.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;->onFinish(Lcom/jingdong/common/entity/Product;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$7$1$2;->this$2:Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 553
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$7$1$2;->this$2:Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$7;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;)Lcom/jingdong/app/mall/product/ProductThridAddress$7;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$7;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductThridAddress$7;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$7;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/product/ProductThridAddress;->closeDialog()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$14(Lcom/jingdong/app/mall/product/ProductThridAddress;)V

    .line 554
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$7$1$2;->this$2:Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$7;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;)Lcom/jingdong/app/mall/product/ProductThridAddress$7;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$7;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductThridAddress$7;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$7;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->updataUIListener:Lcom/jingdong/app/mall/product/ProductThridAddress$ProductDetailUpdataUIListener;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$40(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/app/mall/product/ProductThridAddress$ProductDetailUpdataUIListener;

    move-result-object v0

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$7$1$2;->this$2:Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$7;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;)Lcom/jingdong/app/mall/product/ProductThridAddress$7;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$7;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress$7;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$7;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$8(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/entity/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/jingdong/app/mall/product/ProductThridAddress$ProductDetailUpdataUIListener;->onFinish(IJ)V

    .line 555
    return-void
.end method
