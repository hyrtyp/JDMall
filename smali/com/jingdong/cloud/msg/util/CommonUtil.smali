.class public Lcom/jingdong/cloud/msg/util/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "com.jingdong.cloud.msg.service.JDReceiveMsgService"

.field static previousId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 161
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/jingdong/cloud/msg/util/CommonUtil;->previousId:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 47
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 48
    .local v0, tm:Landroid/telephony/TelephonyManager;
    const-string v2, "jd.cloud.uuid"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/jingdong/cloud/msg/util/SharedPreferenceUtil;->getStringFromSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, uuid:Ljava/lang/String;
    return-object v1
.end method

.method public static getLength(Ljava/lang/String;)I
    .locals 4
    .parameter "checkStr"

    .prologue
    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 130
    .local v2, nameChars:[C
    const/4 v1, 0x0

    .line 131
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 138
    return v1

    .line 132
    :cond_0
    aget-char v3, v2, v0

    invoke-static {v3}, Lcom/jingdong/cloud/msg/util/CommonUtil;->isChinese(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    add-int/lit8 v1, v1, 0x3

    .line 131
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .parameter "context"
    .parameter "flag"

    .prologue
    .line 60
    const/4 v3, 0x0

    .line 61
    .local v3, metaData:Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 64
    .local v1, appKey:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 66
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 68
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 70
    :cond_0
    if-eqz v3, :cond_1

    .line 71
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 78
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #appKey:Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v1

    .line 74
    .restart local v1       #appKey:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 75
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSimSeriaNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 35
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 36
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 90
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 91
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isChinese(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 153
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 154
    .local v0, ub:Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 155
    :cond_0
    const/4 v1, 0x1

    .line 157
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isServiceRunning(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 105
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 106
    .local v0, am:Landroid/app/ActivityManager;
    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    .line 107
    .local v2, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 112
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 107
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 108
    .local v1, runningServiceInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    const-string v4, "com.jingdong.cloud.msg.service.JDReceiveMsgService"

    iget-object v5, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized nextUniqueId()Ljava/lang/String;
    .locals 7

    .prologue
    .line 163
    const-class v4, Lcom/jingdong/cloud/msg/util/CommonUtil;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 164
    .local v0, current:J
    sget-wide v5, Lcom/jingdong/cloud/msg/util/CommonUtil;->previousId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v3, v0, v5

    if-nez v3, :cond_0

    .line 166
    const-wide/16 v5, 0x0

    const/4 v3, 0x1

    :try_start_1
    invoke-static {v5, v6, v3}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 170
    :goto_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 172
    :cond_0
    sput-wide v0, Lcom/jingdong/cloud/msg/util/CommonUtil;->previousId:J

    .line 173
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 167
    :catch_0
    move-exception v2

    .line 168
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 163
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
