.class public Lcom/jingdong/common/database/table/CacheFileTable;
.super Ljava/lang/Object;
.source "CacheFileTable.java"


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "cache_file"

.field public static final TB_COLUMN_CLEAN_TIME:Ljava/lang/String; = "clean_time"

.field public static final TB_COLUMN_DIR_PATH:Ljava/lang/String; = "dir_path"

.field public static final TB_COLUMN_DIR_SPACE:Ljava/lang/String; = "dir_space"

.field public static final TB_COLUMN_FIRST_NAME:Ljava/lang/String; = "first_name"

.field public static final TB_COLUMN_LAST_NAME:Ljava/lang/String; = "last_name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "database"

    .prologue
    .line 31
    const-string v2, "CREATE TABLE cache_file(\'id\' INTEGER PRIMARY KEY  NOT NULL ,first_name TEXT,last_name TEXT,clean_time DATETIME DEFAULT CURRENT_TIMESTAMP,dir_path TEXT,dir_space INTEGER)"

    .line 40
    .local v2, CREATE_TABLE_CACHE_FILE:Ljava/lang/String;
    const-string v3, "CREATE TABLE cache_file(\'id\' INTEGER PRIMARY KEY  NOT NULL ,first_name TEXT,last_name TEXT,clean_time DATETIME DEFAULT CURRENT_TIMESTAMP,dir_path TEXT,dir_space INTEGER)"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    const-string v0, "CREATE INDEX clean_time_index ON cache_file(clean_time)"

    .line 46
    .local v0, CREATE_INDEX_CLEAN_TIME:Ljava/lang/String;
    const-string v3, "CREATE INDEX clean_time_index ON cache_file(clean_time)"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    const-string v1, "CREATE INDEX name_index ON cache_file(first_name, last_name)"

    .line 52
    .local v1, CREATE_INDEX_NAME:Ljava/lang/String;
    const-string v3, "CREATE INDEX name_index ON cache_file(first_name, last_name)"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static declared-synchronized delete(Lcom/jingdong/common/entity/CacheFile;)V
    .locals 7
    .parameter "cacheFile"

    .prologue
    .line 175
    const-class v3, Lcom/jingdong/common/database/table/CacheFileTable;

    monitor-enter v3

    const/4 v0, 0x0

    .line 177
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 179
    const-string v1, "first_name = ? AND last_name = ?"

    .line 180
    .local v1, whereClause:Ljava/lang/String;
    const-string v2, "cache_file"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/jingdong/common/entity/CacheFile;->getFirstName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/jingdong/common/entity/CacheFile;->getLastName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :try_start_1
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    .end local v1           #whereClause:Ljava/lang/String;
    :goto_0
    monitor-exit v3

    return-void

    .line 184
    :catch_0
    move-exception v2

    .line 189
    :try_start_2
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 188
    :catchall_1
    move-exception v2

    .line 189
    :try_start_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 190
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static getListByClean()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CacheFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v12, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CacheFile;>;"
    const/4 v0, 0x0

    .line 204
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 208
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 210
    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "first_name"

    aput-object v5, v2, v1

    const/4 v1, 0x1

    const-string v5, "last_name"

    aput-object v5, v2, v1

    const/4 v1, 0x2

    const-string v5, "clean_time"

    aput-object v5, v2, v1

    const/4 v1, 0x3

    const-string v5, "dir_path"

    aput-object v5, v2, v1

    const/4 v1, 0x4

    const-string v5, "dir_space"

    aput-object v5, v2, v1

    .line 212
    .local v2, columns:[Ljava/lang/String;
    const-string v3, "clean_time < ?"

    .line 213
    .local v3, selection:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {v5}, Lcom/jingdong/common/utils/FormatUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 215
    .local v4, selectionArgs:[Ljava/lang/String;
    const-string v1, "cache_file"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 217
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    :cond_0
    new-instance v8, Lcom/jingdong/common/entity/CacheFile;

    invoke-direct {v8}, Lcom/jingdong/common/entity/CacheFile;-><init>()V

    .line 221
    .local v8, cacheFile:Lcom/jingdong/common/entity/CacheFile;
    const-string v1, "first_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/jingdong/common/entity/CacheFile;->setFirstName(Ljava/lang/String;)V

    .line 222
    const-string v1, "last_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/jingdong/common/entity/CacheFile;->setLastName(Ljava/lang/String;)V

    .line 223
    const-string v1, "clean_time"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 224
    .local v11, dateStr:Ljava/lang/String;
    invoke-static {v11}, Lcom/jingdong/common/utils/FormatUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    .line 225
    .local v10, date:Ljava/util/Date;
    invoke-virtual {v8, v10}, Lcom/jingdong/common/entity/CacheFile;->setCleanTime(Ljava/util/Date;)V

    .line 227
    const-string v1, "dir_path"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 228
    .local v13, path:Ljava/lang/String;
    const-string v1, "dir_space"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 229
    .local v14, space:I
    new-instance v1, Lcom/jingdong/common/utils/FileService$Directory;

    invoke-direct {v1, v13, v14}, Lcom/jingdong/common/utils/FileService$Directory;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v1}, Lcom/jingdong/common/entity/CacheFile;->setDirectory(Lcom/jingdong/common/utils/FileService$Directory;)V

    .line 230
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 243
    .end local v8           #cacheFile:Lcom/jingdong/common/entity/CacheFile;
    .end local v10           #date:Ljava/util/Date;
    .end local v11           #dateStr:Ljava/lang/String;
    .end local v13           #path:Ljava/lang/String;
    .end local v14           #space:I
    :cond_1
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 244
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_2
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 249
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :goto_0
    return-object v12

    .line 238
    :catch_0
    move-exception v1

    .line 243
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 244
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v1

    .line 243
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 244
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_4
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 247
    throw v1
.end method

.method public static declared-synchronized insertOrUpdate(Lcom/jingdong/common/entity/CacheFile;)V
    .locals 12
    .parameter "cacheFile"

    .prologue
    .line 127
    const-class v11, Lcom/jingdong/common/database/table/CacheFileTable;

    monitor-enter v11

    const/4 v0, 0x0

    .line 128
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 130
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 133
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 134
    .local v8, contentValues:Landroid/content/ContentValues;
    const-string v1, "first_name"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/CacheFile;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "last_name"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/CacheFile;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "clean_time"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/CacheFile;->getCleanTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/common/utils/FormatUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/jingdong/common/entity/CacheFile;->getDirectory()Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v10

    .line 139
    .local v10, directory:Lcom/jingdong/common/utils/FileService$Directory;
    const-string v1, "dir_path"

    invoke-virtual {v10}, Lcom/jingdong/common/utils/FileService$Directory;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v1, "dir_space"

    invoke-virtual {v10}, Lcom/jingdong/common/utils/FileService$Directory;->getSpace()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    const-string v3, "first_name = ? AND last_name = ?"

    .line 143
    .local v3, selection:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/jingdong/common/entity/CacheFile;->getFirstName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/jingdong/common/entity/CacheFile;->getLastName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 145
    .local v4, selectionArgs:[Ljava/lang/String;
    const-string v1, "cache_file"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 146
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 147
    const-string v1, "cache_file"

    invoke-virtual {v0, v1, v8, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    if-eqz v9, :cond_0

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v8           #contentValues:Landroid/content/ContentValues;
    .end local v10           #directory:Lcom/jingdong/common/utils/FileService$Directory;
    :goto_1
    monitor-exit v11

    return-void

    .line 149
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v8       #contentValues:Landroid/content/ContentValues;
    .restart local v10       #directory:Lcom/jingdong/common/utils/FileService$Directory;
    :cond_1
    :try_start_2
    const-string v1, "cache_file"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 156
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v8           #contentValues:Landroid/content/ContentValues;
    .end local v10           #directory:Lcom/jingdong/common/utils/FileService$Directory;
    :catch_0
    move-exception v1

    .line 161
    if-eqz v9, :cond_2

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 162
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_2
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v11

    throw v1

    .line 160
    :catchall_1
    move-exception v1

    .line 161
    if-eqz v9, :cond_3

    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 162
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 165
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static isExpired(Ljava/io/File;)Z
    .locals 18
    .parameter "file"

    .prologue
    .line 76
    const/16 v17, 0x1

    .line 78
    .local v17, result:Z
    new-instance v9, Lcom/jingdong/common/entity/CacheFile;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/jingdong/common/entity/CacheFile;-><init>(Ljava/io/File;)V

    .line 80
    .local v9, cacheFile:Lcom/jingdong/common/entity/CacheFile;
    const/4 v1, 0x0

    .line 81
    .local v1, database:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 83
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 86
    const-string v4, "first_name = ? AND last_name = ?"

    .line 90
    .local v4, selection:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v9}, Lcom/jingdong/common/entity/CacheFile;->getFirstName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x1

    .line 91
    invoke-virtual {v9}, Lcom/jingdong/common/entity/CacheFile;->getLastName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    .line 94
    .local v5, selectionArgs:[Ljava/lang/String;
    const-string v2, "cache_file"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 95
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    const-string v2, "clean_time"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 97
    .local v12, dateStr:Ljava/lang/String;
    invoke-static {v12}, Lcom/jingdong/common/utils/FormatUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 98
    .local v11, date:Ljava/util/Date;
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    .line 99
    .local v13, fileDateTime:J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v15

    .line 100
    .local v15, nowDateTime:J
    cmp-long v2, v13, v15

    if-lez v2, :cond_0

    .line 101
    const/16 v17, 0x0

    .line 109
    .end local v11           #date:Ljava/util/Date;
    .end local v12           #dateStr:Ljava/lang/String;
    .end local v13           #fileDateTime:J
    .end local v15           #nowDateTime:J
    :cond_0
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 112
    :cond_1
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 117
    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    :goto_0
    return v17

    .line 104
    :catch_0
    move-exception v2

    .line 109
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 110
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 112
    :cond_2
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v2

    .line 109
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 110
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 112
    :cond_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 113
    throw v2
.end method

.method public static upgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "database"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 60
    const-string v0, "drop index if exists clean_time_index"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    const-string v0, "drop index if exists name_index"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    const-string v0, "drop table if exists cache_file"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    return-void
.end method
