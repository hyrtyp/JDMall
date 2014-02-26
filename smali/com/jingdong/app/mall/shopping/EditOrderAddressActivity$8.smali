.class Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$8;
.super Ljava/lang/Object;
.source "EditOrderAddressActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->getCity(I)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 617
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 618
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea2:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 619
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 620
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity2:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 621
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 622
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown2:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 623
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mPCA:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    return-void
.end method
