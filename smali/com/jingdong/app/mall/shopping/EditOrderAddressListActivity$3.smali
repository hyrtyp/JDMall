.class Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$3;
.super Ljava/lang/Object;
.source "EditOrderAddressListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->checkHasIdTown(Lcom/jingdong/common/entity/UserAddress;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

.field private final synthetic val$address:Lcom/jingdong/common/entity/UserAddress;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;Lcom/jingdong/common/entity/UserAddress;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$3;->val$address:Lcom/jingdong/common/entity/UserAddress;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$3;->val$address:Lcom/jingdong/common/entity/UserAddress;

    #calls: Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->gotoEditAddress(Lcom/jingdong/common/entity/UserAddress;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->access$3(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;Lcom/jingdong/common/entity/UserAddress;)V

    .line 231
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 232
    return-void
.end method
