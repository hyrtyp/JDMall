.class Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$7;
.super Ljava/lang/Object;
.source "EditOrderAddressListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->showAddressOperateDialog(Lcom/jingdong/common/entity/UserAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

.field private final synthetic val$userAddress:Lcom/jingdong/common/entity/UserAddress;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;Lcom/jingdong/common/entity/UserAddress;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$7;->val$userAddress:Lcom/jingdong/common/entity/UserAddress;

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 465
    if-nez p2, :cond_1

    .line 466
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    const-class v2, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 467
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PageType"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 468
    const-string v1, "UserAddress"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$7;->val$userAddress:Lcom/jingdong/common/entity/UserAddress;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 469
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    invoke-virtual {v1, v0, v3}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->startActivityForResultNoException(Landroid/content/Intent;I)V

    .line 474
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 475
    return-void

    .line 470
    :cond_1
    if-ne p2, v3, :cond_0

    .line 471
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$7;->val$userAddress:Lcom/jingdong/common/entity/UserAddress;

    #calls: Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->httpDelAddress(Lcom/jingdong/common/entity/UserAddress;)V
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->access$10(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;Lcom/jingdong/common/entity/UserAddress;)V

    goto :goto_0
.end method
