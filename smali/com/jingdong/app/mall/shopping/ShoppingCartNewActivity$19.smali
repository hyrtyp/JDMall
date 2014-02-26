.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19;
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

.field private final synthetic val$getHandselBut:Landroid/widget/TextView;

.field private final synthetic val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Landroid/widget/TextView;Lcom/jingdong/common/entity/cart/CartResponseSuit;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19;->val$getHandselBut:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19;)Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;
    .locals 1
    .parameter

    .prologue
    .line 709
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 713
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19;->val$getHandselBut:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 714
    new-instance v0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getCanSelectGifts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/util/ArrayList;)V

    .line 716
    .local v0, dialog:Lcom/jingdong/app/mall/shopping/GiftSelectDialog;
    new-instance v1, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19;->val$getHandselBut:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19$1;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19;Lcom/jingdong/common/entity/cart/CartResponseSuit;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->showDialog(Lcom/jingdong/app/mall/shopping/GiftSelectDialog$SelectListener;)V

    .line 732
    return-void
.end method
