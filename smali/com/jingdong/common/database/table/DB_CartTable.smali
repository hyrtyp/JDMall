.class public Lcom/jingdong/common/database/table/DB_CartTable;
.super Ljava/lang/Object;
.source "DB_CartTable.java"


# static fields
.field public static final TB_CART_TABLE:Ljava/lang/String; = "CartTable"

.field public static final TB_CLOUMN_BUY_COUNT:Ljava/lang/String; = "buyCount"

.field public static final TB_CLOUMN_EXTEND:Ljava/lang/String; = "extendProt"

.field public static final TB_CLOUMN_PACKS_CODE:Ljava/lang/String; = "packId"

.field public static final TB_CLOUMN_PRODUCT_CODE:Ljava/lang/String; = "productCode"

.field public static final TB_CLOUMN_PRODUCT_NAME:Ljava/lang/String; = "name"

.field public static final TB_CLOUMN_SOURCE_TYPE:Ljava/lang/String; = "sourceType"

.field public static final TB_CLOUMN_SOURCE_VALUE:Ljava/lang/String; = "sourceValue"

.field public static final TB_CLOUMN_USER_NAME:Ljava/lang/String; = "userName"


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
    .line 290
    const-string v0, "CREATE TABLE CartTable(\'id\' INTEGER PRIMARY KEY  NOT NULL ,name TEXT,productCode LONG,sourceType TEXT,sourceValue TEXT,buyCount \'browseTime\' DATETIME DEFAULT CURRENT_TIMESTAMP)"

    .line 299
    .local v0, CREATE_TABLE_CART:Ljava/lang/String;
    const-string v1, "CREATE TABLE CartTable(\'id\' INTEGER PRIMARY KEY  NOT NULL ,name TEXT,productCode LONG,sourceType TEXT,sourceValue TEXT,buyCount \'browseTime\' DATETIME DEFAULT CURRENT_TIMESTAMP)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public static delAllCart()V
    .locals 4

    .prologue
    .line 459
    const/4 v0, 0x0

    .line 461
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 463
    const-string v1, "1=1"

    .line 464
    .local v1, whereClause:Ljava/lang/String;
    const-string v2, "CartTable"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 472
    .end local v1           #whereClause:Ljava/lang/String;
    :goto_0
    return-void

    .line 465
    :catch_0
    move-exception v2

    .line 470
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 469
    :catchall_0
    move-exception v2

    .line 470
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 471
    throw v2
.end method

.method public static delAllCart(Landroid/content/Context;)V
    .locals 4
    .parameter "mContext"

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 159
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 161
    const-string v1, "1=1"

    .line 162
    .local v1, whereClause:Ljava/lang/String;
    const-string v2, "CartTable"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 170
    .end local v1           #whereClause:Ljava/lang/String;
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v2

    .line 168
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v2

    .line 168
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 169
    throw v2
.end method

.method public static delAllCartNoListener()V
    .locals 4

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 180
    const-string v1, "1=1"

    .line 181
    .local v1, whereClause:Ljava/lang/String;
    const-string v2, "CartTable"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 189
    .end local v1           #whereClause:Ljava/lang/String;
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v2

    .line 187
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v2

    .line 187
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 188
    throw v2
.end method

