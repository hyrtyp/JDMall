.class public Lcom/ja/analytics/logevent/EventLog;
.super Ljava/lang/Object;
.source "EventLog.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static appChannal:Ljava/lang/String;

.field private static appKey:Ljava/lang/String;

.field private static durationTime:Ljava/lang/String;

.field private static mEventLog:Lcom/ja/analytics/logevent/EventLog;

.field private static mFirtStartTime:Ljava/lang/String;

.field private static mOldSessionCount:I

.field private static mSessionCount:I

.field private static reqTime:Ljava/lang/String;


# instance fields
.field private db_ID:J

.field private final eventCollection:Lcom/ja/analytics/logevent/DurationEventCollection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/ja/analytics/logevent/EventLog;->mSessionCount:I

    .line 34
    const-class v0, Lcom/ja/analytics/logevent/EventLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/ja/analytics/logevent/EventLog;

    invoke-direct {v0}, Lcom/ja/analytics/logevent/EventLog;-><init>()V

    sput-object v0, Lcom/ja/analytics/logevent/EventLog;->mEventLog:Lcom/ja/analytics/logevent/EventLog;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/ja/analytics/logevent/DurationEventCollection;

    invoke-direct {v0}, Lcom/ja/analytics/logevent/DurationEventCollection;-><init>()V

    iput-object v0, p0, Lcom/ja/analytics/logevent/EventLog;->eventCollection:Lcom/ja/analytics/logevent/DurationEventCollection;

    .line 28
    return-void
.end method

