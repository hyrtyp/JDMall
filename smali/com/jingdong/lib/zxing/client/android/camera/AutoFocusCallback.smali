.class final Lcom/jingdong/lib/zxing/client/android/camera/AutoFocusCallback;
.super Ljava/lang/Object;
.source "AutoFocusCallback.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# static fields
.field private static final AUTOFOCUS_INTERVAL_MS:J = 0x5dcL

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private autoFocusHandler:Landroid/os/Handler;

.field private autoFocusMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/jingdong/lib/zxing/client/android/camera/AutoFocusCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/lib/zxing/client/android/camera/AutoFocusCallback;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 4
    .parameter "success"
    .parameter "camera"

    .prologue
    .line 40
    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/camera/AutoFocusCallback;->autoFocusHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/camera/AutoFocusCallback;->autoFocusHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/jingdong/lib/zxing/client/android/camera/AutoFocusCallback;->autoFocusMessage:I

    .line 42
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 41
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 46
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/camera/AutoFocusCallback;->autoFocusHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 47
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jingdong/lib/zxing/client/android/camera/AutoFocusCallback;->autoFocusHandler:Landroid/os/Handler;

    .line 53
    .end local v0           #message:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method setHandler(Landroid/os/Handler;I)V
    .locals 0
    .parameter "autoFocusHandler"
    .parameter "autoFocusMessage"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/jingdong/lib/zxing/client/android/camera/AutoFocusCallback;->autoFocusHandler:Landroid/os/Handler;

    .line 36
    iput p2, p0, Lcom/jingdong/lib/zxing/client/android/camera/AutoFocusCallback;->autoFocusMessage:I

    .line 37
    return-void
.end method
