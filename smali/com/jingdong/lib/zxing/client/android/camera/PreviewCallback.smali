.class final Lcom/jingdong/lib/zxing/client/android/camera/PreviewCallback;
.super Ljava/lang/Object;
.source "PreviewCallback.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final configManager:Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;

.field private previewHandler:Landroid/os/Handler;

.field private previewMessage:I

.field private final useOneShotPreviewCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/jingdong/lib/zxing/client/android/camera/PreviewCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/lib/zxing/client/android/camera/PreviewCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;Z)V
    .locals 0
    .parameter "configManager"
    .parameter "useOneShotPreviewCallback"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/jingdong/lib/zxing/client/android/camera/PreviewCallback;->configManager:Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;

    .line 37
    iput-boolean p2, p0, Lcom/jingdong/lib/zxing/client/android/camera/PreviewCallback;->useOneShotPreviewCallback:Z

    .line 38
    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 7
    .parameter "data"
    .parameter "camera"

    .prologue
    const/4 v6, 0x0

    .line 47
    iget-object v2, p0, Lcom/jingdong/lib/zxing/client/android/camera/PreviewCallback;->configManager:Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v2}, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    .line 48
    .local v0, cameraResolution:Landroid/graphics/Point;
    iget-boolean v2, p0, Lcom/jingdong/lib/zxing/client/android/camera/PreviewCallback;->useOneShotPreviewCallback:Z

    if-nez v2, :cond_0

    .line 49
    invoke-virtual {p2, v6}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/jingdong/lib/zxing/client/android/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 52
    iget-object v2, p0, Lcom/jingdong/lib/zxing/client/android/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/jingdong/lib/zxing/client/android/camera/PreviewCallback;->previewMessage:I

    .line 53
    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    .line 52
    invoke-virtual {v2, v3, v4, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 54
    .local v1, message:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 55
    iput-object v6, p0, Lcom/jingdong/lib/zxing/client/android/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    .line 59
    .end local v1           #message:Landroid/os/Message;
    :goto_0
    return-void

    .line 57
    :cond_1
    sget-object v2, Lcom/jingdong/lib/zxing/client/android/camera/PreviewCallback;->TAG:Ljava/lang/String;

    const-string v3, "Got preview callback, but no handler for it"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setHandler(Landroid/os/Handler;I)V
    .locals 0
    .parameter "previewHandler"
    .parameter "previewMessage"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/jingdong/lib/zxing/client/android/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    .line 42
    iput p2, p0, Lcom/jingdong/lib/zxing/client/android/camera/PreviewCallback;->previewMessage:I

    .line 43
    return-void
.end method
