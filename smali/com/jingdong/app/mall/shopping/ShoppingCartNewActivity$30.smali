.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$30;
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


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$30;->val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

    .line 1174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$30;->val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->ybForwardSelectPage(Lcom/jingdong/common/entity/cart/CartResponseSku;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$35(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;)V

    .line 1179
    return-void
.end method
