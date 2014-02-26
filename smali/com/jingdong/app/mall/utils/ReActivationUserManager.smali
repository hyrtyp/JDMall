.class public Lcom/jingdong/app/mall/utils/ReActivationUserManager;
.super Ljava/lang/Object;
.source "ReActivationUserManager.java"


# static fields
.field private static final DEFUALT_RETRY_INTERVAL:J = 0x1eL

.field private static final NOTIFICATION_ID:I = 0x270f

.field private static final ONE_DAY_FOR_MILLIS:J = 0x5265c00L

.field private static final ONE_HOUR_FOR_MILLIS:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "ReActivationUserManager"

.field private static mPendingIntent:Landroid/app/PendingIntent;


# instance fields
.field private httpGroup:Lcom/jingdong/common/utils/HttpGroup;

.field private killSelfToken:Ljava/lang/Object;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->killSelfToken:Ljava/lang/Object;

    .line 63
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->mContext:Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 65
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 66
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/utils/ReActivationUserManager;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/utils/ReActivationUserManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3}, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/utils/ReActivationUserManager;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->killSelf()V

    return-void
.end method

.method private closeAlarm()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->mAlarmManager:Landroid/app/AlarmManager;

    sget-object v1, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 164
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->removeTriggerAtTime()V

    .line 166
    :cond_0
    return-void
.end method

.method private getMillisDoNotDisturb(J)J
    .locals 4
    .parameter "millis"

    .prologue
    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 102
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 103
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 104
    .local v1, hourOfDay:I
    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    .line 106
    const-wide/32 v2, 0x1ee6280

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 113
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2

    .line 108
    :cond_1
    const/16 v2, 0x15

    if-le v1, v2, :cond_0

    .line 110
    const-wide/32 v2, 0x2932e00

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private killSelf()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->killSelfToken:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->killSelfToken:Ljava/lang/Object;

    invoke-static {v0}, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->killSelf(Ljava/lang/Object;)V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->killSelfToken:Ljava/lang/Object;

    .line 278
    :cond_0
    return-void
.end method

.method private showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "title"
    .parameter "content"
    .parameter "createTime"

    .prologue
    .line 137
    new-instance v3, Landroid/app/Notification;

    const v5, 0x7f02003c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v5, p2, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 139
    .local v3, notification:Landroid/app/Notification;
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->createIntent(ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 140
    .local v2, intent:Landroid/content/Intent;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 143
    .local v4, obj:Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "created"

    invoke-virtual {v4, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v5, "content"

    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v5, "type"

    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v5, "title"

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x800

    invoke-static {v5, v6, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 155
    .local v0, contentIntent:Landroid/app/PendingIntent;
    const/16 v5, 0x14

    iput v5, v3, Landroid/app/Notification;->flags:I

    .line 156
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, p1, p2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 157
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v6, 0x270f

    invoke-virtual {v5, v6, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 158
    return-void

    .line 149
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v1

    .line 150
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private startAlarm(J)V
    .locals 6
    .parameter "millis"

    .prologue
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 87
    .local v0, nowMillis:J
    add-long v4, v0, p1

    invoke-direct {p0, v4, v5}, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->getMillisDoNotDisturb(J)J

    move-result-wide v2

    .line 89
    .local v2, updateTimes:J
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/utils/CommonUtil;->putTriggerAtTime(J)V

    .line 91
    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->startAlarmForTriggerAtTime(J)V

    .line 92
    return-void
.end method

.method private startAlarmForTriggerAtTime(J)V
    .locals 4
    .parameter "triggerAtTime"

    .prologue
    const/4 v3, 0x0

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.360buy.RE_ACTIVATION_USER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, intentNew:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/broadcastReceiver/ReActivationUserReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->mContext:Landroid/content/Context;

    const/high16 v2, 0x1000

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    sput-object v1, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->mPendingIntent:Landroid/app/PendingIntent;

    .line 127
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->mAlarmManager:Landroid/app/AlarmManager;

    sget-object v2, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v3, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 128
    return-void
.end method


# virtual methods
.method public checkOverdueAlarmForBoot()V
    .locals 4

    .prologue
    .line 246
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getTriggerAtTime()J

    move-result-wide v0

    .line 247
    .local v0, triggerAtTime:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->requestNotifys()V

    .line 258
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->startAlarmForTriggerAtTime(J)V

    .line 253
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->killSelf()V

    goto :goto_0

    .line 256
    :cond_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->killSelf()V

    goto :goto_0
.end method

.method public requestNotifys()V
    .locals 6

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x0

    .line 173
    new-instance v1, Lcom/jingdong/app/mall/utils/ReActivationUserManager$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/utils/ReActivationUserManager$1;-><init>(Lcom/jingdong/app/mall/utils/ReActivationUserManager;)V

    .line 226
    .local v1, onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 227
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v3, "activationMessage"

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 229
    invoke-virtual {v0, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 230
    invoke-virtual {v0, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNeedGlobalInitialization(Z)V

    .line 232
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    if-nez v3, :cond_0

    .line 233
    new-instance v2, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

    invoke-direct {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;-><init>()V

    .line 234
    .local v2, setting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;
    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setPriority(I)V

    .line 235
    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setType(I)V

    .line 236
    new-instance v3, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

    invoke-direct {v3, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;)V

    iput-object v3, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    .line 238
    .end local v2           #setting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v3, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 239
    return-void
.end method

.method public setKillSelfToken(Ljava/lang/Object;)V
    .locals 0
    .parameter "killSelfToken"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->killSelfToken:Ljava/lang/Object;

    .line 265
    return-void
.end method

.method public startReActivationUserTask()V
    .locals 4

    .prologue
    .line 73
    const-wide/16 v0, 0x1e

    invoke-static {v0, v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->getReActivationIntervalDays(J)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->startAlarm(J)V

    .line 76
    return-void
.end method
