.class public Lcom/jingdong/common/database/table/ScanCodeTable;
.super Ljava/lang/Object;
.source "ScanCodeTable.java"


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "scan_code"

.field public static final TB_COLUMN_CODE:Ljava/lang/String; = "code"

.field public static final TB_COLUMN_CREATE_TIME:Ljava/lang/String; = "create_time"

.field public static final TB_COLUMN_PRODUCT_NAME:Ljava/lang/String; = "product_name"


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
    .line 148
    const-string v0, "CREATE TABLE scan_code(\'id\' INTEGER PRIMARY KEY  NOT NULL ,code TEXT,product_name TEXT,create_time DATETIME DEFAULT CURRENT_TIMESTAMP)"

    .line 154
    .local v0, CREATE_TABLE_SCAN_CODE:Ljava/lang/String;
    const-string v1, "CREATE TABLE scan_code(\'id\' INTEGER PRIMARY KEY  NOT NULL ,code TEXT,product_name TEXT,create_time DATETIME DEFAULT CURRENT_TIMESTAMP)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public static delAllBarcodeRecord(Landroid/content/Context;)V
    .locals 4
    .parameter "mContext"

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 61
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 62
    const-string v1, "1=1"

    .line 63
    .local v1, whereClause:Ljava/lang/String;
    const-string v2, "scan_code"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 73
    .end local v1           #whereClause:Ljava/lang/String;
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v2

    .line 70
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v2

    .line 70
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 72
    throw v2
.end method

.method public static delBarcodeRecord(Lcom/jingdong/common/entity/BarcodeRecord;)V
    .locals 6
    .parameter "barcode"

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 83
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 84
    const-string v1, "code=?"

    .line 85
    .local v1, whereClause:Ljava/lang/String;
    const-string v2, "scan_code"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/jingdong/common/entity/BarcodeRecord;->getContent()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 93
    .end local v1           #whereClause:Ljava/lang/String;
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v2

    .line 91
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v2

    .line 91
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 92
    throw v2
.end method

.method public static getBarcodeRecordList()Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/BarcodeRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v14, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/BarcodeRecord;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v11, detList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 100
    .local v9, c:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 102
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 106
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "code"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "product_name"

    aput-object v3, v2, v1

    .line 107
    .local v2, columns:[Ljava/lang/String;
    const-string v1, "scan_code"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "create_time"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 108
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 110
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 112
    .local v13, length:I
    add-int/lit8 v12, v13, -0x1

    .local v12, i:I
    :goto_0
    if-gez v12, :cond_2

    .line 131
    .end local v12           #i:I
    .end local v13           #length:I
    :cond_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_8

    .line 138
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 141
    .end local v2           #columns:[Ljava/lang/String;
    :goto_2
    return-object v14

    .line 113
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v12       #i:I
    .restart local v13       #length:I
    :cond_2
    :try_start_1
    invoke-interface {v9, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 114
    add-int/lit8 v1, v13, -0x32

    if-ge v12, v1, :cond_3

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    :goto_3
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 119
    :cond_3
    new-instance v8, Lcom/jingdong/common/entity/BarcodeRecord;

    invoke-direct {v8}, Lcom/jingdong/common/entity/BarcodeRecord;-><init>()V

    .line 120
    .local v8, barcode:Lcom/jingdong/common/entity/BarcodeRecord;
    const-string v1, "code"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/jingdong/common/entity/BarcodeRecord;->setContent(Ljava/lang/String;)V

    .line 121
    const-string v1, "product_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/jingdong/common/entity/BarcodeRecord;->setProductName(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 126
    .end local v2           #columns:[Ljava/lang/String;
    .end local v8           #barcode:Lcom/jingdong/common/entity/BarcodeRecord;
    .end local v12           #i:I
    .end local v13           #length:I
    :catch_0
    move-exception v1

    .line 131
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 132
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 138
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_2

    .line 134
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 135
    .local v10, detId:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v10, v15, v3

    .line 136
    .local v15, queryWhere:[Ljava/lang/String;
    const-string v3, "scan_code"

    const-string v4, "id=?"

    invoke-virtual {v0, v3, v4, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_4

    .line 130
    .end local v10           #detId:Ljava/lang/String;
    .end local v15           #queryWhere:[Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 131
    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 132
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    .line 138
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 139
    throw v1

    .line 134
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 135
    .restart local v10       #detId:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v15, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v10, v15, v4

    .line 136
    .restart local v15       #queryWhere:[Ljava/lang/String;
    const-string v4, "scan_code"

    const-string v5, "id=?"

    invoke-virtual {v0, v4, v5, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_5

    .line 134
    .end local v10           #detId:Ljava/lang/String;
    .end local v15           #queryWhere:[Ljava/lang/String;
    .restart local v2       #columns:[Ljava/lang/String;
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 135
    .restart local v10       #detId:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v10, v15, v3

    .line 136
    .restart local v15       #queryWhere:[Ljava/lang/String;
    const-string v3, "scan_code"

    const-string v4, "id=?"

    invoke-virtual {v0, v3, v4, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static declared-synchronized insertOrUpdateBarcodeRecord(Lcom/jingdong/common/entity/BarcodeRecord;)V
    .locals 11
    .parameter "barcode"

    .prologue
    .line 26
    const-class v10, Lcom/jingdong/common/database/table/ScanCodeTable;

    monitor-enter v10

    const/4 v8, 0x0

    .line 27
    .local v8, c:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 29
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 30
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 31
    .local v9, contentValues:Landroid/content/ContentValues;
    const-string v1, "code"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/BarcodeRecord;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v1, "product_name"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/BarcodeRecord;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v3, "code=?"

    .line 34
    .local v3, selection:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/jingdong/common/entity/BarcodeRecord;->getContent()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 35
    .local v4, selectionArgs:[Ljava/lang/String;
    const-string v1, "scan_code"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 36
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 37
    const-string v1, "scan_code"

    invoke-virtual {v0, v1, v9, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v9           #contentValues:Landroid/content/ContentValues;
    :goto_1
    monitor-exit v10

    return-void

    .line 39
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v9       #contentValues:Landroid/content/ContentValues;
    :cond_0
    :try_start_2
    const-string v1, "scan_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 42
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v9           #contentValues:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 47
    :try_start_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 26
    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1

    .line 46
    :catchall_1
    move-exception v1

    .line 47
    :try_start_4
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 49
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static upgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 161
    const-string v0, "drop table if exists scan_code"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    return-void
.end method
