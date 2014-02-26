.class public Lcom/ja/analytics/constant/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final CLEAR_SESSION_ID:I = 0x101

.field public static final CONFIGURATION_ADDRESS:Ljava/lang/String; = "http://jma.man.jcloud.com/maengine/jmasdkservice/sdkdata/boot/configuration"

.field public static final DURATION_SHARE_PREFERENCE:Ljava/lang/String; = "__duration_preference"

.field public static ISAPPKEY_VALIDE:Z = false

.field public static final JD_LOCATION_SHARE_PREFERENCE:Ljava/lang/String; = "__jd_location_preference"

.field public static final JD_MOB_SHARE_PREFERENCE:Ljava/lang/String; = "__jd_mob_preference"

.field public static final KEY_FIRST_TIME:Ljava/lang/String; = "firstStartTime"

.field public static final KEY_GPS_TIME:Ljava/lang/String; = "last_terminate_location_time"

.field public static final KEY_PROTOCOL_HEADER:Ljava/lang/String; = "protocolHeader"

.field public static final KEY_SESSION_COUNT:Ljava/lang/String; = "sessionCount"

.field public static final MAX_LOG_DATA_NUM:I = 0x5

.field public static final OFFLINE_LOG_ADDRESS:Ljava/lang/String; = "http://jma.man.jcloud.com/maengine/jmalog/receiveMobileAppLog.action"

.field public static final ONLINE_ERRORLOG_ADDRESS:Ljava/lang/String; = "http://jma.man.jcloud.com/maengine/jmalog/receiveExceptionLog.action"

.field public static SEND_INTERVAL:I = 0x0

.field public static SEND_INTERVAL_STRATEGY:Z = false

.field public static SEND_STRATEGY:Z = false

.field public static final SESSION_COUNTER_ADDRESS:Ljava/lang/String; = "http://jma.man.jcloud.com/maengine/jmadata/RealTimeAnalysis"

.field public static final SESSION_SHARE_PREFERENCE:Ljava/lang/String; = "__jd_sdk_Session"

.field public static final SESSION_TIME_ADDRESS:Ljava/lang/String; = "http://jma.man.jcloud.com/maengine/jmadata/RealTimeTimeLength"

.field public static final URI_EXCEPTION:Ljava/lang/String; = "jma/mobile/log/receiveMobileAppExceptionLog.action"

.field public static final URL_REALTIME:Ljava/lang/String; = "jma/JmaData/RealTimeAnalysis"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    sput-boolean v1, Lcom/ja/analytics/constant/Constants;->SEND_INTERVAL_STRATEGY:Z

    .line 62
    const/16 v0, 0x7530

    sput v0, Lcom/ja/analytics/constant/Constants;->SEND_INTERVAL:I

    .line 64
    sput-boolean v1, Lcom/ja/analytics/constant/Constants;->SEND_STRATEGY:Z

    .line 66
    sput-boolean v1, Lcom/ja/analytics/constant/Constants;->ISAPPKEY_VALIDE:Z

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
