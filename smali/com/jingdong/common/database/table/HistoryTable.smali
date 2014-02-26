.class public Lcom/jingdong/common/database/table/HistoryTable;
.super Ljava/lang/Object;
.source "HistoryTable.java"


# static fields
.field public static final TB_CLOUMN_BROWSE_TIME:Ljava/lang/String; = "browseTime"

.field public static final TB_CLOUMN_PRODUCT_CODE:Ljava/lang/String; = "productCode"

.field public static final TB_CLOUMN_USER_NAME:Ljava/lang/String; = "userName"

.field public static final TB_HISTORY_TABLE:Ljava/lang/String; = "BrowseHistoryTable"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 147
    const-string v0, "CREATE TABLE BrowseHistoryTable(\'id\' INTEGER PRIMARY KEY  NOT NULL ,productCode LONG,userName TEXT,browseTime DATETIME DEFAULT CURRENT_TIMESTAMP)"

    .line 154
    .local v0, CREATE_TABLE_HISTORY:Ljava/lang/String;
    const-string v1, "CREATE TABLE BrowseHistoryTable(\'id\' INTEGER PRIMARY KEY  NOT NULL ,productCode LONG,userName TEXT,browseTime DATETIME DEFAULT CURRENT_TIMESTAMP)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public static delAllHistory()V
    .locals 4

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 110
    const-string v1, "1=1"

    .line 111
    .local v1, whereClause:Ljava/lang/String;
    const-string v2, "BrowseHistoryTable"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 119
    .end local v1           #whereClause:Ljava/lang/String;
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v2

    .line 117
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v2

    .line 117
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 118
    throw v2
.end method

.method public static delHistoryById(J)V
    .locals 6
    .parameter "id"

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 129
    const-string v1, "productCode =?"

    .line 130
    .local v1, whereArgs:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 131
    .local v2, whereValue:[Ljava/lang/String;
    const-string v3, "BrowseHistoryTable"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 140
    .end local v1           #whereArgs:Ljava/lang/String;
    .end local v2           #whereValue:[Ljava/lang/String;
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v3

    .line 138
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v3

    .line 138
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 139
    throw v3
.end method

.method public static getHistoryByPage(II)Ljava/util/ArrayList;
    .locals 11
    .parameter "pageNum"
    .parameter "perlMax"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 33
    const/4 v1, 0x0

    .line 34
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 35
    .local v0, c:Landroid/database/Cursor;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 38
    const-string v7, "SELECT id,productCode FROM BrowseHistoryTable ORDER BY browseTime desc LIMIT ?,? "

    .line 39
    .local v7, sql:Ljava/lang/String;
    const/4 v9, 0x2

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    if-ne p0, v10, :cond_2

    :goto_0
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    const/4 v8, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    .line 40
    .local v6, selectionArgs:[Ljava/lang/String;
    invoke-virtual {v1, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 41
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 42
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-eqz v8, :cond_0

    .line 43
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 44
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v3, :cond_3

    .line 56
    .end local v2           #i:I
    .end local v3           #length:I
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_1

    .line 57
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 59
    :cond_1
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 63
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v7           #sql:Ljava/lang/String;
    :goto_2
    return-object v4

    .line 39
    .restart local v7       #sql:Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, p0, -0x1

    mul-int/2addr v8, p1

    goto :goto_0

    .line 45
    .restart local v2       #i:I
    .restart local v3       #length:I
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 46
    new-instance v5, Lcom/jingdong/common/entity/Product;

    invoke-direct {v5}, Lcom/jingdong/common/entity/Product;-><init>()V

    .line 47
    .local v5, product:Lcom/jingdong/common/entity/Product;
    const-string v8, "productCode"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/jingdong/common/entity/Product;->setId(Ljava/lang/Long;)V

    .line 48
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 51
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v5           #product:Lcom/jingdong/common/entity/Product;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v7           #sql:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 56
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_4

    .line 57
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 59
    :cond_4
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_2

    .line 55
    :catchall_0
    move-exception v8

    .line 56
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_5

    .line 57
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 59
    :cond_5
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 61
    throw v8
.end method

.method public static declared-synchronized insertOrUpdateBrowseHistory(J)V
    .locals 11
    .parameter "id"

    .prologue
    .line 76
    const-class v10, Lcom/jingdong/common/database/table/HistoryTable;

    monitor-enter v10

    const/4 v0, 0x0

    .line 77
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 79
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 80
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 81
    .local v9, contentValues:Landroid/content/ContentValues;
    const-string v3, "productCode =?"

    .line 82
    .local v3, whereArgs:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 83
    .local v4, whereValue:[Ljava/lang/String;
    const-string v1, "BrowseHistoryTable"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 84
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const-string v1, "BrowseHistoryTable"

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 88
    :cond_0
    const-string v1, "productCode"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 89
    const-string v1, "BrowseHistoryTable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    if-eqz v8, :cond_1

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_1
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .end local v3           #whereArgs:Ljava/lang/String;
    .end local v4           #whereValue:[Ljava/lang/String;
    .end local v9           #contentValues:Landroid/content/ContentValues;
    :goto_0
    monitor-exit v10

    return-void

    .line 90
    :catch_0
    move-exception v1

    .line 95
    if-eqz v8, :cond_2

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 96
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_2
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1

    .line 94
    :catchall_1
    move-exception v1

    .line 95
    if-eqz v8, :cond_3

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 96
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 99
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static upgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 161
    const-string v0, "drop table if exists BrowseHistoryTable"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    return-void
.end method
