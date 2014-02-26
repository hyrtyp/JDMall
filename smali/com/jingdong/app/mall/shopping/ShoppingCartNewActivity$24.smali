.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$24;
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

.field private final synthetic val$defaultPack:Landroid/view/View;

.field private final synthetic val$packChildCb:Landroid/widget/CheckBox;

.field private final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Ljava/lang/String;Landroid/view/View;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$24;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$24;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$24;->val$defaultPack:Landroid/view/View;

    iput-object p4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$24;->val$packChildCb:Landroid/widget/CheckBox;

    .line 911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 915
    const-string v1, "4"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$24;->val$type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 916
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$24;->val$defaultPack:Landroid/view/View;

    const v2, 0x7f0c069e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 917
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 923
    .end local v0           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$24;->val$packChildCb:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->performClick()Z

    goto :goto_0
.end method
