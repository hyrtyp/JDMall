.class public Lcom/jingdong/app/mall/barcode/SFHCamera;
.super Ljava/lang/Object;
.source "SFHCamera.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private height:I

.field private holder:Landroid/view/SurfaceHolder;

.field private mAutoFocusCallBack:Landroid/hardware/Camera$AutoFocusCallback;

.field private mCamera:Landroid/hardware/Camera;

.field private previewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/view/SurfaceHolder;IILandroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .parameter "holder"
    .parameter "w"
    .parameter "h"
    .parameter "previewCallback"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/barcode/SFHCamera;->holder:Landroid/view/SurfaceHolder;

    .line 75
    new-instance v0, Lcom/jingdong/app/mall/barcode/SFHCamera$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/barcode/SFHCamera$1;-><init>(Lcom/jingdong/app/mall/barcode/SFHCamera;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/barcode/SFHCamera;->mAutoFocusCallBack:Landroid/hardware/Camera$AutoFocusCallback;

    .line 19
    iput-object p1, p0, Lcom/jingdong/app/mall/barcode/SFHCamera;->holder:Landroid/view/SurfaceHolder;

    .line 20
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/SFHCamera;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 21
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/SFHCamera;->holder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 22
    iput p2, p0, Lcom/jingdong/app/mall/barcode/SFHCamera;->width:I

    .line 23
    iput p3, p0, Lcom/jingdong/app/mall/barcode/SFHCamera;->height:I

    .line 24
    iput-object p4, p0, Lcom/jingdong/app/mall/barcode/SFHCamera;->previewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/barcode/SFHCamera;)Landroid/hardware/Camera;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/SFHCamera;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/barcode/SFHCamera;)Landroid/hardware/Camera$PreviewCallback;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/SFHCamera;->previewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object v0
.end method


# virtual methods
.method public AutoFocusAndPreviewCallback()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/SFHCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/SFHCamera;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/jingdong/app/mall/barcode/SFHCamera;->mAutoFocusCallBack:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 70
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 29
    iget-object v1, p0, Lcom/jingdong/app/mall/barcode/SFHCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 30
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    iget v1, p0, Lcom/jingdong/app/mall/barcode/SFHCamera;->width:I

    iget v2, p0, Lcom/jingdong/app/mall/barcode/SFHCamera;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 31
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 32
    iget-object v1, p0, Lcom/jingdong/app/mall/barcode/SFHCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 33
    iget-object v1, p0, Lcom/jingdong/app/mall/barcode/SFHCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 37
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 41
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/barcode/SFHCamera;->mCamera:Landroid/hardware/Camera;

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/barcode/SFHCamera;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/jingdong/app/mall/barcode/SFHCamera;->holder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/jingdong/app/mall/barcode/SFHCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jingdong/app/mall/barcode/SFHCamera;->mCamera:Landroid/hardware/Camera;

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/SFHCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 57
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/SFHCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 58
    iput-object v1, p0, Lcom/jingdong/app/mall/barcode/SFHCamera;->mCamera:Landroid/hardware/Camera;

    .line 62
    return-void
.end method
