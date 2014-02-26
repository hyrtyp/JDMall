.class Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;
.super Ljava/lang/Object;
.source "MyOrderInfoListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "checkLogisticsButtonListener"
.end annotation


# instance fields
.field private mParentAdapterView:Landroid/widget/AdapterView;

.field private mPosition:I

.field private mlistItemButton:Landroid/widget/Button;

.field final synthetic this$2:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;Landroid/widget/AdapterView;ILandroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter "parent"
    .parameter "position"
    .parameter "listItemButton"

    .prologue
    .line 372
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;->this$2:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;->mParentAdapterView:Landroid/widget/AdapterView;

    .line 374
    iput p3, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;->mPosition:I

    .line 375
    iput-object p4, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;->mlistItemButton:Landroid/widget/Button;

    .line 376
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 380
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 381
    .local v1, vid:I
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;->mParentAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    iget v3, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;->mPosition:I

    invoke-interface {v2, v3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/Product;

    .line 382
    .local v0, product:Lcom/jingdong/common/entity/Product;
    const v2, 0x7f0c043a

    if-ne v1, v2, :cond_2

    .line 387
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;->this$2:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;->access$0(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->access$1(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    move-result-object v2

    const v3, 0x7f0701d3

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;->mlistItemButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 388
    new-instance v2, Lcom/jingdong/app/mall/personel/MyOrderPaymentUtils;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;->this$2:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;->access$0(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->access$1(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/jingdong/app/mall/personel/MyOrderPaymentUtils;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/entity/Product;)V

    invoke-virtual {v2}, Lcom/jingdong/app/mall/personel/MyOrderPaymentUtils;->doOnlinePay()V

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;->this$2:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;->access$0(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->access$1(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    move-result-object v2

    const v3, 0x7f0702af

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;->mlistItemButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    new-instance v2, Lcom/jingdong/app/mall/personel/MyOrderPaymentUtils;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;->this$2:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;->access$0(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->access$1(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/jingdong/app/mall/personel/MyOrderPaymentUtils;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/entity/Product;)V

    invoke-virtual {v2}, Lcom/jingdong/app/mall/personel/MyOrderPaymentUtils;->doPostPayConfirm()V

    goto :goto_0

    .line 395
    :cond_2
    const v2, 0x7f0c042c

    if-ne v1, v2, :cond_0

    .line 396
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;->this$2:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;->access$0(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->access$1(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    move-result-object v2

    const v3, 0x7f07045f

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;->mlistItemButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    new-instance v2, Lcom/jingdong/app/mall/personel/MyOrderPaymentUtils;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;->this$2:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;->access$0(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->access$1(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/jingdong/app/mall/personel/MyOrderPaymentUtils;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/entity/Product;)V

    invoke-virtual {v2}, Lcom/jingdong/app/mall/personel/MyOrderPaymentUtils;->doCheckLogistics()V

    goto :goto_0
.end method
