.class Lcom/jingdong/app/mall/barcode/BarcodeActivity$9$3;
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

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9$3;->this$1:Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;

    iput-object p2, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9$3;->val$intent:Landroid/content/Intent;

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9$3;->this$1:Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;

    #getter for: Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->access$0(Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;)Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/barcode/BarcodeActivity;->historyAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->access$5(Lcom/jingdong/app/mall/barcode/BarcodeActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 590
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9$3;->this$1:Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;

    #getter for: Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->access$0(Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;)Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9$3;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->startActivity(Landroid/content/Intent;)V

    .line 591
    return-void
.end method
