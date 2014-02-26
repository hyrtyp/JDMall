.class public Lcom/jingdong/common/database/table/FavorityTable;
.super Ljava/lang/Object;
.source "FavorityTable.java"


# static fields
.field public static final TB_CLOUMN_BROWSE_TIME:Ljava/lang/String; = "browseTime"

.field public static final TB_CLOUMN_PRODUCT_CODE:Ljava/lang/String; = "productCode"

.field public static final TB_CLOUMN_PRODUCT_NAME:Ljava/lang/String; = "productName"

.field public static final TB_CLOUMN_USER_NAME:Ljava/lang/String; = "userName"

.field public static final TB_FAVORITY_TABLE:Ljava/lang/String; = "favority"


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
    .line 130
    const-string v0, "CREATE TABLE favority(\'id\' INTEGER PRIMARY KEY  NOT NULL ,productName TEXT,productCode LONG,userName TEXT,\'browseTime\' DATETIME DEFAULT CURRENT_TIMESTAMP)"

    .line 137
    .local v0, CREATE_TABLE_FAVORITY:Ljava/lang/String;
    const-string v1, "CREATE TABLE favority(\'id\' INTEGER PRIMARY KEY  NOT NULL ,productName TEXT,productCode LONG,userName TEXT,\'browseTime\' DATETIME DEFAULT CURRENT_TIMESTAMP)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static delAllFavority()V
    .locals 4

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 29
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 30
    const-string v1, "1=1"

    .line 31
    .local v1, whereClause:Ljava/lang/String;
    const-string v2, "favority"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 39
    .end local v1           #whereClause:Ljava/lang/String;
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v2

    .line 37
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v2

    .line 37
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 38
    throw v2
.end method

.method public static declared-synchronized insertOrUpdateFavority(JLjava/lang/String;Z)V
    .locals 11
    .parameter "prodoctID"
    .parameter "productName"
    .parameter "delFlag"

    .prologue
    .line 89
    const-class v10, Lcom/jingdong/common/database/table/FavorityTable;

    monitor-enter v10

    const/4 v0, 0x0

    .line 90
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 92
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 93
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 94
    .local v9, contentValues:Landroid/content/ContentValues;
    const-string v3, "productCode =?"

    .line 95
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

    .line 96
    .local v4, whereValue:[Ljava/lang/String;
    const-string v1, "userName"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    if-eqz p3, :cond_1

    .line 98
    const-string v1, "favority"

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    if-eqz v8, :cond_0

    .line 117
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    .end local v3           #whereArgs:Ljava/lang/String;
    .end local v4           #whereValue:[Ljava/lang/String;
    .end local v9           #contentValues:Landroid/content/ContentValues;
    :goto_0
    monitor-exit v10

    return-void

    .line 101
    .restart local v3       #whereArgs:Ljava/lang/String;
    .restart local v4       #whereValue:[Ljava/lang/String;
    .restart local v9       #contentValues:Landroid/content/ContentValues;
    :cond_1
    :try_start_2
    const-string v1, "favority"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 102
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    const-string v1, "browseTime"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/jingdong/common/utils/FormatUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "favority"

    invoke-virtual {v0, v1, v9, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 116
    :goto_1
    if-eqz v8, :cond_2

    .line 117
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_2
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 89
    .end local v3           #whereArgs:Ljava/lang/String;
    .end local v4           #whereValue:[Ljava/lang/String;
    .end local v9           #contentValues:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1

    .line 107
    .restart local v3       #whereArgs:Ljava/lang/String;
    .restart local v4       #whereValue:[Ljava/lang/String;
    .restart local v9       #contentValues:Landroid/content/ContentValues;
    :cond_3
    :try_start_4
    const-string v1, "productCode"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    const-string v1, "productName"

    invoke-virtual {v9, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "favority"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 111
    .end local v3           #whereArgs:Ljava/lang/String;
    .end local v4           #whereValue:[Ljava/lang/String;
    .end local v9           #contentValues:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 116
    if-eqz v8, :cond_4

    .line 117
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_4
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 115
    :catchall_1
    move-exception v1

    .line 116
    if-eqz v8, :cond_5

    .line 117
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_5
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 121
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public static queryIsFavorited(J)Z
    .locals 12
    .parameter "productId"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 52
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 53
    const-string v3, "productCode =? and userName =?"

    .line 54
    .local v3, whereArgs:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 56
    .local v4, whereValue:[Ljava/lang/String;
    const-string v1, "favority"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 58
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 72
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    move v1, v10

    .line 67
    .end local v3           #whereArgs:Ljava/lang/String;
    .end local v4           #whereValue:[Ljava/lang/String;
    :goto_0
    return v1

    .line 69
    .restart local v3       #whereArgs:Ljava/lang/String;
    .restart local v4       #whereValue:[Ljava/lang/String;
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 70
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 72
    :cond_2
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    move v1, v11

    .line 61
    goto :goto_0

    .line 63
    .end local v3           #whereArgs:Ljava/lang/String;
    .end local v4           #whereValue:[Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 69
    .local v9, e:Ljava/lang/Exception;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 70
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 72
    :cond_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    move v1, v11

    .line 67
    goto :goto_0

    .line 68
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 69
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 70
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 72
    :cond_4
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 73
    throw v1
.end method

.method public static upgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 145
    const-string v0, "drop table if exists favority"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 146
    return-void
.end method
