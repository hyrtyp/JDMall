.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$14;
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

.field private final synthetic val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSuit;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$14;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$14;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    const/4 v3, 0x1

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->showDeleteDetailFavoriteDialog(Lcom/jingdong/common/entity/cart/CartResponseSku;Lcom/jingdong/common/entity/cart/CartResponseSuit;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$30(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;Lcom/jingdong/common/entity/cart/CartResponseSuit;Z)V

    .line 568
    const/4 v0, 0x0

    return v0
.end method
