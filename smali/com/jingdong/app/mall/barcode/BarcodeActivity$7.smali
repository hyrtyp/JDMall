.class Lcom/jingdong/app/mall/barcode/BarcodeActivity$7;
.super Ljava/lang/Object;
.source "BarcodeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/barcode/BarcodeActivity;->init()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$7;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$7;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    #calls: Lcom/jingdong/app/mall/barcode/BarcodeActivity;->input()V
    invoke-static {v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->access$7(Lcom/jingdong/app/mall/barcode/BarcodeActivity;)V

    .line 342
    return-void
.end method
