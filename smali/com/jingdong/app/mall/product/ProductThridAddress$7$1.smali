.class Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;
.super Ljava/lang/Object;
.source "ProductThridAddress.java"

# interfaces
.implements Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductThridAddress$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$7;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductThridAddress$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$7;

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;)Lcom/jingdong/app/mall/product/ProductThridAddress$7;
    .locals 1
    .parameter

    .prologue
    .line 514
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$7;

    return-object v0
.end method


# virtual methods
.method public onFinish(Lcom/jingdong/common/entity/Product;IZ)V
    .locals 2
    .parameter "resultProduct"
    .parameter "resultCode"
    .parameter "isSucceed"

    .prologue
    const/4 v1, 0x0

    .line 527
    rsub-int/lit8 v0, p2, 0xb

    if-nez v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$7;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$7;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductThridAddress$7;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$7;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$12(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/product/ProductThridAddress$7$1$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductThridAddress$7$1$1;-><init>(Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 558
    :goto_0
    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$7;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$7;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductThridAddress$7;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$7;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v0

    #setter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->isProvinceClicked:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$3(Lcom/jingdong/app/mall/product/ProductThridAddress;Z)V

    .line 539
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$7;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$7;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductThridAddress$7;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$7;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v0

    #setter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->isCityClicked:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$23(Lcom/jingdong/app/mall/product/ProductThridAddress;Z)V

    .line 540
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$7;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$7;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductThridAddress$7;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$7;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v0

    #setter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->isCountyClicked:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$50(Lcom/jingdong/app/mall/product/ProductThridAddress;Z)V

    .line 541
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$7;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$7;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductThridAddress$7;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$7;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v0

    #setter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->isTownClicked:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$33(Lcom/jingdong/app/mall/product/ProductThridAddress;Z)V

    .line 544
    if-nez p3, :cond_1

    .line 545
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$7;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$7;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductThridAddress$7;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$7;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/product/ProductThridAddress;->closeDialog()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$14(Lcom/jingdong/app/mall/product/ProductThridAddress;)V

    goto :goto_0

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$7;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$7;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductThridAddress$7;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$7;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$12(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/product/ProductThridAddress$7$1$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductThridAddress$7$1$2;-><init>(Lcom/jingdong/app/mall/product/ProductThridAddress$7$1;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
