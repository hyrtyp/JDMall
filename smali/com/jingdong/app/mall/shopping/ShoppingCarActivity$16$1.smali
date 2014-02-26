.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16$1;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16;

    .line 2561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16;
    .locals 1
    .parameter

    .prologue
    .line 2561
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16;

    return-object v0
.end method


# virtual methods
.method public onFinish(Lcom/jingdong/common/entity/Product;IZ)V
    .locals 3
    .parameter "resultProduct"
    .parameter "resultCode"
    .parameter "isSucceed"

    .prologue
    .line 2570
    invoke-virtual {p1}, Lcom/jingdong/common/entity/Product;->getAddFavoriteMsg()Ljava/lang/String;

    move-result-object v0

    .line 2571
    .local v0, msg:Ljava/lang/String;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v1

    new-instance v2, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16$1$1;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16$1$1;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->post(Ljava/lang/Runnable;)V

    .line 2577
    return-void
.end method
