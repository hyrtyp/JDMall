.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50;
.super Ljava/lang/Object;
.source "ShoppingCartNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->addCollect(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

.field private final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iput-wide p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50;->val$id:J

    .line 1869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50;)Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;
    .locals 1
    .parameter

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1874
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jingdong/common/controller/ProductDetailController;-><init>(Lcom/jingdong/common/utils/HttpGroup;)V

    .line 1875
    .local v0, mProductDetailController:Lcom/jingdong/common/controller/ProductDetailController;
    iget-wide v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50;->val$id:J

    new-instance v3, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50$1;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50$1;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/jingdong/common/controller/ProductDetailController;->addFavorite(JLcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V

    .line 1895
    return-void
.end method
