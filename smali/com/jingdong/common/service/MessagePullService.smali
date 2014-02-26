.class public Lcom/jingdong/common/service/MessagePullService;
.super Landroid/app/Service;
.source "MessagePullService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;
    }
.end annotation


# static fields
.field public static final ACTION_APP_CLEAR_CACHE_IMAGE:Ljava/lang/String; = "Action_Clear_Cache_Image"

.field public static final ACTION_APP_EXIT_CLEAR_CACHE:Ljava/lang/String; = "Action_Clear_Cache"

.field public static final ACTION_APP_EXIT_SUBMIT_TIME:Ljava/lang/String; = "ACTION_APP_EXIT_SUBMIT_TIME"

.field public static final ACTION_DELETE_WIDGET:Ljava/lang/String; = "Action_delete_widget"

.field public static final ACTION_GET_MESSAGE:Ljava/lang/String; = "Action_Get_Message"

.field public static final ACTION_GET_WIDGET_INFO:Ljava/lang/String; = "Action_Get_Widget_Info"

.field public static final ACTION_GET_WIDGET_Next:Ljava/lang/String; = "Action_Get_Widget_Info_next"

.field public static final ACTION_GET_WIDGET_PRE:Ljava/lang/String; = "Action_Get_Widget_Info_pre"

.field public static final ACTION_RESTART_SERVICE:Ljava/lang/String; = "Action_restart_service"

.field public static final ACTION_STEP_SEEVICE:Ljava/lang/String; = "Action_Stop_Message_Service"

.field private static MOOD_NOTIFICATIONS:I = 0x0

.field public static final SERVICE_STOP_FLAG:Ljava/lang/String; = "service_stoped"

.field public static isNeedGetMessage:Z

.field public static isNeedGetWidget:Z

.field public static isStopWidgetText:Z


# instance fields
.field private final DEFUALT_RETRY_INTERVAL:J

.field private final MINUTATE_RETRY_INTERVAL:J

.field private final MSG_GET_IMANGE_TO_CACHE:I

.field private final MSG_NETWORK_CONNECT:I

.field private final MSG_NETWORK_NOT_AVAILABLE_TIMES:I

.field private final MSG_NETWORK_NOT_AVAILBLE:I

.field private final MSG_UPDATE_WIDGET:I

.field private final MSG_UPDATE_WIDGET_NOT_NEXT:I

.field final TAG:Ljava/lang/String;

.field alarmMgr:Landroid/app/AlarmManager;

.field private autoUpdateWidgetThread:Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;

.field defaltPreference:Landroid/content/SharedPreferences;

.field private handler:Landroid/os/Handler;

.field private httpGroup:Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

.field private final mBinder:Landroid/os/IBinder;

.field private mCrazyMessage:Ljava/lang/Runnable;

.field private mNM:Landroid/app/NotificationManager;

.field private mRecommandMessage:Ljava/lang/Runnable;

.field messagePi:Landroid/app/PendingIntent;

.field private msgAutoUpdateTimes:J

.field private network_retry_time:I

.field private productFlag:I

.field private productList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;"
        }
    .end annotation
.end field

.field private updateWidgetIndex:I

.field private userLoginFlag:Z

