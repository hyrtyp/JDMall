.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->addCollect(Lcom/jingdong/common/entity/Product;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

.field private final synthetic val$product:Lcom/jingdong/common/entity/Product;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16;->val$product:Lcom/jingdong/common/entity/Product;

    .line 2555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    .locals 1
    .parameter

    .prologue
    .line 2555
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2560
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jingdong/common/controller/ProductDetailController;-><init>(Lcom/jingdong/common/utils/HttpGroup;)V

    .line 2561
    .local v0, mProductDetailController:Lcom/jingdong/common/controller/ProductDetailController;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v3, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16$1;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16$1;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/jingdong/common/controller/ProductDetailController;->addFavorite(JLcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V

    .line 2580
    return-void
.end method
