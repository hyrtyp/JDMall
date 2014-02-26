.class Lcom/jingdong/app/mall/barcode/BarcodeActivity$9$2;
.super Ljava/lang/Object;
.source "BarcodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;

.field private final synthetic val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

.field private final synthetic val$product:Lcom/jingdong/common/entity/Product;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;Lcom/jingdong/common/entity/Product;Lcom/jingdong/common/entity/BarcodeRecord;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9$2;->this$1:Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;

    iput-object p2, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9$2;->val$product:Lcom/jingdong/common/entity/Product;

    iput-object p3, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9$2;->val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 566
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9$2;->this$1:Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;

    #getter for: Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->access$0(Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;)Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->access$5(Lcom/jingdong/app/mall/barcode/BarcodeActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 567
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9$2;->this$1:Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;

    #getter for: Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->access$0(Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;)Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9$2;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    .line 568
    new-instance v3, Lcom/jingdong/common/entity/SourceEntity;

    const-string v4, "wareIdByBarCodeList"

    iget-object v5, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9$2;->val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/BarcodeRecord;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-static {v0, v1, v2, v3}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductDetailActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Lcom/jingdong/common/entity/SourceEntity;)V

    .line 569
    return-void
.end method