.field widgetPi:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    const/16 v0, 0x1000

    sput v0, Lcom/jingdong/common/service/MessagePullService;->MOOD_NOTIFICATIONS:I

    .line 68
    sput-boolean v1, Lcom/jingdong/common/service/MessagePullService;->isStopWidgetText:Z

    .line 71
    sput-boolean v1, Lcom/jingdong/common/service/MessagePullService;->isNeedGetMessage:Z

    .line 72
    sput-boolean v1, Lcom/jingdong/common/service/MessagePullService;->isNeedGetWidget:Z

    .line 340
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/32 v3, 0xdbba0

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    const-string v0, "MessagePullService"

    iput-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->TAG:Ljava/lang/String;

    .line 59
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/jingdong/common/service/MessagePullService;->MINUTATE_RETRY_INTERVAL:J

    .line 60
    iput-wide v3, p0, Lcom/jingdong/common/service/MessagePullService;->DEFUALT_RETRY_INTERVAL:J

    .line 61
    iput-wide v3, p0, Lcom/jingdong/common/service/MessagePullService;->msgAutoUpdateTimes:J

    .line 322
    new-instance v0, Lcom/jingdong/common/service/MessagePullService$1;

    invoke-direct {v0, p0}, Lcom/jingdong/common/service/MessagePullService$1;-><init>(Lcom/jingdong/common/service/MessagePullService;)V

    iput-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->mBinder:Landroid/os/IBinder;

    .line 342
    const/4 v0, 0x3

    iput v0, p0, Lcom/jingdong/common/service/MessagePullService;->MSG_NETWORK_NOT_AVAILABLE_TIMES:I

    .line 343
    iput v2, p0, Lcom/jingdong/common/service/MessagePullService;->network_retry_time:I

    .line 674
    const/16 v0, 0x1000

    iput v0, p0, Lcom/jingdong/common/service/MessagePullService;->MSG_UPDATE_WIDGET:I

    .line 675
    const/16 v0, 0x1100

    iput v0, p0, Lcom/jingdong/common/service/MessagePullService;->MSG_UPDATE_WIDGET_NOT_NEXT:I

    .line 676
    const/16 v0, 0x1101

    iput v0, p0, Lcom/jingdong/common/service/MessagePullService;->MSG_NETWORK_CONNECT:I

    .line 677
    const/16 v0, 0x1103

    iput v0, p0, Lcom/jingdong/common/service/MessagePullService;->MSG_NETWORK_NOT_AVAILBLE:I

    .line 678
    const/16 v0, 0x1102

    iput v0, p0, Lcom/jingdong/common/service/MessagePullService;->MSG_GET_IMANGE_TO_CACHE:I

    .line 679
    iput v2, p0, Lcom/jingdong/common/service/MessagePullService;->updateWidgetIndex:I

    .line 680
    new-instance v0, Lcom/jingdong/common/service/MessagePullService$2;

    invoke-direct {v0, p0}, Lcom/jingdong/common/service/MessagePullService$2;-><init>(Lcom/jingdong/common/service/MessagePullService;)V

    iput-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->handler:Landroid/os/Handler;

    .line 797
    new-instance v0, Lcom/jingdong/common/service/MessagePullService$3;

    invoke-direct {v0, p0}, Lcom/jingdong/common/service/MessagePullService$3;-><init>(Lcom/jingdong/common/service/MessagePullService;)V

    iput-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->mCrazyMessage:Ljava/lang/Runnable;

    .line 900
    iput v2, p0, Lcom/jingdong/common/service/MessagePullService;->productFlag:I

    .line 903
    new-instance v0, Lcom/jingdong/common/service/MessagePullService$4;

    invoke-direct {v0, p0}, Lcom/jingdong/common/service/MessagePullService$4;-><init>(Lcom/jingdong/common/service/MessagePullService;)V

    iput-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->mRecommandMessage:Ljava/lang/Runnable;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/service/MessagePullService;)I
    .locals 1
    .parameter

    .prologue
    .line 679
    iget v0, p0, Lcom/jingdong/common/service/MessagePullService;->updateWidgetIndex:I

    return v0
.end method

.method static synthetic access$1(Lcom/jingdong/common/service/MessagePullService;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 794
    iget-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->productList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jingdong/common/service/MessagePullService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 680
    iget-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jingdong/common/service/MessagePullService;)I
    .locals 1
    .parameter

    .prologue
    .line 900
    iget v0, p0, Lcom/jingdong/common/service/MessagePullService;->productFlag:I

    return v0
.end method

.method static synthetic access$12(Lcom/jingdong/common/service/MessagePullService;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 794
    iput-object p1, p0, Lcom/jingdong/common/service/MessagePullService;->productList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$13(Lcom/jingdong/common/service/MessagePullService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 900
    iput p1, p0, Lcom/jingdong/common/service/MessagePullService;->productFlag:I

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/common/service/MessagePullService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 679
    iput p1, p0, Lcom/jingdong/common/service/MessagePullService;->updateWidgetIndex:I

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/common/service/MessagePullService;)V
    .locals 0
    .parameter

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/jingdong/common/service/MessagePullService;->updateWidget()V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/common/service/MessagePullService;)Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->autoUpdateWidgetThread:Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/common/service/MessagePullService;Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/jingdong/common/service/MessagePullService;->autoUpdateWidgetThread:Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/common/service/MessagePullService;)Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->httpGroup:Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/common/service/MessagePullService;)I
    .locals 1
    .parameter

    .prologue
    .line 343
    iget v0, p0, Lcom/jingdong/common/service/MessagePullService;->network_retry_time:I

    return v0
