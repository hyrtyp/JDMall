.class Lcom/jingdong/app/mall/barcode/BarcodeInputActivity$2;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity$2;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity$2;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;

    #calls: Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;->submit()V
    invoke-static {v0}, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;->access$0(Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;)V

    .line 63
    return-void
.end method
