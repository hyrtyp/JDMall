.class public final Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

.field private final decodeThread:Lcom/jingdong/lib/zxing/client/android/DecodeThread;

.field private state:Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 40
    sput-object v0, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/lib/zxing/client/android/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter
    .parameter "characterSet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/lib/zxing/client/android/CaptureActivity;",
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, decodeFormats:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->activity:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    .line 54
    new-instance v0, Lcom/jingdong/lib/zxing/client/android/DecodeThread;

    .line 55
    new-instance v1, Lcom/jingdong/lib/zxing/client/android/ViewfinderResultPointCallback;

    invoke-virtual {p1}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->getViewfinderView()Lcom/jingdong/lib/zxing/client/android/ViewfinderView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jingdong/lib/zxing/client/android/ViewfinderResultPointCallback;-><init>(Lcom/jingdong/lib/zxing/client/android/ViewfinderView;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/jingdong/lib/zxing/client/android/DecodeThread;-><init>(Lcom/jingdong/lib/zxing/client/android/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    .line 54
    iput-object v0, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/jingdong/lib/zxing/client/android/DecodeThread;

    .line 56
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/jingdong/lib/zxing/client/android/DecodeThread;

    invoke-virtual {v0}, Lcom/jingdong/lib/zxing/client/android/DecodeThread;->start()V

    .line 57
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->state:Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler$State;

    .line 59
    invoke-static {}, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->get()Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->startPreview()V

    .line 60
    invoke-direct {p0}, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->restartPreviewAndDecode()V

    .line 61
    return-void
.end method

.method private restartPreviewAndDecode()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->state:Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler$State;

    sget-object v1, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    .line 131
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler$State;->PREVIEW:Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->state:Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler$State;

    .line 132
    invoke-static {}, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->get()Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/jingdong/lib/zxing/client/android/DecodeThread;

    invoke-virtual {v1}, Lcom/jingdong/lib/zxing/client/android/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 133
    const v2, 0x7f0c000d

    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 134
    invoke-static {}, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->get()Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;

    move-result-object v0

    const v1, 0x7f0c000c

    invoke-virtual {v0, p0, v1}, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    .line 135
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->activity:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    invoke-virtual {v0}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->drawViewfinder()V

    .line 137
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "message"

    .prologue
    .line 65
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 111
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 72
    :pswitch_1
    iget-object v3, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->state:Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler$State;

    sget-object v4, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler$State;->PREVIEW:Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler$State;

    if-ne v3, v4, :cond_0

    .line 73
    invoke-static {}, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->get()Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;

    move-result-object v3

    const v4, 0x7f0c000c

    invoke-virtual {v3, p0, v4}, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    goto :goto_0

    .line 77
    :pswitch_2
    sget-object v3, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v4, "Got restart preview message"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-direct {p0}, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto :goto_0

    .line 81
    :pswitch_3
    sget-object v3, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v4, "Got decode succeeded message"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v3, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler$State;

    iput-object v3, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->state:Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler$State;

    .line 83
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->activity:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/google/zxing/Result;

    invoke-virtual {v4, v3}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->handleDecode(Lcom/google/zxing/Result;)V

    goto :goto_0

    .line 94
    .end local v0           #bundle:Landroid/os/Bundle;
    :pswitch_4
    sget-object v3, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler$State;->PREVIEW:Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler$State;

    iput-object v3, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->state:Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler$State;

    .line 95
    invoke-static {}, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->get()Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/jingdong/lib/zxing/client/android/DecodeThread;

    invoke-virtual {v4}, Lcom/jingdong/lib/zxing/client/android/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 96
    const v5, 0x7f0c000d

    .line 95
    invoke-virtual {v3, v4, v5}, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto :goto_0

    .line 99
    :pswitch_5
    sget-object v3, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v4, "Got return scan result message"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v4, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->activity:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    const/4 v5, -0x1

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v4, v5, v3}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 101
    iget-object v3, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->activity:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    invoke-virtual {v3}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->finish()V

    goto :goto_0

    .line 104
    :pswitch_6
    sget-object v3, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v4, "Got product query message"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 106
    .local v2, url:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 107
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    iget-object v3, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->activity:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    invoke-virtual {v3, v1}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c000c
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public quitSynchronously()V
    .locals 3

    .prologue
    .line 114
    sget-object v1, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler$State;->DONE:Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler$State;

    iput-object v1, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->state:Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler$State;

    .line 115
    invoke-static {}, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->get()Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->stopPreview()V

    .line 116
    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/jingdong/lib/zxing/client/android/DecodeThread;

    invoke-virtual {v1}, Lcom/jingdong/lib/zxing/client/android/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f0c0011

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 117
    .local v0, quit:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/jingdong/lib/zxing/client/android/DecodeThread;

    invoke-virtual {v1}, Lcom/jingdong/lib/zxing/client/android/DecodeThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    const v1, 0x7f0c000f

    invoke-virtual {p0, v1}, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->removeMessages(I)V

    .line 126
    const v1, 0x7f0c000e

    invoke-virtual {p0, v1}, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->removeMessages(I)V

    .line 127
    return-void

    .line 120
    :catch_0
    move-exception v1

    goto :goto_0
.end method
