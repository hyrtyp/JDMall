.class Lcom/jingdong/app/mall/barcode/BarcodeInputActivity$3;
.super Ljava/lang/Object;
.source "BarcodeInputActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;->init()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity$3;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity$3;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;->finish()V

    .line 71
    return-void
.end method
