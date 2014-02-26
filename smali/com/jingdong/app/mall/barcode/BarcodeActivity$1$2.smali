.class Lcom/jingdong/app/mall/barcode/BarcodeActivity$1$2;
.super Ljava/lang/Object;
.source "BarcodeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/barcode/BarcodeActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/barcode/BarcodeActivity$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$1$2;->this$1:Lcom/jingdong/app/mall/barcode/BarcodeActivity$1;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$1$2;->this$1:Lcom/jingdong/app/mall/barcode/BarcodeActivity$1;

    #getter for: Lcom/jingdong/app/mall/barcode/BarcodeActivity$1;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$1;->access$0(Lcom/jingdong/app/mall/barcode/BarcodeActivity$1;)Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/barcode/BarcodeActivity;->clear()V
    invoke-static {v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->access$0(Lcom/jingdong/app/mall/barcode/BarcodeActivity;)V

    .line 102
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 103
    return-void
.end method