.method private declared-synchronized convertMap2Json(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 769
    monitor-enter p0

    :try_start_0
    sget-object v5, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    const-string v6, "convertMap2Json() --->"

    invoke-static {v5, v6}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 773
    .local v4, jsonobject:Lorg/json/JSONObject;
    sget-object v5, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    const-string v6, "convertMap2Json() ---1"

    invoke-static {v5, v6}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 774
    if-nez p1, :cond_0

    move-object v4, v7

    .line 790
    .end local v4           #jsonobject:Lorg/json/JSONObject;
    :goto_0
    monitor-exit p0

    return-object v4

    .line 776
    .restart local v4       #jsonobject:Lorg/json/JSONObject;
    :cond_0
    :try_start_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 779
    .local v3, iterator:Ljava/util/Iterator;
    const/4 v2, 0x0

    .local v2, i1:I
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 784
    :cond_1
    sget-object v5, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 787
    .end local v2           #i1:I
    .end local v3           #iterator:Ljava/util/Iterator;
    .end local v4           #jsonobject:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 789
    .local v1, exception:Ljava/lang/Exception;
    :try_start_3
    sget-object v5, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    const-string v6, "exception when convert map to json"

    invoke-static {v5, v6}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v7

    .line 790
    goto :goto_0

    .line 781
    .end local v1           #exception:Ljava/lang/Exception;
    .restart local v2       #i1:I
    .restart local v3       #iterator:Ljava/util/Iterator;
    .restart local v4       #jsonobject:Lorg/json/JSONObject;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 782
    :try_start_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 779
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 769
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v2           #i1:I
    .end local v3           #iterator:Ljava/util/Iterator;
    .end local v4           #jsonobject:Lorg/json/JSONObject;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public static getAccessKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 115
    :try_start_0
    invoke-static {p0}, Lcom/ja/analytics/utils/ManifestPackageUtils;->getAccessKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Lcom/ja/analytics/utils/StrUtil;->accessKeyValidation(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 118
    sget-object v3, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u65e0\u6548\u7684accesskey:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 125
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 122
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v1, v2

    .line 125
    goto :goto_0
.end method

.method public static getAppChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 89
    :try_start_0
    invoke-static {p0}, Lcom/ja/analytics/utils/ManifestPackageUtils;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, channel:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    :cond_0
    sget-object v0, Lcom/ja/analytics/logevent/EventLog;->appChannal:Ljava/lang/String;

    .line 94
    :cond_1
    invoke-static {v0}, Lcom/ja/analytics/utils/StrUtil;->channelValidation(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 96
    sget-object v3, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u65e0\u6548\u7684channel:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 103
    .end local v0           #channel:Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v0

    .line 100
    :catch_0
    move-exception v1

    .line 102
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v2

    .line 103
    goto :goto_0
.end method

.method public static getAppkey(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 144
    :try_start_0
    invoke-static {p0}, Lcom/ja/analytics/utils/ManifestPackageUtils;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, key:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    :cond_0
    sget-object v1, Lcom/ja/analytics/logevent/EventLog;->appKey:Ljava/lang/String;

    .line 149
    :cond_1
    invoke-static {v1}, Lcom/ja/analytics/utils/StrUtil;->keyValidation(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 151
    sget-object v3, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u65e0\u6548\u7684appkey:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 158
    .end local v1           #key:Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v1

    .line 155
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v1, v2

    .line 158
    goto :goto_0
.end method

.method public static getSingleton()Lcom/ja/analytics/logevent/EventLog;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/ja/analytics/logevent/EventLog;->mEventLog:Lcom/ja/analytics/logevent/EventLog;

    return-object v0
.end method

.method private isNewSession()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 249
    sget v0, Lcom/ja/analytics/logevent/EventLog;->mSessionCount:I

    sget v1, Lcom/ja/analytics/logevent/EventLog;->mOldSessionCount:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 250
    sget-object v0, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The new session: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/ja/analytics/logevent/EventLog;->mSessionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private onCommonData(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .parameter "context"
    .parameter "event_id"

    .prologue
    .line 369
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 371
    .local v2, jo:Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "a"

    invoke-direct {p0, p2}, Lcom/ja/analytics/logevent/EventLog;->string2Json(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 372
    sget-object v4, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u8fc7\u6ee4\u4e4b\u540e\u7684\u6570\u636e:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/ja/analytics/logevent/EventLog;->string2Json(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v4, "hs"

    invoke-static {p1}, Lcom/ja/analytics/utils/DisplayUtils;->GetOrientation(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 377
    const-string v4, "__jd_mob_preference"

    invoke-static {p1, v4}, Lcom/ja/analytics/utils/PreferenceUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 378
    .local v3, sharedPreferences1:Landroid/content/SharedPreferences;
    invoke-static {p1, v3}, Lcom/ja/analytics/utils/NetUtils;->getTrafficStats(Landroid/content/Context;Landroid/content/SharedPreferences;)[J

    move-result-object v0

    .line 379
    .local v0, al:[J
    if-eqz v0, :cond_0

    .line 380
    const-string v4, "ub"

    const/4 v5, 0x1

    aget-wide v5, v0, v5

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 381
    const-string v4, "db"

    const/4 v5, 0x0

    aget-wide v5, v0, v5

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 388
    :goto_0
    const-string v4, "v"

    invoke-virtual {p0}, Lcom/ja/analytics/logevent/EventLog;->getSessionCount()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 418
    .end local v0           #al:[J
    .end local v3           #sharedPreferences1:Landroid/content/SharedPreferences;
    :goto_1
    return-object v2

    .line 384
    .restart local v0       #al:[J
    .restart local v3       #sharedPreferences1:Landroid/content/SharedPreferences;
    :cond_0
    const-string v4, "ub"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 385
    const-string v4, "db"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 415
    .end local v0           #al:[J
    .end local v3           #sharedPreferences1:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 416
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static setFirstStartTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 167
    const-string v4, ""

    sput-object v4, Lcom/ja/analytics/logevent/EventLog;->mFirtStartTime:Ljava/lang/String;

    .line 168
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 169
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 170
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/ja/analytics/logevent/EventLog;->mFirtStartTime:Ljava/lang/String;

    .line 171
    const-string v4, "__jd_mob_preference"

    invoke-static {p0, v4}, Lcom/ja/analytics/utils/PreferenceUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 173
    .local v2, sharedPreferences1:Landroid/content/SharedPreferences;
    const-string v4, "firstStartTime"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, startTime:Ljava/lang/String;
    const-string v4, ""

    if-ne v3, v4, :cond_0

    .line 175
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "firstStartTime"

    sget-object v6, Lcom/ja/analytics/logevent/EventLog;->mFirtStartTime:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    sget-object v3, Lcom/ja/analytics/logevent/EventLog;->mFirtStartTime:Ljava/lang/String;

    .line 178
    .end local v3           #startTime:Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private string2Json(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "s"

    .prologue
    .line 727
    if-nez p1, :cond_0

    .line 728
    const-string p1, ""

    .line 729
    .end local p1
    :cond_0
    return-object p1
.end method


# virtual methods
.method public declared-synchronized checkMenifestPermission(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/ja/analytics/logevent/EventLog;->isNewSession()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 268
    :goto_0
    monitor-exit p0

    return-void

    .line 264
    :cond_0
    :try_start_1
    sget v0, Lcom/ja/analytics/logevent/EventLog;->mSessionCount:I

    sput v0, Lcom/ja/analytics/logevent/EventLog;->mOldSessionCount:I

    .line 265
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v0}, Lcom/ja/analytics/utils/FileUtils;->checkMenifestPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 266
    const-string v0, "android.permission.INTERNET"

    invoke-static {p1, v0}, Lcom/ja/analytics/utils/FileUtils;->checkMenifestPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 267
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/ja/analytics/utils/FileUtils;->checkMenifestPermission(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearSendDate()V
    .locals 1

    .prologue
    .line 69
    const-string v0, ""

    sput-object v0, Lcom/ja/analytics/logevent/EventLog;->reqTime:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public clearSessionCount()V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    sput v0, Lcom/ja/analytics/logevent/EventLog;->mSessionCount:I

    .line 243
    return-void
.end method

.method public compositeEVMEventLog(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 7
    .parameter "context"
    .parameter "event_id"
    .parameter "map"
    .parameter "duration"

    .prologue
    .line 645
    sget-object v4, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    const-string v5, "compositeEVMEventLog() --->"

    invoke-static {v4, v5}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    if-nez p2, :cond_0

    .line 684
    :goto_0
    return-void

    .line 649
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ja/analytics/logevent/EventLog;->checkMenifestPermission(Landroid/content/Context;)V

    .line 651
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 654
    .local v1, jo:Lorg/json/JSONObject;
    sget-object v4, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u8fc7\u6ee4\u4e4b\u524d\u7684\u6570\u636e:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/ja/analytics/logevent/EventLog;->onCommonData(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 659
    if-eqz p3, :cond_1

    .line 662
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 663
    .local v2, json:Lorg/json/JSONObject;
    invoke-direct {p0, p3}, Lcom/ja/analytics/logevent/EventLog;->convertMap2Json(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    .line 664
    if-eqz v2, :cond_1

    .line 665
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 666
    .local v3, param:Ljava/lang/String;
    const-string v4, "am"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 674
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #param:Ljava/lang/String;
    :cond_1
    const-string v4, "dt"

    invoke-virtual {v1, v4, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 675
    const-string v4, "ct1"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, p4

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/ja/analytics/logevent/EventLog;->writeEventLogToDatabase(Landroid/content/Context;Lorg/json/JSONObject;)J

    goto :goto_0

    .line 677
    :catch_0
    move-exception v0

    .line 679
    .local v0, e:Lorg/json/JSONException;
    sget-object v4, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public declared-synchronized getProtocolHeader(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 8
    .parameter "context"

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    .local v1, jo:Lorg/json/JSONObject;
    :try_start_1
    const-string v5, "fs"

    invoke-static {p1}, Lcom/ja/analytics/logevent/EventLog;->setFirstStartTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    invoke-static {p1}, Lcom/ja/analytics/logevent/EventLog;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 289
    const-string v5, "JD_APPKEY"

    invoke-static {p1, v5}, Lcom/ja/analytics/utils/ManifestPackageUtils;->ReadCofigInfoFromManifest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, userId:Ljava/lang/String;
    const-string v5, ""

    if-ne v4, v5, :cond_1

    .line 291
    const-string v5, "app_key"

    const-string v6, "-"

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    .end local v4           #userId:Ljava/lang/String;
    :goto_0
    const-string v5, "sr"

    invoke-static {p1}, Lcom/ja/analytics/utils/DisplayUtils;->GetResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    const-string v5, "n"

    invoke-static {p1}, Lcom/ja/analytics/utils/NetUtils;->getNetworkTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    const-string v5, "k"

    const-string v6, "1.2"

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    const-string v5, "os"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Android|"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    const-string v5, "c"

    invoke-static {p1}, Lcom/ja/analytics/utils/ManifestPackageUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    invoke-static {p1}, Lcom/ja/analytics/logevent/EventLog;->getAppChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 309
    const-string v5, "sc"

    const-string v6, "JD_CHANNEL"

    invoke-static {p1, v6}, Lcom/ja/analytics/utils/ManifestPackageUtils;->ReadCofigInfoFromManifest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    :goto_1
    const-string v5, "mo"

    invoke-static {p1}, Lcom/ja/analytics/utils/NetUtils;->getNetworkOperators(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 315
    const-string v5, "u"

    invoke-static {p1}, Lcom/ja/analytics/utils/DevicesUtils;->getDeviceId2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    const-string v5, "d"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 343
    :goto_2
    :try_start_2
    const-string v5, "__jd_mob_preference"

    invoke-static {p1, v5}, Lcom/ja/analytics/utils/PreferenceUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 344
    .local v3, sharedPreferences1:Landroid/content/SharedPreferences;
    const-string v5, "protocolHeader"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, protocolHeader:Ljava/lang/String;
    const-string v5, ""

    if-ne v2, v5, :cond_0

    .line 346
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "protocolHeader"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 349
    :cond_0
    monitor-exit p0

    return-object v1

    .line 293
    .end local v2           #protocolHeader:Ljava/lang/String;
    .end local v3           #sharedPreferences1:Landroid/content/SharedPreferences;
    .restart local v4       #userId:Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string v5, "app_key"

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 336
    .end local v4           #userId:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 338
    .local v0, e:Lorg/json/JSONException;
    :try_start_4
    sget-object v5, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/ja/analytics/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 281
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #jo:Lorg/json/JSONObject;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 296
    .restart local v1       #jo:Lorg/json/JSONObject;
    :cond_2
    :try_start_5
    const-string v5, "app_key"

    invoke-static {p1}, Lcom/ja/analytics/logevent/EventLog;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 311
    :cond_3
    const-string v5, "sc"

    invoke-static {p1}, Lcom/ja/analytics/logevent/EventLog;->getAppChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method public getSendDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/ja/analytics/logevent/EventLog;->reqTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSendFalseFlag()I
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public getSendOkFlag()I
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x1

    return v0
.end method

.method public getSessionCount()I
    .locals 3

    .prologue
    .line 234
    sget-object v0, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSessionCount() return\uff1a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/ja/analytics/logevent/EventLog;->mSessionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    sget v0, Lcom/ja/analytics/logevent/EventLog;->mSessionCount:I

    return v0
.end method

.method public declared-synchronized onEVMEventLogBegin(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "event_id"
    .parameter
    .parameter "evmFlag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 562
    .local p3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    const-string v2, "onEVMEventLogBegin() --->"

    invoke-static {v1, v2}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    if-nez p2, :cond_0

    .line 568
    :goto_0
    monitor-exit p0

    return-void

    .line 565
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "_ekm_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, eventLable:Ljava/lang/String;
    iget-object v1, p0, Lcom/ja/analytics/logevent/EventLog;->eventCollection:Lcom/ja/analytics/logevent/DurationEventCollection;

    invoke-virtual {v1, v0}, Lcom/ja/analytics/logevent/DurationEventCollection;->saveEventBeginTime(Ljava/lang/String;)V

    .line 567
    iget-object v1, p0, Lcom/ja/analytics/logevent/EventLog;->eventCollection:Lcom/ja/analytics/logevent/DurationEventCollection;

    invoke-virtual {v1, v0, p3}, Lcom/ja/analytics/logevent/DurationEventCollection;->saveEventParamMap(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 562
    .end local v0           #eventLable:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onEVMEventLogEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 11
    .parameter "context"
    .parameter "event_id"
    .parameter "evmFlag"

    .prologue
    const/4 v2, 0x0

    .line 599
    monitor-enter p0

    :try_start_0
    sget-object v8, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    const-string v9, "onEVMEventLogEnd() --->"

    invoke-static {v8, v9}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    if-nez p2, :cond_0

    .line 640
    :goto_0
    monitor-exit p0

    return-object v2

    .line 603
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/ja/analytics/logevent/EventLog;->checkMenifestPermission(Landroid/content/Context;)V

    .line 605
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "_ekm_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 606
    .local v1, eventLable:Ljava/lang/String;
    iget-object v8, p0, Lcom/ja/analytics/logevent/EventLog;->eventCollection:Lcom/ja/analytics/logevent/DurationEventCollection;

    invoke-virtual {v8, v1}, Lcom/ja/analytics/logevent/DurationEventCollection;->getEventBeginTime(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 607
    .local v6, startTime:J
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_1

    .line 608
    sget-object v8, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    const-string v9, "onEVMEventLogEnd(), onEVMEventLogBegin() not called!!"

    invoke-static {v8, v9}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 599
    .end local v1           #eventLable:Ljava/lang/String;
    .end local v6           #startTime:J
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 612
    .restart local v1       #eventLable:Ljava/lang/String;
    .restart local v6       #startTime:J
    :cond_1
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 615
    .local v2, jo:Lorg/json/JSONObject;
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/ja/analytics/logevent/EventLog;->onCommonData(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 617
    iget-object v8, p0, Lcom/ja/analytics/logevent/EventLog;->eventCollection:Lcom/ja/analytics/logevent/DurationEventCollection;

    invoke-virtual {v8, v1}, Lcom/ja/analytics/logevent/DurationEventCollection;->getEventParamMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 618
    .local v4, map:Ljava/util/Map;
    if-eqz v4, :cond_2

    .line 621
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 622
    .local v3, json:Lorg/json/JSONObject;
    invoke-direct {p0, v4}, Lcom/ja/analytics/logevent/EventLog;->convertMap2Json(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v3

    .line 623
    if-eqz v3, :cond_2

    .line 624
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 625
    .local v5, param:Ljava/lang/String;
    const-string v8, "am"

    invoke-virtual {v2, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 632
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v5           #param:Ljava/lang/String;
    :cond_2
    const-string v8, "dt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v6

    invoke-virtual {v2, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 633
    const-string v8, "ct1"

    invoke-virtual {v2, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 635
    .end local v4           #map:Ljava/util/Map;
    :catch_0
    move-exception v0

    .line 637
    .local v0, e:Lorg/json/JSONException;
    :try_start_4
    sget-object v8, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)Lorg/json/JSONObject;
    .locals 6
    .parameter "context"
    .parameter "event_id"
    .parameter
    .parameter "duration"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 571
    .local p3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    .local v0, jo:Lorg/json/JSONObject;
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/ja/analytics/logevent/EventLog;->onCommonData(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 575
    if-eqz p3, :cond_0

    .line 578
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 579
    .local v1, json:Lorg/json/JSONObject;
    invoke-direct {p0, p3}, Lcom/ja/analytics/logevent/EventLog;->convertMap2Json(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    .line 580
    if-eqz v1, :cond_1

    .line 581
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 582
    .local v2, param:Ljava/lang/String;
    const-string v3, "am"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 589
    .end local v1           #json:Lorg/json/JSONObject;
    .end local v2           #param:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v3, "dt"

    invoke-virtual {v0, v3, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 590
    const-string v3, "ct1"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 595
    :goto_1
    monitor-exit p0

    return-object v0

    .line 585
    .restart local v1       #json:Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    const-string v3, "am"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 591
    .end local v1           #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 571
    .end local v0           #jo:Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized onEventLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .parameter "context"
    .parameter "event_id"
    .parameter "lable"

    .prologue
    .line 428
    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    const-string v4, "onEventLog() --->"

    invoke-static {v3, v4}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    if-nez p2, :cond_0

    .line 430
    const/4 v1, 0x0

    .line 449
    :goto_0
    monitor-exit p0

    return-object v1

    .line 432
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/ja/analytics/logevent/EventLog;->checkMenifestPermission(Landroid/content/Context;)V

    .line 433
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 435
    .local v1, jo:Lorg/json/JSONObject;
    sget-object v3, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u8fc7\u6ee4\u4e4b\u524d\u7684\u6570\u636e:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/ja/analytics/logevent/EventLog;->onCommonData(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 438
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 439
    .local v2, json:Lorg/json/JSONObject;
    if-eqz p3, :cond_1

    const-string v3, ""

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 440
    const-string v3, "am_map"

    invoke-direct {p0, p3}, Lcom/ja/analytics/logevent/EventLog;->string2Json(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 441
    :cond_1
    const-string v3, "am"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 442
    const-string v3, "dt"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 443
    const-string v3, "ct1"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 444
    .end local v2           #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 446
    .local v0, e:Lorg/json/JSONException;
    :try_start_3
    sget-object v3, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 428
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #jo:Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized onEventLogBegin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "event_id"
    .parameter "lable"

    .prologue
    .line 490
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    const-string v1, "onEventLogBegin() --->"

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    if-nez p2, :cond_0

    .line 495
    :goto_0
    monitor-exit p0

    return-void

    .line 493
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ja/analytics/logevent/EventLog;->eventCollection:Lcom/ja/analytics/logevent/DurationEventCollection;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "_evt_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ja/analytics/logevent/DurationEventCollection;->saveEventBeginTime(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onEventLogDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 8
    .parameter "context"
    .parameter "event_id"
    .parameter "lable"
    .parameter "duration"

    .prologue
    .line 533
    monitor-enter p0

    :try_start_0
    sget-object v5, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    const-string v6, "onEventLogDuration() --->"

    invoke-static {v5, v6}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    if-nez p2, :cond_0

    .line 535
    const/4 v1, 0x0

    .line 557
    :goto_0
    monitor-exit p0

    return-object v1

    .line 537
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/ja/analytics/logevent/EventLog;->checkMenifestPermission(Landroid/content/Context;)V

    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 540
    .local v3, startTime:J
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 541
    .local v1, jo:Lorg/json/JSONObject;
    sget-object v5, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u8fc7\u6ee4\u4e4b\u524d\u7684\u6570\u636e:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/ja/analytics/logevent/EventLog;->onCommonData(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 545
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 546
    .local v2, json:Lorg/json/JSONObject;
    if-eqz p3, :cond_1

    const-string v5, ""

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 547
    const-string v5, "am_map"

    invoke-direct {p0, p3}, Lcom/ja/analytics/logevent/EventLog;->string2Json(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 548
    :cond_1
    const-string v5, "am"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 549
    const-string v5, "dt"

    invoke-virtual {v1, v5, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 550
    const-string v5, "ct1"

    invoke-virtual {v1, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 552
    .end local v2           #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 554
    .local v0, e:Lorg/json/JSONException;
    :try_start_3
    sget-object v5, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 533
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #jo:Lorg/json/JSONObject;
    .end local v3           #startTime:J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized onEventLogEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8
    .parameter "context"
    .parameter "event_id"
    .parameter "lable"

    .prologue
    const/4 v1, 0x0

    .line 499
    monitor-enter p0

    :try_start_0
    sget-object v5, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    const-string v6, "onEventLogEnd() --->"

    invoke-static {v5, v6}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    if-nez p2, :cond_0

    .line 528
    :goto_0
    monitor-exit p0

    return-object v1

    .line 503
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/ja/analytics/logevent/EventLog;->checkMenifestPermission(Landroid/content/Context;)V

    .line 505
    iget-object v5, p0, Lcom/ja/analytics/logevent/EventLog;->eventCollection:Lcom/ja/analytics/logevent/DurationEventCollection;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "_evt_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ja/analytics/logevent/DurationEventCollection;->getEventBeginTime(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 506
    .local v3, startTime:J
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_1

    .line 507
    sget-object v5, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    const-string v6, "onEventLogEnd(), onEventLogBegin() not called!!"

    invoke-static {v5, v6}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 499
    .end local v3           #startTime:J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 510
    .restart local v3       #startTime:J
    :cond_1
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 512
    .local v1, jo:Lorg/json/JSONObject;
    sget-object v5, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u8fc7\u6ee4\u4e4b\u524d\u7684\u6570\u636e:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 514
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/ja/analytics/logevent/EventLog;->onCommonData(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 516
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 517
    .local v2, json:Lorg/json/JSONObject;
    if-eqz p3, :cond_2

    const-string v5, ""

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 518
    const-string v5, "am_map"

    invoke-direct {p0, p3}, Lcom/ja/analytics/logevent/EventLog;->string2Json(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 519
    :cond_2
    const-string v5, "am"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    const-string v5, "dt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 521
    const-string v5, "ct1"

    invoke-virtual {v1, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 523
    .end local v2           #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 525
    .local v0, e:Lorg/json/JSONException;
    :try_start_4
    sget-object v5, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized onMapEventLog(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 6
    .parameter "context"
    .parameter "event_id"
    .parameter "map"

    .prologue
    .line 454
    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    const-string v4, "onMapEventLog() --->"

    invoke-static {v3, v4}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    if-nez p2, :cond_0

    .line 456
    const/4 v1, 0x0

    .line 485
    :goto_0
    monitor-exit p0

    return-object v1

    .line 458
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/ja/analytics/logevent/EventLog;->checkMenifestPermission(Landroid/content/Context;)V

    .line 460
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 461
    .local v1, jo:Lorg/json/JSONObject;
    sget-object v3, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u8fc7\u6ee4\u4e4b\u524d\u7684\u6570\u636e:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/ja/analytics/logevent/EventLog;->onCommonData(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 465
    if-eqz p3, :cond_1

    .line 468
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 469
    .local v2, json:Lorg/json/JSONObject;
    invoke-direct {p0, p3}, Lcom/ja/analytics/logevent/EventLog;->convertMap2Json(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    .line 470
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 473
    const-string v3, "am"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 476
    .end local v2           #json:Lorg/json/JSONObject;
    :cond_1
    const-string v3, "dt"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 477
    const-string v3, "ct1"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    .line 482
    .local v0, e:Lorg/json/JSONException;
    :try_start_3
    sget-object v3, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 454
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #jo:Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public setAppChannel(Ljava/lang/String;)V
    .locals 0
    .parameter "appChannel"

    .prologue
    .line 77
    sput-object p1, Lcom/ja/analytics/logevent/EventLog;->appChannal:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0
    .parameter "appId"

    .prologue
    .line 134
    sput-object p1, Lcom/ja/analytics/logevent/EventLog;->appKey:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setSendData()Ljava/lang/String;
    .locals 4

    .prologue
    .line 187
    const-string v2, ""

    sput-object v2, Lcom/ja/analytics/logevent/EventLog;->reqTime:Ljava/lang/String;

    .line 188
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 189
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 190
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ja/analytics/logevent/EventLog;->reqTime:Ljava/lang/String;

    .line 191
    sget-object v2, Lcom/ja/analytics/logevent/EventLog;->reqTime:Ljava/lang/String;

    return-object v2
.end method

.method public setSessionCount(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "sessionCount"

    .prologue
    .line 198
    sget-object v3, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setSessionCount()  \uff1a "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v3, "__jd_sdk_Session"

    invoke-static {p1, v3}, Lcom/ja/analytics/utils/PreferenceUtils;->getSessionSharedPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 200
    .local v2, sharedPreferences1:Landroid/content/SharedPreferences;
    const-string v3, "sessionCount"

    sget v4, Lcom/ja/analytics/logevent/EventLog;->mSessionCount:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 201
    .local v0, Count1:I
    sget-object v3, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get the old data first: get session from mSessionCount:  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/ja/analytics/logevent/EventLog;->mSessionCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v3, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get the old data first: get session from preferences:  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-lez v0, :cond_2

    .line 206
    const-string v3, "__jd_sdk_Session"

    const-string v4, "sessionCount"

    add-int v5, p2, v0

    invoke-static {p1, v3, v4, v5}, Lcom/ja/analytics/utils/PreferenceUtils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 207
    sget-object v3, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Set the old data before: Set session from preferences:  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v3, "__jd_sdk_Session"

    invoke-static {p1, v3}, Lcom/ja/analytics/utils/PreferenceUtils;->getSessionSharedPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 209
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v3, "sessionCount"

    add-int v4, p2, v0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/ja/analytics/logevent/EventLog;->mSessionCount:I

    .line 210
    sget-object v3, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Set the old data end: Set session from preferences:  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/ja/analytics/logevent/EventLog;->mSessionCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v1           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    sget v3, Lcom/ja/analytics/logevent/EventLog;->mSessionCount:I

    if-nez v3, :cond_1

    .line 225
    const/4 v3, 0x1

    sput v3, Lcom/ja/analytics/logevent/EventLog;->mSessionCount:I

    .line 226
    sget-object v3, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mSessionCount = 0 =  \uff1a "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/ja/analytics/logevent/EventLog;->mSessionCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_1
    return-void

    .line 212
    :cond_2
    if-lez p2, :cond_0

    .line 213
    sget v3, Lcom/ja/analytics/logevent/EventLog;->mSessionCount:I

    add-int/2addr v3, p2

    sput v3, Lcom/ja/analytics/logevent/EventLog;->mSessionCount:I

    .line 214
    sget-object v3, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mSessionCount  \uff1a "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/ja/analytics/logevent/EventLog;->mSessionCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-object v3, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Set session to preferences:  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ja/analytics/logevent/EventLog;->getSessionCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v3, "__jd_sdk_Session"

    const-string v4, "sessionCount"

    sget v5, Lcom/ja/analytics/logevent/EventLog;->mSessionCount:I

    invoke-static {p1, v3, v4, v5}, Lcom/ja/analytics/utils/PreferenceUtils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 219
    const-string v3, "__jd_sdk_Session"

    invoke-static {p1, v3}, Lcom/ja/analytics/utils/PreferenceUtils;->getSessionSharedPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 221
    .restart local v1       #sharedPreferences:Landroid/content/SharedPreferences;
    const-string v3, "sessionCount"

    sget v4, Lcom/ja/analytics/logevent/EventLog;->mSessionCount:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/ja/analytics/logevent/EventLog;->mSessionCount:I

    .line 222
    sget-object v3, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Get session from preferences1:  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/ja/analytics/logevent/EventLog;->mSessionCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public writeEventLogToDatabase(Landroid/content/Context;Lorg/json/JSONObject;)J
    .locals 9
    .parameter "context"
    .parameter "json"

    .prologue
    .line 688
    sget-object v6, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "writeEventLogToDatabase() --->"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x2800

    if-le v6, v7, :cond_1

    .line 691
    sget-object v6, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    const-string v7, "\u4e8b\u4ef6\u6570\u636e\u8d85\u8fc710240\u4e2a\u5b57\u7b26\uff0csdk\u653e\u5f03\u4fdd\u5b58\u64cd\u4f5c\u3002"

    invoke-static {v6, v7}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const-wide/16 v1, -0x1

    .line 718
    :cond_0
    :goto_0
    return-wide v1

    .line 694
    :cond_1
    invoke-static {p1}, Lcom/ja/analytics/logevent/EventLog;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 696
    sget-object v6, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    const-string v7, "\u6ca1\u6709\u83b7\u53d6\u5230appkey/appkey\u65e0\u6548,\u653e\u5f03\u4fdd\u5b58\u64cd\u4f5c"

    invoke-static {v6, v7}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 699
    :cond_2
    const-wide/16 v1, -0x1

    .line 700
    .local v1, _ID:J
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 703
    :try_start_0
    const-string v6, "am"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 704
    .local v5, obj:Ljava/lang/Object;
    instance-of v6, v5, Lorg/json/JSONObject;

    if-eqz v6, :cond_3

    .line 706
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v4, v0

    .line 707
    .local v4, js:Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 709
    const-string v6, "am"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    .end local v4           #js:Lorg/json/JSONObject;
    .end local v5           #obj:Ljava/lang/Object;
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/ja/analytics/db/EventTable;->openSQLiteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 716
    invoke-static {p1, p2}, Lcom/ja/analytics/db/EventTable;->insertEventLogItem(Landroid/content/Context;Lorg/json/JSONObject;)J

    move-result-wide v1

    goto :goto_0

    .line 712
    :catch_0
    move-exception v3

    .line 713
    .local v3, e:Lorg/json/JSONException;
    sget-object v6, Lcom/ja/analytics/logevent/EventLog;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
