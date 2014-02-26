.class Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;
.super Ljava/lang/Object;
.source "MyOrderListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "checkLogisticsButtonListener"
.end annotation


# instance fields
.field private mParentAdapterView:Landroid/widget/AdapterView;

.field private mPosition:I

.field private mlistItemButton:Landroid/view/View;

.field final synthetic this$2:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;Landroid/widget/AdapterView;ILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter "parent"
    .parameter "position"
    .parameter "listItemButton"

    .prologue
    .line 412
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;->this$2:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;->mParentAdapterView:Landroid/widget/AdapterView;

    .line 414
    iput p3, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;->mPosition:I

    .line 415
    iput-object p4, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;->mlistItemButton:Landroid/view/View;

    .line 416
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const v5, 0x7f07045f

    .line 420
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 421
    .local v2, vid:I
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;->mParentAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    iget v4, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;->mPosition:I

    invoke-interface {v3, v4}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/Product;

    .line 422
    .local v1, product:Lcom/jingdong/common/entity/Product;
    const v3, 0x7f0c042c

    if-ne v2, v3, :cond_2

    .line 423
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 426
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;->this$2:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;->access$0(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;)Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->access$0(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;->mlistItemButton:Landroid/view/View;

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 427
    const-string v3, "title"

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;->this$2:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;->access$0(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;)Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;

    move-result-object v4

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->access$0(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;->this$2:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;->access$0(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;)Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->access$0(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    move-result-object v3

    const-class v4, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 430
    :cond_0
    if-eqz v1, :cond_1

    .line 431
    const-string v3, "product"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 433
    :cond_1
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;->this$2:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;->access$0(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;)Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->access$0(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 435
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    return-void
.end method
