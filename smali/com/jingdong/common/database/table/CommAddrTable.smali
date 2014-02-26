.class public Lcom/jingdong/common/database/table/CommAddrTable;
.super Ljava/lang/Object;
.source "CommAddrTable.java"


# static fields
.field public static final COMMON_ADDR_TABLE_NAME:Ljava/lang/String; = "comm_addr"

.field public static final TB_COLUMN_AREA:Ljava/lang/String; = "area"

.field public static final TB_COLUMN_AREA_CODE:Ljava/lang/String; = "areacode"

.field public static final TB_COLUMN_CITY:Ljava/lang/String; = "city"

.field public static final TB_COLUMN_CITY_CODE:Ljava/lang/String; = "citycode"

.field public static final TB_COLUMN_MAIL:Ljava/lang/String; = "mail"

.field public static final TB_COLUMN_MOBILE:Ljava/lang/String; = "mobile"

.field public static final TB_COLUMN_PROVINCE:Ljava/lang/String; = "province"

.field public static final TB_COLUMN_PROVINCE_CODE:Ljava/lang/String; = "provincecode"

.field public static final TB_COLUMN_USER_NAME:Ljava/lang/String; = "user_name"

.field public static final TB_COLUMN_WHERE:Ljava/lang/String; = "swhere"

.field public static final TB_COLUMN_ZIP:Ljava/lang/String; = "zip"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 132
    const-string v0, "CREATE TABLE comm_addr(\'id\' INTEGER PRIMARY KEY  NOT NULL ,user_name TEXT,mobile TEXT,province TEXT,city TEXT,area TEXT,swhere TEXT,zip TEXT,mail TEXT,provincecode INTEGER,citycode INTEGER,areacode INTEGER)"

    .line 146
    .local v0, CREATE_TABLE_COMM_ADDR:Ljava/lang/String;
    const-string v1, "CREATE TABLE comm_addr(\'id\' INTEGER PRIMARY KEY  NOT NULL ,user_name TEXT,mobile TEXT,province TEXT,city TEXT,area TEXT,swhere TEXT,zip TEXT,mail TEXT,provincecode INTEGER,citycode INTEGER,areacode INTEGER)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public static delCommAddr(I)V
    .locals 7
    .parameter "id"

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 59
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 60
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 61
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v4, "id"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    const-string v2, "id =?"

    .line 63
    .local v2, whereArgs:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 64
    .local v3, whereValue:[Ljava/lang/String;
    const-string v4, "comm_addr"

    invoke-virtual {v1, v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 74
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #whereArgs:Ljava/lang/String;
    .end local v3           #whereValue:[Ljava/lang/String;
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v4

    .line 70
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v4

    .line 70
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 73
    throw v4
.end method

.method public static getCommAddrList()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CommAddr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v12, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CommAddr;>;"
    const/4 v9, 0x0

    .line 80
    .local v9, c:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 83
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 88
    const/16 v1, 0xb

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "user_name"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "mobile"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "province"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "city"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    .line 89
    const-string v3, "area"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "swhere"

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string v3, "zip"

    aput-object v3, v2, v1

    const/4 v1, 0x7

    const-string v3, "mail"

    aput-object v3, v2, v1

    const/16 v1, 0x8

    const-string v3, "provincecode"

    aput-object v3, v2, v1

    const/16 v1, 0x9

    .line 90
    const-string v3, "citycode"

    aput-object v3, v2, v1

    const/16 v1, 0xa

    const-string v3, "areacode"

    aput-object v3, v2, v1

    .line 91
    .local v2, columns:[Ljava/lang/String;
    const-string v1, "comm_addr"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 92
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 93
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 95
    .local v11, length:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-lt v10, v11, :cond_2

    .line 117
    .end local v10           #i:I
    .end local v11           #length:I
    :cond_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_1
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 124
    .end local v2           #columns:[Ljava/lang/String;
    :goto_1
    return-object v12

    .line 96
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v10       #i:I
    .restart local v11       #length:I
    :cond_2
    :try_start_1
    invoke-interface {v9, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 97
    new-instance v8, Lcom/jingdong/common/entity/CommAddr;

    invoke-direct {v8}, Lcom/jingdong/common/entity/CommAddr;-><init>()V

    .line 98
    .local v8, addr:Lcom/jingdong/common/entity/CommAddr;
    const-string v1, "user_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/jingdong/common/entity/CommAddr;->sUser_name:Ljava/lang/String;

    .line 99
    const-string v1, "mobile"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/jingdong/common/entity/CommAddr;->sMobile:Ljava/lang/String;

    .line 100
    const-string v1, "province"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/jingdong/common/entity/CommAddr;->sProvince:Ljava/lang/String;

    .line 101
    const-string v1, "city"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/jingdong/common/entity/CommAddr;->sCity:Ljava/lang/String;

    .line 102
    const-string v1, "area"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/jingdong/common/entity/CommAddr;->sArea:Ljava/lang/String;

    .line 103
    const-string v1, "swhere"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/jingdong/common/entity/CommAddr;->sWhere:Ljava/lang/String;

    .line 104
    const-string v1, "zip"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/jingdong/common/entity/CommAddr;->sZip:Ljava/lang/String;

    .line 105
    const-string v1, "mail"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/jingdong/common/entity/CommAddr;->sMail:Ljava/lang/String;

    .line 106
    const-string v1, "provincecode"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v8, Lcom/jingdong/common/entity/CommAddr;->province_code:I

    .line 107
    const-string v1, "citycode"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v8, Lcom/jingdong/common/entity/CommAddr;->city_code:I

    .line 108
    const-string v1, "areacode"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v8, Lcom/jingdong/common/entity/CommAddr;->area_code:I

    .line 109
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 112
    .end local v2           #columns:[Ljava/lang/String;
    .end local v8           #addr:Lcom/jingdong/common/entity/CommAddr;
    .end local v10           #i:I
    .end local v11           #length:I
    :catch_0
    move-exception v1

    .line 117
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 118
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto/16 :goto_1

    .line 116
    :catchall_0
    move-exception v1

    .line 117
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 118
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_4
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 122
    throw v1
.end method

.method public static insertCommAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 4
    .parameter "user_name"
    .parameter "mobile"
    .parameter "province"
    .parameter "city"
    .parameter "area"
    .parameter "where"
    .parameter "zip"
    .parameter "mail"
    .parameter "provincecode"
    .parameter "citycode"
    .parameter "areacode"

    .prologue
    .line 28
    const/4 v1, 0x0

    .line 30
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 32
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 33
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v2, "user_name"

    invoke-virtual {v0, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v2, "mobile"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v2, "province"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v2, "city"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v2, "area"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v2, "swhere"

    invoke-virtual {v0, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v2, "zip"

    invoke-virtual {v0, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v2, "mail"

    invoke-virtual {v0, v2, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v2, "provincecode"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 42
    const-string v2, "citycode"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 43
    const-string v2, "areacode"

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 44
    const-string v2, "comm_addr"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 54
    .end local v0           #contentValues:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v2

    .line 50
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v2

    .line 50
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 52
    throw v2
.end method

.method public static upgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 153
    const-string v0, "drop table if exists comm_addr"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 154
    return-void
.end method
