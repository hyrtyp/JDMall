.class public Lcom/ja/sdk/db/ExceptionTable;
.super Ljava/lang/Object;
.source "ExceptionTable.java"


# static fields
.field public static final EXCEPTION_DATA:Ljava/lang/String; = "exception_data"

.field private static JsonArray_ID:Lorg/json/JSONArray; = null

.field public static final SEND_DATE:Ljava/lang/String; = "send_date"

.field public static final SEND_FLAG:Ljava/lang/String; = "send_flag"

.field public static final TAG:Ljava/lang/String; = "ExceptionTable"

.field public static final TB_NAME:Ljava/lang/String; = "exception_data_info"

.field public static final _ID:Ljava/lang/String; = "_id"

.field private static mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/ja/sdk/db/ExceptionTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 26
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/ja/sdk/db/ExceptionTable;->JsonArray_ID:Lorg/json/JSONArray;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized closeSQLiteDatabase(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 79
    const-class v1, Lcom/ja/sdk/db/ExceptionTable;

    monitor-enter v1

    :try_start_0
    const-string v0, "ExceptionTable"

    const-string v2, " closeSQLiteDatabase=> "

    invoke-static {v0, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v0, Lcom/ja/sdk/db/ExceptionTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 84
    :goto_0
    monitor-exit v1

    return-void

    .line 82
    :cond_0
    :try_start_1
    sget-object v0, Lcom/ja/sdk/db/ExceptionTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/ja/sdk/db/ExceptionTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized deleteExceptionDataItem(Landroid/content/Context;I)V
    .locals 7
    .parameter "context"
    .parameter "Index"

    .prologue
    .line 184
    const-class v1, Lcom/ja/sdk/db/ExceptionTable;

    monitor-enter v1

    :try_start_0
    const-string v0, "ExceptionTable"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " deleteExceptionDataItem(), Index: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    sget-object v0, Lcom/ja/sdk/db/ExceptionTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 186
    invoke-static {p0}, Lcom/ja/sdk/db/DatabaseHelper;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/ja/sdk/db/ExceptionTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 198
    :cond_0
    sget-object v0, Lcom/ja/sdk/db/ExceptionTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "exception_data_info"

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit v1

    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static deleteExceptionDataTable()V
    .locals 2

    .prologue
    .line 204
    const-string v0, "ExceptionTable"

    const-string v1, " deleteExceptionDataTable()=> "

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sget-object v0, Lcom/ja/sdk/db/ExceptionTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 208
    :cond_0
    sget-object v0, Lcom/ja/sdk/db/ExceptionTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "delete from exception_data_info"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized getAllExceptionDataNotSendItem(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 13
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 136
    const-class v7, Lcom/ja/sdk/db/ExceptionTable;

    monitor-enter v7

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 137
    .local v0, JsonArray:Lorg/json/JSONArray;
    const/4 v4, 0x0

    .line 138
    .local v4, index:I
    sget-object v8, Lcom/ja/sdk/db/ExceptionTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v8, :cond_2

    .line 139
    const-string v8, "ExceptionTable"

    const-string v9, "getAllExceptionDataNotSendItem(), mDb == null"

    invoke-static {v8, v9}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    const-wide/16 v8, 0x3e8

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    :goto_0
    :try_start_2
    sget-object v8, Lcom/ja/sdk/db/ExceptionTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v8, :cond_1

    move-object v0, v6

    .line 175
    .end local v0           #JsonArray:Lorg/json/JSONArray;
    :cond_0
    :goto_1
    monitor-exit v7

    return-object v0

    .line 148
    .restart local v0       #JsonArray:Lorg/json/JSONArray;
    :cond_1
    :try_start_3
    invoke-static {p0}, Lcom/ja/sdk/db/DatabaseHelper;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    sput-object v8, Lcom/ja/sdk/db/ExceptionTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 150
    :cond_2
    const-string v8, "ExceptionTable"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " getAllExceptionDataNotSendItem, mDb =:  "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/ja/sdk/db/ExceptionTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v8, Lcom/ja/sdk/db/ExceptionTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "select * from exception_data_info where send_flag=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "0"

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 154
    .local v2, cursor:Landroid/database/Cursor;
    if-nez v2, :cond_4

    move-object v0, v6

    .line 155
    goto :goto_1

    .line 158
    :cond_3
    const-string v6, "exception_data"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 160
    .local v5, logDataItem:Ljava/lang/String;
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, JsonObject:Lorg/json/JSONObject;
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 162
    sget-object v6, Lcom/ja/sdk/db/ExceptionTable;->JsonArray_ID:Lorg/json/JSONArray;

    const-string v8, "_id"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v6, v4, v8}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 164
    add-int/lit8 v4, v4, 0x1

    .line 156
    .end local v1           #JsonObject:Lorg/json/JSONObject;
    .end local v5           #logDataItem:Ljava/lang/String;
    :cond_4
    :goto_2
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 170
    if-eqz v2, :cond_0

    .line 171
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 172
    const/4 v2, 0x0

    goto :goto_1

    .line 165
    .restart local v5       #logDataItem:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 167
    .local v3, e:Lorg/json/JSONException;
    const-string v6, "ExceptionTable"

    invoke-static {v6, v3}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 136
    .end local v0           #JsonArray:Lorg/json/JSONArray;
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v3           #e:Lorg/json/JSONException;
    .end local v4           #index:I
    .end local v5           #logDataItem:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 142
    .restart local v0       #JsonArray:Lorg/json/JSONArray;
    .restart local v4       #index:I
    :catch_1
    move-exception v8

    goto :goto_0
.end method

.method public static getIdIndexArray()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/ja/sdk/db/ExceptionTable;->JsonArray_ID:Lorg/json/JSONArray;

    return-object v0
.end method

.method public static declared-synchronized insertExceptionDataItem(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5
    .parameter "context"
    .parameter "jo"

    .prologue
    .line 92
    const-class v2, Lcom/ja/sdk/db/ExceptionTable;

    monitor-enter v2

    :try_start_0
    const-string v1, "ExceptionTable"

    const-string v3, " insertExceptionDataItem=> "

    invoke-static {v1, v3}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    if-nez p1, :cond_0

    .line 108
    :goto_0
    monitor-exit v2

    return-void

    .line 95
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 97
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "exception_data"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "send_date"

    invoke-static {}, Lcom/ja/sdk/exception/ExceptionData;->getSingleInstance()Lcom/ja/sdk/exception/ExceptionData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ja/sdk/exception/ExceptionData;->getSendDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "send_flag"

    invoke-static {}, Lcom/ja/sdk/exception/ExceptionData;->getSingleInstance()Lcom/ja/sdk/exception/ExceptionData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ja/sdk/exception/ExceptionData;->getSendFalseFlag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    sget-object v1, Lcom/ja/sdk/db/ExceptionTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    .line 101
    const-string v1, "ExceptionTable"

    const-string v3, " insertExceptionDataItem, mDb == null "

    invoke-static {v1, v3}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {p0}, Lcom/ja/sdk/db/DatabaseHelper;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/ja/sdk/db/ExceptionTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 104
    :cond_1
    const-string v1, "ExceptionTable"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " insertExceptionDataItem, mDb =:  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/ja/sdk/db/ExceptionTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v1, Lcom/ja/sdk/db/ExceptionTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "exception_data_info"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 106
    const-string v1, "ExceptionTable"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Insert the exception item to database!: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    .end local v0           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 34
    const-string v1, "ExceptionTable"

    const-string v2, " create exception_data_info Table=> "

    invoke-static {v1, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string v0, " ( _id INTEGER PRIMARY KEY AUTOINCREMENT, exception_data TEXT, send_date TEXT, send_flag TINYINT)"

    .line 39
    .local v0, JaEventColumns:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create table exception_data_info"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 49
    const-string v0, "ExceptionTable"

    const-string v1, " onUpgrade=> "

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v0, "drop table if exists exception_data_info"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    invoke-static {p0}, Lcom/ja/sdk/db/ExceptionTable;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 52
    return-void
.end method

.method public static declared-synchronized openSQLiteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .parameter "context"

    .prologue
    .line 60
    const-class v1, Lcom/ja/sdk/db/ExceptionTable;

    monitor-enter v1

    :try_start_0
    const-string v0, "ExceptionTable"

    const-string v2, " openSQLiteDatabase=> "

    invoke-static {v0, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sget-object v0, Lcom/ja/sdk/db/ExceptionTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "ExceptionTable"

    const-string v2, " if(mDb != null) "

    invoke-static {v0, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget-object v0, Lcom/ja/sdk/db/ExceptionTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :goto_0
    monitor-exit v1

    return-object v0

    .line 65
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/ja/sdk/db/DatabaseHelper;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/ja/sdk/db/ExceptionTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 66
    sget-object v0, Lcom/ja/sdk/db/ExceptionTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 67
    const-string v0, "ExceptionTable"

    const-string v2, " if(mDb == null) "

    invoke-static {v0, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    :cond_1
    const-string v0, "ExceptionTable"

    const-string v2, " openSQLiteDatabase() OK!! "

    invoke-static {v0, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sget-object v0, Lcom/ja/sdk/db/ExceptionTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updateExceptionDataSendFlagItem(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 8
    .parameter "context"
    .parameter "index"

    .prologue
    .line 116
    const-class v2, Lcom/ja/sdk/db/ExceptionTable;

    monitor-enter v2

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 117
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "send_flag"

    invoke-static {}, Lcom/ja/sdk/exception/ExceptionData;->getSingleInstance()Lcom/ja/sdk/exception/ExceptionData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ja/sdk/exception/ExceptionData;->getSendOkFlag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    sget-object v1, Lcom/ja/sdk/db/ExceptionTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 119
    const-string v1, "ExceptionTable"

    const-string v3, " updateExceptionDataSendFlagItem, mDb == null "

    invoke-static {v1, v3}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {p0}, Lcom/ja/sdk/db/DatabaseHelper;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/ja/sdk/db/ExceptionTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 122
    :cond_0
    const-string v1, "ExceptionTable"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " updateExceptionDataSendFlagItem, mDb =:  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/ja/sdk/db/ExceptionTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object v1, Lcom/ja/sdk/db/ExceptionTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "exception_data_info"

    const-string v4, "_id= ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 125
    const-string v1, "ExceptionTable"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Update the number:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",exception item to database!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit v2

    return-void

    .line 116
    .end local v0           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
