.class public Lcom/ja/analytics/framework/CrashLogSend;
.super Ljava/lang/Object;
.source "CrashLogSend.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static isSendOK:Z

.field private static mDataHandle:Lcom/ja/analytics/framework/CrashLogSend;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/ja/analytics/framework/CrashLogSend;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ja/analytics/framework/CrashLogSend;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/ja/analytics/framework/CrashLogSend;

    invoke-direct {v0}, Lcom/ja/analytics/framework/CrashLogSend;-><init>()V

    sput-object v0, Lcom/ja/analytics/framework/CrashLogSend;->mDataHandle:Lcom/ja/analytics/framework/CrashLogSend;

    .line 16
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

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/ja/analytics/framework/CrashLogSend;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getSendFlag()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/ja/analytics/framework/CrashLogSend;->isSendOK:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getSingleton()Lcom/ja/analytics/framework/CrashLogSend;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/ja/analytics/framework/CrashLogSend;->mDataHandle:Lcom/ja/analytics/framework/CrashLogSend;

    return-object v0
.end method

.method public static setSendFlag(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 47
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/ja/analytics/framework/CrashLogSend;->isSendOK:Z

    .line 48
    return-void
.end method


# virtual methods
.method public declared-synchronized sendData(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 3
    .parameter "context"
    .parameter "ja"

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/ja/analytics/framework/CrashLogSend;->TAG:Ljava/lang/String;

    const-string v2, " sendData() =>"

    invoke-static {v1, v2}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    if-nez p2, :cond_0

    .line 85
    :goto_0
    monitor-exit p0

    return-void

    .line 60
    :cond_0
    :try_start_1
    const-string v1, "http://jma.man.jcloud.com/maengine/jmalog/receiveExceptionLog.action"

    new-instance v2, Lcom/ja/analytics/framework/CrashLogSend$1;

    invoke-direct {v2, p0}, Lcom/ja/analytics/framework/CrashLogSend$1;-><init>(Lcom/ja/analytics/framework/CrashLogSend;)V

    invoke-static {p1, v1, p2, v2}, Lcom/ja/analytics/net/HttpUtils;->postCrash(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;Lcom/ja/analytics/net/HttpCallBackListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-static {v0}, Lcom/ja/analytics/utils/LogUtil;->logException(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 56
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sendFiveExceptionDataToServer(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 21
    .parameter "context"
    .parameter "ja"

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    sget-object v18, Lcom/ja/analytics/framework/CrashLogSend;->TAG:Ljava/lang/String;

    const-string v19, " sendFiveExceptionDataToServer() =>"

    invoke-static/range {v18 .. v19}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-nez p2, :cond_1

    .line 95
    sget-object v18, Lcom/ja/analytics/framework/CrashLogSend;->TAG:Ljava/lang/String;

    const-string v19, " if( ja == null ){"

    invoke-static/range {v18 .. v19}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :cond_0
    monitor-exit p0

    return-void

    .line 98
    :cond_1
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v15

    .line 99
    .local v15, length:I
    div-int/lit8 v17, v15, 0x5

    .line 100
    .local v17, times:I
    rem-int/lit8 v14, v15, 0x5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .local v14, last:I
    const/4 v6, 0x0

    .line 102
    .local v6, index:I
    const/4 v7, 0x0

    .line 104
    .local v7, index2:I
    const/16 v18, 0x5

    move/from16 v0, v18

    if-lt v15, v0, :cond_c

    .line 105
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    move/from16 v0, v17

    if-lt v4, v0, :cond_4

    .line 148
    :cond_2
    const-wide/16 v18, 0x64

    :try_start_2
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 153
    :goto_1
    :try_start_3
    sget-object v18, Lcom/ja/analytics/framework/CrashLogSend;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "\u5269\u4e0b\u6570\u636e\uff1aindex1: = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object v18, Lcom/ja/analytics/framework/CrashLogSend;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "\u5269\u4e0b\u6570\u636e\uff1aindex2: = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 157
    .local v11, ja02:Lorg/json/JSONArray;
    const/4 v9, 0x0

    .local v9, j:I
    :goto_2
    if-lt v6, v14, :cond_b

    .line 167
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v18

    if-eqz v18, :cond_0

    .line 169
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Lcom/ja/analytics/framework/CrashLogSend;->sendData(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 171
    invoke-static {}, Lcom/ja/analytics/framework/CrashLogSend;->getSendFlag()Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 172
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 173
    .local v12, jsonArray:Lorg/json/JSONArray;
    invoke-static {}, Lcom/ja/analytics/db/CrashTable;->getIdIndexArray()Lorg/json/JSONArray;

    move-result-object v12

    .line 174
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v18

    if-eqz v18, :cond_0

    .line 175
    const/4 v5, -0x1

    .line 176
    .local v5, iDel:I
    move v13, v7

    .local v13, k:I
    :goto_3
    if-ge v13, v14, :cond_0

    .line 178
    :try_start_4
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getInt(I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v5

    .line 183
    :goto_4
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_3

    .line 184
    :try_start_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/ja/analytics/db/CrashTable;->updateCrashLogSendFlagItem(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 185
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/ja/analytics/db/CrashTable;->deleteCrashDataItem(Landroid/content/Context;I)V

    .line 186
    const/4 v5, -0x1

    .line 176
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 107
    .end local v5           #iDel:I
    .end local v9           #j:I
    .end local v11           #ja02:Lorg/json/JSONArray;
    .end local v12           #jsonArray:Lorg/json/JSONArray;
    .end local v13           #k:I
    :cond_4
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 108
    .local v10, ja0:Lorg/json/JSONArray;
    const/16 v16, 0x0

    .local v16, m:I
    :goto_5
    const/16 v18, 0x5

    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_6

    .line 122
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Lcom/ja/analytics/framework/CrashLogSend;->sendData(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 125
    invoke-static {}, Lcom/ja/analytics/framework/CrashLogSend;->getSendFlag()Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 126
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 127
    .restart local v12       #jsonArray:Lorg/json/JSONArray;
    invoke-static {}, Lcom/ja/analytics/db/CrashTable;->getIdIndexArray()Lorg/json/JSONArray;

    move-result-object v12

    .line 128
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v18

    if-eqz v18, :cond_2

    .line 129
    const/4 v5, -0x1

    .line 130
    .restart local v5       #iDel:I
    const/4 v13, 0x0

    .restart local v13       #k:I
    :goto_6
    const/16 v18, 0x5

    move/from16 v0, v18

    if-lt v13, v0, :cond_8

    .line 105
    .end local v5           #iDel:I
    .end local v12           #jsonArray:Lorg/json/JSONArray;
    .end local v13           #k:I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 112
    :cond_6
    :try_start_6
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    move/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    .line 113
    const/16 v18, 0x5

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 114
    add-int/lit8 v6, v6, 0x1

    .line 108
    :cond_7
    :goto_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 115
    :catch_0
    move-exception v2

    .line 117
    .local v2, e:Lorg/json/JSONException;
    :try_start_7
    sget-object v18, Lcom/ja/analytics/framework/CrashLogSend;->TAG:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/ja/analytics/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_7

    .line 93
    .end local v2           #e:Lorg/json/JSONException;
    .end local v4           #i:I
    .end local v6           #index:I
    .end local v7           #index2:I
    .end local v10           #ja0:Lorg/json/JSONArray;
    .end local v14           #last:I
    .end local v15           #length:I
    .end local v16           #m:I
    .end local v17           #times:I
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18

    .line 132
    .restart local v4       #i:I
    .restart local v5       #iDel:I
    .restart local v6       #index:I
    .restart local v7       #index2:I
    .restart local v10       #ja0:Lorg/json/JSONArray;
    .restart local v12       #jsonArray:Lorg/json/JSONArray;
    .restart local v13       #k:I
    .restart local v14       #last:I
    .restart local v15       #length:I
    .restart local v16       #m:I
    .restart local v17       #times:I
    :cond_8
    :try_start_8
    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->getInt(I)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1

    move-result v5

    .line 133
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ge v13, v0, :cond_9

    .line 134
    add-int/lit8 v7, v7, 0x1

    .line 139
    :cond_9
    :goto_8
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_a

    .line 140
    :try_start_9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/ja/analytics/db/CrashTable;->updateCrashLogSendFlagItem(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 141
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/ja/analytics/db/CrashTable;->deleteCrashDataItem(Landroid/content/Context;I)V

    .line 142
    const/4 v5, -0x1

    .line 130
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 135
    :catch_1
    move-exception v2

    .line 137
    .restart local v2       #e:Lorg/json/JSONException;
    sget-object v18, Lcom/ja/analytics/framework/CrashLogSend;->TAG:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/ja/analytics/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 149
    .end local v2           #e:Lorg/json/JSONException;
    .end local v5           #iDel:I
    .end local v10           #ja0:Lorg/json/JSONArray;
    .end local v12           #jsonArray:Lorg/json/JSONArray;
    .end local v13           #k:I
    .end local v16           #m:I
    :catch_2
    move-exception v3

    .line 151
    .local v3, e1:Ljava/lang/InterruptedException;
    sget-object v18, Lcom/ja/analytics/framework/CrashLogSend;->TAG:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/ja/analytics/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 161
    .end local v3           #e1:Ljava/lang/InterruptedException;
    .restart local v9       #j:I
    .restart local v11       #ja02:Lorg/json/JSONArray;
    :cond_b
    :try_start_a
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v9, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_3

    .line 157
    :goto_9
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 162
    :catch_3
    move-exception v2

    .line 164
    .restart local v2       #e:Lorg/json/JSONException;
    :try_start_b
    sget-object v18, Lcom/ja/analytics/framework/CrashLogSend;->TAG:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/ja/analytics/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 179
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v5       #iDel:I
    .restart local v12       #jsonArray:Lorg/json/JSONArray;
    .restart local v13       #k:I
    :catch_4
    move-exception v2

    .line 181
    .restart local v2       #e:Lorg/json/JSONException;
    sget-object v18, Lcom/ja/analytics/framework/CrashLogSend;->TAG:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/ja/analytics/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 192
    .end local v2           #e:Lorg/json/JSONException;
    .end local v4           #i:I
    .end local v5           #iDel:I
    .end local v9           #j:I
    .end local v11           #ja02:Lorg/json/JSONArray;
    .end local v12           #jsonArray:Lorg/json/JSONArray;
    .end local v13           #k:I
    :cond_c
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 193
    .restart local v11       #ja02:Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, index3:I
    :goto_a
    if-lt v8, v14, :cond_e

    .line 203
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v18

    if-eqz v18, :cond_0

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Lcom/ja/analytics/framework/CrashLogSend;->sendData(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 207
    invoke-static {}, Lcom/ja/analytics/framework/CrashLogSend;->getSendFlag()Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 208
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 209
    .restart local v12       #jsonArray:Lorg/json/JSONArray;
    invoke-static {}, Lcom/ja/analytics/db/CrashTable;->getIdIndexArray()Lorg/json/JSONArray;

    move-result-object v12

    .line 210
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v18

    if-eqz v18, :cond_0

    .line 211
    const/4 v5, -0x1

    .line 212
    .restart local v5       #iDel:I
    const/4 v13, 0x0

    .restart local v13       #k:I
    :goto_b
    if-ge v13, v14, :cond_0

    .line 214
    :try_start_c
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getInt(I)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_6

    move-result v5

    .line 219
    :goto_c
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_d

    .line 220
    :try_start_d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/ja/analytics/db/CrashTable;->updateCrashLogSendFlagItem(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 221
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/ja/analytics/db/CrashTable;->deleteCrashDataItem(Landroid/content/Context;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 222
    const/4 v5, -0x1

    .line 212
    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 197
    .end local v5           #iDel:I
    .end local v12           #jsonArray:Lorg/json/JSONArray;
    .end local v13           #k:I
    :cond_e
    :try_start_e
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v8, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_5

    .line 193
    :goto_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 198
    :catch_5
    move-exception v2

    .line 200
    .restart local v2       #e:Lorg/json/JSONException;
    :try_start_f
    sget-object v18, Lcom/ja/analytics/framework/CrashLogSend;->TAG:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/ja/analytics/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 215
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v5       #iDel:I
    .restart local v12       #jsonArray:Lorg/json/JSONArray;
    .restart local v13       #k:I
    :catch_6
    move-exception v2

    .line 217
    .restart local v2       #e:Lorg/json/JSONException;
    sget-object v18, Lcom/ja/analytics/framework/CrashLogSend;->TAG:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/ja/analytics/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_c
.end method
