.class Lcom/jingdong/app/mall/barcode/BarcodeInputActivity$1;
.super Ljava/lang/Object;
.source "BarcodeInputActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity$1;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 44
    iget-object v1, p0, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity$1;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 45
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 46
    return-void
.end method
