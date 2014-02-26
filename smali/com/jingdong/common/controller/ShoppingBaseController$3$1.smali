.class Lcom/jingdong/common/controller/ShoppingBaseController$3$1;
.super Ljava/lang/Object;
.source "ShoppingBaseController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/controller/ShoppingBaseController$3;->onEnd(Lcom/jingdong/common/entity/cart/CartResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/controller/ShoppingBaseController$3;

.field private final synthetic val$insertPack:Lcom/jingdong/common/entity/Pack;

.field private final synthetic val$insertProduct:Lcom/jingdong/common/entity/Product;


# direct methods
.method constructor <init>(Lcom/jingdong/common/controller/ShoppingBaseController$3;Lcom/jingdong/common/entity/Product;Lcom/jingdong/common/entity/Pack;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/controller/ShoppingBaseController$3$1;->this$1:Lcom/jingdong/common/controller/ShoppingBaseController$3;

    iput-object p2, p0, Lcom/jingdong/common/controller/ShoppingBaseController$3$1;->val$insertProduct:Lcom/jingdong/common/entity/Product;

    iput-object p3, p0, Lcom/jingdong/common/controller/ShoppingBaseController$3$1;->val$insertPack:Lcom/jingdong/common/entity/Pack;

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/jingdong/common/controller/ShoppingBaseController$3$1;->val$insertProduct:Lcom/jingdong/common/entity/Product;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/jingdong/common/controller/ShoppingBaseController$3$1;->val$insertProduct:Lcom/jingdong/common/entity/Product;

    invoke-static {v0}, Lcom/jingdong/common/database/table/DB_CartTable;->insertSingletonCart(Lcom/jingdong/common/entity/Product;)V

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/controller/ShoppingBaseController$3$1;->val$insertPack:Lcom/jingdong/common/entity/Pack;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/jingdong/common/controller/ShoppingBaseController$3$1;->val$insertPack:Lcom/jingdong/common/entity/Pack;

    invoke-static {v0}, Lcom/jingdong/common/database/table/DB_PacksTable;->insertSingletonPacksCart(Lcom/jingdong/common/entity/Pack;)V

    .line 421
    :cond_1
    return-void
.end method
