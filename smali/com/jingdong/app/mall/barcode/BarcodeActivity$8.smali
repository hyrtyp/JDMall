.class Lcom/jingdong/app/mall/barcode/BarcodeActivity$8;
.super Ljava/lang/Object;
.source "BarcodeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/barcode/BarcodeActivity;->noScanAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

.field private final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$8;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$8;->val$alertDialog:Landroid/app/AlertDialog;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$8;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 359
    return-void
.end method
