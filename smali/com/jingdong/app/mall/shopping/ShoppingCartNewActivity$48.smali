.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$48;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$48;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$48;->val$sku:Lcom/jingdong/common/entity/cart/CartResponseSku;

    .line 1716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$48;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$48;->val$sku:Lcom/jingdong/common/entity/cart/CartResponseSku;

    const/4 v2, 0x0

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->forwardToProductDetail(Lcom/jingdong/common/entity/cart/CartResponseSku;Z)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$33(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;Z)V

    .line 1720
    return-void
.end method
