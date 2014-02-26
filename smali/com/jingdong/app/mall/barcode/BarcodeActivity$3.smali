.class Lcom/jingdong/app/mall/barcode/BarcodeActivity$3;
.super Ljava/lang/Object;
.source "BarcodeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/barcode/BarcodeActivity;->init()V
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
.field final synthetic this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$3;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
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
    .line 276
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Landroid/widget/Adapter;

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/BarcodeRecord;

    .line 277
    .local v0, barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;
    iget-object v1, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$3;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    #calls: Lcom/jingdong/app/mall/barcode/BarcodeActivity;->queryServer(Lcom/jingdong/common/entity/BarcodeRecord;)V
    invoke-static {v1, v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->access$2(Lcom/jingdong/app/mall/barcode/BarcodeActivity;Lcom/jingdong/common/entity/BarcodeRecord;)V

    .line 278
    return-void
.end method
