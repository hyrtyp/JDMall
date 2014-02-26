.class public Lcom/jingdong/common/database/table/DB_PacksTable;
.super Ljava/lang/Object;
.source "DB_PacksTable.java"


# static fields
.field public static final TB_CLOUMN_SOURCE_TYPE:Ljava/lang/String; = "sourceType"

.field public static final TB_CLOUMN_SOURCE_VALUE:Ljava/lang/String; = "sourceValue"

.field public static final TB_COLOUMN_BUY_COUNT:Ljava/lang/String; = "buyCount"

.field public static final TB_COLOUMN_CHILD_COUNT:Ljava/lang/String; = "childCount"

.field public static final TB_COLOUMN_MAIN_SKU_ID:Ljava/lang/String; = "mainSkuId"

.field public static final TB_COLOUMN_PACK_ID:Ljava/lang/String; = "packId"

.field public static final TB_COLOUMN_PRODUCT_CODE:Ljava/lang/String; = "productCode"

.field public static final TB_COLOUMN_PRODUCT_NAME:Ljava/lang/String; = "name"

.field public static final TB_COLOUMN_USER_NAME:Ljava/lang/String; = "userName"

.field public static final TB_PACKS_TABLE:Ljava/lang/String; = "PacksTable"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 304
    const-string v0, "CREATE TABLE PacksTable(\'id\' INTEGER PRIMARY KEY  NOT NULL ,packId LONG,name TEXT,buyCount INTEGER,childCount INTEGER,sourceType TEXT,sourceValue TEXT, \'browseTime\' DATETIME DEFAULT CURRENT_TIMESTAMP)"

    .line 313
    .local v0, CREATE_TABLE_PACKS:Ljava/lang/String;
    const-string v1, "CREATE TABLE PacksTable(\'id\' INTEGER PRIMARY KEY  NOT NULL ,packId LONG,name TEXT,buyCount INTEGER,childCount INTEGER,sourceType TEXT,sourceValue TEXT, \'browseTime\' DATETIME DEFAULT CURRENT_TIMESTAMP)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public static delAllPacksCart()V
    .locals 4

    .prologue
    .line 476
    const/4 v0, 0x0

    .line 478
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 479
    const-string v1, "1=1"

    .line 480
    .local v1, whereClause:Ljava/lang/String;
    const-string v2, "PacksTable"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 488
    .end local v1           #whereClause:Ljava/lang/String;
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v2

    .line 486
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 485
    :catchall_0
    move-exception v2

    .line 486
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 487
    throw v2
.end method

.method public static delAllPacksCart(Landroid/content/Context;)V
    .locals 4
    .parameter "mContext"

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 168
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 169
    const-string v1, "1=1"

    .line 170
    .local v1, whereClause:Ljava/lang/String;
    const-string v2, "PacksTable"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 179
    .end local v1           #whereClause:Ljava/lang/String;
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v2

    .line 177
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v2

    .line 177
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 178
    throw v2
.end method

.method public static delAllPacksCartNoListener()V
    .locals 4

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 188
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 189
    const-string v1, "1=1"

    .line 190
    .local v1, whereClause:Ljava/lang/String;
    const-string v2, "PacksTable"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 199
    .end local v1           #whereClause:Ljava/lang/String;
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v2

    .line 197
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v2

    .line 197
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 198
    throw v2
.end method

