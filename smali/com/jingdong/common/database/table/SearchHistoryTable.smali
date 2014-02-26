.class public Lcom/jingdong/common/database/table/SearchHistoryTable;
.super Ljava/lang/Object;
.source "SearchHistoryTable.java"


# static fields
.field public static final MAX_SEARCH_HISTORY_NUM:I = 0x14

.field public static final TABLE_NAME:Ljava/lang/String; = "search_history"

.field private static final TAG:Ljava/lang/String; = "SearchHistoryTable"

.field public static final TB_COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final TB_COLUMN_SEARCH_TIME:Ljava/lang/String; = "search_time"

.field public static final TB_COLUMN_WORD:Ljava/lang/String; = "word"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addHistory(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 4
    .parameter "database"
    .parameter "word"

    .prologue
    .line 179
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 180
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v1, "search_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 181
    const-string v1, "word"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "search_history"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 183
    return-void
.end method

.method public static create(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 27
    const-string v0, "CREATE TABLE search_history(\'_id\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,word TEXT,search_time DATETIME DEFAULT CURRENT_TIMESTAMP)"

    .line 32
    .local v0, CREATE_TABLE_SCAN_CODE:Ljava/lang/String;
    const-string v1, "CREATE TABLE search_history(\'_id\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,word TEXT,search_time DATETIME DEFAULT CURRENT_TIMESTAMP)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static deleteAllHistory()V
    .locals 5

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 238
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 239
    const-string v2, "search_history"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v1

    .line 244
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static deleteHistory(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 6
    .parameter "database"
    .parameter "id"

    .prologue
    .line 189
    const-string v0, "search_history"

    const-string v1, "_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 190
    return-void
.end method

.method private static deleteOlderSearchHistory(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter "database"

    .prologue
    const/4 v6, 0x1

    .line 141
    invoke-static {p0}, Lcom/jingdong/common/database/table/SearchHistoryTable;->getAllSearchHistory(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v2

    .line 143
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SearchHistory;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x14

    add-int/lit8 v3, v5, 0x1

    .line 145
    .local v3, needDeleteCount:I
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v6, :cond_0

    if-ge v3, v6, :cond_1

    .line 167
    :cond_0
    return-void

    .line 149
    :cond_1
    const/4 v0, 0x0

    .line 153
    .local v0, deleteNum:I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 155
    if-ge v0, v3, :cond_0

    .line 159
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/SearchHistory;

    .line 161
    .local v4, temp:Lcom/jingdong/common/entity/SearchHistory;
    if-eqz v4, :cond_2

    .line 162
    invoke-virtual {v4}, Lcom/jingdong/common/entity/SearchHistory;->getId()I

    move-result v5

    invoke-static {p0, v5}, Lcom/jingdong/common/database/table/SearchHistoryTable;->deleteHistory(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    .line 153
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static getAllSearchHistory()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/SearchHistory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/jingdong/common/database/table/SearchHistoryTable;->getAllSearchHistory(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 107
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 105
    :goto_0
    return-object v2

    .line 101
    :catch_0
    move-exception v1

    .line 107
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 105
    const/4 v2, 0x0

    goto :goto_0

    .line 106
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 107
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 108
    throw v2
.end method

.method private static getAllSearchHistory(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 11
    .parameter "database"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/SearchHistory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    const/4 v8, 0x0

    .line 118
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 120
    .local v9, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SearchHistory;>;"
    :try_start_0
    const-string v1, "search_history"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id desc"

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 121
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    .end local v9           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SearchHistory;>;"
    .local v10, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SearchHistory;>;"
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v9, v10

    .line 130
    .end local v10           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SearchHistory;>;"
    .restart local v9       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SearchHistory;>;"
    :goto_1
    return-object v9

    .line 123
    .end local v9           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SearchHistory;>;"
    .restart local v10       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SearchHistory;>;"
    :cond_0
    new-instance v0, Lcom/jingdong/common/entity/SearchHistory;

    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "word"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "search_time"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jingdong/common/entity/SearchHistory;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    move-object v9, v10

    .end local v10           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SearchHistory;>;"
    .restart local v9       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SearchHistory;>;"
    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static getSearchHistoryFromText(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/jingdong/common/entity/SearchHistory;
    .locals 10
    .parameter "database"
    .parameter "word"

    .prologue
    const/4 v9, 0x0

    .line 202
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v9

    .line 227
    :cond_0
    :goto_0
    return-object v0

    .line 206
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 212
    const/4 v8, 0x0

    .line 214
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "search_history"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "search_time"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "word"

    aput-object v3, v2, v0

    const-string v3, "word = ? "

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 215
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    new-instance v0, Lcom/jingdong/common/entity/SearchHistory;

    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "word"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "search_time"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jingdong/common/entity/SearchHistory;-><init>(ILjava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 223
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 224
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v9

    .line 227
    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    .line 223
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 224
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_3
    throw v0

    .line 223
    :cond_4
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 224
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public static saveSearchHistory(Ljava/lang/String;)V
    .locals 4
    .parameter "word"

    .prologue
    .line 52
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 58
    const/4 v0, 0x0

    .line 61
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    invoke-static {v0, p0}, Lcom/jingdong/common/database/table/SearchHistoryTable;->getSearchHistoryFromText(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/jingdong/common/entity/SearchHistory;

    move-result-object v2

    .line 76
    .local v2, history:Lcom/jingdong/common/entity/SearchHistory;
    if-nez v2, :cond_1

    .line 77
    :try_start_1
    invoke-static {v0}, Lcom/jingdong/common/database/table/SearchHistoryTable;->deleteOlderSearchHistory(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 81
    :goto_1
    invoke-static {v0, p0}, Lcom/jingdong/common/database/table/SearchHistoryTable;->addHistory(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 62
    .end local v2           #history:Lcom/jingdong/common/entity/SearchHistory;
    :catch_0
    move-exception v1

    .line 66
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0

    .line 79
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #history:Lcom/jingdong/common/entity/SearchHistory;
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Lcom/jingdong/common/entity/SearchHistory;->getId()I

    move-result v3

    invoke-static {v0, v3}, Lcom/jingdong/common/database/table/SearchHistoryTable;->deleteHistory(Landroid/database/sqlite/SQLiteDatabase;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 82
    :catch_1
    move-exception v3

    .line 87
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v3

    .line 87
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 88
    throw v3
.end method

.method public static upgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 39
    const-string v0, "drop table if exists search_history"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    return-void
.end method