.method public static delCart(JLandroid/content/Context;)V
    .locals 7
    .parameter "id"
    .parameter "mContext"

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 137
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 138
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 139
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v4, "productCode"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 140
    const-string v2, "productCode =?"

    .line 141
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

    .line 142
    .local v3, whereValue:[Ljava/lang/String;
    const-string v4, "CartTable"

    invoke-virtual {v1, v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 150
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #whereArgs:Ljava/lang/String;
    .end local v3           #whereValue:[Ljava/lang/String;
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v4

    .line 148
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v4

    .line 148
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 149
    throw v4
.end method

.method public static getCartList()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CartTable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v12, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CartTable;>;"
    const/4 v8, 0x0

    .line 204
    .local v8, c:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 207
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 212
    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "productCode"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "name"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "buyCount"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "sourceType"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "sourceValue"

    aput-object v3, v2, v1

    .line 213
    .local v2, columns:[Ljava/lang/String;
    const-string v1, "CartTable"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 214
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 216
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 218
    .local v11, length:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-lt v10, v11, :cond_2

    .line 234
    .end local v10           #i:I
    .end local v11           #length:I
    :cond_0
    if-eqz v8, :cond_1

    .line 235
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_1
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 241
    .end local v2           #columns:[Ljava/lang/String;
    :goto_1
    return-object v12

    .line 219
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v10       #i:I
    .restart local v11       #length:I
    :cond_2
    :try_start_1
    invoke-interface {v8, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 220
    new-instance v9, Lcom/jingdong/common/entity/CartTable;

    invoke-direct {v9}, Lcom/jingdong/common/entity/CartTable;-><init>()V

    .line 221
    .local v9, cart:Lcom/jingdong/common/entity/CartTable;
    const-string v1, "productCode"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v9, Lcom/jingdong/common/entity/CartTable;->productCode:J

    .line 222
    const-string v1, "name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/jingdong/common/entity/CartTable;->name:Ljava/lang/String;

    .line 223
    const-string v1, "buyCount"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    iput v1, v9, Lcom/jingdong/common/entity/CartTable;->buyCount:I

    .line 224
    const-string v1, "sourceType"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/jingdong/common/entity/CartTable;->sourceType:Ljava/lang/String;

    .line 225
    const-string v1, "sourceValue"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/jingdong/common/entity/CartTable;->sourceValue:Ljava/lang/String;

    .line 226
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 218
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 229
    .end local v2           #columns:[Ljava/lang/String;
    .end local v9           #cart:Lcom/jingdong/common/entity/CartTable;
    .end local v10           #i:I
    .end local v11           #length:I
    :catch_0
    move-exception v1

    .line 234
    if-eqz v8, :cond_3

    .line 235
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_1

    .line 233
    :catchall_0
    move-exception v1

    .line 234
    if-eqz v8, :cond_4

    .line 235
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_4
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 239
    throw v1
.end method

.method public static getCartListForProduct()Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jingdong/common/entity/Product;",
            ">;"
        }
    .end annotation

    .prologue
    .line 481
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 482
    .local v11, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jingdong/common/entity/Product;>;"
    const/4 v8, 0x0

    .line 483
    .local v8, c:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 485
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 487
    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "productCode"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "name"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "buyCount"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "sourceType"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "sourceValue"

    aput-object v3, v2, v1

    .line 488
    .local v2, columns:[Ljava/lang/String;
    const-string v1, "CartTable"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 489
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 491
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 493
    .local v10, length:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-lt v9, v10, :cond_2

    .line 510
    .end local v9           #i:I
    .end local v10           #length:I
    :cond_0
    if-eqz v8, :cond_1

    .line 511
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 513
    :cond_1
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 516
    .end local v2           #columns:[Ljava/lang/String;
    :goto_1
    return-object v11

    .line 494
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v9       #i:I
    .restart local v10       #length:I
    :cond_2
    :try_start_1
    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 495
    new-instance v12, Lcom/jingdong/common/entity/Product;

    invoke-direct {v12}, Lcom/jingdong/common/entity/Product;-><init>()V

    .line 496
    .local v12, tempProduct:Lcom/jingdong/common/entity/Product;
    const-string v1, "productCode"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/jingdong/common/entity/Product;->setId(Ljava/lang/Long;)V

    .line 497
    const-string v1, "name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/jingdong/common/entity/Product;->setName(Ljava/lang/String;)V

    .line 498
    const-string v1, "buyCount"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/jingdong/common/entity/Product;->setNum(Ljava/lang/Integer;)V

    .line 499
    new-instance v1, Lcom/jingdong/common/entity/SourceEntity;

    const-string v3, "sourceType"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 500
    const-string v4, "sourceValue"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-virtual {v12, v1}, Lcom/jingdong/common/entity/Product;->setSourceEntity(Lcom/jingdong/common/entity/SourceEntity;)V

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 493
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 504
    .end local v2           #columns:[Ljava/lang/String;
    .end local v9           #i:I
    .end local v10           #length:I
    .end local v12           #tempProduct:Lcom/jingdong/common/entity/Product;
    :catch_0
    move-exception v1

    .line 510
    if-eqz v8, :cond_3

    .line 511
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 513
    :cond_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_1

    .line 509
    :catchall_0
    move-exception v1

    .line 510
    if-eqz v8, :cond_4

    .line 511
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 513
    :cond_4
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 514
    throw v1
.end method

.method public static declared-synchronized insertAllCart(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 8
    .parameter
    .parameter "mContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CartTable;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, cartList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CartTable;>;"
    const-class v5, Lcom/jingdong/common/database/table/DB_CartTable;

    monitor-enter v5

    :try_start_0
    invoke-static {p1}, Lcom/jingdong/common/database/table/DB_CartTable;->delAllCart(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    const/4 v2, 0x0

    .line 43
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 45
    if-eqz p0, :cond_0

    .line 46
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-lt v3, v4, :cond_1

    .line 63
    .end local v3           #i:I
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    :goto_1
    monitor-exit v5

    return-void

    .line 47
    .restart local v3       #i:I
    :cond_1
    :try_start_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 48
    .local v1, contentValues:Landroid/content/ContentValues;
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/CartTable;

    .line 49
    .local v0, cart:Lcom/jingdong/common/entity/CartTable;
    const-string v4, "productCode"

    iget-wide v6, v0, Lcom/jingdong/common/entity/CartTable;->productCode:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 50
    const-string v4, "name"

    iget-object v6, v0, Lcom/jingdong/common/entity/CartTable;->name:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v4, "buyCount"

    iget v6, v0, Lcom/jingdong/common/entity/CartTable;->buyCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    const-string v4, "sourceType"

    iget-object v6, v0, Lcom/jingdong/common/entity/CartTable;->sourceType:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v4, "sourceValue"

    iget-object v6, v0, Lcom/jingdong/common/entity/CartTable;->sourceValue:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v4, "CartTable"

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 46
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    .end local v0           #cart:Lcom/jingdong/common/entity/CartTable;
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v3           #i:I
    :catch_0
    move-exception v4

    .line 63
    :try_start_4
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 40
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 62
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v4

    .line 63
    :try_start_5
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 64
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public static declared-synchronized insertAllCart(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, product:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Product;>;"
    const-class v6, Lcom/jingdong/common/database/table/DB_CartTable;

    monitor-enter v6

    const/4 v2, 0x0

    .line 333
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 335
    if-eqz p0, :cond_0

    .line 336
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lt v3, v5, :cond_1

    .line 356
    .end local v3           #i:I
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    :goto_1
    monitor-exit v6

    return-void

    .line 337
    .restart local v3       #i:I
    :cond_1
    :try_start_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 338
    .local v1, contentValues:Landroid/content/ContentValues;
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/Product;

    .line 339
    .local v0, cart:Lcom/jingdong/common/entity/Product;
    const-string v5, "productCode"

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 340
    const-string v5, "name"

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v5, "buyCount"

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getNum()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 342
    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getSourceEntity()Lcom/jingdong/common/entity/SourceEntity;

    move-result-object v4

    .line 343
    .local v4, sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    if-eqz v4, :cond_2

    .line 344
    const-string v5, "sourceType"

    invoke-virtual {v4}, Lcom/jingdong/common/entity/SourceEntity;->getSourceType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v5, "sourceValue"

    invoke-virtual {v4}, Lcom/jingdong/common/entity/SourceEntity;->getSourceValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_2
    const-string v5, "CartTable"

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 336
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 351
    .end local v0           #cart:Lcom/jingdong/common/entity/Product;
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v3           #i:I
    .end local v4           #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    :catch_0
    move-exception v5

    .line 356
    :try_start_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 331
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 355
    :catchall_1
    move-exception v5

    .line 356
    :try_start_4
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 357
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static insertCart(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .parameter "id"
    .parameter "name"
    .parameter "count"
    .parameter "sourceType"
    .parameter "sourceValue"
    .parameter "mContext"

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 81
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 82
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 83
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v2, "productCode"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 84
    const-string v2, "name"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "buyCount"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    const-string v2, "sourceType"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v2, "sourceValue"

    invoke-virtual {v0, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "CartTable"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 97
    .end local v0           #contentValues:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v2

    .line 94
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v2

    .line 94
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 95
    throw v2
.end method

.method public static insertSingletonCart(Lcom/jingdong/common/entity/Product;)V
    .locals 11
    .parameter "product"

    .prologue
    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 375
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 377
    const-string v3, "productCode=?"

    .line 378
    .local v3, whereArgs:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 380
    .local v4, whereValue:[Ljava/lang/String;
    const-string v1, "CartTable"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 381
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 383
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 384
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 385
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 386
    .local v9, contentValues:Landroid/content/ContentValues;
    const-string v1, "productCode"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 387
    const-string v1, "name"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v1, "buyCount"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/Product;->getNum()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    invoke-virtual {p0}, Lcom/jingdong/common/entity/Product;->getSourceEntity()Lcom/jingdong/common/entity/SourceEntity;

    move-result-object v10

    .line 390
    .local v10, sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    if-eqz v10, :cond_1

    .line 391
    const-string v1, "sourceType"

    invoke-virtual {v10}, Lcom/jingdong/common/entity/SourceEntity;->getSourceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v1, "sourceValue"

    invoke-virtual {v10}, Lcom/jingdong/common/entity/SourceEntity;->getSourceValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_1
    const-string v1, "CartTable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    .end local v9           #contentValues:Landroid/content/ContentValues;
    .end local v10           #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    :cond_2
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 405
    .end local v3           #whereArgs:Ljava/lang/String;
    .end local v4           #whereValue:[Ljava/lang/String;
    :goto_0
    return-void

    .line 396
    :catch_0
    move-exception v1

    .line 402
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 401
    :catchall_0
    move-exception v1

    .line 402
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 403
    throw v1
.end method

.method public static queryCartByProductId(J)Lcom/jingdong/common/entity/CartTable;
    .locals 11
    .parameter "productId"

    .prologue
    .line 249
    const/4 v9, 0x0

    .line 250
    .local v9, cart:Lcom/jingdong/common/entity/CartTable;
    const/4 v0, 0x0

    .line 251
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 253
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 255
    const-string v3, "productCode =?"

    .line 256
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

    .line 258
    .local v4, whereValue:[Ljava/lang/String;
    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "productCode"

    aput-object v5, v2, v1

    const/4 v1, 0x1

    const-string v5, "name"

    aput-object v5, v2, v1

    const/4 v1, 0x2

    const-string v5, "buyCount"

    aput-object v5, v2, v1

    const/4 v1, 0x3

    const-string v5, "sourceType"

    aput-object v5, v2, v1

    const/4 v1, 0x4

    const-string v5, "sourceValue"

    aput-object v5, v2, v1

    .line 259
    .local v2, columns:[Ljava/lang/String;
    const-string v1, "CartTable"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 260
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 261
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 263
    new-instance v10, Lcom/jingdong/common/entity/CartTable;

    invoke-direct {v10}, Lcom/jingdong/common/entity/CartTable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v9           #cart:Lcom/jingdong/common/entity/CartTable;
    .local v10, cart:Lcom/jingdong/common/entity/CartTable;
    :try_start_1
    const-string v1, "productCode"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v10, Lcom/jingdong/common/entity/CartTable;->productCode:J

    .line 265
    const-string v1, "name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/jingdong/common/entity/CartTable;->name:Ljava/lang/String;

    .line 266
    const-string v1, "buyCount"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    iput v1, v10, Lcom/jingdong/common/entity/CartTable;->buyCount:I

    .line 267
    const-string v1, "sourceType"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/jingdong/common/entity/CartTable;->sourceType:Ljava/lang/String;

    .line 268
    const-string v1, "sourceValue"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/jingdong/common/entity/CartTable;->sourceValue:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v10

    .line 275
    .end local v10           #cart:Lcom/jingdong/common/entity/CartTable;
    .restart local v9       #cart:Lcom/jingdong/common/entity/CartTable;
    :cond_0
    if-eqz v8, :cond_1

    .line 276
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 278
    :cond_1
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 281
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #whereArgs:Ljava/lang/String;
    .end local v4           #whereValue:[Ljava/lang/String;
    :goto_0
    return-object v9

    .line 270
    :catch_0
    move-exception v1

    .line 275
    :goto_1
    if-eqz v8, :cond_2

    .line 276
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 278
    :cond_2
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v1

    .line 275
    :goto_2
    if-eqz v8, :cond_3

    .line 276
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 278
    :cond_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 279
    throw v1

    .line 274
    .end local v9           #cart:Lcom/jingdong/common/entity/CartTable;
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #whereArgs:Ljava/lang/String;
    .restart local v4       #whereValue:[Ljava/lang/String;
    .restart local v10       #cart:Lcom/jingdong/common/entity/CartTable;
    :catchall_1
    move-exception v1

    move-object v9, v10

    .end local v10           #cart:Lcom/jingdong/common/entity/CartTable;
    .restart local v9       #cart:Lcom/jingdong/common/entity/CartTable;
    goto :goto_2

    .line 270
    .end local v9           #cart:Lcom/jingdong/common/entity/CartTable;
    .restart local v10       #cart:Lcom/jingdong/common/entity/CartTable;
    :catch_1
    move-exception v1

    move-object v9, v10

    .end local v10           #cart:Lcom/jingdong/common/entity/CartTable;
    .restart local v9       #cart:Lcom/jingdong/common/entity/CartTable;
    goto :goto_1
.end method

.method public static updateCart(JLjava/lang/String;ILandroid/content/Context;)V
    .locals 8
    .parameter "id"
    .parameter "name"
    .parameter "count"
    .parameter "mContext"

    .prologue
    const/4 v4, 0x0

    .line 102
    const/4 v7, 0x0

    move-wide v0, p0

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Lcom/jingdong/common/database/table/DB_CartTable;->updateCart(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 103
    return-void
.end method

.method public static updateCart(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 8
    .parameter "id"
    .parameter "name"
    .parameter "count"
    .parameter "sourceType"
    .parameter "sourceValue"
    .parameter "mContext"

    .prologue
    .line 99
    const/4 v7, 0x1

    move-wide v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/jingdong/common/database/table/DB_CartTable;->updateCart(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 100
    return-void
.end method

.method public static updateCart(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 7
    .parameter "id"
    .parameter "name"
    .parameter "count"
    .parameter "sourceType"
    .parameter "sourceValue"
    .parameter "mContext"
    .parameter "isUpdateSource"

    .prologue
    .line 105
    const/4 v1, 0x0

    .line 107
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 108
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 109
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v4, "productCode"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    const-string v4, "name"

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v4, "buyCount"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    if-eqz p7, :cond_0

    .line 113
    const-string v4, "sourceType"

    invoke-virtual {v0, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v4, "sourceValue"

    invoke-virtual {v0, v4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    const-string v2, "productCode =?"

    .line 117
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

    .line 118
    .local v3, whereValue:[Ljava/lang/String;
    const-string v4, "CartTable"

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 126
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #whereArgs:Ljava/lang/String;
    .end local v3           #whereValue:[Ljava/lang/String;
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v4

    .line 124
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v4

    .line 124
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 125
    throw v4
.end method

.method public static upgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 306
    const-string v0, "drop table if exists CartTable"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 307
    return-void
.end method
