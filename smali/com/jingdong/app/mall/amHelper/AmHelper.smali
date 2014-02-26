.class public Lcom/jingdong/app/mall/amHelper/AmHelper;
.super Ljava/lang/Object;
.source "AmHelper.java"


# static fields
.field public static final ANNUAL_SCAN_KEN:Ljava/lang/String; = "annualToken"

.field public static final PARAM_SUBCODE:Ljava/lang/String; = "sc"

.field public static final PARAM_TOKEN:Ljava/lang/String; = "tk"

.field public static final SHAKE_ANNUAL_MEETING_CHENCKED_IN_SHAKE:Ljava/lang/String; = "checkedIn_Shake"

.field public static final SHAKE_ANNUAL_MEETING_CHENCKED_IN_TAP:Ljava/lang/String; = "checkedIn_Tap"

.field public static final SHAKE_ANNUAL_MEETING_ENTRY_TAP:Ljava/lang/String; = "entryTap"

.field public static final SHAKE_ANNUAL_MEETING_EVENT_ID:Ljava/lang/String; = "JDAnnualMeeting"

.field public static final SHAKE_ANNUAL_MEETING_KEY:Ljava/lang/String; = "eventType"

.field public static final SHAKE_ANNUAL_MEETING_RESULT_CLOSE_TAP:Ljava/lang/String; = "resultCloseTap"

.field public static final SHAKE_DELAY_TIME:I = 0x7d0

.field public static final SHAKE_DELAY_TIME_CAN_SHAKE:I = 0x834

.field public static final SHAKE_DIALOG_CLOSE:I = 0x1

.field public static final SHAKE_SOUND_MAX:I = 0x3

.field public static final SHAKE_SOUND_TYPE_NOTHING:I = 0x2

.field public static final SHAKE_SOUND_TYPE_SHAKEING:I = 0x0

.field public static final SHAKE_SOUND_TYPE_SOMETHING:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/jingdong/app/mall/amHelper/AmHelper;

.field public static isGoPersonel:Z

.field public static isShowDialog:Z

.field public static token:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private sndPool:Landroid/media/SoundPool;

.field private soundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jingdong/app/mall/amHelper/AmHelper;->isGoPersonel:Z

    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jingdong/app/mall/amHelper/AmHelper;->isShowDialog:Z

    .line 28
    const-string v0, ""

    sput-object v0, Lcom/jingdong/app/mall/amHelper/AmHelper;->token:Ljava/lang/String;

    .line 30
    const-class v0, Lcom/jingdong/app/mall/amHelper/AmHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/app/mall/amHelper/AmHelper;->TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelper;->mContext:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmHelper;->loadSound()V

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/amHelper/AmHelper;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/amHelper/AmHelper;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelper;->soundPoolMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/amHelper/AmHelper;)Landroid/media/SoundPool;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelper;->sndPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/jingdong/app/mall/amHelper/AmHelper;
    .locals 2

    .prologue
    .line 49
    const-class v1, Lcom/jingdong/app/mall/amHelper/AmHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jingdong/app/mall/amHelper/AmHelper;->instance:Lcom/jingdong/app/mall/amHelper/AmHelper;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/jingdong/app/mall/amHelper/AmHelper;

    invoke-direct {v0}, Lcom/jingdong/app/mall/amHelper/AmHelper;-><init>()V

    sput-object v0, Lcom/jingdong/app/mall/amHelper/AmHelper;->instance:Lcom/jingdong/app/mall/amHelper/AmHelper;

    .line 53
    :cond_0
    sget-object v0, Lcom/jingdong/app/mall/amHelper/AmHelper;->instance:Lcom/jingdong/app/mall/amHelper/AmHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getShakeParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .parameter "eventValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v0, paramsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "eventType"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-object v0
.end method

.method private declared-synchronized loadSound()V
    .locals 4

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelper;->sndPool:Landroid/media/SoundPool;

    .line 59
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelper;->soundPoolMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelper;->soundPoolMap:Ljava/util/HashMap;

    .line 61
    new-instance v0, Lcom/jingdong/app/mall/amHelper/AmHelper$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/amHelper/AmHelper$1;-><init>(Lcom/jingdong/app/mall/amHelper/AmHelper;)V

    .line 78
    invoke-virtual {v0}, Lcom/jingdong/app/mall/amHelper/AmHelper$1;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public destroyAllData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelper;->mContext:Landroid/content/Context;

    .line 103
    sput-object v0, Lcom/jingdong/app/mall/amHelper/AmHelper;->instance:Lcom/jingdong/app/mall/amHelper/AmHelper;

    .line 104
    return-void
.end method

.method public startShakeSound(I)V
    .locals 7
    .parameter "soundType"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f00

    .line 88
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelper;->sndPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelper;->soundPoolMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelper;->soundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelper;->sndPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmHelper;->soundPoolMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v6, 0x3f80

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 91
    :cond_0
    return-void
.end method
