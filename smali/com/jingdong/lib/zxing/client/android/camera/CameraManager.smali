.class public final Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final MAX_FRAME_HEIGHT:I = 0x168

.field private static final MAX_FRAME_WIDTH:I = 0x438

.field private static final MIN_FRAME_HEIGHT:I = 0xf0

.field private static final MIN_FRAME_WIDTH:I = 0xf0

.field static final SDK_INT:I

.field private static final TAG:Ljava/lang/String;

.field private static cameraManager:Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;


# instance fields
.field private final autoFocusCallback:Lcom/jingdong/lib/zxing/client/android/camera/AutoFocusCallback;

.field private camera:Landroid/hardware/Camera;

.field private final configManager:Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private initialized:Z

.field private final previewCallback:Lcom/jingdong/lib/zxing/client/android/camera/PreviewCallback;

.field private previewing:Z

.field private final useOneShotPreviewCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const-class v2, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    .line 54
    :try_start_0
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 59
    .local v1, sdkInt:I
    :goto_0
    sput v1, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->SDK_INT:I

    .line 60
    return-void

    .line 55
    .end local v1           #sdkInt:I
    :catch_0
    move-exception v0

    .line 57
    .local v0, nfe:Ljava/lang/NumberFormatException;
    const/16 v1, 0x2710

    .restart local v1       #sdkInt:I
    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->context:Landroid/content/Context;

    .line 106
    new-instance v0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->configManager:Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;

    .line 118
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->useOneShotPreviewCallback:Z

    .line 122
    new-instance v0, Lcom/jingdong/lib/zxing/client/android/camera/PreviewCallback;

    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->configManager:Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;

    .line 123
    iget-boolean v2, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->useOneShotPreviewCallback:Z

    invoke-direct {v0, v1, v2}, Lcom/jingdong/lib/zxing/client/android/camera/PreviewCallback;-><init>(Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;Z)V

    .line 122
    iput-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/jingdong/lib/zxing/client/android/camera/PreviewCallback;

    .line 124
    new-instance v0, Lcom/jingdong/lib/zxing/client/android/camera/AutoFocusCallback;

    invoke-direct {v0}, Lcom/jingdong/lib/zxing/client/android/camera/AutoFocusCallback;-><init>()V

    iput-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->autoFocusCallback:Lcom/jingdong/lib/zxing/client/android/camera/AutoFocusCallback;

    .line 125
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static get()Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->cameraManager:Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 89
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->cameraManager:Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;

    invoke-direct {v0, p0}, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->cameraManager:Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;

    .line 92
    :cond_0
    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;
    .locals 11
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v10

    .line 337
    .local v10, rect:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->configManager:Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->getPreviewFormat()I

    move-result v8

    .line 338
    .local v8, previewFormat:I
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->configManager:Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->getPreviewFormatString()Ljava/lang/String;

    move-result-object v9

    .line 339
    .local v9, previewFormatString:Ljava/lang/String;
    packed-switch v8, :pswitch_data_0

    .line 355
    const-string v0, "yuv420p"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    new-instance v0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;

    .line 357
    iget v4, v10, Landroid/graphics/Rect;->left:I

    iget v5, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 356
    invoke-direct/range {v0 .. v7}, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    :goto_0
    return-object v0

    .line 348
    :pswitch_0
    new-instance v0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;

    iget v4, v10, Landroid/graphics/Rect;->left:I

    .line 349
    iget v5, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 348
    invoke-direct/range {v0 .. v7}, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    goto :goto_0

    .line 360
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported picture format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public closeDriver()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 159
    invoke-static {}, Lcom/jingdong/lib/zxing/client/android/camera/FlashlightManager;->disableFlashlight()V

    .line 160
    iget-boolean v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->previewing:Z

    .line 168
    :cond_1
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getFramingRect()Landroid/graphics/Rect;
    .locals 8

    .prologue
    .line 254
    iget-object v5, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->configManager:Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v5}, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 255
    .local v2, screenResolution:Landroid/graphics/Point;
    iget-object v5, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    if-nez v5, :cond_2

    .line 256
    iget-object v5, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v5, :cond_0

    .line 257
    const/4 v5, 0x0

    .line 275
    :goto_0
    return-object v5

    .line 259
    :cond_0
    iget v5, v2, Landroid/graphics/Point;->x:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v4, v5, 0x4

    .line 260
    .local v4, width:I
    const/16 v5, 0xf0

    if-ge v4, v5, :cond_3

    .line 261
    const/16 v4, 0xf0

    .line 265
    :cond_1
    :goto_1
    iget v5, v2, Landroid/graphics/Point;->y:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v0, v5, 0x4

    .line 268
    .local v0, height:I
    move v0, v4

    .line 269
    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v4

    div-int/lit8 v1, v5, 0x2

    .line 270
    .local v1, leftOffset:I
    iget v5, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v0

    div-int/lit8 v3, v5, 0x2

    .line 271
    .local v3, topOffset:I
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v1, v4

    .line 272
    add-int v7, v3, v0

    invoke-direct {v5, v1, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 271
    iput-object v5, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 273
    sget-object v5, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Calculated framing rect: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .end local v0           #height:I
    .end local v1           #leftOffset:I
    .end local v3           #topOffset:I
    .end local v4           #width:I
    :cond_2
    iget-object v5, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 262
    .restart local v4       #width:I
    :cond_3
    const/16 v5, 0x438

    if-le v4, v5, :cond_1

    .line 263
    const/16 v4, 0x438

    goto :goto_1
.end method

.method public getFramingRectInPreview()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 283
    iget-object v3, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v3, :cond_0

    .line 284
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 285
    .local v1, rect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->configManager:Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v3}, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    .line 286
    .local v0, cameraResolution:Landroid/graphics/Point;
    iget-object v3, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->configManager:Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v3}, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 294
    .local v2, screenResolution:Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 295
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 296
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 297
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 298
    iput-object v1, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    .line 300
    .end local v0           #cameraResolution:Landroid/graphics/Point;
    .end local v1           #rect:Landroid/graphics/Rect;
    .end local v2           #screenResolution:Landroid/graphics/Point;
    :cond_0
    iget-object v3, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    return-object v3
