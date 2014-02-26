.class public Lcom/ja/analytics/utils/SessionStatic;
.super Ljava/lang/Object;
.source "SessionStatic.java"


# static fields
.field private static ENDTIME:Ljava/lang/String;

.field private static SESSION_TIME:Ljava/lang/String;

.field private static STARTTIME:Ljava/lang/String;

.field private static begin:J

.field private static end:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "jd_session_time"

    sput-object v0, Lcom/ja/analytics/utils/SessionStatic;->SESSION_TIME:Ljava/lang/String;

    .line 18
    const-string v0, "endTime"

    sput-object v0, Lcom/ja/analytics/utils/SessionStatic;->ENDTIME:Ljava/lang/String;

    .line 19
    const-string v0, "startTime"

    sput-object v0, Lcom/ja/analytics/utils/SessionStatic;->STARTTIME:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized begin(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 22
    const-class v1, Lcom/ja/analytics/utils/SessionStatic;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/ja/analytics/utils/SessionStatic;->begin:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit v1

    return-void

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized end(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 30
    const-class v1, Lcom/ja/analytics/utils/SessionStatic;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/ja/analytics/utils/SessionStatic;->end:J

    .line 31
    sget-object v0, Lcom/ja/analytics/utils/SessionStatic;->SESSION_TIME:Ljava/lang/String;

    sget-object v2, Lcom/ja/analytics/utils/SessionStatic;->ENDTIME:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v2, v3}, Lcom/ja/analytics/utils/PreferenceUtils;->setSessionTimePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit v1

    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isNewSession()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const-wide/16 v5, 0x0

    .line 55
    const-class v2, Lcom/ja/analytics/utils/SessionStatic;

    monitor-enter v2

    :try_start_0
    sget-wide v3, Lcom/ja/analytics/utils/SessionStatic;->begin:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_0

    sget-wide v3, Lcom/ja/analytics/utils/SessionStatic;->end:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    .line 64
    .local v0, flag:Z
    :cond_0
    :goto_0
    monitor-exit v2

    return v0

    .line 61
    .end local v0           #flag:Z
    :cond_1
    :try_start_1
    sget-wide v3, Lcom/ja/analytics/utils/SessionStatic;->end:J

    sget-wide v5, Lcom/ja/analytics/utils/SessionStatic;->begin:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x1b7740

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    const/4 v0, 0x1

    .line 62
    .restart local v0       #flag:Z
    :cond_2
    const-wide/16 v3, 0x0

    sput-wide v3, Lcom/ja/analytics/utils/SessionStatic;->end:J

    .line 63
    const-wide/16 v3, 0x0

    sput-wide v3, Lcom/ja/analytics/utils/SessionStatic;->begin:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static sendLastSessionTime(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 36
    sget-object v6, Lcom/ja/analytics/utils/SessionStatic;->SESSION_TIME:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/ja/analytics/utils/PreferenceUtils;->getSessionTimePreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 37
    .local v0, beginsp:Landroid/content/SharedPreferences;
    sget-object v6, Lcom/ja/analytics/utils/SessionStatic;->STARTTIME:Ljava/lang/String;

    const-string v7, ""

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 38
    .local v4, sbt:Ljava/lang/String;
    sget-object v6, Lcom/ja/analytics/utils/SessionStatic;->ENDTIME:Ljava/lang/String;

    const-string v7, ""

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, set:Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 41
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "begintime=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;)I

    .line 42
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "endtime=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;)I

    .line 44
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://jma.man.jcloud.com/maengine/jmadata/RealTimeTimeLength?starttime="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&stoptime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&appkey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/ja/analytics/logevent/EventLog;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 45
    .local v2, get:Lorg/apache/http/client/methods/HttpGet;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 46
    .local v3, httpClient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v3, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v2           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #httpClient:Lorg/apache/http/client/HttpClient;
    :cond_0
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v1

    .line 49
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "SessionStatic.sendLastSessionTime"

    const-string v7, "sending session time failed"

    invoke-static {v6, v7}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static startSessionTime(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 26
    sget-object v0, Lcom/ja/analytics/utils/SessionStatic;->SESSION_TIME:Ljava/lang/String;

    sget-object v1, Lcom/ja/analytics/utils/SessionStatic;->STARTTIME:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/ja/analytics/utils/PreferenceUtils;->setSessionTimePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method
