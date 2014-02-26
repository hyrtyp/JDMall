.class Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$1;
.super Ljava/lang/Object;
.source "MyOrderInfoListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;

.field private final synthetic val$tPosition:I

.field private final synthetic val$tmView:Landroid/widget/AdapterView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;Landroid/widget/AdapterView;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$1;->val$tmView:Landroid/widget/AdapterView;

    iput p3, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$1;->val$tPosition:I

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$1;->val$tmView:Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    iget v2, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$1;->val$tPosition:I

    invoke-interface {v1, v2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/Product;

    .line 313
    .local v0, product:Lcom/jingdong/common/entity/Product;
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;->access$0(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->access$1(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->handlerOrderDetail(Lcom/jingdong/common/entity/Product;)V
    invoke-static {v1, v0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->access$0(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;Lcom/jingdong/common/entity/Product;)V

    .line 314
    return-void
.end method
