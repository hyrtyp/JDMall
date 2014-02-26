.class Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$1;
.super Ljava/lang/Object;
.source "EditOrderAddressActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->handleClickEvent()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 255
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    new-instance v1, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$1$1;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$1$1;-><init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$1;Landroid/view/View;)V

    .line 263
    const/16 v2, 0x7d0

    .line 255
    invoke-virtual {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->post(Ljava/lang/Runnable;I)V

    .line 264
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    #calls: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->getAddrViewText()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$0(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)V

    .line 266
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    #calls: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->verificationInputData()Z
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$1(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mConfirmAddr:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    #calls: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->submitEvent()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$2(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)V

    .line 271
    :cond_0
    return-void
.end method
