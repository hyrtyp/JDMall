.class Lcom/jingdong/app/mall/barcode/BarcodeActivity$4;
.super Ljava/lang/Object;
.source "BarcodeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/barcode/BarcodeActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$4;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/barcode/BarcodeActivity$4;)Lcom/jingdong/app/mall/barcode/BarcodeActivity;
    .locals 1
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$4;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    .line 286
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/BarcodeRecord;

    .line 288
    .local v1, barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$4;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 289
    .local v0, alertDialog:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$4;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    const v3, 0x7f0701a8

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 290
    new-array v2, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$4;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    const v5, 0x7f0701a7

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Lcom/jingdong/app/mall/barcode/BarcodeActivity$4$1;

    invoke-direct {v3, p0, v1}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$4$1;-><init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity$4;Lcom/jingdong/common/entity/BarcodeRecord;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 304
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 306
    return v6
.end method
