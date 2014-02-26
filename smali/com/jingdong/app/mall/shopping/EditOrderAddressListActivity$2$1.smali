.class Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2$1;
.super Ljava/lang/Object;
.source "EditOrderAddressListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;

.field private final synthetic val$address:Lcom/jingdong/common/entity/UserAddress;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;Lcom/jingdong/common/entity/UserAddress;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2$1;->this$1:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2$1;->val$address:Lcom/jingdong/common/entity/UserAddress;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2$1;->this$1:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;)Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2$1;->val$address:Lcom/jingdong/common/entity/UserAddress;

    #calls: Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->checkHasIdTown(Lcom/jingdong/common/entity/UserAddress;)Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->access$1(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;Lcom/jingdong/common/entity/UserAddress;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2$1;->this$1:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;)Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2$1;->val$address:Lcom/jingdong/common/entity/UserAddress;

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->updateUserInfo(Lcom/jingdong/common/entity/UserAddress;)V

    .line 169
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2$1;->this$1:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;)Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->setResult(I)V

    .line 170
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2$1;->this$1:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;)Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->finish()V

    goto :goto_0
.end method
