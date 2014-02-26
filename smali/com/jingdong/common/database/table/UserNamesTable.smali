.class public Lcom/jingdong/common/database/table/UserNamesTable;
.super Ljava/lang/Object;
.source "UserNamesTable.java"


# static fields
.field public static final TB_CLOUMN_NAME:Ljava/lang/String; = "name"

.field public static final USER_NAMES_TABLE:Ljava/lang/String; = "usernames"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 102
    const-string v0, "CREATE TABLE usernames(\'id\' INTEGER PRIMARY KEY  NOT NULL ,name TEXT)"

    .line 106
    .local v0, CREATE_TABLE_USERNAMES:Ljava/lang/String;
    const-string v1, "CREATE TABLE usernames(\'id\' INTEGER PRIMARY KEY  NOT NULL ,name TEXT)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static declared-synchronized delUserName(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    .line 51
    const-class v4, Lcom/jingdong/common/database/table/UserNamesTable;

    monitor-enter v4

    const/4 v0, 0x0

    .line 53
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 54
    const-string v2, "name=?"

    .line 55
    .local v2, whereArgs:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v1, v3

    .line 56
    .local v1, values:[Ljava/lang/String;
    const-string v3, "usernames"

    invoke-virtual {v0, v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :try_start_1
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .end local v1           #values:[Ljava/lang/String;
    .end local v2           #whereArgs:Ljava/lang/String;
    :goto_0
    monitor-exit v4

    return-void

    .line 57
    :catch_0
    move-exception v3

    .line 62
    :try_start_2
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 61
    :catchall_1
    move-exception v3

    .line 62
    :try_start_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 63
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static declared-synchronized getUserNames()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    const-class v11, Lcom/jingdong/common/database/table/UserNamesTable;

    monitor-enter v11

    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .local v10, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 72
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 74
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 75
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "name"

    aput-object v3, v2, v1

    .line 76
    .local v2, columns:[Ljava/lang/String;
    const-string v1, "usernames"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 77
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 78
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 79
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-lt v9, v1, :cond_2

    .line 89
    .end local v9           #i:I
    :cond_0
    if-eqz v8, :cond_1

    .line 90
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 92
    :cond_1
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    .end local v2           #columns:[Ljava/lang/String;
    :goto_1
    monitor-exit v11

    return-object v10

    .line 80
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v9       #i:I
    :cond_2
    :try_start_3
    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 81
    const-string v1, "name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 79
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 84
    .end local v2           #columns:[Ljava/lang/String;
    .end local v9           #i:I
    :catch_0
    move-exception v1

    .line 89
    if-eqz v8, :cond_3

    .line 90
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 92
    :cond_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v11

    throw v1

    .line 88
    :catchall_1
    move-exception v1

    .line 89
    if-eqz v8, :cond_4

    .line 90
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 92
    :cond_4
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 93
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public static declared-synchronized insertUserName(Ljava/lang/String;)V
    .locals 11
    .parameter "name"

    .prologue
    .line 22
    const-class v10, Lcom/jingdong/common/database/table/UserNamesTable;

    monitor-enter v10

    const/4 v0, 0x0

    .line 23
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 25
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 26
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "name"

    aput-object v5, v2, v1

    .line 27
    .local v2, columns:[Ljava/lang/String;
    const-string v3, "name=?"

    .line 28
    .local v3, whereArgs:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v4, v1

    .line 29
    .local v4, whereValues:[Ljava/lang/String;
    const-string v1, "usernames"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 30
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 31
    :cond_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 32
    .local v9, values:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v9, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v1, "usernames"

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_1
    if-eqz v8, :cond_2

    .line 41
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 43
    :cond_2
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #whereArgs:Ljava/lang/String;
    .end local v4           #whereValues:[Ljava/lang/String;
    :goto_0
    monitor-exit v10

    return-void

    .line 35
    :catch_0
    move-exception v1

    .line 40
    if-eqz v8, :cond_3

    .line 41
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 43
    :cond_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1

    .line 39
    :catchall_1
    move-exception v1

    .line 40
    if-eqz v8, :cond_4

    .line 41
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 43
    :cond_4
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 44
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static upgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 113
    const-string v0, "drop table if exists usernames"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    return-void
.end method
