.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$33;
.super Ljava/lang/Object;
.source "ShoppingCartNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->createPackView(Lcom/jingdong/common/entity/cart/CartResponseSuit;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

.field private final synthetic val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

.field private final synthetic val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

.field private final synthetic val$ybselect:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;Lcom/jingdong/common/entity/cart/CartResonseYBSelected;Lcom/jingdong/common/entity/cart/CartResponseSuit;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$33;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$33;->val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$33;->val$ybselect:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;

    iput-object p4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$33;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    .line 1249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$33;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$33;->val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$33;->val$ybselect:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$33;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$33;->val$ybselect:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x5

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->productNumChange(Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartResonseYBSelected;Lcom/jingdong/common/entity/cart/CartResponseSuit;II)V
    invoke-static/range {v0 .. v5}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$31(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartResonseYBSelected;Lcom/jingdong/common/entity/cart/CartResponseSuit;II)V

    .line 1254
    return-void
.end method
