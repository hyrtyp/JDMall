.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$12;
.super Ljava/lang/Object;
.source "ShoppingCartNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->updateData(Lcom/jingdong/common/entity/cart/CartResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 462
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->loadErrorLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$8(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->nodataLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$7(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    const v1, 0x7f0704be

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->setNoDataStateText(I)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$12(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;I)V

    .line 465
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->handleLayoutGone(Z)V
    invoke-static {v0, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$9(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Z)V

    .line 466
    return-void
.end method
