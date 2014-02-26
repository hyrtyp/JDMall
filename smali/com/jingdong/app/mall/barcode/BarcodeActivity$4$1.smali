.class Lcom/jingdong/app/mall/barcode/BarcodeActivity$4$1;
.super Ljava/lang/Object;
.source "BarcodeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/barcode/BarcodeActivity$4;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/barcode/BarcodeActivity$4;

.field private final synthetic val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity$4;Lcom/jingdong/common/entity/BarcodeRecord;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$4$1;->this$1:Lcom/jingdong/app/mall/barcode/BarcodeActivity$4;

    iput-object p2, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$4$1;->val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 294
    if-nez p2, :cond_0

    .line 295
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$4$1;->this$1:Lcom/jingdong/app/mall/barcode/BarcodeActivity$4;

    #getter for: Lcom/jingdong/app/mall/barcode/BarcodeActivity$4;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$4;->access$0(Lcom/jingdong/app/mall/barcode/BarcodeActivity$4;)Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/barcode/BarcodeActivity;->dbHelper:Lcom/jingdong/common/utils/DBHelperUtil;
    invoke-static {v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->access$3(Lcom/jingdong/app/mall/barcode/BarcodeActivity;)Lcom/jingdong/common/utils/DBHelperUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$4$1;->val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/DBHelperUtil;->delBarcodeRecord(Lcom/jingdong/common/entity/BarcodeRecord;)V

    .line 296
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$4$1;->this$1:Lcom/jingdong/app/mall/barcode/BarcodeActivity$4;

    #getter for: Lcom/jingdong/app/mall/barcode/BarcodeActivity$4;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$4;->access$0(Lcom/jingdong/app/mall/barcode/BarcodeActivity$4;)Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyRecordList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->access$4(Lcom/jingdong/app/mall/barcode/BarcodeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$4$1;->val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 297
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$4$1;->this$1:Lcom/jingdong/app/mall/barcode/BarcodeActivity$4;

    #getter for: Lcom/jingdong/app/mall/barcode/BarcodeActivity$4;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$4;->access$0(Lcom/jingdong/app/mall/barcode/BarcodeActivity$4;)Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->access$5(Lcom/jingdong/app/mall/barcode/BarcodeActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 300
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 301
    return-void
.end method
