.class public Lcom/jingdong/common/database/table/MS_AlarmTable;
.super Ljava/lang/Object;
.source "MS_AlarmTable.java"


# static fields
.field public static final TB_ALARM_TABLE:Ljava/lang/String; = "MS_AlarmTable"

.field public static final TB_CLOUMN_INSERT_TIME:Ljava/lang/String; = "insertTime"

.field public static final TB_CLOUMN_MILLIS_TIME:Ljava/lang/String; = "millis"

.field public static final TB_CLOUMN_PRODUCT_CODE:Ljava/lang/String; = "productCode"

.field public static final TB_CLOUMN_PRODUCT_NAME:Ljava/lang/String; = "productName"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 260
    const-string v0, "CREATE TABLE MS_AlarmTable(\'id\' INTEGER PRIMARY KEY  NOT NULL ,productCode LONG,productName TEXT,millis LONG,insertTime DATETIME DEFAULT CURRENT_TIMESTAMP)"

    .line 268
    .local v0, CREATE_TABLE_HISTORY:Ljava/lang/String;
    const-string v1, "CREATE TABLE MS_AlarmTable(\'id\' INTEGER PRIMARY KEY  NOT NULL ,productCode LONG,productName TEXT,millis LONG,insertTime DATETIME DEFAULT CURRENT_TIMESTAMP)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public static delAll()V
    .locals 4

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 222
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 223
    const-string v1, "1=1"

    .line 224
    .local v1, whereClause:Ljava/lang/String;
    const-string v2, "MS_AlarmTable"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 232
    .end local v1           #whereClause:Ljava/lang/String;
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v2

    .line 230
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v2

    .line 230
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 231
    throw v2
.end method

