.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6$1;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->onProgress(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x99

    .line 631
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 632
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 633
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mTotalPrice:Landroid/widget/TextView;

    const v1, 0x7f070324

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 634
    return-void
.end method