.end method

.method static synthetic access$8(Lcom/jingdong/common/service/MessagePullService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 343
    iput p1, p0, Lcom/jingdong/common/service/MessagePullService;->network_retry_time:I

    return-void
.end method

.method static synthetic access$9(Lcom/jingdong/common/service/MessagePullService;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1187
    invoke-direct {p0, p1, p2}, Lcom/jingdong/common/service/MessagePullService;->getURL(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getURL(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4
    .parameter "functionId"
    .parameter "jsonObject"

    .prologue
    .line 1191
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "host"

    invoke-static {v3}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/client.action"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1192
    .local v0, host:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "functionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "body="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1194
    .local v1, urlStr:Ljava/lang/String;
    return-object v1
.end method

.method private removeWidget()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->autoUpdateWidgetThread:Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->autoUpdateWidgetThread:Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;->setStop(Z)V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->autoUpdateWidgetThread:Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->alarmMgr:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/jingdong/common/service/MessagePullService;->widgetPi:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 305
    iget-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->productList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->productList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->handler:Landroid/os/Handler;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 310
    invoke-static {}, Lcom/jingdong/common/utils/cache/WidgetImageCache;->clearAllBitmap()V

    .line 316
    invoke-direct {p0}, Lcom/jingdong/common/service/MessagePullService;->stepService()V

    .line 318
    return-void
.end method

.method private schudelToFleshWidget()V
    .locals 12

    .prologue
    const/16 v7, 0x15

    const/16 v11, 0xb

    const/16 v10, 0x9

    const/4 v9, 0x0

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 205
    .local v5, now:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 207
    .local v2, c:Ljava/util/Calendar;
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 208
    .local v4, hourOfDay:I
    invoke-direct {p0}, Lcom/jingdong/common/service/MessagePullService;->setWidgetIntent()V

    .line 214
    if-lt v4, v10, :cond_0

    if-le v4, v7, :cond_2

    .line 215
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 216
    .local v3, calendar:Ljava/util/Calendar;
    if-le v4, v7, :cond_1

    .line 217
    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 220
    :cond_1
    invoke-virtual {v3, v11, v10}, Ljava/util/Calendar;->set(II)V

    .line 222
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 226
    .local v0, alarmTime:J
    iget-object v7, p0, Lcom/jingdong/common/service/MessagePullService;->alarmMgr:Landroid/app/AlarmManager;

    iget-object v8, p0, Lcom/jingdong/common/service/MessagePullService;->widgetPi:Landroid/app/PendingIntent;

    invoke-virtual {v7, v9, v0, v1, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 235
    .end local v3           #calendar:Ljava/util/Calendar;
    :goto_0
    return-void

    .line 228
    .end local v0           #alarmTime:J
    :cond_2
    const-wide/32 v7, 0x6ddd00

    add-long v0, v5, v7

    .line 232
    .restart local v0       #alarmTime:J
    iget-object v7, p0, Lcom/jingdong/common/service/MessagePullService;->alarmMgr:Landroid/app/AlarmManager;

    iget-object v8, p0, Lcom/jingdong/common/service/MessagePullService;->widgetPi:Landroid/app/PendingIntent;

    invoke-virtual {v7, v9, v0, v1, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private schudelToGeMessage()V
    .locals 7

    .prologue
    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 159
    .local v2, now:J
    iget-wide v4, p0, Lcom/jingdong/common/service/MessagePullService;->msgAutoUpdateTimes:J

    add-long v0, v2, v4

    .line 163
    .local v0, alarmTime:J
    iget-object v4, p0, Lcom/jingdong/common/service/MessagePullService;->alarmMgr:Landroid/app/AlarmManager;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/jingdong/common/service/MessagePullService;->messagePi:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v0, v1, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 164
    return-void
.end method

.method private schudelToGeMessageNextDay(I)V
    .locals 8
    .parameter "hours"

    .prologue
    .line 178
    iget-object v4, p0, Lcom/jingdong/common/service/MessagePullService;->alarmMgr:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/jingdong/common/service/MessagePullService;->messagePi:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 182
    .local v2, now:J
    const-wide/32 v4, 0x36ee80

    int-to-long v6, p1

    mul-long/2addr v4, v6

    add-long v0, v2, v4

    .line 186
    .local v0, alarmTime:J
    iget-object v4, p0, Lcom/jingdong/common/service/MessagePullService;->alarmMgr:Landroid/app/AlarmManager;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/jingdong/common/service/MessagePullService;->messagePi:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v0, v1, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 187
    return-void
.end method

.method public static serviceIsRunInBg()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1232
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v0

    .line 1234
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1236
    .local v1, jdSharedPreferences:Landroid/content/SharedPreferences;
    const-string v5, "jd_widget_deleted"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 1237
    .local v3, widgetIsRun:Z
    :cond_0
    const-string v5, "login"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1244
    .local v2, userLoginFlag:Z
    return v3
.end method

.method private setAlarmIntent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 252
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 253
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/jingdong/common/service/MessagePullService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 254
    const-string v1, "Action_Get_Message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/service/MessagePullService;->messagePi:Landroid/app/PendingIntent;

    .line 256
    return-void
.end method

.method private setMsgTypeTitle(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 1203
    const/4 v0, 0x0

    .line 1205
    .local v0, typeStr:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1218
    :goto_0
    return-object v0

    .line 1207
    :pswitch_0
    sget-object v0, Lcom/jingdong/common/res/StringUtil;->comment_answer:Ljava/lang/String;

    .line 1208
    goto :goto_0

    .line 1210
    :pswitch_1
    sget-object v0, Lcom/jingdong/common/res/StringUtil;->cost_count:Ljava/lang/String;

    .line 1211
    goto :goto_0

    .line 1213
    :pswitch_2
    sget-object v0, Lcom/jingdong/common/res/StringUtil;->get_by_self:Ljava/lang/String;

    .line 1214
    goto :goto_0

    .line 1205
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setWidgetIntent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 273
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 274
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/jingdong/common/service/MessagePullService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 275
    const-string v1, "Action_Get_Widget_Info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/service/MessagePullService;->widgetPi:Landroid/app/PendingIntent;

    .line 277
    return-void
.end method

.method private stepService()V
    .locals 4

    .prologue
    .line 624
    iget-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->mNM:Landroid/app/NotificationManager;

    sget v1, Lcom/jingdong/common/service/MessagePullService;->MOOD_NOTIFICATIONS:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 630
    iget-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->messagePi:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->alarmMgr:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->alarmMgr:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/jingdong/common/service/MessagePullService;->messagePi:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->defaltPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "serviceStopFlag"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 637
    iget-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->defaltPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lasteMessageReadeTime"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 638
    const-string v0, "MessagePullService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msg+++4+++stop"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v0, "MessagePullService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msg+++5+++stop"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->widgetPi:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->alarmMgr:Landroid/app/AlarmManager;

    if-eqz v0, :cond_1

    .line 647
    iget-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->alarmMgr:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/jingdong/common/service/MessagePullService;->widgetPi:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 649
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/common/service/MessagePullService;->stopSelf()V

    .line 650
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 652
    return-void
.end method

.method private updateEmptyWidget()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1305
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1306
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v3, "jd_widget_deleted"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1307
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.360buy.jdWidgetBroadcastReceiver"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1308
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "service_stoped"

    const-string v4, "service_stoped"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1309
    invoke-virtual {p0, v0}, Lcom/jingdong/common/service/MessagePullService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1312
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateWidget()V
    .locals 6

    .prologue
    .line 765
    iget-object v3, p0, Lcom/jingdong/common/service/MessagePullService;->productList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.360buy.jdWidgetBroadcastReceiver"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 770
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/jingdong/common/service/MessagePullService;->productList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/jingdong/common/service/MessagePullService;->updateWidgetIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/Product;

    .line 772
    .local v2, product:Lcom/jingdong/common/entity/Product;
    if-eqz v2, :cond_0

    .line 775
    const-string v3, "productName"

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    const-string v3, "productId"

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 777
    const-string v3, "productPrice"

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getJdPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 783
    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jingdong/common/utils/cache/WidgetImageCache;->getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 784
    const-string v3, "productImage"

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jingdong/common/utils/cache/WidgetImageCache;->getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 789
    :goto_1
    invoke-virtual {p0, v0}, Lcom/jingdong/common/service/MessagePullService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 786
    :cond_2
    iget-object v3, p0, Lcom/jingdong/common/service/MessagePullService;->handler:Landroid/os/Handler;

    const/16 v4, 0x1102

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 787
    .local v1, message:Landroid/os/Message;
    iget-object v3, p0, Lcom/jingdong/common/service/MessagePullService;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public static widgetIsRunInBg()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1253
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v0

    .line 1254
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1255
    .local v1, jdSharedPreferences:Landroid/content/SharedPreferences;
    const-string v3, "jd_widget_deleted"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    .line 1259
    .local v2, widgetIsRun:Z
    :cond_0
    return v2
.end method


# virtual methods
.method public checkIsOldUser()V
    .locals 5

    .prologue
    .line 659
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getCookies()Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, newUserCokies:Ljava/lang/String;
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getOldCookies()Ljava/lang/String;

    move-result-object v1

    .line 665
    .local v1, oldUserCokies:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 666
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 667
    iget-object v2, p0, Lcom/jingdong/common/service/MessagePullService;->mNM:Landroid/app/NotificationManager;

    sget v3, Lcom/jingdong/common/service/MessagePullService;->MOOD_NOTIFICATIONS:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 668
    invoke-static {v0}, Lcom/jingdong/common/login/SafetyManager;->saveOldCookies(Ljava/lang/String;)V

    .line 669
    iget-object v2, p0, Lcom/jingdong/common/service/MessagePullService;->defaltPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "lasteMessageReadeTime"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 672
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->autoUpdateWidgetThread:Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->autoUpdateWidgetThread:Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;->setStop(Z)V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/common/service/MessagePullService;->autoUpdateWidgetThread:Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;

    .line 83
    invoke-direct {p0}, Lcom/jingdong/common/service/MessagePullService;->updateEmptyWidget()Z

    .line 85
    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 17
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 349
    if-eqz p1, :cond_7

    .line 350
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, action:Ljava/lang/String;
    const-string v12, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/jingdong/common/service/MessagePullService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/jingdong/common/service/MessagePullService;->mNM:Landroid/app/NotificationManager;

    .line 353
    const-string v12, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/jingdong/common/service/MessagePullService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/jingdong/common/service/MessagePullService;->alarmMgr:Landroid/app/AlarmManager;

    .line 356
    const-string v12, "Message"

    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 358
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/common/service/MessagePullService;->productList:Ljava/util/ArrayList;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/common/service/MessagePullService;->productList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ge v12, v13, :cond_8

    .line 359
    :cond_0
    new-instance v9, Landroid/content/Intent;

    const-string v12, "com.360buy.jdWidgetBroadcastReceiver"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .local v9, updateWidget:Landroid/content/Intent;
    const-string v12, "loading"

    const-string v13, "loading"

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/jingdong/common/service/MessagePullService;->sendBroadcast(Landroid/content/Intent;)V

    .line 368
    .end local v9           #updateWidget:Landroid/content/Intent;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/common/service/MessagePullService;->httpGroup:Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

    if-nez v12, :cond_2

    .line 369
    new-instance v8, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

    invoke-direct {v8}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;-><init>()V

    .line 370
    .local v8, setting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;
    const/16 v12, 0x3e8

    invoke-virtual {v8, v12}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setPriority(I)V

    .line 371
    const/16 v12, 0x3e8

    invoke-virtual {v8, v12}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setType(I)V

    .line 372
    new-instance v12, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

    invoke-direct {v12, v8}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/jingdong/common/service/MessagePullService;->httpGroup:Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

    .line 375
    .end local v8           #setting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;
    :cond_2
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/jingdong/common/service/MessagePullService;->defaltPreference:Landroid/content/SharedPreferences;

    .line 377
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/common/service/MessagePullService;->defaltPreference:Landroid/content/SharedPreferences;

    const-string v13, "login"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/jingdong/common/service/MessagePullService;->userLoginFlag:Z

    .line 386
    if-eqz p1, :cond_3

    const-string v12, "ACTION_APP_EXIT_SUBMIT_TIME"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 387
    const-string v12, "user_time"

    const-wide/16 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 388
    .local v10, usertime:J
    const-string v12, "changed_time"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 392
    .local v4, isChangedDate:Z
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-lez v12, :cond_3

    if-nez v4, :cond_3

    .line 393
    new-instance v3, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 394
    .local v3, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v12, "appUseTime"

    invoke-virtual {v3, v12}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 395
    const-string v12, "useTime"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 396
    new-instance v12, Lcom/jingdong/common/service/MessagePullService$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/jingdong/common/service/MessagePullService$5;-><init>(Lcom/jingdong/common/service/MessagePullService;)V

    invoke-virtual {v3, v12}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/common/service/MessagePullService;->httpGroup:Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

    invoke-virtual {v12, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 427
    .end local v3           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    .end local v4           #isChangedDate:Z
    .end local v10           #usertime:J
    :cond_3
    if-eqz p1, :cond_4

    const-string v12, "Action_Clear_Cache"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 429
    invoke-static {}, Lcom/jingdong/common/utils/FileService;->clearCacheFiles()V

    .line 430
    invoke-static {}, Lcom/jingdong/common/utils/FileService;->clearInternalCacheImages()V

    .line 433
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    const-string v12, "Action_Clear_Cache_Image"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 450
    invoke-static {}, Lcom/jingdong/common/utils/FileService;->clearAllCacheImages()V

    .line 452
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/common/service/MessagePullService;->stepService()V

    .line 455
    :cond_5
    if-eqz p1, :cond_6

    const-string v12, "Action_restart_service"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 457
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 462
    .local v5, jdSharedPreferences:Landroid/content/SharedPreferences;
    const-string v12, "jd_widget_deleted"

    const/4 v13, 0x1

    invoke-interface {v5, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    :goto_2
    sput-boolean v12, Lcom/jingdong/common/service/MessagePullService;->isNeedGetWidget:Z

    .line 463
    const-string v12, "Temp"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "onStart() Service-stop -->> "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jingdong/common/service/MessagePullService;->defaltPreference:Landroid/content/SharedPreferences;

    const-string v15, "serviceStopFlag"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/jingdong/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .end local v5           #jdSharedPreferences:Landroid/content/SharedPreferences;
    :cond_6
    if-eqz p1, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Action_Stop_Message_Service"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 533
    sget-boolean v12, Lcom/jingdong/common/service/MessagePullService;->isStopWidgetText:Z

    if-nez v12, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/jingdong/common/service/MessagePullService;->updateEmptyWidget()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 615
    .end local v1           #action:Ljava/lang/String;
    :cond_7
    :goto_3
    return-void

    .line 364
    .restart local v1       #action:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/common/service/MessagePullService;->autoUpdateWidgetThread:Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/common/service/MessagePullService;->handler:Landroid/os/Handler;

    if-eqz v12, :cond_1

    const-string v12, "Action_Get_Widget_Info_next"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    const-string v12, "Action_Get_Widget_Info_pre"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 365
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/common/service/MessagePullService;->autoUpdateWidgetThread:Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;->setTime(J)V

    goto/16 :goto_0

    .line 462
    .restart local v5       #jdSharedPreferences:Landroid/content/SharedPreferences;
    :cond_a
    const/4 v12, 0x1

    goto :goto_2

    .line 536
    .end local v5           #jdSharedPreferences:Landroid/content/SharedPreferences;
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/common/service/MessagePullService;->stepService()V

    .line 540
    :cond_c
    if-eqz p1, :cond_d

    const-string v12, "Action_Get_Widget_Info"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 544
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->CheckNetWork()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 545
    new-instance v2, Ljava/lang/Thread;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/service/MessagePullService;->mCrazyMessage:Ljava/lang/Runnable;

    const-string v14, "getCrazyProdct"

    invoke-direct {v2, v12, v13, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 546
    .local v2, crazyThread:Ljava/lang/Thread;
    const-string v12, "MessagePull"

    invoke-virtual {v2, v12}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 547
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/common/service/MessagePullService;->schudelToFleshWidget()V

    .line 548
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 549
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/jingdong/common/service/MessagePullService;->userLoginFlag:Z

    if-eqz v12, :cond_d

    .line 550
    new-instance v7, Ljava/lang/Thread;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/service/MessagePullService;->mRecommandMessage:Ljava/lang/Runnable;

    const-string v14, "recommand"

    invoke-direct {v7, v12, v13, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 551
    .local v7, remandThread:Ljava/lang/Thread;
    const-string v12, "MessagePull_userLoginFlag"

    invoke-virtual {v7, v12}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 569
    .end local v2           #crazyThread:Ljava/lang/Thread;
    .end local v7           #remandThread:Ljava/lang/Thread;
    :cond_d
    :goto_4
    sget-boolean v12, Lcom/jingdong/common/service/MessagePullService;->isNeedGetWidget:Z

    if-nez v12, :cond_e

    if-eqz p1, :cond_f

    const-string v12, "Action_Get_Widget_Info_next"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 570
    :cond_e
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->CheckNetWork()Z

    move-result v12

    if-nez v12, :cond_12

    .line 571
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/common/service/MessagePullService;->handler:Landroid/os/Handler;

    const/16 v13, 0x1101

    const-wide/16 v14, 0x1388

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 592
    :cond_f
    :goto_5
    if-eqz p1, :cond_10

    const-string v12, "Action_Get_Widget_Info_pre"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 600
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/common/service/MessagePullService;->productList:Ljava/util/ArrayList;

    if-eqz v12, :cond_16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/common/service/MessagePullService;->productList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_16

    .line 602
    move-object/from16 v0, p0

    iget v12, v0, Lcom/jingdong/common/service/MessagePullService;->updateWidgetIndex:I

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/jingdong/common/service/MessagePullService;->updateWidgetIndex:I

    if-gez v12, :cond_15

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/common/service/MessagePullService;->productList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    :goto_6
    move-object/from16 v0, p0

    iput v12, v0, Lcom/jingdong/common/service/MessagePullService;->updateWidgetIndex:I

    .line 603
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/common/service/MessagePullService;->handler:Landroid/os/Handler;

    const/16 v13, 0x1100

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 611
    :cond_10
    :goto_7
    if-eqz p1, :cond_7

    const-string v12, "Action_delete_widget"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 612
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/common/service/MessagePullService;->removeWidget()V

    goto/16 :goto_3

    .line 559
    :cond_11
    move-object/from16 v0, p0

    iget v12, v0, Lcom/jingdong/common/service/MessagePullService;->network_retry_time:I

    const/4 v13, 0x3

    if-ge v12, v13, :cond_d

    .line 560
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/common/service/MessagePullService;->handler:Landroid/os/Handler;

    invoke-virtual {v12}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 561
    .local v6, msg:Landroid/os/Message;
    move-object/from16 v0, p1

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 562
    const/16 v12, 0x1103

    iput v12, v6, Landroid/os/Message;->what:I

    .line 563
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/common/service/MessagePullService;->handler:Landroid/os/Handler;

    const-wide/16 v13, 0x1388

    invoke-virtual {v12, v6, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_4

    .line 580
    .end local v6           #msg:Landroid/os/Message;
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/common/service/MessagePullService;->productList:Ljava/util/ArrayList;

    if-eqz v12, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/common/service/MessagePullService;->productList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_14

    .line 581
    move-object/from16 v0, p0

    iget v12, v0, Lcom/jingdong/common/service/MessagePullService;->updateWidgetIndex:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/jingdong/common/service/MessagePullService;->updateWidgetIndex:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/service/MessagePullService;->productList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-le v12, v13, :cond_13

    const/4 v12, 0x0

    :goto_8
    move-object/from16 v0, p0

    iput v12, v0, Lcom/jingdong/common/service/MessagePullService;->updateWidgetIndex:I

    .line 582
    const/4 v12, 0x0

    sput-boolean v12, Lcom/jingdong/common/service/MessagePullService;->isNeedGetWidget:Z

    .line 583
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/common/service/MessagePullService;->handler:Landroid/os/Handler;

    const/16 v13, 0x1100

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 581
    :cond_13
    move-object/from16 v0, p0

    iget v12, v0, Lcom/jingdong/common/service/MessagePullService;->updateWidgetIndex:I

    goto :goto_8

    .line 585
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/common/service/MessagePullService;->handler:Landroid/os/Handler;

    const/16 v13, 0x1101

    const-wide/16 v14, 0x1388

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    .line 602
    :cond_15
    move-object/from16 v0, p0

    iget v12, v0, Lcom/jingdong/common/service/MessagePullService;->updateWidgetIndex:I

    goto/16 :goto_6

    .line 606
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/common/service/MessagePullService;->handler:Landroid/os/Handler;

    const/16 v13, 0x1101

    const-wide/16 v14, 0x1388

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 434
    :catch_0
    move-exception v12

    goto/16 :goto_1
.end method
