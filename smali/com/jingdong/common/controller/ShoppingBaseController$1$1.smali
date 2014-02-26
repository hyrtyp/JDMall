.class Lcom/jingdong/common/controller/ShoppingBaseController$1$1;
.super Ljava/lang/Thread;
.source "ShoppingBaseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/controller/ShoppingBaseController$1;->onEnd(Lcom/jingdong/common/entity/cart/CartResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/controller/ShoppingBaseController$1;

.field private final synthetic val$product:Lcom/jingdong/common/entity/Product;


# direct methods
.method constructor <init>(Lcom/jingdong/common/controller/ShoppingBaseController$1;Lcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/controller/ShoppingBaseController$1$1;->this$1:Lcom/jingdong/common/controller/ShoppingBaseController$1;

    iput-object p2, p0, Lcom/jingdong/common/controller/ShoppingBaseController$1$1;->val$product:Lcom/jingdong/common/entity/Product;

    .line 225
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 228
    const-string v0, "ShoppingController_addOneProduct"

    invoke-virtual {p0, v0}, Lcom/jingdong/common/controller/ShoppingBaseController$1$1;->setName(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/jingdong/common/controller/ShoppingBaseController$1$1;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-static {v0}, Lcom/jingdong/common/database/table/DB_CartTable;->insertSingletonCart(Lcom/jingdong/common/entity/Product;)V

    .line 233
    return-void
.end method
