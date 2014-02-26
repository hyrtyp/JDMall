.class public Lcom/ja/sdk/constant/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final CLEAR_SESSION_ID:I = 0x101

.field public static final EXCEPTION_SHARE_PREFERENCE:Ljava/lang/String; = "__360buy_Ja_Sdk_SendException"

.field public static final GZIP_SEND:Ljava/lang/Boolean; = null

.field public static final HOSTS:Ljava/lang/String; = "http://jlog.jd.com/"

.field public static final KEY_CODE:Ljava/lang/String; = "code"

.field public static final KEY_EXCEPTION_ANALYSIS_FLAG:Ljava/lang/String; = "exceptionanalysisflag"

.field public static final KEY_RESULT:Ljava/lang/String; = "result"

.field public static final KEY_SEND_EXCEPTION_TYPE:Ljava/lang/String; = "sendUncaughtExceptionType"

.field public static final KEY_SEND_PAGEACCESS_TYPE:Ljava/lang/String; = "sendPageAccessType"

.field public static final KEY_SESSION_COUNT:Ljava/lang/String; = "sessionCount"

.field public static final MAX_LOG_DATA_NUM:I = 0x5

.field public static final PAGEACCESS_SHARE_PREFERENCE:Ljava/lang/String; = "__360buy_Ja_Sdk_SendPageAccess"

.field public static final SESSION_SHARE_PREFERENCE:Ljava/lang/String; = "__360buy_Ja_Sdk_Session"

.field public static final START_SERVICE:I = 0x100

.field public static final STOP_SERVICE:I = 0x0

.field public static final URI_EXCEPTION:Ljava/lang/String; = "mobile/log/receiveMobileAppExceptionLog.action"

.field public static final URI_VISIT:Ljava/lang/String; = "mobile/log/receiveMobileAppLog.action"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ja/sdk/constant/Constants;->GZIP_SEND:Ljava/lang/Boolean;

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
