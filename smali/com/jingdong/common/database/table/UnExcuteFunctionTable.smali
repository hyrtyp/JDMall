.class public Lcom/jingdong/common/database/table/UnExcuteFunctionTable;
.super Ljava/lang/Object;
.source "UnExcuteFunctionTable.java"


# static fields
.field public static final TB_CLOUMN_CALL_BACK:Ljava/lang/String; = "call_back"

.field public static final TB_CLOUMN_FUNCTION_ID:Ljava/lang/String; = "function_id"

.field public static final TB_CLOUMN_HOST:Ljava/lang/String; = "host"

.field public static final TB_CLOUMN_IF_NEED_LOADING_MODEL:Ljava/lang/String; = "if_need_loading_model"

.field public static final TB_CLOUMN_IF_NOTIFY_USER:Ljava/lang/String; = "if_notify_user"

.field public static final TB_CLOUMN_JSON_PARAMS:Ljava/lang/String; = "function_json_params"

.field public static final TB_CLOUMN_MD5:Ljava/lang/String; = "md5"

.field public static final TB_UN_EXCUTE_FUCTION_TABLE:Ljava/lang/String; = "un_excute_function_table"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 30
    const-string v0, "CREATE TABLE un_excute_function_table(\'_id\' INTEGER PRIMARY KEY  NOT NULL ,function_id TEXT,if_notify_user BOOLEAN,if_need_loading_model BOOLEAN,function_json_params TEXT,call_back TEXT,md5 TEXT,host TEXT) "

    .line 41
    .local v0, CREATE_TABLE_HISTORY:Ljava/lang/String;
    const-string v1, "CREATE TABLE un_excute_function_table(\'_id\' INTEGER PRIMARY KEY  NOT NULL ,function_id TEXT,if_notify_user BOOLEAN,if_need_loading_model BOOLEAN,function_json_params TEXT,call_back TEXT,md5 TEXT,host TEXT) "

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static deleteUnExcuteFunction(I)V
    .locals 7
    .parameter "id"

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 143
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 144
    const-string v1, "un_excute_function_table"

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 152
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v1

    .line 150
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v1

    .line 150
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 151
    throw v1
.end method

.method public static deleteUnExcuteFunctionWithFuctionMd5(Ljava/lang/String;)V
    .locals 5
    .parameter "md5"

    .prologue
    .line 87
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    .line 93
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 94
    const-string v1, "un_excute_function_table"

    const-string v2, "md5 = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 100
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v1

    .line 100
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 101
    throw v1
.end method

.method public static getAllUnExcuteFuntionWithFuntionId(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter "md5"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/UnExcuteFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 162
    .local v10, c:Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/UnExcuteFunction;>;"
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 165
    const-string v1, "un_excute_function_table"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "function_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "if_notify_user"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "if_need_loading_model"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "function_json_params"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "call_back"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "host"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "md5"

    aput-object v4, v2, v3

    const-string v3, "md5 = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 166
    if-eqz v10, :cond_0

    .line 167
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    .line 176
    :cond_0
    if-eqz v10, :cond_1

    .line 177
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_1
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 181
    :goto_1
    return-object v11

    .line 168
    :cond_2
    :try_start_1
    new-instance v1, Lcom/jingdong/common/entity/UnExcuteFunction;

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x3

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x4

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x7

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcom/jingdong/common/entity/UnExcuteFunction;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    .line 176
    if-eqz v10, :cond_3

    .line 177
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_1

    .line 175
    :catchall_0
    move-exception v1

    .line 176
    if-eqz v10, :cond_4

    .line 177
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_4
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 180
    throw v1
.end method

.method public static getUnExcuteFunctionList()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/UnExcuteFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 113
    .local v10, c:Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/UnExcuteFunction;>;"
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 116
    const-string v1, "un_excute_function_table"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "function_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "if_notify_user"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "if_need_loading_model"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "function_json_params"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "call_back"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "host"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "md5"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 117
    if-eqz v10, :cond_0

    .line 118
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    .line 127
    :cond_0
    if-eqz v10, :cond_1

    .line 128
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_1
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 132
    :goto_1
    return-object v11

    .line 119
    :cond_2
    :try_start_1
    new-instance v1, Lcom/jingdong/common/entity/UnExcuteFunction;

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x3

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x4

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x7

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcom/jingdong/common/entity/UnExcuteFunction;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 127
    if-eqz v10, :cond_3

    .line 128
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_1

    .line 126
    :catchall_0
    move-exception v1

    .line 127
    if-eqz v10, :cond_4

    .line 128
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_4
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 131
    throw v1
.end method

.method public static saveUnExcuteFunction(Lcom/jingdong/common/entity/UnExcuteFunction;)V
    .locals 4
    .parameter "function"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/jingdong/common/entity/UnExcuteFunction;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/common/database/table/UnExcuteFunctionTable;->deleteUnExcuteFunctionWithFuctionMd5(Ljava/lang/String;)V

    .line 57
    const/4 v1, 0x0

    .line 59
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 61
    if-eqz p0, :cond_0

    .line 62
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 63
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v2, "call_back"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/UnExcuteFunction;->getCallBack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "function_id"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/UnExcuteFunction;->getFunctionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v2, "function_json_params"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/UnExcuteFunction;->getJsonParams()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v2, "if_need_loading_model"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/UnExcuteFunction;->isIfNeedLodingModel()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 67
    const-string v2, "if_notify_user"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/UnExcuteFunction;->isIfNeedNotifyUser()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 68
    const-string v2, "host"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/UnExcuteFunction;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v2, "md5"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/UnExcuteFunction;->getMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v2, "un_excute_function_table"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v0           #contentValues:Landroid/content/ContentValues;
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 79
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v2

    .line 77
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v2

    .line 77
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 78
    throw v2
.end method

.method public static upgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 45
    const-string v0, "drop table if exists un_excute_function_table"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    return-void
.end method
