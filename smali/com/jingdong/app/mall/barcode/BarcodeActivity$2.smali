.class Lcom/jingdong/app/mall/barcode/BarcodeActivity$2;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "BarcodeActivity.java"


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
.method constructor <init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"

    .prologue
    .line 1
    .local p3, $anonymous1:Ljava/util/List;,"Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$2;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 254
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$2;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    #calls: Lcom/jingdong/app/mall/barcode/BarcodeActivity;->checkEmptyForCutUI()V
    invoke-static {v0}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->access$1(Lcom/jingdong/app/mall/barcode/BarcodeActivity;)V

    .line 266
    invoke-super {p0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 267
    return-void
.end method
