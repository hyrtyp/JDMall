.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$11;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->updateCartItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    .line 1357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1362
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    const v2, 0x7f0c0680

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1363
    .local v0, lin3:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1364
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1365
    return-void
.end method
