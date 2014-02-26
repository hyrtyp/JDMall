.class Lcom/jingdong/app/mall/barcode/SFHCamera$1;
.super Ljava/lang/Object;
.source "SFHCamera.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/barcode/SFHCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/barcode/SFHCamera;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/barcode/SFHCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/barcode/SFHCamera$1;->this$0:Lcom/jingdong/app/mall/barcode/SFHCamera;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2
    .parameter "success"
    .parameter "camera"

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/SFHCamera$1;->this$0:Lcom/jingdong/app/mall/barcode/SFHCamera;

    #getter for: Lcom/jingdong/app/mall/barcode/SFHCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/jingdong/app/mall/barcode/SFHCamera;->access$0(Lcom/jingdong/app/mall/barcode/SFHCamera;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/barcode/SFHCamera$1;->this$0:Lcom/jingdong/app/mall/barcode/SFHCamera;

    #getter for: Lcom/jingdong/app/mall/barcode/SFHCamera;->previewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v1}, Lcom/jingdong/app/mall/barcode/SFHCamera;->access$1(Lcom/jingdong/app/mall/barcode/SFHCamera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 82
    :cond_0
    return-void
.end method
