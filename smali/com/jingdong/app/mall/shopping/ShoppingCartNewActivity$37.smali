.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$37;
.super Ljava/lang/Object;
.source "ShoppingCartNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->createSingleView(Lcom/jingdong/common/entity/cart/CartResponseSku;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

.field private final synthetic val$sku:Lcom/jingdong/common/entity/cart/CartResponseSku;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$37;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$37;->val$sku:Lcom/jingdong/common/entity/cart/CartResponseSku;

    .line 1464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 1468
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$37;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$37;->val$sku:Lcom/jingdong/common/entity/cart/CartResponseSku;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$37;->val$sku:Lcom/jingdong/common/entity/cart/CartResponseSku;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x1

    move-object v3, v2

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->productNumChange(Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartResonseYBSelected;Lcom/jingdong/common/entity/cart/CartResponseSuit;II)V
    invoke-static/range {v0 .. v5}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$31(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartResonseYBSelected;Lcom/jingdong/common/entity/cart/CartResponseSuit;II)V

    .line 1469
    return-void
.end method