.method public static delById(J)V
    .locals 6
    .parameter "id"

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 241
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 242
    const-string v1, "productCode =?"

    .line 243
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

    .line 244
    .local v2, whereValue:[Ljava/lang/String;
    const-string v3, "MS_AlarmTable"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 253
    .end local v1           #whereArgs:Ljava/lang/String;
    .end local v2           #whereValue:[Ljava/lang/String;
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v3

    .line 251
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v3

    .line 251
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 252
    throw v3
.end method

.method public static getAllList()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    const/4 v1, 0x0

    .line 143
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 144
    .local v0, c:Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 147
    const-string v12, "SELECT * FROM MS_AlarmTable"

    .line 148
    .local v12, sql:Ljava/lang/String;
    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 149
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 150
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-eqz v13, :cond_0

    .line 151
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 152
    .local v7, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v7, :cond_2

    .line 173
    .end local v2           #i:I
    .end local v7           #length:I
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_1

    .line 174
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_1
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 178
    .end local v12           #sql:Ljava/lang/String;
    :goto_1
    return-object v8

    .line 153
    .restart local v2       #i:I
    .restart local v7       #length:I
    .restart local v12       #sql:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 154
    const-string v13, "productCode"

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 155
    .local v3, id:J
    const-string v13, "millis"

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 156
    .local v9, millis:J
    const-string v13, "insertTime"

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 157
    .local v5, insertTime:J
    const-string v13, "productName"

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 158
    .local v11, name:Ljava/lang/String;
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v2           #i:I
    .end local v3           #id:J
    .end local v5           #insertTime:J
    .end local v7           #length:I
    .end local v9           #millis:J
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #sql:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 173
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_3

    .line 174
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_1

    .line 172
    :catchall_0
    move-exception v13

    .line 173
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v14

    if-nez v14, :cond_4

    .line 174
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_4
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 177
    throw v13
.end method

.method public static getList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    const/4 v1, 0x0

    .line 30
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 31
    .local v0, c:Landroid/database/Cursor;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 34
    const-string v5, "SELECT id,productCode FROM MS_AlarmTable"

    .line 35
    .local v5, sql:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 36
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 37
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-eqz v6, :cond_0

    .line 38
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 39
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_2

    .line 49
    .end local v2           #i:I
    .end local v3           #length:I
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_1

    .line 50
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 52
    :cond_1
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 55
    .end local v5           #sql:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 40
    .restart local v2       #i:I
    .restart local v3       #length:I
    .restart local v5       #sql:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 41
    const-string v6, "productCode"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v5           #sql:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 49
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 50
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 52
    :cond_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_1

    .line 48
    :catchall_0
    move-exception v6

    .line 49
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_4

    .line 50
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 52
    :cond_4
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 53
    throw v6
.end method

.method public static getMap(Ljava/lang/Long;)Ljava/util/HashMap;
    .locals 14
    .parameter "millis"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 106
    .local v0, c:Landroid/database/Cursor;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 108
    .local v6, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 109
    const-wide/32 v9, 0xea60

    .line 110
    .local v9, time:J
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "SELECT * FROM MS_AlarmTable WHERE millis <= "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-long/2addr v12, v9

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " AND "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "millis"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " >="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long/2addr v12, v9

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 111
    .local v8, sql:Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v1, v8, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 113
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-eqz v11, :cond_0

    .line 114
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 115
    .local v5, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v5, :cond_2

    .line 127
    .end local v2           #i:I
    .end local v5           #length:I
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_1

    .line 128
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_1
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 132
    .end local v8           #sql:Ljava/lang/String;
    .end local v9           #time:J
    :goto_1
    return-object v6

    .line 116
    .restart local v2       #i:I
    .restart local v5       #length:I
    .restart local v8       #sql:Ljava/lang/String;
    .restart local v9       #time:J
    :cond_2
    :try_start_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 117
    const-string v11, "productCode"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 118
    .local v3, id:J
    const-string v11, "productName"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 119
    .local v7, name:Ljava/lang/String;
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    .end local v2           #i:I
    .end local v3           #id:J
    .end local v5           #length:I
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #sql:Ljava/lang/String;
    .end local v9           #time:J
    :catch_0
    move-exception v11

    .line 127
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_3

    .line 128
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_1

    .line 126
    :catchall_0
    move-exception v11

    .line 127
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v12

    if-nez v12, :cond_4

    .line 128
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_4
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 131
    throw v11
.end method

.method public static declared-synchronized insertOrUpdate(JJJLjava/lang/String;)V
    .locals 12
    .parameter "id"
    .parameter "millis"
    .parameter "curMillis"
    .parameter "name"

    .prologue
    .line 185
    const-class v11, Lcom/jingdong/common/database/table/MS_AlarmTable;

    monitor-enter v11

    const/4 v1, 0x0

    .line 186
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 188
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 189
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 190
    .local v10, contentValues:Landroid/content/ContentValues;
    const-string v4, "productCode =?"

    .line 191
    .local v4, whereArgs:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    .line 192
    .local v5, whereValue:[Ljava/lang/String;
    const-string v2, "MS_AlarmTable"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 193
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    const-string v2, "MS_AlarmTable"

    invoke-virtual {v1, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 197
    :cond_0
    const-string v2, "productCode"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 198
    const-string v2, "millis"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 199
    const-string v2, "insertTime"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 200
    const-string v2, "productName"

    move-object/from16 v0, p6

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v2, "MS_AlarmTable"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    if-eqz v9, :cond_1

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 208
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 210
    :cond_1
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    .end local v4           #whereArgs:Ljava/lang/String;
    .end local v5           #whereValue:[Ljava/lang/String;
    .end local v10           #contentValues:Landroid/content/ContentValues;
    :goto_0
    monitor-exit v11

    return-void

    .line 202
    :catch_0
    move-exception v2

    .line 207
    if-eqz v9, :cond_2

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 208
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 210
    :cond_2
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v2

    monitor-exit v11

    throw v2

    .line 206
    :catchall_1
    move-exception v2

    .line 207
    if-eqz v9, :cond_3

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 208
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 210
    :cond_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 211
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static isExists(J)Z
    .locals 8
    .parameter "id"

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 67
    .local v0, c:Landroid/database/Cursor;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SELECT id,productCode FROM MS_AlarmTable WHERE productCode = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, sql:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 73
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-eqz v6, :cond_0

    .line 74
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 75
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_2

    .line 85
    .end local v2           #i:I
    .end local v3           #length:I
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_1

    .line 86
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 88
    :cond_1
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 90
    .end local v5           #sql:Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 91
    const/4 v6, 0x1

    .line 93
    :goto_2
    return v6

    .line 76
    .restart local v2       #i:I
    .restart local v3       #length:I
    .restart local v5       #sql:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 77
    const-string v6, "productCode"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v5           #sql:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 85
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 86
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 88
    :cond_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_1

    .line 84
    :catchall_0
    move-exception v6

    .line 85
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_4

    .line 86
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 88
    :cond_4
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 89
    throw v6

    .line 93
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public static upgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 279
    const-string v0, "drop table if exists MS_AlarmTable"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 280
    return-void
.end method
