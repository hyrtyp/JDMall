.class Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity$2;
.super Ljava/lang/Object;
.source "BarcodeProductListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;->init()V
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
.field final synthetic this$0:Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity$2;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
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
    .line 87
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Landroid/widget/Adapter;

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/Product;

    .line 89
    .local v0, product:Lcom/jingdong/common/entity/Product;
    iget-object v1, p0, Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity$2;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v2

    .line 90
    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/jingdong/common/entity/SourceEntity;

    const-string v5, "wareIdByBarCodeList"

    iget-object v6, p0, Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity$2;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;

    #getter for: Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;->barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;
    invoke-static {v6}, Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;->access$0(Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;)Lcom/jingdong/common/entity/BarcodeRecord;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/common/entity/BarcodeRecord;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {v1, v2, v3, v4}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductDetailActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Lcom/jingdong/common/entity/SourceEntity;)V

    .line 91
    return-void
.end method
