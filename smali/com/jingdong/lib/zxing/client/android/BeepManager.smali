.class final Lcom/jingdong/lib/zxing/client/android/BeepManager;
.super Ljava/lang/Object;
.source "BeepManager.java"


# static fields
.field private static final BEEP_VOLUME:F = 0.1f

.field private static final TAG:Ljava/lang/String; = null

.field private static final VIBRATE_DURATION:J = 0xc8L


# instance fields
.field private final activity:Landroid/app/Activity;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private playBeep:Z

.field private vibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/jingdong/lib/zxing/client/android/BeepManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/lib/zxing/client/android/BeepManager;->TAG:Ljava/lang/String;

    .line 41
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/jingdong/lib/zxing/client/android/BeepManager;->activity:Landroid/app/Activity;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/lib/zxing/client/android/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 51
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/BeepManager;->updatePrefs()V

    .line 52
    return-void
.end method

.method private static buildMediaPlayer(Landroid/content/Context;)Landroid/media/MediaPlayer;
    .locals 8
    .parameter "activity"

    .prologue
    .line 94
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 95
    .local v0, mediaPlayer:Landroid/media/MediaPlayer;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 98
    new-instance v1, Lcom/jingdong/lib/zxing/client/android/BeepManager$1;

    invoke-direct {v1}, Lcom/jingdong/lib/zxing/client/android/BeepManager$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 106
    const/high16 v2, 0x7f06

    .line 105
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 108
    .local v6, file:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 109
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 108
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 110
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 111
    const v1, 0x3dcccccd

    const v2, 0x3dcccccd

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 112
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-object v0

    .line 113
    :catch_0
    move-exception v7

    .line 114
    .local v7, ioe:Ljava/io/IOException;
    sget-object v1, Lcom/jingdong/lib/zxing/client/android/BeepManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static shouldBeep(Landroid/content/SharedPreferences;Landroid/content/Context;)Z
    .locals 4
    .parameter "prefs"
    .parameter "activity"

    .prologue
    .line 80
    .line 81
    const-string v2, "preferences_play_beep"

    const/4 v3, 0x1

    .line 80
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 82
    .local v1, shouldPlayBeep:Z
    if-eqz v1, :cond_0

    .line 85
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    check-cast v0, Landroid/media/AudioManager;

    .line 86
    .local v0, audioService:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 87
    const/4 v1, 0x0

    .line 90
    .end local v0           #audioService:Landroid/media/AudioManager;
    :cond_0
    return v1
.end method


# virtual methods
.method playBeepSoundAndVibrate()V
    .locals 3

    .prologue
    .line 69
    iget-boolean v1, p0, Lcom/jingdong/lib/zxing/client/android/BeepManager;->playBeep:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 72
    :cond_0
    iget-boolean v1, p0, Lcom/jingdong/lib/zxing/client/android/BeepManager;->vibrate:Z

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/BeepManager;->activity:Landroid/app/Activity;

    .line 74
    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    check-cast v0, Landroid/os/Vibrator;

    .line 75
    .local v0, vibrator:Landroid/os/Vibrator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 77
    .end local v0           #vibrator:Landroid/os/Vibrator;
    :cond_1
    return-void
.end method

.method updatePrefs()V
    .locals 3

    .prologue
    .line 56
    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/BeepManager;->activity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    .local v0, prefs:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/BeepManager;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/jingdong/lib/zxing/client/android/BeepManager;->shouldBeep(Landroid/content/SharedPreferences;Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jingdong/lib/zxing/client/android/BeepManager;->playBeep:Z

    .line 58
    const-string v1, "preferences_vibrate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jingdong/lib/zxing/client/android/BeepManager;->vibrate:Z

    .line 59
    iget-boolean v1, p0, Lcom/jingdong/lib/zxing/client/android/BeepManager;->playBeep:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/BeepManager;->activity:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 64
    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/BeepManager;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/jingdong/lib/zxing/client/android/BeepManager;->buildMediaPlayer(Landroid/content/Context;)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/lib/zxing/client/android/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 66
    :cond_0
    return-void
.end method
