.class Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$4;
.super Ljava/lang/Object;
.source "EditOrderAddressListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->refreshLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 292
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->access$4(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->access$4(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 294
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->layoutNoData:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->access$5(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->access$6(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 301
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->layoutNoData:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->access$5(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->access$6(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method
