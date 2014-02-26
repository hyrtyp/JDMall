.class Lcom/jingdong/app/mall/barcode/BarcodeActivity$10;
.super Ljava/lang/Object;
.source "BarcodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/barcode/BarcodeActivity;->login(Lcom/jingdong/common/entity/BarcodeRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

.field private final synthetic val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity;Lcom/jingdong/common/entity/BarcodeRecord;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$10;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$10;->val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/barcode/BarcodeActivity$10;)Lcom/jingdong/app/mall/barcode/BarcodeActivity;
    .locals 1
    .parameter

    .prologue
    .line 610
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$10;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 613
    new-instance v0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$10$1;

    iget-object v1, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$10;->val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

    invoke-direct {v0, p0, v1}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$10$1;-><init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity$10;Lcom/jingdong/common/entity/BarcodeRecord;)V

    .line 628
    .local v0, runnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->getInstance()Lcom/jingdong/app/mall/utils/LoginUser;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$10;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$10;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    const v4, 0x7f0701ca

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/jingdong/app/mall/utils/LoginUser;->executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;Ljava/lang/String;Z)V

    .line 629
    return-void
.end method
