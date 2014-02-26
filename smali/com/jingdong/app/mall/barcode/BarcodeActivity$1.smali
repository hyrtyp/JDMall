.class Lcom/jingdong/app/mall/barcode/BarcodeActivity$1;
.super Ljava/lang/Object;
.source "BarcodeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/barcode/BarcodeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$1;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/barcode/BarcodeActivity$1;)Lcom/jingdong/app/mall/barcode/BarcodeActivity;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$1;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 89
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$1;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 90
    .local v0, alertDialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0701bd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 91
    const v1, 0x7f0701be

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 92
    const v1, 0x7f0701a1

    new-instance v2, Lcom/jingdong/app/mall/barcode/BarcodeActivity$1$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$1$1;-><init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    const v1, 0x7f07014d

    new-instance v2, Lcom/jingdong/app/mall/barcode/BarcodeActivity$1$2;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$1$2;-><init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 106
    return-void
.end method
