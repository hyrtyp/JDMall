.class Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$7;
.super Ljava/lang/Object;
.source "EditOrderAddressActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->getProvices()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 560
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 561
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea2:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 562
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 563
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity2:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 564
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mProvince:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 565
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mProvince2:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 566
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 567
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown2:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 569
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mProvince:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    return-void
.end method
