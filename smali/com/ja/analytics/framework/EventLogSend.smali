.class public Lcom/ja/analytics/framework/EventLogSend;
.super Ljava/lang/Object;
.source "EventLogSend.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static isSendOK:Z

.field private static mDataHandle:Lcom/ja/analytics/framework/EventLogSend;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/ja/analytics/framework/EventLogSend;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ja/analytics/framework/EventLogSend;->TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/ja/analytics/framework/EventLogSend;

    invoke-direct {v0}, Lcom/ja/analytics/framework/EventLogSend;-><init>()V

    sput-object v0, Lcom/ja/analytics/framework/EventLogSend;->mDataHandle:Lcom/ja/analytics/framework/EventLogSend;

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static getSendFlag()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/ja/analytics/framework/EventLogSend;->isSendOK:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getSingleton()Lcom/ja/analytics/framework/EventLogSend;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/ja/analytics/framework/EventLogSend;->mDataHandle:Lcom/ja/analytics/framework/EventLogSend;

    return-object v0
.end method

.method private declared-synchronized sendData(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 5
    .parameter "context"
    .parameter "ja"

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/ja/analytics/framework/EventLogSend;->TAG:Ljava/lang/String;

    const-string v4, "sendData() --->"

    invoke-static {v3, v4}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 56
    .local v2, jo:Lorg/json/JSONObject;
    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ja/analytics/logevent/EventLog;->getProtocolHeader(Landroid/content/Context;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 58
    :try_start_1
    const-string v3, "bodys"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    :goto_0
    :try_start_2
    const-string v3, "http://jma.man.jcloud.com/maengine/jmalog/receiveMobileAppLog.action"

    new-instance v4, Lcom/ja/analytics/framework/EventLogSend$1;

    invoke-direct {v4, p0}, Lcom/ja/analytics/framework/EventLogSend$1;-><init>(Lcom/ja/analytics/framework/EventLogSend;)V

    invoke-static {p1, v3, v2, v4}, Lcom/ja/analytics/net/HttpUtils;->postEvent(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ja/analytics/net/HttpCallBackListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 87
    :goto_1
    monitor-exit p0

    return-void

    .line 59
    :catch_0
    move-exception v1

    .line 61
    .local v1, e1:Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 54
    .end local v1           #e1:Lorg/json/JSONException;
    .end local v2           #jo:Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 83
    .restart local v2       #jo:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    invoke-static {v0}, Lcom/ja/analytics/utils/LogUtil;->logException(Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public static setSendFlag(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 45
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/ja/analytics/framework/EventLogSend;->isSendOK:Z

    .line 46
    return-void
.end method


# virtual methods
.method public declared-synchronized sendFiveEventLog(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 21
    .parameter "context"
    .parameter "ja"

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    sget-object v18, Lcom/ja/analytics/framework/EventLogSend;->TAG:Ljava/lang/String;

    const-string v19, " sendFiveEventLog() --->"

    invoke-static/range {v18 .. v19}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    if-nez p2, :cond_1

    .line 97
    sget-object v18, Lcom/ja/analytics/framework/EventLogSend;->TAG:Ljava/lang/String;

    const-string v19, " if( ja == null ){"

    invoke-static/range {v18 .. v19}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 100
    :cond_1
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v15

    .line 101
    .local v15, length:I
    div-int/lit8 v17, v15, 0x5

    .line 102
    .local v17, times:I
    rem-int/lit8 v14, v15, 0x5

    .line 103
    .local v14, last:I
    const/4 v6, 0x0

    .line 104
    .local v6, index:I
    const/4 v7, 0x0

    .line 105
    .local v7, index2:I
    sget-object v18, Lcom/ja/analytics/framework/EventLogSend;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, " ja.length() ==: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    const/16 v18, 0x5

    move/from16 v0, v18

    if-lt v15, v0, :cond_e

    .line 107
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    move/from16 v0, v17

    if-lt v4, v0, :cond_4

    .line 151
    :cond_2
    const-wide/16 v18, 0x64

    :try_start_2
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 157
    :goto_2
    :try_start_3
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 158
    .local v11, ja02:Lorg/json/JSONArray;
    const/4 v9, 0x0

    .local v9, j:I
    :goto_3
    if-lt v6, v14, :cond_b

    .line 169
    sget-object v18, Lcom/ja/analytics/framework/EventLogSend;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, " ja02.length() ==: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v18

    if-eqz v18, :cond_0

    .line 172
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/ja/analytics/framework/EventLogSend;->sendData(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 174
    invoke-static {}, Lcom/ja/analytics/framework/EventLogSend;->getSendFlag()Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 175
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 176
    .local v12, jsonArray:Lorg/json/JSONArray;
    invoke-static {}, Lcom/ja/analytics/db/EventTable;->getIdIndexArray()Lorg/json/JSONArray;

    move-result-object v12

    .line 177
    sget-object v18, Lcom/ja/analytics/framework/EventLogSend;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, " jsonArray.length() ==: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v18

    if-eqz v18, :cond_0

    .line 179
    const/4 v5, -0x1

    .line 180
    .local v5, iDel:I
    move v13, v7

    .local v13, k:I
    :goto_4
    if-lt v13, v14, :cond_c

    .line 233
    .end local v4           #i:I
    .end local v5           #iDel:I
    .end local v9           #j:I
    .end local v12           #jsonArray:Lorg/json/JSONArray;
    .end local v13           #k:I
    :cond_3
    sget-object v18, Lcom/ja/analytics/framework/EventLogSend;->TAG:Ljava/lang/String;

    const-string v19, " sendFiveEventLog() <---"

    invoke-static/range {v18 .. v19}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 95
    .end local v6           #index:I
    .end local v7           #index2:I
    .end local v11           #ja02:Lorg/json/JSONArray;
    .end local v14           #last:I
    .end local v15           #length:I
    .end local v17           #times:I
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18

    .line 109
    .restart local v4       #i:I
    .restart local v6       #index:I
    .restart local v7       #index2:I
    .restart local v14       #last:I
    .restart local v15       #length:I
    .restart local v17       #times:I
    :cond_4
    :try_start_4
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 110
    .local v10, ja0:Lorg/json/JSONArray;
    const/16 v16, 0x0

    .local v16, m:I
    :goto_5
    const/16 v18, 0x5

    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_6

    .line 122
    sget-object v18, Lcom/ja/analytics/framework/EventLogSend;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "index1: = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/ja/analytics/framework/EventLogSend;->sendData(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 127
    invoke-static {}, Lcom/ja/analytics/framework/EventLogSend;->getSendFlag()Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 128
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 129
    .restart local v12       #jsonArray:Lorg/json/JSONArray;
    invoke-static {}, Lcom/ja/analytics/db/EventTable;->getIdIndexArray()Lorg/json/JSONArray;

    move-result-object v12

    .line 130
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v18

    if-eqz v18, :cond_2

    .line 131
    const/4 v5, -0x1

    .line 132
    .restart local v5       #iDel:I
    const/4 v13, 0x0

    .restart local v13       #k:I
    :goto_6
    const/16 v18, 0x5

    move/from16 v0, v18

    if-lt v13, v0, :cond_8

    .line 107
    .end local v5           #iDel:I
    .end local v12           #jsonArray:Lorg/json/JSONArray;
    .end local v13           #k:I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 114
    :cond_6
    :try_start_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    move/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 115
    const/16 v18, 0x5

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 116
    add-int/lit8 v6, v6, 0x1

    .line 110
    :cond_7
    :goto_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 117
    :catch_0
    move-exception v2

    .line 119
    .local v2, e:Lorg/json/JSONException;
    :try_start_6
    sget-object v18, Lcom/ja/analytics/framework/EventLogSend;->TAG:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/ja/analytics/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    .line 134
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v5       #iDel:I
    .restart local v12       #jsonArray:Lorg/json/JSONArray;
    .restart local v13       #k:I
    :cond_8
    :try_start_7
    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->getInt(I)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    move-result v5

    .line 135
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ge v13, v0, :cond_9

    .line 136
    add-int/lit8 v7, v7, 0x1

    .line 141
    :cond_9
    :goto_8
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_a

    .line 142
    :try_start_8
    sget-object v18, Lcom/ja/analytics/framework/EventLogSend;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "\u66f4\u65b0: index2= "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", iDel=:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/ja/analytics/db/EventTable;->updateEventLogSendFlagItem(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 144
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/ja/analytics/db/EventTable;->deleteEventLogItem(Landroid/content/Context;I)V

    .line 145
    const/4 v5, -0x1

    .line 132
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 137
    :catch_1
    move-exception v2

    .line 139
    .restart local v2       #e:Lorg/json/JSONException;
    sget-object v18, Lcom/ja/analytics/framework/EventLogSend;->TAG:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/ja/analytics/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 152
    .end local v2           #e:Lorg/json/JSONException;
    .end local v5           #iDel:I
    .end local v10           #ja0:Lorg/json/JSONArray;
    .end local v12           #jsonArray:Lorg/json/JSONArray;
    .end local v13           #k:I
    .end local v16           #m:I
    :catch_2
    move-exception v3

    .line 154
    .local v3, e1:Ljava/lang/InterruptedException;
    sget-object v18, Lcom/ja/analytics/framework/EventLogSend;->TAG:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/ja/analytics/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 162
    .end local v3           #e1:Ljava/lang/InterruptedException;
    .restart local v9       #j:I
    .restart local v11       #ja02:Lorg/json/JSONArray;
    :cond_b
    :try_start_9
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v9, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 163
    sget-object v18, Lcom/ja/analytics/framework/EventLogSend;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "\u5269\u4e0b\u6570\u636e\uff1aja.getJSONObject("

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "): = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_3

    .line 158
    :goto_9
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 164
    :catch_3
    move-exception v2

    .line 166
    .restart local v2       #e:Lorg/json/JSONException;
    :try_start_a
    sget-object v18, Lcom/ja/analytics/framework/EventLogSend;->TAG:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/ja/analytics/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_9

    .line 182
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v5       #iDel:I
    .restart local v12       #jsonArray:Lorg/json/JSONArray;
    .restart local v13       #k:I
    :cond_c
    :try_start_b
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getInt(I)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_4

    move-result v5

    .line 187
    :goto_a
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_d

    .line 188
    :try_start_c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/ja/analytics/db/EventTable;->updateEventLogSendFlagItem(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 189
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/ja/analytics/db/EventTable;->deleteEventLogItem(Landroid/content/Context;I)V

    .line 190
    const/4 v5, -0x1

    .line 180
    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 183
    :catch_4
    move-exception v2

    .line 185
    .restart local v2       #e:Lorg/json/JSONException;
    sget-object v18, Lcom/ja/analytics/framework/EventLogSend;->TAG:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/ja/analytics/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 196
    .end local v2           #e:Lorg/json/JSONException;
    .end local v4           #i:I
    .end local v5           #iDel:I
    .end local v9           #j:I
    .end local v11           #ja02:Lorg/json/JSONArray;
    .end local v12           #jsonArray:Lorg/json/JSONArray;
    .end local v13           #k:I
    :cond_e
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 197
    .restart local v11       #ja02:Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, index3:I
    :goto_b
    if-lt v8, v14, :cond_10

    .line 207
    sget-object v18, Lcom/ja/analytics/framework/EventLogSend;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, " ja02.length() ==: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v18

    if-eqz v18, :cond_0

    .line 211
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/ja/analytics/framework/EventLogSend;->sendData(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 213
    invoke-static {}, Lcom/ja/analytics/framework/EventLogSend;->getSendFlag()Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 214
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 215
    .restart local v12       #jsonArray:Lorg/json/JSONArray;
    invoke-static {}, Lcom/ja/analytics/db/EventTable;->getIdIndexArray()Lorg/json/JSONArray;

    move-result-object v12

    .line 216
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v18

    if-eqz v18, :cond_0

    .line 217
    const/4 v5, -0x1

    .line 218
    .restart local v5       #iDel:I
    const/4 v13, 0x0

    .restart local v13       #k:I
    :goto_c
    if-ge v13, v14, :cond_3

    .line 220
    :try_start_d
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getInt(I)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_6

    move-result v5

    .line 225
    :goto_d
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_f

    .line 226
    :try_start_e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/ja/analytics/db/EventTable;->updateEventLogSendFlagItem(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 227
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/ja/analytics/db/EventTable;->deleteEventLogItem(Landroid/content/Context;I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 228
    const/4 v5, -0x1

    .line 218
    :cond_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    .line 201
    .end local v5           #iDel:I
    .end local v12           #jsonArray:Lorg/json/JSONArray;
    .end local v13           #k:I
    :cond_10
    :try_start_f
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v8, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_5

    .line 197
    :goto_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 202
    :catch_5
    move-exception v2

    .line 204
    .restart local v2       #e:Lorg/json/JSONException;
    :try_start_10
    sget-object v18, Lcom/ja/analytics/framework/EventLogSend;->TAG:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/ja/analytics/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 221
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v5       #iDel:I
    .restart local v12       #jsonArray:Lorg/json/JSONArray;
    .restart local v13       #k:I
    :catch_6
    move-exception v2

    .line 223
    .restart local v2       #e:Lorg/json/JSONException;
    sget-object v18, Lcom/ja/analytics/framework/EventLogSend;->TAG:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/ja/analytics/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_d
.end method
