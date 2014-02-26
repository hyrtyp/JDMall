.class Lcom/jingdong/common/controller/ShoppingBaseController$3;
.super Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;
.source "ShoppingBaseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/controller/ShoppingBaseController;->addProductOrPack(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;ILjava/lang/String;ILcom/jingdong/common/entity/SourceEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$insertPack:Lcom/jingdong/common/entity/Pack;

.field private final synthetic val$insertProduct:Lcom/jingdong/common/entity/Product;


# direct methods
.method constructor <init>(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/Product;Lcom/jingdong/common/entity/Pack;)V
    .locals 0
    .parameter "$anonymous0"
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p2, p0, Lcom/jingdong/common/controller/ShoppingBaseController$3;->val$insertProduct:Lcom/jingdong/common/entity/Product;

    iput-object p3, p0, Lcom/jingdong/common/controller/ShoppingBaseController$3;->val$insertPack:Lcom/jingdong/common/entity/Pack;

    .line 400
    invoke-direct {p0, p1}, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;-><init>(Lcom/jingdong/common/frame/IMyActivity;)V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/entity/cart/CartResponse;)V
    .locals 4
    .parameter "cartResponse"

    .prologue
    .line 408
    invoke-super {p0, p1}, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;->onEnd(Lcom/jingdong/common/entity/cart/CartResponse;)V

    .line 409
    invoke-virtual {p1}, Lcom/jingdong/common/entity/cart/CartResponse;->getInfo()Lcom/jingdong/common/entity/cart/CartResponseInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jingdong/common/controller/ShoppingBaseController$3$1;

    iget-object v2, p0, Lcom/jingdong/common/controller/ShoppingBaseController$3;->val$insertProduct:Lcom/jingdong/common/entity/Product;

    iget-object v3, p0, Lcom/jingdong/common/controller/ShoppingBaseController$3;->val$insertPack:Lcom/jingdong/common/entity/Pack;

    invoke-direct {v1, p0, v2, v3}, Lcom/jingdong/common/controller/ShoppingBaseController$3$1;-><init>(Lcom/jingdong/common/controller/ShoppingBaseController$3;Lcom/jingdong/common/entity/Product;Lcom/jingdong/common/entity/Pack;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 422
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 424
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0
    .parameter "errorMessage"

    .prologue
    .line 403
    invoke-super {p0, p1}, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;->onError(Ljava/lang/String;)V

    .line 404
    return-void
.end method
