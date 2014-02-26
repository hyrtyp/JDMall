.class public Lcom/jingdong/common/utils/AlarmUtils;
.super Ljava/lang/Object;
.source "AlarmUtils.java"


# static fields
.field private static DEFAULT_DELAY:J = 0x0L

.field public static final MAX_INTERVAL_TIME:J = 0x6ddd00L

.field public static final PUSH_MSG_ACTION:Ljava/lang/String; = "com.360buy.PUSH_MSG_TASK"

.field public static final TAG:Ljava/lang/String; = "AlarmUtils"

.field public static final UNKONW_DELAY:J = -0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized alarmPushMsgTask(Landroid/content/Context;J)V
    .locals 18
    .parameter "context"
    .parameter "delay"

    .prologue
    .line 40
    const-class v15, Lcom/jingdong/common/utils/AlarmUtils;

    monitor-enter v15

    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/MessageUtil;->getMsgMode()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    if-eqz v14, :cond_1

    .line 103
    :cond_0
    :goto_0
    monitor-exit v15

    return-void

    .line 51
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v12

    .line 55
    .local v12, preferences:Landroid/content/SharedPreferences;
    const-string v14, "nextPushMsgTaskDelayTime"

    invoke-static {}, Lcom/jingdong/common/utils/AlarmUtils;->getDefaultDelay()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-interface {v12, v14, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 58
    .local v10, preDelay:J
    const-string v14, "nextPushMsgTaskTime"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-interface {v12, v14, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 65
    .local v8, nextAlarmTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v2, v16, v8

    .line 66
    .local v2, aboveTime:J
    const-wide/16 v16, 0x0

    cmp-long v14, v2, v16

    if-gez v14, :cond_2

    const-wide/32 v16, -0x6ddd00

    cmp-long v14, v2, v16

    if-gtz v14, :cond_0

    .line 73
    :cond_2
    const-wide/16 v16, -0x1

    cmp-long v14, p1, v16

    if-nez v14, :cond_3

    .line 74
    move-wide/from16 p1, v10

    .line 82
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    add-long v8, v16, p1

    .line 84
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 85
    .local v5, editor:Landroid/content/SharedPreferences$Editor;
    const-string v14, "nextPushMsgTaskTime"

    invoke-interface {v5, v14, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    const-string v14, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    .line 89
    .local v4, am:Landroid/app/AlarmManager;
    new-instance v6, Landroid/content/Intent;

    const-string v14, "com.360buy.PUSH_MSG_TASK"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v6, intent:Landroid/content/Intent;
    const/16 v14, 0x20

    invoke-virtual {v6, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 91
    const-string v14, "delay"

    move-wide/from16 v0, p1

    invoke-virtual {v6, v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 92
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const/16 v16, 0x0

    const/high16 v17, 0x1000

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v0, v6, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 93
    .local v13, sender:Landroid/app/PendingIntent;
    const-string v14, "alarmNeedWakeUp"

    const-string v16, "true"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 94
    .local v7, needWakeUp:Z
    if-eqz v7, :cond_4

    .line 95
    const/4 v14, 0x0

    invoke-virtual {v4, v14, v8, v9, v13}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 40
    .end local v2           #aboveTime:J
    .end local v4           #am:Landroid/app/AlarmManager;
    .end local v5           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #needWakeUp:Z
    .end local v8           #nextAlarmTime:J
    .end local v10           #preDelay:J
    .end local v12           #preferences:Landroid/content/SharedPreferences;
    .end local v13           #sender:Landroid/app/PendingIntent;
    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14

    .line 97
    .restart local v2       #aboveTime:J
    .restart local v4       #am:Landroid/app/AlarmManager;
    .restart local v5       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v7       #needWakeUp:Z
    .restart local v8       #nextAlarmTime:J
    .restart local v10       #preDelay:J
    .restart local v12       #preferences:Landroid/content/SharedPreferences;
    .restart local v13       #sender:Landroid/app/PendingIntent;
    :cond_4
    const/4 v14, 0x1

    :try_start_2
    invoke-virtual {v4, v14, v8, v9, v13}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public static getDefaultDelay()J
    .locals 4

    .prologue
    .line 28
    sget-wide v0, Lcom/jingdong/common/utils/AlarmUtils;->DEFAULT_DELAY:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 29
    const-string v0, "defaultPushMessageAlarmDelay"

    invoke-static {v0}, Lcom/jingdong/common/config/Configuration;->getLongProperty(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/jingdong/common/utils/AlarmUtils;->DEFAULT_DELAY:J

    .line 31
    :cond_0
    sget-wide v0, Lcom/jingdong/common/utils/AlarmUtils;->DEFAULT_DELAY:J

    return-wide v0
.end method
