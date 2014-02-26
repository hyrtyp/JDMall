.class Lcom/jingdong/common/controller/ShoppingBaseController$1;
.super Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;
.source "ShoppingBaseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/controller/ShoppingBaseController;->addOneProduct(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/Product;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

.field private final synthetic val$product:Lcom/jingdong/common/entity/Product;

.field private final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/Runnable;Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter "$anonymous0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p2, p0, Lcom/jingdong/common/controller/ShoppingBaseController$1;->val$runnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/jingdong/common/controller/ShoppingBaseController$1;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    iput-object p4, p0, Lcom/jingdong/common/controller/ShoppingBaseController$1;->val$product:Lcom/jingdong/common/entity/Product;

    .line 213
    invoke-direct {p0, p1}, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;-><init>(Lcom/jingdong/common/frame/IMyActivity;)V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/entity/cart/CartResponse;)V
    .locals 2
    .parameter "cartResponse"

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;->onEnd(Lcom/jingdong/common/entity/cart/CartResponse;)V

    .line 223
    invoke-virtual {p1}, Lcom/jingdong/common/entity/cart/CartResponse;->getInfo()Lcom/jingdong/common/entity/cart/CartResponseInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    new-instance v0, Lcom/jingdong/common/controller/ShoppingBaseController$1$1;

    iget-object v1, p0, Lcom/jingdong/common/controller/ShoppingBaseController$1;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-direct {v0, p0, v1}, Lcom/jingdong/common/controller/ShoppingBaseController$1$1;-><init>(Lcom/jingdong/common/controller/ShoppingBaseController$1;Lcom/jingdong/common/entity/Product;)V

    .line 234
    invoke-virtual {v0}, Lcom/jingdong/common/controller/ShoppingBaseController$1$1;->start()V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/controller/ShoppingBaseController$1;->val$runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/jingdong/common/controller/ShoppingBaseController$1;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    iget-object v1, p0, Lcom/jingdong/common/controller/ShoppingBaseController$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    .line 241
    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0
    .parameter "errorMessage"

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;->onError(Ljava/lang/String;)V

    .line 217
    return-void
.end method
