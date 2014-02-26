.class public Lcom/jingdong/app/mall/plug/framework/download/DBUpdateManger;
.super Ljava/lang/Object;
.source "DBUpdateManger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static tabbleIsExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 6
    .parameter "db"
    .parameter "tableName"

    .prologue
    const/4 v4, 0x0

    .line 42
    const/4 v2, 0x0

    .line 43
    .local v2, result:Z
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 64
    :goto_0
    return v4

    .line 48
    :cond_0
    const/4 v1, 0x0

    .line 51
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "select count(*) as c from Sqlite_master  where type =\'table\' and name =\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, sql:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 54
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 56
    .local v0, count:I
    if-lez v0, :cond_1

    .line 57
    const/4 v2, 0x1

    .line 60
    .end local v0           #count:I
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #sql:Ljava/lang/String;
    :goto_1
    move v4, v2

    .line 64
    goto :goto_0

    .line 61
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static updateTable(Landroid/database/sqlite/SQLiteDatabase;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"
    .parameter "tableName"
    .parameter "createSql"

    .prologue
    .line 28
    invoke-static {p0, p3}, Lcom/jingdong/app/mall/plug/framework/download/DBUpdateManger;->tabbleIsExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p0, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method
