.class Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2$3;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2$3;->this$1:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2$3;->val$address:Lcom/jingdong/common/entity/UserAddress;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2$3;->this$1:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;)Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2$3;->val$address:Lcom/jingdong/common/entity/UserAddress;

    #calls: Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->gotoEditAddress(Lcom/jingdong/common/entity/UserAddress;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->access$3(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;Lcom/jingdong/common/entity/UserAddress;)V

    .line 188
    return-void
.end method
