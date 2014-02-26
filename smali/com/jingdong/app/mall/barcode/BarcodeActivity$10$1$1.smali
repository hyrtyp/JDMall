.class Lcom/jingdong/app/mall/barcode/BarcodeActivity$10$1$1;
.super Ljava/lang/Object;
.source "BarcodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/barcode/BarcodeActivity$10$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/barcode/BarcodeActivity$10$1;

.field private final synthetic val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity$10$1;Lcom/jingdong/common/entity/BarcodeRecord;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$10$1$1;->this$2:Lcom/jingdong/app/mall/barcode/BarcodeActivity$10$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$10$1$1;->val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$10$1$1;->this$2:Lcom/jingdong/app/mall/barcode/BarcodeActivity$10$1;

    #getter for: Lcom/jingdong/app/mall/barcode/BarcodeActivity$10$1;->this$1:Lcom/jingdong/app/mall/barcode/BarcodeActivity$10;
    invoke-static {v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$10$1;->access$0(Lcom/jingdong/app/mall/barcode/BarcodeActivity$10$1;)Lcom/jingdong/app/mall/barcode/BarcodeActivity$10;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/barcode/BarcodeActivity$10;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$10;->access$0(Lcom/jingdong/app/mall/barcode/BarcodeActivity$10;)Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$10$1$1;->val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

    #calls: Lcom/jingdong/app/mall/barcode/BarcodeActivity;->queryServer(Lcom/jingdong/common/entity/BarcodeRecord;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->access$2(Lcom/jingdong/app/mall/barcode/BarcodeActivity;Lcom/jingdong/common/entity/BarcodeRecord;)V

    .line 622
    return-void
.end method
