.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$49;
.super Ljava/lang/Object;
.source "ShoppingCartNewActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$49;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$49;->val$sku:Lcom/jingdong/common/entity/cart/CartResponseSku;

    .line 1723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 1728
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$49;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$49;->val$sku:Lcom/jingdong/common/entity/cart/CartResponseSku;

    const/4 v2, 0x0

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->showDeleteDetailFavoriteDialog(Lcom/jingdong/common/entity/cart/CartResponseSku;Lcom/jingdong/common/entity/cart/CartResponseSuit;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$30(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;Lcom/jingdong/common/entity/cart/CartResponseSuit;Z)V

    .line 1729
    return v3
.end method
