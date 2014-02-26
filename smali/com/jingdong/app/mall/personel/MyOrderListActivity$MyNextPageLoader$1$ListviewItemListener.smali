.class Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$ListviewItemListener;
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
    name = "ListviewItemListener"
.end annotation


# instance fields
.field private mParentAdapterView:Landroid/widget/AdapterView;

.field private mPosition:I

.field final synthetic this$2:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;Landroid/widget/AdapterView;I)V
    .locals 0
    .parameter
    .parameter "parent"
    .parameter "position"

    .prologue
    .line 443
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$ListviewItemListener;->this$2:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$ListviewItemListener;->mParentAdapterView:Landroid/widget/AdapterView;

    .line 445
    iput p3, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$ListviewItemListener;->mPosition:I

    .line 446
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 450
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$ListviewItemListener;->mParentAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    iget v2, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$ListviewItemListener;->mPosition:I

    invoke-interface {v1, v2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/Product;

    .line 451
    .local v0, product:Lcom/jingdong/common/entity/Product;
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$ListviewItemListener;->this$2:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;->access$0(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;)Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->access$0(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/personel/MyOrderListActivity;->handlerOrderDetail(Lcom/jingdong/common/entity/Product;)V
    invoke-static {v1, v0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->access$5(Lcom/jingdong/app/mall/personel/MyOrderListActivity;Lcom/jingdong/common/entity/Product;)V

    .line 452
    return-void
.end method
