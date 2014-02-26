.class Lcom/jingdong/app/mall/barcode/BarcodeActivity$10$1;
.super Ljava/lang/Object;
.source "BarcodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/barcode/BarcodeActivity$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/barcode/BarcodeActivity$10;

.field private final synthetic val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity$10;Lcom/jingdong/common/entity/BarcodeRecord;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$10$1;->this$1:Lcom/jingdong/app/mall/barcode/BarcodeActivity$10;

    iput-object p2, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$10$1;->val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/barcode/BarcodeActivity$10$1;)Lcom/jingdong/app/mall/barcode/BarcodeActivity$10;
    .locals 1
    .parameter

    .prologue
    .line 613
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$10$1;->this$1:Lcom/jingdong/app/mall/barcode/BarcodeActivity$10;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 617
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$10$1;->this$1:Lcom/jingdong/app/mall/barcode/BarcodeActivity$10;

    #getter for: Lcom/jingdong/app/mall/barcode/BarcodeActivity$10;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$10;->access$0(Lcom/jingdong/app/mall/barcode/BarcodeActivity$10;)Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/barcode/BarcodeActivity$10$1$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$10$1;->val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

    invoke-direct {v1, p0, v2}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$10$1$1;-><init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity$10$1;Lcom/jingdong/common/entity/BarcodeRecord;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->post(Ljava/lang/Runnable;)V

    .line 625
    return-void
.end method
