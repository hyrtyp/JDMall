.class public Lcom/jingdong/common/utils/NewJLogUtil;
.super Ljava/lang/Object;
.source "NewJLogUtil.java"


# static fields
.field private static final KEY_NEED_LOG:Ljava/lang/String; = "needLog"

.field private static final NEED_LOG:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "NewJLogUtil"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final WEBACTIVITY:Ljava/lang/String; = "WebActivity"

.field private static isLocalNeedLog:Ljava/lang/Boolean;

.field private static isNeedLog:Ljava/lang/Boolean;

.field private static useNewLog:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    sput-object v0, Lcom/jingdong/common/utils/NewJLogUtil;->isNeedLog:Ljava/lang/Boolean;

    .line 15
    sput-object v0, Lcom/jingdong/common/utils/NewJLogUtil;->isLocalNeedLog:Ljava/lang/Boolean;

    .line 20
    sput-object v0, Lcom/jingdong/common/utils/NewJLogUtil;->useNewLog:Ljava/lang/Boolean;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static JaInit(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 108
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/NewJLogUtil;->isNeedLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-static {}, Lcom/jingdong/common/utils/NewJLogUtil;->isUseNewJLog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-static {p0}, Lcom/ja/analytics/MobJaAgent;->updateOnlineConfig(Landroid/content/Context;)V

    .line 114
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v0

    .line 115
    .local v0, app:Lcom/jingdong/common/MyApplication;
    invoke-virtual {v0}, Lcom/jingdong/common/MyApplication;->isJMARunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/ja/analytics/MobJaAgent;->SessionAccumulate(Landroid/content/Context;I)V

    .line 117
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/MyApplication;->setJMARunning(Z)V

    .line 129
    .end local v0           #app:Lcom/jingdong/common/MyApplication;
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-static {p0}, Lcom/jingdong/common/utils/JLogUtil;->JaInit(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static doOnPause(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 143
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/NewJLogUtil;->isNeedLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {p0}, Lcom/ja/analytics/MobJaAgent;->onPause(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static doOnResume(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 133
    :try_start_0
    invoke-static {p0}, Lcom/ja/analytics/MobJaAgent;->onResume(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static isNeedLog()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 174
    sget-object v1, Lcom/jingdong/common/utils/NewJLogUtil;->isNeedLog:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jingdong/common/utils/NewJLogUtil;->isNeedLog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    sget-object v1, Lcom/jingdong/common/utils/NewJLogUtil;->isNeedLog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 205
    :goto_0
    return v1

    .line 178
    :cond_0
    sget-object v1, Lcom/jingdong/common/utils/NewJLogUtil;->isLocalNeedLog:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 179
    const-string v1, "useJLog"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jingdong/common/config/Configuration;->getBooleanProperty(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/jingdong/common/utils/NewJLogUtil;->isLocalNeedLog:Ljava/lang/Boolean;

    .line 186
    :cond_1
    sget-object v1, Lcom/jingdong/common/utils/NewJLogUtil;->isLocalNeedLog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 187
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 193
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "1"

    const-string v2, "needLog"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/jingdong/common/utils/NewJLogUtil;->isNeedLog:Ljava/lang/Boolean;

    .line 205
    .end local v0           #preferences:Landroid/content/SharedPreferences;
    :goto_1
    sget-object v1, Lcom/jingdong/common/utils/NewJLogUtil;->isNeedLog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 196
    .restart local v0       #preferences:Landroid/content/SharedPreferences;
    :cond_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/jingdong/common/utils/NewJLogUtil;->isNeedLog:Ljava/lang/Boolean;

    goto :goto_1

    .line 199
    .end local v0           #preferences:Landroid/content/SharedPreferences;
    :cond_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/jingdong/common/utils/NewJLogUtil;->isNeedLog:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public static isUseNewJLog()Z
    .locals 3

    .prologue
    .line 155
    sget-object v1, Lcom/jingdong/common/utils/NewJLogUtil;->useNewLog:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 156
    sget-object v1, Lcom/jingdong/common/utils/NewJLogUtil;->useNewLog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 164
    .local v0, version:Ljava/lang/String;
    :goto_0
    return v1

    .line 158
    .end local v0           #version:Ljava/lang/String;
    :cond_0
    const-string v1, "JLogVersion"

    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .restart local v0       #version:Ljava/lang/String;
    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/jingdong/common/utils/NewJLogUtil;->useNewLog:Ljava/lang/Boolean;

    .line 164
    :goto_1
    sget-object v1, Lcom/jingdong/common/utils/NewJLogUtil;->useNewLog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 162
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/jingdong/common/utils/NewJLogUtil;->useNewLog:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public static onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "eventId"
    .parameter "am"

    .prologue
    .line 35
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/NewJLogUtil;->isNeedLog()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 39
    invoke-static {}, Lcom/jingdong/common/utils/NewJLogUtil;->isUseNewJLog()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 43
    move-object v1, p1

    .line 44
    .local v1, finalEventId:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    const-string v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, strs:[Ljava/lang/String;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    .line 53
    .end local v2           #strs:[Ljava/lang/String;
    :cond_0
    invoke-static {p0, v1, p2}, Lcom/ja/analytics/MobJaAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .end local v1           #finalEventId:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 58
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/jingdong/common/utils/JLogUtil;->onJaVisit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .parameter "context"
    .parameter "eventId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/NewJLogUtil;->isNeedLog()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    move-object v1, p1

    .line 81
    .local v1, finalEventId:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    const-string v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, strs:[Ljava/lang/String;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    .line 90
    .end local v2           #strs:[Ljava/lang/String;
    :cond_0
    invoke-static {p0, v1, p2}, Lcom/ja/analytics/MobJaAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v1           #finalEventId:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
