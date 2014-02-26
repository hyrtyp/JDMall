.class public final Lcom/jingdong/lib/zxing/client/android/camera/open/OpenCameraManager;
.super Lcom/jingdong/lib/zxing/client/android/executor/PlatformSupportManager;
.source "OpenCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jingdong/lib/zxing/client/android/executor/PlatformSupportManager",
        "<",
        "Lcom/jingdong/lib/zxing/client/android/camera/open/OpenCameraInterface;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    const-class v0, Lcom/jingdong/lib/zxing/client/android/camera/open/OpenCameraInterface;

    new-instance v1, Lcom/jingdong/lib/zxing/client/android/camera/open/DefaultOpenCameraInterface;

    invoke-direct {v1}, Lcom/jingdong/lib/zxing/client/android/camera/open/DefaultOpenCameraInterface;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/jingdong/lib/zxing/client/android/executor/PlatformSupportManager;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 32
    return-void
.end method
