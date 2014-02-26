.class public Lcom/ja/sdk/db/PageAccessTable;
.super Ljava/lang/Object;
.source "PageAccessTable.java"


# static fields
.field private static JsonArray_ID:Lorg/json/JSONArray; = null

.field public static final PAGE_ACCESS_DATA:Ljava/lang/String; = "page_access_data"

.field public static final SEND_DATE:Ljava/lang/String; = "send_date"

.field public static final SEND_FLAG:Ljava/lang/String; = "send_flag"

.field public static final TAG:Ljava/lang/String; = "PageAccessTable"

.field public static final TB_NAME:Ljava/lang/String; = "page_access_data_info"

.field public static final _ID:Ljava/lang/String; = "_id"

.field private static mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/ja/sdk/db/PageAccessTable;->JsonArray_ID:Lorg/json/JSONArray;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized closeSQLiteDatabase(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 77
    const-class v1, Lcom/ja/sdk/db/PageAccessTable;

    monitor-enter v1

    :try_start_0
    const-string v0, "PageAccessTable"

    const-string v2, " closeSQLiteDatabase()=> "

    invoke-static {v0, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v0, Lcom/ja/sdk/db/PageAccessTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 82
    :goto_0
    monitor-exit v1

    return-void

    .line 80
    :cond_0
    :try_start_1
    sget-object v0, Lcom/ja/sdk/db/PageAccessTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/ja/sdk/db/PageAccessTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized deletePageAccessDataItem(Landroid/content/Context;I)V
    .locals 7
    .parameter "context"
    .parameter "Index"

    .prologue
    .line 182
    const-class v1, Lcom/ja/sdk/db/PageAccessTable;

    monitor-enter v1

    :try_start_0
    const-string v0, "PageAccessTable"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " deletePageAccessDataItem(),Index:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-object v0, Lcom/ja/sdk/db/PageAccessTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 184
    invoke-static {p0}, Lcom/ja/sdk/db/DatabaseHelper;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/ja/sdk/db/PageAccessTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 196
    :cond_0
    sget-object v0, Lcom/ja/sdk/db/PageAccessTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "page_access_data_info"

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

    .line 197
    monitor-exit v1

    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static deletePageAccessDataTable()V
    .locals 2

    .prologue
    .line 202
    const-string v0, "PageAccessTable"

    const-string v1, " deletePageAccessDataTable()=> "

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget-object v0, Lcom/ja/sdk/db/PageAccessTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 206
    :cond_0
    sget-object v0, Lcom/ja/sdk/db/PageAccessTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "delete from page_access_data_info"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized getAllPageAccessDataNotSendItem(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 13
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 134
    const-class v7, Lcom/ja/sdk/db/PageAccessTable;

    monitor-enter v7

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 135
    .local v0, JsonArray:Lorg/json/JSONArray;
    const/4 v4, 0x0

    .line 136
    .local v4, index:I
    sget-object v8, Lcom/ja/sdk/db/PageAccessTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v8, :cond_2

    .line 137
    const-string v8, "PageAccessTable"

    const-string v9, "getAllPageAccessDataNotSendItem(), mDb == null"

    invoke-static {v8, v9}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    const-wide/16 v8, 0x3e8

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    :goto_0
    :try_start_2
    sget-object v8, Lcom/ja/sdk/db/PageAccessTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v8, :cond_1

    move-object v0, v6

    .line 173
    .end local v0           #JsonArray:Lorg/json/JSONArray;
    :cond_0
    :goto_1
    monitor-exit v7

    return-object v0

    .line 146
    .restart local v0       #JsonArray:Lorg/json/JSONArray;
    :cond_1
    :try_start_3
    invoke-static {p0}, Lcom/ja/sdk/db/DatabaseHelper;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    sput-object v8, Lcom/ja/sdk/db/PageAccessTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 148
    :cond_2
    const-string v8, "PageAccessTable"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " getAllPageAccessDataNotSendItem, mDb =:  "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/ja/sdk/db/PageAccessTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget-object v8, Lcom/ja/sdk/db/PageAccessTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "select * from page_access_data_info where send_flag=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "0"

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 152
    .local v2, cursor:Landroid/database/Cursor;
    if-nez v2, :cond_4

    move-object v0, v6

    .line 153
    goto :goto_1

    .line 156
    :cond_3
    const-string v6, "page_access_data"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 158
    .local v5, logDataItem:Ljava/lang/String;
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, JsonObject:Lorg/json/JSONObject;
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 162
    sget-object v6, Lcom/ja/sdk/db/PageAccessTable;->JsonArray_ID:Lorg/json/JSONArray;

    const-string v8, "_id"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v6, v4, v8}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 163
    add-int/lit8 v4, v4, 0x1

    .line 154
    .end local v1           #JsonObject:Lorg/json/JSONObject;
    .end local v5           #logDataItem:Ljava/lang/String;
    :cond_4
    :goto_2
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 169
    if-eqz v2, :cond_0

    .line 170
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 171
    const/4 v2, 0x0

    goto :goto_1

    .line 164
    .restart local v5       #logDataItem:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 166
    .local v3, e:Lorg/json/JSONException;
    const-string v6, "PageAccessTable"

    invoke-static {v6, v3}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 134
    .end local v0           #JsonArray:Lorg/json/JSONArray;
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v3           #e:Lorg/json/JSONException;
    .end local v4           #index:I
    .end local v5           #logDataItem:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 140
    .restart local v0       #JsonArray:Lorg/json/JSONArray;
    .restart local v4       #index:I
    :catch_1
    move-exception v8

    goto :goto_0
.end method

.method public static getIdIndexArray()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/ja/sdk/db/PageAccessTable;->JsonArray_ID:Lorg/json/JSONArray;

    return-object v0
.end method

.method public static declared-synchronized insertPageAccessDataItem(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5
    .parameter "context"
    .parameter "jo"

    .prologue
    .line 90
    const-class v2, Lcom/ja/sdk/db/PageAccessTable;

    monitor-enter v2

    :try_start_0
    const-string v1, "PageAccessTable"

    const-string v3, " insertPageAccessDataItem=> "

    invoke-static {v1, v3}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    if-nez p1, :cond_0

    .line 106
    :goto_0
    monitor-exit v2

    return-void

    .line 93
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 95
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "page_access_data"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "send_date"

    invoke-static {}, Lcom/ja/sdk/pagevisit/PageAccessData;->getSingleInstance()Lcom/ja/sdk/pagevisit/PageAccessData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ja/sdk/pagevisit/PageAccessData;->getSendDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "send_flag"

    invoke-static {}, Lcom/ja/sdk/pagevisit/PageAccessData;->getSingleInstance()Lcom/ja/sdk/pagevisit/PageAccessData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ja/sdk/pagevisit/PageAccessData;->getSendFalseFlag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    sget-object v1, Lcom/ja/sdk/db/PageAccessTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    .line 99
    const-string v1, "PageAccessTable"

    const-string v3, " insertPageAccessDataItem, mDb == null "

    invoke-static {v1, v3}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {p0}, Lcom/ja/sdk/db/DatabaseHelper;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/ja/sdk/db/PageAccessTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 102
    :cond_1
    const-string v1, "PageAccessTable"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " insertPageAccessDataItem, mDb =:  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/ja/sdk/db/PageAccessTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v1, Lcom/ja/sdk/db/PageAccessTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "page_access_data_info"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 105
    const-string v1, "PageAccessTable"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Insert the log item:"

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

    .line 90
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
    .line 32
    const-string v1, "PageAccessTable"

    const-string v2, " onCreate()=> "

    invoke-static {v1, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string v0, " ( _id INTEGER PRIMARY KEY AUTOINCREMENT, page_access_data TEXT, send_date TEXT, send_flag TINYINT)"

    .line 37
    .local v0, JaEventColumns:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create table page_access_data_info"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 47
    const-string v0, "PageAccessTable"

    const-string v1, " onUpgrade()=> "

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v0, "drop table if exists page_access_data_info"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    invoke-static {p0}, Lcom/ja/sdk/db/PageAccessTable;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 50
    return-void
.end method

.method public static declared-synchronized openSQLiteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .parameter "context"

    .prologue
    .line 58
    const-class v1, Lcom/ja/sdk/db/PageAccessTable;

    monitor-enter v1

    :try_start_0
    const-string v0, "PageAccessTable"

    const-string v2, " openSQLiteDatabase()=> "

    invoke-static {v0, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v0, Lcom/ja/sdk/db/PageAccessTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "PageAccessTable"

    const-string v2, " if(mDb != null) "

    invoke-static {v0, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sget-object v0, Lcom/ja/sdk/db/PageAccessTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :goto_0
    monitor-exit v1

    return-object v0

    .line 63
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/ja/sdk/db/DatabaseHelper;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/ja/sdk/db/PageAccessTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 64
    sget-object v0, Lcom/ja/sdk/db/PageAccessTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 65
    const-string v0, "PageAccessTable"

    const-string v2, " if(mDb == null) "

    invoke-static {v0, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :cond_1
    const-string v0, "PageAccessTable"

    const-string v2, " openSQLiteDatabase() OK!! "

    invoke-static {v0, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget-object v0, Lcom/ja/sdk/db/PageAccessTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updatePageAccessDataSendFlagItem(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 8
    .parameter "context"
    .parameter "index"

    .prologue
    .line 114
    const-class v2, Lcom/ja/sdk/db/PageAccessTable;

    monitor-enter v2

    :try_start_0
    const-string v1, "PageAccessTable"

    const-string v3, "updatePageAccessDataSendFlagItem()=>"

    invoke-static {v1, v3}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 116
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "send_flag"

    invoke-static {}, Lcom/ja/sdk/pagevisit/PageAccessData;->getSingleInstance()Lcom/ja/sdk/pagevisit/PageAccessData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ja/sdk/pagevisit/PageAccessData;->getSendOkFlag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    sget-object v1, Lcom/ja/sdk/db/PageAccessTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 118
    const-string v1, "PageAccessTable"

    const-string v3, " updatePageAccessDataSendFlagItem, mDb == null "

    invoke-static {v1, v3}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {p0}, Lcom/ja/sdk/db/DatabaseHelper;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/ja/sdk/db/PageAccessTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 121
    :cond_0
    const-string v1, "PageAccessTable"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " updatePageAccessDataSendFlagItem, mDb =:  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/ja/sdk/db/PageAccessTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object v1, Lcom/ja/sdk/db/PageAccessTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "page_access_data_info"

    const-string v4, "_id= ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit v2

    return-void

    .line 114
    .end local v0           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