.end method

.method public openDriver(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 138
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 139
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 144
    iget-boolean v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->initialized:Z

    if-nez v0, :cond_1

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->initialized:Z

    .line 146
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->configManager:Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;

    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->configManager:Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;

    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;)V

    .line 150
    invoke-static {}, Lcom/jingdong/lib/zxing/client/android/camera/FlashlightManager;->enableFlashlight()V

    .line 152
    :cond_2
    return-void
.end method

.method public requestAutoFocus(Landroid/os/Handler;I)V
    .locals 2
    .parameter "handler"
    .parameter "message"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->autoFocusCallback:Lcom/jingdong/lib/zxing/client/android/camera/AutoFocusCallback;

    invoke-virtual {v0, p1, p2}, Lcom/jingdong/lib/zxing/client/android/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 241
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->autoFocusCallback:Lcom/jingdong/lib/zxing/client/android/camera/AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 243
    :cond_0
    return-void
.end method

.method public requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 2
    .parameter "handler"
    .parameter "message"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/jingdong/lib/zxing/client/android/camera/PreviewCallback;

    invoke-virtual {v0, p1, p2}, Lcom/jingdong/lib/zxing/client/android/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 221
    iget-boolean v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->useOneShotPreviewCallback:Z

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/jingdong/lib/zxing/client/android/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/jingdong/lib/zxing/client/android/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0
.end method

.method public startPreview()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->previewing:Z

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->previewing:Z

    .line 191
    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 197
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 198
    iget-boolean v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->useOneShotPreviewCallback:Z

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 202
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/jingdong/lib/zxing/client/android/camera/PreviewCallback;

    invoke-virtual {v0, v2, v1}, Lcom/jingdong/lib/zxing/client/android/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 203
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->autoFocusCallback:Lcom/jingdong/lib/zxing/client/android/camera/AutoFocusCallback;

    invoke-virtual {v0, v2, v1}, Lcom/jingdong/lib/zxing/client/android/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 204
    iput-boolean v1, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->previewing:Z

    .line 206
    :cond_1
    return-void
.end method
