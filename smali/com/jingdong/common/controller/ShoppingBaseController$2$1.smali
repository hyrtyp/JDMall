.class Lcom/jingdong/common/controller/ShoppingBaseController$2$1;
.super Ljava/lang/Object;
.source "ShoppingBaseController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/controller/ShoppingBaseController$2;->onEnd(Lcom/jingdong/common/entity/cart/CartResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/controller/ShoppingBaseController$2;

.field private final synthetic val$addPack:Lcom/jingdong/common/entity/Pack;


# direct methods
.method constructor <init>(Lcom/jingdong/common/controller/ShoppingBaseController$2;Lcom/jingdong/common/entity/Pack;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/controller/ShoppingBaseController$2$1;->this$1:Lcom/jingdong/common/controller/ShoppingBaseController$2;

    iput-object p2, p0, Lcom/jingdong/common/controller/ShoppingBaseController$2$1;->val$addPack:Lcom/jingdong/common/entity/Pack;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/jingdong/common/controller/ShoppingBaseController$2$1;->val$addPack:Lcom/jingdong/common/entity/Pack;

    invoke-static {v0}, Lcom/jingdong/common/database/table/DB_PacksTable;->insertSingletonPacksCart(Lcom/jingdong/common/entity/Pack;)V

    .line 313
    return-void
.end method
