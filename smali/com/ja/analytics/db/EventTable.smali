.class public Lcom/ja/analytics/db/EventTable;
.super Ljava/lang/Object;
.source "EventTable.java"


# static fields
.field public static final EVENT_DATA:Ljava/lang/String; = "event_data"

.field private static JsonArray_ID:Lorg/json/JSONArray; = null

.field public static final SEND_DATE:Ljava/lang/String; = "send_date"

.field public static final SEND_FLAG:Ljava/lang/String; = "send_flag"

.field public static final TAG:Ljava/lang/String; = null

.field public static final TB_NAME:Ljava/lang/String; = "event_data_info"

.field public static final _ID:Ljava/lang/String; = "_id"

.field private static mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private static final object_lock:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/ja/analytics/db/EventTable;->object_lock:[B

    .line 26
    const-class v0, Lcom/ja/analytics/db/EventTable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ja/analytics/db/EventTable;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/ja/analytics/db/EventTable;->JsonArray_ID:Lorg/json/JSONArray;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkRows(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    .line 78
    invoke-static {p0}, Lcom/ja/analytics/db/EventTable;->openSQLiteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const/4 v8, 0x0

    .line 81
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v12, Lcom/ja/analytics/db/EventTable;->object_lock:[B

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :try_start_1
    sget-object v0, Lcom/ja/analytics/db/EventTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "event_data_info"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "max(_id)"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "min(_id)"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 83
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    .line 84
    const v9, 0x186a0

    .line 85
    .local v9, limit:I
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    int-to-long v2, v9

    sub-long v10, v0, v2

    .line 86
    .local v10, temp:J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_2

    .line 88
    sget-object v0, Lcom/ja/analytics/db/EventTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "delete from event_data_info where _id<="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    int-to-long v4, v9

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    const-string v0, "delete exceeded data"

    invoke-static {v0}, Lcom/ja/analytics/utils/LogUtil;->logW(Ljava/lang/String;)I

    .line 81
    :cond_2
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 81
    .end local v9           #limit:I
    .end local v10           #temp:J
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 92
    :catch_0
    move-exception v0

    .line 97
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 96
    :catchall_1
    move-exception v0

    .line 97
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_3
    throw v0
.end method

.method public static closeSQLiteDatabase(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 106
    sget-object v0, Lcom/ja/analytics/db/EventTable;->TAG:Ljava/lang/String;

    const-string v1, " closeSQLiteDatabase()=> "

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v0, Lcom/ja/analytics/db/EventTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 109
    :cond_0
    sget-object v1, Lcom/ja/analytics/db/EventTable;->object_lock:[B

    monitor-enter v1

    .line 110
    :try_start_0
    sget-object v0, Lcom/ja/analytics/db/EventTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 109
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/ja/analytics/db/EventTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static deleteEventLogItem(Landroid/content/Context;I)V
    .locals 7
    .parameter "context"
    .parameter "Index"

    .prologue
    .line 214
    sget-object v0, Lcom/ja/analytics/db/EventTable;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " deleteEventLogItem(),Index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-object v0, Lcom/ja/analytics/db/EventTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 216
    invoke-static {p0}, Lcom/ja/analytics/db/DatabaseHelper;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/ja/analytics/db/EventTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 217
    :cond_0
    sget-object v1, Lcom/ja/analytics/db/EventTable;->object_lock:[B

    monitor-enter v1

    .line 218
    :try_start_0
    sget-object v0, Lcom/ja/analytics/db/EventTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "event_data_info"

    const-string v3, "_id =?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 217
    monitor-exit v1

    .line 220
    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static deleteEventLogTable()V
    .locals 3

    .prologue
    .line 225
    sget-object v0, Lcom/ja/analytics/db/EventTable;->TAG:Ljava/lang/String;

    const-string v1, " deleteEventLogTable()=> "

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-object v0, Lcom/ja/analytics/db/EventTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 228
    :cond_0
    sget-object v1, Lcom/ja/analytics/db/EventTable;->object_lock:[B

    monitor-enter v1

    .line 229
    :try_start_0
    sget-object v0, Lcom/ja/analytics/db/EventTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "delete from event_data_info"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 228
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized getEventLog(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 13
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 168
    const-class v7, Lcom/ja/analytics/db/EventTable;

    monitor-enter v7

    :try_start_0
    sget-object v8, Lcom/ja/analytics/db/EventTable;->TAG:Ljava/lang/String;

    const-string v9, " getEventLog() --->"

    invoke-static {v8, v9}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 170
    .local v0, JsonArray:Lorg/json/JSONArray;
    const/4 v4, 0x0

    .line 171
    .local v4, index:I
    sget-object v8, Lcom/ja/analytics/db/EventTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v8, :cond_2

    .line 172
    sget-object v8, Lcom/ja/analytics/db/EventTable;->TAG:Ljava/lang/String;

    const-string v9, "getEventLog(), mDb == null"

    invoke-static {v8, v9}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    const-wide/16 v8, 0x3e8

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    :goto_0
    :try_start_2
    sget-object v8, Lcom/ja/analytics/db/EventTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v8, :cond_1

    move-object v0, v6

    .line 205
    .end local v0           #JsonArray:Lorg/json/JSONArray;
    :cond_0
    :goto_1
    monitor-exit v7

    return-object v0

    .line 181
    .restart local v0       #JsonArray:Lorg/json/JSONArray;
    :cond_1
    :try_start_3
    invoke-static {p0}, Lcom/ja/analytics/db/DatabaseHelper;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    sput-object v8, Lcom/ja/analytics/db/EventTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 184
    :cond_2
    sget-object v8, Lcom/ja/analytics/db/EventTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "select * from event_data_info where send_flag=? limit 0,5"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "0"

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 186
    .local v2, cursor:Landroid/database/Cursor;
    if-nez v2, :cond_4

    move-object v0, v6

    .line 187
    goto :goto_1

    .line 190
    :cond_3
    const-string v6, "event_data"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 192
    .local v5, logDataItem:Ljava/lang/String;
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 193
    .local v1, JsonObject:Lorg/json/JSONObject;
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 194
    sget-object v6, Lcom/ja/analytics/db/EventTable;->JsonArray_ID:Lorg/json/JSONArray;

    const-string v8, "_id"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v6, v4, v8}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 195
    add-int/lit8 v4, v4, 0x1

    .line 189
    .end local v1           #JsonObject:Lorg/json/JSONObject;
    .end local v5           #logDataItem:Ljava/lang/String;
    :cond_4
    :goto_2
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 201
    if-eqz v2, :cond_0

    .line 202
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 203
    const/4 v2, 0x0

    goto :goto_1

    .line 196
    .restart local v5       #logDataItem:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 198
    .local v3, e:Lorg/json/JSONException;
    sget-object v6, Lcom/ja/analytics/db/EventTable;->TAG:Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/ja/analytics/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 168
    .end local v0           #JsonArray:Lorg/json/JSONArray;
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v3           #e:Lorg/json/JSONException;
    .end local v4           #index:I
    .end local v5           #logDataItem:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 175
    .restart local v0       #JsonArray:Lorg/json/JSONArray;
    .restart local v4       #index:I
    :catch_1
    move-exception v8

    goto :goto_0
.end method

.method public static getIdIndexArray()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lcom/ja/analytics/db/EventTable;->JsonArray_ID:Lorg/json/JSONArray;

    return-object v0
.end method

.method public static insertEventLogItem(Landroid/content/Context;Lorg/json/JSONObject;)J
    .locals 7
    .parameter "context"
    .parameter "jo"

    .prologue
    .line 121
    sget-object v3, Lcom/ja/analytics/db/EventTable;->TAG:Ljava/lang/String;

    const-string v4, " insertEventLogItem() ---> "

    invoke-static {v3, v4}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    if-nez p1, :cond_0

    .line 123
    const-wide/16 v0, -0x1

    .line 137
    :goto_0
    return-wide v0

    .line 124
    :cond_0
    const-wide/16 v0, -0x1

    .line 125
    .local v0, id:J
    sget-object v4, Lcom/ja/analytics/db/EventTable;->object_lock:[B

    monitor-enter v4

    .line 126
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 127
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "event_data"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v3, "send_date"

    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ja/analytics/logevent/EventLog;->getSendDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v3, "send_flag"

    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ja/analytics/logevent/EventLog;->getSendFalseFlag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    sget-object v3, Lcom/ja/analytics/db/EventTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_1

    .line 131
    invoke-static {p0}, Lcom/ja/analytics/db/DatabaseHelper;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sput-object v3, Lcom/ja/analytics/db/EventTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 133
    :cond_1
    sget-object v3, Lcom/ja/analytics/db/EventTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "event_data_info"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 125
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    sget-object v3, Lcom/ja/analytics/db/EventTable;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5f53\u524d\u63d2\u5165\u5230: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u884c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object v3, Lcom/ja/analytics/db/EventTable;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5f53\u524d\u63d2\u5165\u7684\u6570\u636e\u5185\u5bb9:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    .end local v2           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public static onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 35
    sget-object v1, Lcom/ja/analytics/db/EventTable;->TAG:Ljava/lang/String;

    const-string v2, " onCreate()=> "

    invoke-static {v1, v2}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string v0, " ( _id INTEGER PRIMARY KEY AUTOINCREMENT, event_data TEXT, send_date TEXT, send_flag TINYINT)"

    .line 40
    .local v0, JaEventColumns:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create table event_data_info"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 50
    sget-object v0, Lcom/ja/analytics/db/EventTable;->TAG:Ljava/lang/String;

    const-string v1, " onUpgrade()=> "

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v0, "drop table if exists event_data_info"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    invoke-static {p0}, Lcom/ja/analytics/db/EventTable;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 53
    return-void
.end method

.method public static openSQLiteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .parameter "context"

    .prologue
    .line 61
    sget-object v0, Lcom/ja/analytics/db/EventTable;->TAG:Ljava/lang/String;

    const-string v1, " openSQLiteDatabase() ---> "

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v0, Lcom/ja/analytics/db/EventTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/ja/analytics/db/EventTable;->TAG:Ljava/lang/String;

    const-string v1, " if(mDb != null) "

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-object v0, Lcom/ja/analytics/db/EventTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 74
    :goto_0
    return-object v0

    .line 66
    :cond_0
    sget-object v1, Lcom/ja/analytics/db/EventTable;->object_lock:[B

    monitor-enter v1

    .line 67
    :try_start_0
    invoke-static {p0}, Lcom/ja/analytics/db/DatabaseHelper;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/ja/analytics/db/EventTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 66
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    sget-object v0, Lcom/ja/analytics/db/EventTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 70
    sget-object v0, Lcom/ja/analytics/db/EventTable;->TAG:Ljava/lang/String;

    const-string v1, " if(mDb == null) "

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 74
    :cond_1
    sget-object v0, Lcom/ja/analytics/db/EventTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method

.method public static updateEventLogSendFlagItem(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 8
    .parameter "context"
    .parameter "index"

    .prologue
    .line 146
    sget-object v1, Lcom/ja/analytics/db/EventTable;->TAG:Ljava/lang/String;

    const-string v2, "updateEventLogSendFlagItem()=>"

    invoke-static {v1, v2}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget-object v2, Lcom/ja/analytics/db/EventTable;->object_lock:[B

    monitor-enter v2

    .line 149
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 150
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "send_flag"

    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ja/analytics/logevent/EventLog;->getSendOkFlag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    sget-object v1, Lcom/ja/analytics/db/EventTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 152
    invoke-static {p0}, Lcom/ja/analytics/db/DatabaseHelper;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/ja/analytics/db/EventTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 154
    :cond_0
    sget-object v1, Lcom/ja/analytics/db/EventTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "event_data_info"

    const-string v4, "_id= ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 148
    monitor-exit v2

    .line 157
    return-void

    .line 148
    .end local v0           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