.method public static delPacksCart(JLandroid/content/Context;)V
    .locals 7
    .parameter "id"
    .parameter "mContext"

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 145
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 146
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 147
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v4, "packId"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 148
    const-string v2, "packId =?"

    .line 149
    .local v2, whereArgs:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 150
    .local v3, whereValue:[Ljava/lang/String;
    const-string v4, "PacksTable"

    invoke-virtual {v1, v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 159
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #whereArgs:Ljava/lang/String;
    .end local v3           #whereValue:[Ljava/lang/String;
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v4

    .line 157
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v4

    .line 157
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 158
    throw v4
.end method

.method public static getPacksList()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/PacksTable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v12, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/PacksTable;>;"
    const/4 v8, 0x0

    .line 214
    .local v8, c:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 217
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 221
    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "packId"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "name"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "buyCount"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "childCount"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "sourceType"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "sourceValue"

    aput-object v3, v2, v1

    .line 222
    .local v2, columns:[Ljava/lang/String;
    const-string v1, "PacksTable"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 223
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 225
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 227
    .local v11, length:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-lt v10, v11, :cond_2

    .line 244
    .end local v10           #i:I
    .end local v11           #length:I
    :cond_0
    if-eqz v8, :cond_1

    .line 245
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_1
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 251
    .end local v2           #columns:[Ljava/lang/String;
    :goto_1
    return-object v12

    .line 228
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v10       #i:I
    .restart local v11       #length:I
    :cond_2
    :try_start_1
    invoke-interface {v8, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 229
    new-instance v9, Lcom/jingdong/common/entity/PacksTable;

    invoke-direct {v9}, Lcom/jingdong/common/entity/PacksTable;-><init>()V

    .line 230
    .local v9, cart:Lcom/jingdong/common/entity/PacksTable;
    const-string v1, "packId"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v9, Lcom/jingdong/common/entity/PacksTable;->packId:J

    .line 231
    const-string v1, "name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/jingdong/common/entity/PacksTable;->name:Ljava/lang/String;

    .line 232
    const-string v1, "buyCount"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    iput v1, v9, Lcom/jingdong/common/entity/PacksTable;->buyCount:I

    .line 233
    const-string v1, "childCount"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v9, Lcom/jingdong/common/entity/PacksTable;->childCount:I

    .line 234
    const-string v1, "sourceType"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/jingdong/common/entity/PacksTable;->sourceType:Ljava/lang/String;

    .line 235
    const-string v1, "sourceValue"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/jingdong/common/entity/PacksTable;->sourceValue:Ljava/lang/String;

    .line 236
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 227
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 239
    .end local v2           #columns:[Ljava/lang/String;
    .end local v9           #cart:Lcom/jingdong/common/entity/PacksTable;
    .end local v10           #i:I
    .end local v11           #length:I
    :catch_0
    move-exception v1

    .line 244
    if-eqz v8, :cond_3

    .line 245
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_1

    .line 243
    :catchall_0
    move-exception v1

    .line 244
    if-eqz v8, :cond_4

    .line 245
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_4
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 249
    throw v1
.end method

.method public static getPacksListForPack()Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jingdong/common/entity/Pack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 498
    .local v11, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jingdong/common/entity/Pack;>;"
    const/4 v8, 0x0

    .line 499
    .local v8, c:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 501
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 503
    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "packId"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "name"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "buyCount"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "childCount"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "sourceType"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "sourceValue"

    aput-object v3, v2, v1

    .line 504
    .local v2, columns:[Ljava/lang/String;
    const-string v1, "PacksTable"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 505
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 507
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 514
    .local v10, length:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-lt v9, v10, :cond_2

    .line 531
    .end local v9           #i:I
    .end local v10           #length:I
    :cond_0
    if-eqz v8, :cond_1

    .line 532
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_1
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 537
    .end local v2           #columns:[Ljava/lang/String;
    :goto_1
    return-object v11

    .line 515
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v9       #i:I
    .restart local v10       #length:I
    :cond_2
    :try_start_1
    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 516
    new-instance v12, Lcom/jingdong/common/entity/Pack;

    invoke-direct {v12}, Lcom/jingdong/common/entity/Pack;-><init>()V

    .line 517
    .local v12, tempPack:Lcom/jingdong/common/entity/Pack;
    const-string v1, "packId"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/jingdong/common/entity/Pack;->setId(Ljava/lang/Long;)V

    .line 518
    const-string v1, "name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/jingdong/common/entity/Pack;->setName(Ljava/lang/String;)V

    .line 519
    const-string v1, "buyCount"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/jingdong/common/entity/Pack;->setNum(Ljava/lang/Integer;)V

    .line 520
    const-string v1, "childCount"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/jingdong/common/entity/Pack;->setProductCount(Ljava/lang/Integer;)V

    .line 521
    new-instance v1, Lcom/jingdong/common/entity/SourceEntity;

    const-string v3, "sourceType"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 522
    const-string v4, "sourceValue"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-virtual {v12, v1}, Lcom/jingdong/common/entity/Pack;->setSourceEntity(Lcom/jingdong/common/entity/SourceEntity;)V

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/jingdong/common/entity/Pack;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 514
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 526
    .end local v2           #columns:[Ljava/lang/String;
    .end local v9           #i:I
    .end local v10           #length:I
    .end local v12           #tempPack:Lcom/jingdong/common/entity/Pack;
    :catch_0
    move-exception v1

    .line 531
    if-eqz v8, :cond_3

    .line 532
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto/16 :goto_1

    .line 530
    :catchall_0
    move-exception v1

    .line 531
    if-eqz v8, :cond_4

    .line 532
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_4
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 535
    throw v1
.end method

.method public static declared-synchronized insertAllPacksCart(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 8
    .parameter
    .parameter "mContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/PacksTable;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, cartList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/PacksTable;>;"
    const-class v5, Lcom/jingdong/common/database/table/DB_PacksTable;

    monitor-enter v5

    const/4 v2, 0x0

    .line 43
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 45
    if-eqz p0, :cond_0

    .line 46
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lt v3, v4, :cond_1

    .line 65
    .end local v3           #i:I
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :goto_1
    monitor-exit v5

    return-void

    .line 47
    .restart local v3       #i:I
    :cond_1
    :try_start_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 48
    .local v1, contentValues:Landroid/content/ContentValues;
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/PacksTable;

    .line 49
    .local v0, cart:Lcom/jingdong/common/entity/PacksTable;
    const-string v4, "packId"

    iget-wide v6, v0, Lcom/jingdong/common/entity/PacksTable;->packId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 50
    const-string v4, "name"

    iget-object v6, v0, Lcom/jingdong/common/entity/PacksTable;->name:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v4, "buyCount"

    iget v6, v0, Lcom/jingdong/common/entity/PacksTable;->buyCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    const-string v4, "childCount"

    iget v6, v0, Lcom/jingdong/common/entity/PacksTable;->childCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 53
    const-string v4, "sourceType"

    iget-object v6, v0, Lcom/jingdong/common/entity/PacksTable;->sourceType:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v4, "sourceValue"

    iget-object v6, v0, Lcom/jingdong/common/entity/PacksTable;->sourceValue:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v4, "PacksTable"

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 46
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    .end local v0           #cart:Lcom/jingdong/common/entity/PacksTable;
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v3           #i:I
    :catch_0
    move-exception v4

    .line 65
    :try_start_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 41
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 63
    :catchall_1
    move-exception v4

    .line 65
    :try_start_4
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 66
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static declared-synchronized insertAllPacksCart(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/common/entity/Pack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 343
    .local p0, cartList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Pack;>;"
    const-class v6, Lcom/jingdong/common/database/table/DB_PacksTable;

    monitor-enter v6

    const/4 v1, 0x0

    .line 345
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 347
    if-eqz p0, :cond_0

    .line 348
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lt v2, v5, :cond_1

    .line 369
    .end local v2           #i:I
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    :goto_1
    monitor-exit v6

    return-void

    .line 349
    .restart local v2       #i:I
    :cond_1
    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 350
    .local v0, contentValues:Landroid/content/ContentValues;
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/Pack;

    .line 351
    .local v4, tempPack:Lcom/jingdong/common/entity/Pack;
    const-string v5, "packId"

    invoke-virtual {v4}, Lcom/jingdong/common/entity/Pack;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 352
    const-string v5, "name"

    invoke-virtual {v4}, Lcom/jingdong/common/entity/Pack;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v5, "buyCount"

    invoke-virtual {v4}, Lcom/jingdong/common/entity/Pack;->getNum()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 354
    const-string v5, "childCount"

    invoke-virtual {v4}, Lcom/jingdong/common/entity/Pack;->getProductCount()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 355
    invoke-virtual {v4}, Lcom/jingdong/common/entity/Pack;->getSourceEntity()Lcom/jingdong/common/entity/SourceEntity;

    move-result-object v3

    .line 356
    .local v3, sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    if-eqz v3, :cond_2

    .line 357
    const-string v5, "sourceType"

    invoke-virtual {v3}, Lcom/jingdong/common/entity/SourceEntity;->getSourceType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v5, "sourceValue"

    invoke-virtual {v3}, Lcom/jingdong/common/entity/SourceEntity;->getSourceValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_2
    const-string v5, "PacksTable"

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 348
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #i:I
    .end local v3           #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    .end local v4           #tempPack:Lcom/jingdong/common/entity/Pack;
    :catch_0
    move-exception v5

    .line 369
    :try_start_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 343
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 368
    :catchall_1
    move-exception v5

    .line 369
    :try_start_4
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 370
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static insertPacksCart(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .parameter "id"
    .parameter "name"
    .parameter "count"
    .parameter "child_count"
    .parameter "sourceType"
    .parameter "sourceValue"
    .parameter "mContext"

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 82
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 83
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 84
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v2, "packId"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 85
    const-string v2, "name"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v2, "buyCount"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const-string v2, "childCount"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string v2, "sourceType"

    invoke-virtual {v0, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v2, "sourceValue"

    invoke-virtual {v0, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v2, "PacksTable"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 100
    .end local v0           #contentValues:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v2

    .line 97
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v2

    .line 97
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 98
    throw v2
.end method

.method public static declared-synchronized insertSingletonPacksCart(Lcom/jingdong/common/entity/Pack;)V
    .locals 12
    .parameter "pack"

    .prologue
    .line 379
    const-class v11, Lcom/jingdong/common/database/table/DB_PacksTable;

    monitor-enter v11

    const/4 v0, 0x0

    .line 380
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 386
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 388
    const-string v3, "packId=?"

    .line 389
    .local v3, whereArgs:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jingdong/common/entity/Pack;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 391
    .local v4, whereValue:[Ljava/lang/String;
    const-string v1, "PacksTable"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 392
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 394
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 396
    :cond_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 397
    .local v9, contentValues:Landroid/content/ContentValues;
    const-string v1, "packId"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/Pack;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 398
    const-string v1, "name"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/Pack;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v1, "buyCount"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/Pack;->getNum()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 400
    const-string v1, "childCount"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/Pack;->getProductCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    invoke-virtual {p0}, Lcom/jingdong/common/entity/Pack;->getSourceEntity()Lcom/jingdong/common/entity/SourceEntity;

    move-result-object v10

    .line 402
    .local v10, sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    if-eqz v10, :cond_1

    .line 403
    const-string v1, "sourceType"

    invoke-virtual {v10}, Lcom/jingdong/common/entity/SourceEntity;->getSourceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v1, "sourceValue"

    invoke-virtual {v10}, Lcom/jingdong/common/entity/SourceEntity;->getSourceValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_1
    const-string v1, "PacksTable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .end local v9           #contentValues:Landroid/content/ContentValues;
    .end local v10           #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    .end local v3           #whereArgs:Ljava/lang/String;
    .end local v4           #whereValue:[Ljava/lang/String;
    :goto_0
    monitor-exit v11

    return-void

    .line 409
    :catch_0
    move-exception v1

    .line 415
    :try_start_2
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v1

    monitor-exit v11

    throw v1

    .line 414
    :catchall_1
    move-exception v1

    .line 415
    :try_start_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 416
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static queryCartByPacksId(J)Lcom/jingdong/common/entity/PacksTable;
    .locals 11
    .parameter "productId"

    .prologue
    .line 260
    const/4 v9, 0x0

    .line 261
    .local v9, cart:Lcom/jingdong/common/entity/PacksTable;
    const/4 v0, 0x0

    .line 262
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 265
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 267
    const-string v3, "packId =?"

    .line 268
    .local v3, whereArgs:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 270
    .local v4, whereValue:[Ljava/lang/String;
    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "packId"

    aput-object v5, v2, v1

    const/4 v1, 0x1

    const-string v5, "name"

    aput-object v5, v2, v1

    const/4 v1, 0x2

    const-string v5, "buyCount"

    aput-object v5, v2, v1

    const/4 v1, 0x3

    const-string v5, "childCount"

    aput-object v5, v2, v1

    const/4 v1, 0x4

    const-string v5, "sourceType"

    aput-object v5, v2, v1

    const/4 v1, 0x5

    const-string v5, "sourceValue"

    aput-object v5, v2, v1

    .line 271
    .local v2, columns:[Ljava/lang/String;
    const-string v1, "PacksTable"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 272
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 274
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 276
    new-instance v10, Lcom/jingdong/common/entity/PacksTable;

    invoke-direct {v10}, Lcom/jingdong/common/entity/PacksTable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v9           #cart:Lcom/jingdong/common/entity/PacksTable;
    .local v10, cart:Lcom/jingdong/common/entity/PacksTable;
    :try_start_1
    const-string v1, "packId"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v10, Lcom/jingdong/common/entity/PacksTable;->packId:J

    .line 278
    const-string v1, "name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/jingdong/common/entity/PacksTable;->name:Ljava/lang/String;

    .line 279
    const-string v1, "buyCount"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    iput v1, v10, Lcom/jingdong/common/entity/PacksTable;->buyCount:I

    .line 280
    const-string v1, "childCount"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v10, Lcom/jingdong/common/entity/PacksTable;->childCount:I

    .line 281
    const-string v1, "sourceType"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/jingdong/common/entity/PacksTable;->sourceType:Ljava/lang/String;

    .line 282
    const-string v1, "sourceValue"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/jingdong/common/entity/PacksTable;->sourceValue:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v10

    .line 290
    .end local v10           #cart:Lcom/jingdong/common/entity/PacksTable;
    .restart local v9       #cart:Lcom/jingdong/common/entity/PacksTable;
    :cond_0
    if-eqz v8, :cond_1

    .line 291
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 294
    :cond_1
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 297
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #whereArgs:Ljava/lang/String;
    .end local v4           #whereValue:[Ljava/lang/String;
    :goto_0
    return-object v9

    .line 285
    :catch_0
    move-exception v1

    .line 290
    :goto_1
    if-eqz v8, :cond_2

    .line 291
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 294
    :cond_2
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v1

    .line 290
    :goto_2
    if-eqz v8, :cond_3

    .line 291
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 294
    :cond_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 295
    throw v1

    .line 289
    .end local v9           #cart:Lcom/jingdong/common/entity/PacksTable;
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #whereArgs:Ljava/lang/String;
    .restart local v4       #whereValue:[Ljava/lang/String;
    .restart local v10       #cart:Lcom/jingdong/common/entity/PacksTable;
    :catchall_1
    move-exception v1

    move-object v9, v10

    .end local v10           #cart:Lcom/jingdong/common/entity/PacksTable;
    .restart local v9       #cart:Lcom/jingdong/common/entity/PacksTable;
    goto :goto_2

    .line 285
    .end local v9           #cart:Lcom/jingdong/common/entity/PacksTable;
    .restart local v10       #cart:Lcom/jingdong/common/entity/PacksTable;
    :catch_1
    move-exception v1

    move-object v9, v10

    .end local v10           #cart:Lcom/jingdong/common/entity/PacksTable;
    .restart local v9       #cart:Lcom/jingdong/common/entity/PacksTable;
    goto :goto_1
.end method

.method public static updatePacksCart(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 7
    .parameter "id"
    .parameter "name"
    .parameter "count"
    .parameter "child_count"
    .parameter "sourceType"
    .parameter "sourceValue"
    .parameter "mContext"

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 115
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 116
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 117
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v4, "packId"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 118
    const-string v4, "name"

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v4, "buyCount"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    const-string v4, "childCount"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    const-string v4, "sourceType"

    invoke-virtual {v0, v4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v4, "sourceValue"

    invoke-virtual {v0, v4, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v2, "packId =?"

    .line 124
    .local v2, whereArgs:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 125
    .local v3, whereValue:[Ljava/lang/String;
    const-string v4, "PacksTable"

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 134
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #whereArgs:Ljava/lang/String;
    .end local v3           #whereValue:[Ljava/lang/String;
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v4

    .line 132
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v4

    .line 132
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 133
    throw v4
.end method

.method public static upgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 320
    const-string v0, "drop table if exists PacksTable"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 321
    return-void
.end method
