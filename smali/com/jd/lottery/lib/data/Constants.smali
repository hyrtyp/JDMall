.class public final Lcom/jd/lottery/lib/data/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jd/lottery/lib/data/Constants$API_ERROR;,
        Lcom/jd/lottery/lib/data/Constants$IssueFlag;,
        Lcom/jd/lottery/lib/data/Constants$LotteryType;,
        Lcom/jd/lottery/lib/data/Constants$PayType;
    }
.end annotation


# static fields
.field public static final AGGREMENT_URL:Ljava/lang/String; = "http://caipiao.m.jd.com/pick/agree?v=1"

.field public static final AWARD_POOL_PROMPT_THRESHOLD:D = 1.0E8

.field public static final BET_MAX_MONNERY:I = 0x4e20

.field private static final DEBUG:Z = false

.field public static final DES_KEY:Ljava/lang/String; = "LLz7aFEIAjf+OKuKoq3EXtlDFhkQgOMx"

.field public static final DLT_BLUE_LENGTH:I = 0xc

.field public static final DLT_RED_LENGTH:I = 0x23

.field public static final DLT_START_NUM:I = 0x1

.field private static final GW_M_HOST_NAME:Ljava/lang/String; = "http://gw.m.jd.com"

.field private static final HOST_NAME:Ljava/lang/String; = "http://lotterygw.m.jd.com"

.field public static final LATEST_BLUE:Ljava/lang/String; = "latest_blue"

.field public static final LATEST_RED:Ljava/lang/String; = "latest_red"

.field public static final LOTTERY_MAX_MULTIPLE:I = 0x32

.field public static final LOTTERY_MAX_NUMBER_OF_PERIODS:I = 0x1e

.field public static final MD5_KEY:Ljava/lang/String; = "LLz7aFEIAjf+OKuKoq3EXtlDFhkQgOMx"

.field public static final REQUEST_AGENT:I = 0x1

.field public static final REQUEST_BET_ORDER_BY_FROM:I = 0x3

.field public static final REQUEST_BET_ORDER_PLAN_TYPE_DEFAULT:I = 0x0

.field public static final REQUEST_BET_ORDER_STOP_FLAG_NO_STOP:I = 0x3

.field public static final REQUEST_BET_ORDER_STOP_FLAG_WHEN_AWARD:I = 0x1

.field public static final REQUEST_BET_ORDER_STOP_FLAG_WHEN_BEYOND_AWARD:I = 0x2

.field public static final REQUEST_FUNC_IDS_AWARD_BOARD:I = 0x3ed

.field public static final REQUEST_FUNC_IDS_BET_ORDER:I = 0x7d1

.field public static final REQUEST_FUNC_IDS_CURR_ISSUE:I = 0x3e9

.field public static final REQUEST_FUNC_IDS_GET_ISSUE:I = 0x3ec

.field public static final REQUEST_FUNC_IDS_GET_MISS:I = 0x3f0

.field public static final REQUEST_FUNC_IDS_GET_USER_INFO:I = 0xbbd

.field public static final REQUEST_FUNC_IDS_GET_ZHUIHAO:I = 0x3ef

.field public static final REQUEST_FUNC_IDS_LOTTERY_LIST:I = 0xbb9

.field public static final REQUEST_FUNC_IDS_LOTTERY_STATUS:I = 0x3ee

.field public static final REQUEST_FUNC_IDS_NEXT_ISSUE:I = 0x3eb

.field public static final REQUEST_FUNC_IDS_PREV_ISSUE:I = 0x3ea

.field public static final REQUEST_FUNC_IDS_UPDATE_USER_INFO:I = 0xbbc

.field public static final REQUEST_URL:Ljava/lang/String; = "http://lotterygw.m.jd.com/clientRequest"

.field public static final REQUEST_URL_GET_ALL:Ljava/lang/String; = "http://lotterygw.m.jd.com/getAwardAndEndTimeAllCategory"

.field public static REQUEST_URL_GET_TOKEN:Ljava/lang/String; = null

.field public static final REQUEST_URL_GET_USER_BSC:Ljava/lang/String; = "http://lotterygw.m.jd.com/getBalanceScoreAndCoupon"

.field public static final REQUEST_URL_IS_AWARD_TODAY:Ljava/lang/String; = "http://lotterygw.m.jd.com/getIsAwardToday"

.field public static final SHAKE_RANDOM_NUM_DLT:Ljava/lang/String; = "shake_random_num_dlt"

.field public static final SHAKE_RANDOM_NUM_SSQ:Ljava/lang/String; = "shake_random_num_ssq"

.field public static final SSQ_BLUE_LENGTH:I = 0x10

.field public static final SSQ_RED_LENGTH:I = 0x21

.field public static final SSQ_START_NUM:I = 0x1

.field public static final TEXT_COLOR:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-string v2, "#d51e2d"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 18
    const-string v2, "#1e92b6"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 19
    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 17
    sput-object v0, Lcom/jd/lottery/lib/data/Constants;->TEXT_COLOR:[I

    .line 21
    const-string v0, "http://gw.m.jd.com/client.action"

    sput-object v0, Lcom/jd/lottery/lib/data/Constants;->REQUEST_URL_GET_TOKEN:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
