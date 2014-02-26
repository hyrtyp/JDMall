.class public Lcom/jingdong/lib/zxing/client/android/CaptureActivity;
.super Landroid/app/Activity;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final BEEP_VOLUME:F = 0.1f

.field private static final VIBRATE_DURATION:J = 0xc8L

.field private static mCaptureActivity:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;


# instance fields
.field private final beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private characterSet:Ljava/lang/String;

.field private decodeFormats:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;

.field private hasSurface:Z

.field private inactivityTimer:Lcom/jingdong/lib/zxing/client/android/InactivityTimer;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private playBeep:Z

.field private vibrate:Z

.field private viewfinderView:Lcom/jingdong/lib/zxing/client/android/ViewfinderView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 269
    new-instance v0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity$1;-><init>(Lcom/jingdong/lib/zxing/client/android/CaptureActivity;)V

    iput-object v0, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 38
    return-void
.end method

.method public static closeScanApp()V
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->mCaptureActivity:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    if-eqz v0, :cond_1

    .line 97
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->mCaptureActivity:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    iget-object v0, v0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/jingdong/lib/zxing/client/android/InactivityTimer;

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->mCaptureActivity:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    iget-object v0, v0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/jingdong/lib/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Lcom/jingdong/lib/zxing/client/android/InactivityTimer;->shutdown()V

    .line 99
    :cond_0
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->mCaptureActivity:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    invoke-virtual {v0}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->finish()V

    .line 102
    :cond_1
    return-void
.end method

.method private initBeepSound()V
    .locals 8

    .prologue
    const/4 v1, 0x3

    .line 233
    iget-boolean v0, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->playBeep:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 237
    invoke-virtual {p0, v1}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->setVolumeControlStream(I)V

    .line 238
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 239
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 240
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 242
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 244
    .local v7, file:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 245
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 246
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    const v1, 0x3dcccccd

    const v2, 0x3dcccccd

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 247
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v7           #file:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    :goto_0
    return-void

    .line 248
    .restart local v7       #file:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v6

    .line 249
    .local v6, e:Ljava/io/IOException;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 5
    .parameter "surfaceHolder"

    .prologue
    .line 188
    :try_start_0
    invoke-static {}, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->get()Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 194
    iget-object v2, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->handler:Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;

    if-nez v2, :cond_0

    .line 195
    new-instance v2, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;

    iget-object v3, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->decodeFormats:Ljava/util/Vector;

    iget-object v4, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->characterSet:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;-><init>(Lcom/jingdong/lib/zxing/client/android/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->handler:Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, ioe:Ljava/io/IOException;
    goto :goto_0

    .line 191
    .end local v1           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 192
    .local v0, e:Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method private playBeepSoundAndVibrate()V
    .locals 3

    .prologue
    .line 257
    iget-boolean v1, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->playBeep:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 260
    :cond_0
    iget-boolean v1, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->vibrate:Z

    if-eqz v1, :cond_1

    .line 261
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 262
    .local v0, vibrator:Landroid/os/Vibrator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 264
    .end local v0           #vibrator:Landroid/os/Vibrator;
    :cond_1
    return-void
.end method


# virtual methods
.method public drawViewfinder()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/jingdong/lib/zxing/client/android/ViewfinderView;

    invoke-virtual {v0}, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->drawViewfinder()V

    .line 230
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->handler:Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;

    return-object v0
.end method

.method public getViewfinderView()Lcom/jingdong/lib/zxing/client/android/ViewfinderView;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/jingdong/lib/zxing/client/android/ViewfinderView;

    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 165
    iget-object v4, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/jingdong/lib/zxing/client/android/InactivityTimer;

    invoke-virtual {v4}, Lcom/jingdong/lib/zxing/client/android/InactivityTimer;->onActivity()V

    .line 166
    invoke-direct {p0}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->playBeepSoundAndVibrate()V

    .line 167
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, resultString:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/BarcodeFormat;->name()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, formatString:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    const-string v4, "Scan failed!"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 183
    :goto_0
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->finish()V

    .line 184
    return-void

    .line 173
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .local v2, resultIntent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 175
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "SCAN_RESULT"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v4, "SCAN_RESULT_FORMAT"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 178
    const-string v4, "com.jingdong.lib.zxing.client.android.SCAN"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, v2}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    .line 180
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v5, 0x7f030001

    invoke-virtual {p0, v5}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 58
    .local v4, window:Landroid/view/Window;
    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 59
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->init(Landroid/content/Context;)V

    .line 60
    const v5, 0x7f0c001c

    invoke-virtual {p0, v5}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;

    iput-object v5, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/jingdong/lib/zxing/client/android/ViewfinderView;

    .line 62
    const v5, 0x7f0c001d

    invoke-virtual {p0, v5}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 63
    .local v1, mbuttonBack:Landroid/widget/ImageView;
    const v5, 0x7f0c001f

    invoke-virtual {p0, v5}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 64
    .local v3, mbuttonInput:Landroid/widget/Button;
    const v5, 0x7f0c001e

    invoke-virtual {p0, v5}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 65
    .local v2, mbuttonHistory:Landroid/widget/Button;
    new-instance v0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity$2;

    invoke-direct {v0, p0}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity$2;-><init>(Lcom/jingdong/lib/zxing/client/android/CaptureActivity;)V

    .line 86
    .local v0, clickListener:Landroid/view/View$OnClickListener;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->hasSurface:Z

    .line 90
    new-instance v5, Lcom/jingdong/lib/zxing/client/android/InactivityTimer;

    invoke-direct {v5, p0}, Lcom/jingdong/lib/zxing/client/android/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v5, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/jingdong/lib/zxing/client/android/InactivityTimer;

    .line 91
    sput-object p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->mCaptureActivity:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    .line 92
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 153
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/jingdong/lib/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Lcom/jingdong/lib/zxing/client/android/InactivityTimer;->shutdown()V

    .line 154
    const/4 v0, 0x0

    sput-object v0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->mCaptureActivity:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    .line 156
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 132
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->handler:Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->handler:Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v0}, Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;->quitSynchronously()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->handler:Lcom/jingdong/lib/zxing/client/android/CaptureActivityHandler;

    .line 136
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 107
    const v3, 0x7f0c001b

    invoke-virtual {p0, v3}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    .line 108
    .local v2, surfaceView:Landroid/view/SurfaceView;
    iget-object v3, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/jingdong/lib/zxing/client/android/ViewfinderView;

    invoke-virtual {v3, v5}, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->setVisibility(I)V

    .line 109
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 110
    .local v1, surfaceHolder:Landroid/view/SurfaceHolder;
    iget-boolean v3, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->hasSurface:Z

    if-eqz v3, :cond_1

    .line 111
    invoke-direct {p0, v1}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 116
    :goto_0
    iput-object v4, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->decodeFormats:Ljava/util/Vector;

    .line 117
    iput-object v4, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->characterSet:Ljava/lang/String;

    .line 119
    iput-boolean v6, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->playBeep:Z

    .line 120
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 121
    .local v0, audioService:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 122
    iput-boolean v5, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->playBeep:Z

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->initBeepSound()V

    .line 125
    iput-boolean v6, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->vibrate:Z

    .line 126
    sput-object p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->mCaptureActivity:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    .line 127
    return-void

    .line 113
    .end local v0           #audioService:Landroid/media/AudioManager;
    :cond_1
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 114
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 147
    invoke-static {}, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->get()Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->closeDriver()V

    .line 148
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 202
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->hasSurface:Z

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->hasSurface:Z

    .line 208
    invoke-direct {p0, p1}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 211
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->hasSurface:Z

    .line 217
    return-void
.end method
