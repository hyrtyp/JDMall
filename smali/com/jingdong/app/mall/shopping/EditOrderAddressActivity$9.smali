.class Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$9;
.super Ljava/lang/Object;
.source "EditOrderAddressActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->getArea(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 673
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 674
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea2:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 675
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 678
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown2:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 679
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mPCA:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    return-void
.end method
