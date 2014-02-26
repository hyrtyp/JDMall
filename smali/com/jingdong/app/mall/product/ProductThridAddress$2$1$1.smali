.class Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;
.super Ljava/lang/Object;
.source "ProductThridAddress.java"

# interfaces
.implements Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;->this$2:Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;)Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;
    .locals 1
    .parameter

    .prologue
    .line 327
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;->this$2:Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;

    return-object v0
.end method


# virtual methods
.method public onFinish(Lcom/jingdong/common/entity/Product;IZ)V
    .locals 4
    .parameter "resultProduct"
    .parameter "resultCode"
    .parameter "isSucceed"

    .prologue
    .line 337
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;->this$2:Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$2;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;)Lcom/jingdong/app/mall/product/ProductThridAddress$2;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v2

    const/4 v3, 0x0

    #setter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->isCityClicked:Z
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$23(Lcom/jingdong/app/mall/product/ProductThridAddress;Z)V

    .line 339
    if-nez p3, :cond_1

    .line 340
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;->this$2:Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$2;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;)Lcom/jingdong/app/mall/product/ProductThridAddress$2;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/product/ProductThridAddress;->closeDialog()V
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$14(Lcom/jingdong/app/mall/product/ProductThridAddress;)V

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    if-eqz p2, :cond_0

    .line 348
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;->this$2:Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$2;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;)Lcom/jingdong/app/mall/product/ProductThridAddress$2;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;->this$2:Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$2;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;)Lcom/jingdong/app/mall/product/ProductThridAddress$2;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$8(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/entity/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/Product;->getCountyModeList()Ljava/util/ArrayList;

    move-result-object v3

    #setter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->countyList:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$28(Lcom/jingdong/app/mall/product/ProductThridAddress;Ljava/util/ArrayList;)V

    .line 350
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;->this$2:Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$2;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;)Lcom/jingdong/app/mall/product/ProductThridAddress$2;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->countyList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$29(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 354
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;->this$2:Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$2;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;)Lcom/jingdong/app/mall/product/ProductThridAddress$2;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;->this$2:Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$2;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;)Lcom/jingdong/app/mall/product/ProductThridAddress$2;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->countyList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$29(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/util/ArrayList;

    move-result-object v3

    #calls: Lcom/jingdong/app/mall/product/ProductThridAddress;->getAddressStringArray(Ljava/util/ArrayList;)[Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$17(Lcom/jingdong/app/mall/product/ProductThridAddress;Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, countys:[Ljava/lang/String;
    array-length v1, v0

    .line 357
    .local v1, length:I
    if-lez v1, :cond_0

    .line 359
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;->this$2:Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$2;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;)Lcom/jingdong/app/mall/product/ProductThridAddress$2;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$12(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v2

    new-instance v3, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1$1;

    invoke-direct {v3, p0, v0}, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1$1;-><init>(Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
