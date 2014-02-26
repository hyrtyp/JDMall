.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$28;
.super Ljava/lang/Object;
.source "ShoppingCartNewActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;Lcom/jingdong/common/entity/cart/CartResponseSuit;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$28;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$28;->val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$28;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    .line 1028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 1032
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$28;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$28;->val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$28;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->showDeleteDetailFavoriteDialog(Lcom/jingdong/common/entity/cart/CartResponseSku;Lcom/jingdong/common/entity/cart/CartResponseSuit;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$30(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;Lcom/jingdong/common/entity/cart/CartResponseSuit;Z)V

    .line 1033
    return v3
.end method
