.class Lcom/jingdong/app/mall/barcode/BarcodeActivity$11;
.super Ljava/lang/Object;
.source "BarcodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/barcode/BarcodeActivity;->saveBarcodeProduct(Lcom/jingdong/common/entity/BarcodeRecord;Lcom/jingdong/common/entity/Product;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

.field private final synthetic val$product:Lcom/jingdong/common/entity/Product;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity;Lcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$11;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$11;->val$product:Lcom/jingdong/common/entity/Product;

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 672
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$11;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    #getter for: Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->access$5(Lcom/jingdong/app/mall/barcode/BarcodeActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 673
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$11;->val$product:Lcom/jingdong/common/entity/Product;

    if-nez v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$11;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    const v1, 0x7f0701c6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 676
    :cond_0
    return-void
.end method
