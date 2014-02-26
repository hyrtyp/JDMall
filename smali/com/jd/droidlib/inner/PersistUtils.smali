.class public final Lcom/jd/droidlib/inner/PersistUtils;
.super Ljava/lang/Object;
.source "PersistUtils.java"

# interfaces
.implements Lcom/jd/droidlib/contract/SQL$DDL;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendForeignKeyDef(Lcom/jd/droidlib/inner/ann/FieldSpec;Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter
    .parameter "sb"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jd/droidlib/inner/ann/FieldSpec",
            "<",
            "Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, spec:Lcom/jd/droidlib/inner/ann/FieldSpec;,"Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;>;"
    iget-object v2, p0, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 301
    const-class v3, Lcom/jd/droidlib/model/Entity;

    .line 300
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 302
    .local v0, entityType:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/jd/droidlib/model/Entity;>;"
    invoke-static {v0}, Lcom/jd/droidlib/inner/ClassSpecRegistry;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, foreignTableName:Ljava/lang/String;
    const-string v2, "FOREIGN KEY("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    iget-object v2, p0, Lcom/jd/droidlib/inner/ann/FieldSpec;->ann:Lcom/jd/droidlib/inner/ann/Ann;

    check-cast v2, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;

    iget-object v2, v2, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const-string v2, ") REFERENCES "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string v2, "("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ON DELETE CASCADE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    return-void
.end method

.method public static buildPlaceholders(I)Ljava/lang/String;
    .locals 3
    .parameter "count"

    .prologue
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p0, :cond_0

    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 122
    :cond_0
    if-eqz v0, :cond_1

    .line 123
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_1
    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static executeInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Result:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/concurrent/Callable",
            "<TResult;>;)TResult;"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, task:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TResult;>;"
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 148
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    .line 149
    .local v1, result:Ljava/lang/Object;,"TResult;"
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 154
    .end local v1           #result:Ljava/lang/Object;,"TResult;"
    :goto_0
    return-object v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/Object;)V

    .line 153
    invoke-static {v0}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 154
    const/4 v1, 0x0

    goto :goto_0

    .line 155
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 156
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 157
    throw v2
.end method

.method public static executeStatements(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)Z
    .locals 3
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, statements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/jd/droidlib/inner/PersistUtils$1;

    invoke-direct {v1, p1, p0}, Lcom/jd/droidlib/inner/PersistUtils$1;-><init>(Ljava/util/ArrayList;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 175
    .local v1, task:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    invoke-static {p0, v1}, Lcom/jd/droidlib/inner/PersistUtils;->executeInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 176
    .local v0, result:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getAddColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "table"
    .parameter "name"
    .parameter "type"
    .parameter "nullable"
    .parameter "defaultVal"

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "ALTER TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v1, " ADD COLUMN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    if-nez p3, :cond_0

    .line 234
    const-string v1, " NOT NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v1, " DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAddMissingColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 15
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/jd/droidlib/model/Entity;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/jd/droidlib/model/Entity;>;"
    invoke-static/range {p1 .. p1}, Lcom/jd/droidlib/inner/ClassSpecRegistry;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    .line 199
    .local v13, tableName:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/jd/droidlib/inner/ClassSpecRegistry;->getTableColumnSpecs(Ljava/lang/Class;)[Lcom/jd/droidlib/inner/ann/FieldSpec;

    move-result-object v6

    .line 200
    .local v6, columnSpecs:[Lcom/jd/droidlib/inner/ann/FieldSpec;
    invoke-static {p0, v13}, Lcom/jd/droidlib/inner/PersistUtils;->getColumnNames(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 202
    .local v9, presentColumns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v7, columns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;>;>;"
    array-length v4, v6

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    .line 209
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v12, statements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 225
    return-object v12

    .line 203
    .end local v12           #statements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    aget-object v10, v6, v2

    .line 204
    .local v10, spec:Lcom/jd/droidlib/inner/ann/FieldSpec;,"Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;>;"
    iget-object v1, v10, Lcom/jd/droidlib/inner/ann/FieldSpec;->ann:Lcom/jd/droidlib/inner/ann/Ann;

    check-cast v1, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;

    iget-object v1, v1, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;->name:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 210
    .end local v10           #spec:Lcom/jd/droidlib/inner/ann/FieldSpec;,"Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;>;"
    .restart local v12       #statements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jd/droidlib/inner/ann/FieldSpec;

    .line 211
    .restart local v10       #spec:Lcom/jd/droidlib/inner/ann/FieldSpec;,"Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;>;"
    invoke-static/range {p1 .. p1}, Lcom/jd/droidlib/inner/ReflectionUtils;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jd/droidlib/model/Entity;

    .line 213
    .local v8, entity:Lcom/jd/droidlib/model/Entity;
    iget-object v1, v10, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/jd/droidlib/inner/ConverterRegistry;->getConverter(Ljava/lang/Class;)Lcom/jd/droidlib/inner/converter/Converter;

    move-result-object v0

    .line 214
    .local v0, converter:Lcom/jd/droidlib/inner/converter/Converter;,"Lcom/jd/droidlib/inner/converter/Converter<TT;>;"
    iget-object v1, v10, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    invoke-static {v8, v1}, Lcom/jd/droidlib/inner/ReflectionUtils;->getFieldVal(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v5

    .line 216
    .local v5, defaultVal:Ljava/lang/Object;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 217
    .local v3, cv:Landroid/content/ContentValues;
    iget-object v1, v10, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 218
    iget-object v2, v10, Lcom/jd/droidlib/inner/ann/FieldSpec;->componentType:Ljava/lang/Class;

    const-string v4, "key"

    .line 217
    invoke-virtual/range {v0 .. v5}, Lcom/jd/droidlib/inner/converter/Converter;->putToContentValues(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    const-string v1, "key"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 221
    iget-object v1, v10, Lcom/jd/droidlib/inner/ann/FieldSpec;->ann:Lcom/jd/droidlib/inner/ann/Ann;

    check-cast v1, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;

    iget-object v2, v1, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;->name:Ljava/lang/String;

    .line 222
    invoke-virtual {v0}, Lcom/jd/droidlib/inner/converter/Converter;->getDBColumnType()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v10, Lcom/jd/droidlib/inner/ann/FieldSpec;->ann:Lcom/jd/droidlib/inner/ann/Ann;

    check-cast v1, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;

    iget-boolean v1, v1, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;->nullable:Z

    .line 221
    invoke-static {v13, v2, v4, v1, v5}, Lcom/jd/droidlib/inner/PersistUtils;->getAddColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 223
    .local v11, statement:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static getColumnNames(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .parameter "db"
    .parameter "table"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PRAGMA table_info("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/jd/droidlib/inner/PersistUtils;->readStrings(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getCreateIndex(Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "table"
    .parameter "unique"
    .parameter "firstColumn"
    .parameter "otherColumns"

    .prologue
    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v0, columns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v1, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    const-string v2, "CREATE UNIQUE INDEX "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "idx_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-static {v0, v3}, Lcom/jd/droidlib/util/Strings;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " ON "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string v2, ", "

    invoke-static {v0, v2}, Lcom/jd/droidlib/util/Strings;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 247
    :cond_0
    const-string v2, "CREATE INDEX "

    goto :goto_0
.end method

.method public static varargs getDropTables(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter "db"
    .parameter "optionalTableNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 182
    .local v2, tableNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v3, p1

    if-nez v3, :cond_0

    .line 183
    invoke-static {p0}, Lcom/jd/droidlib/inner/PersistUtils;->getTableNames(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 187
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v0, statements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 191
    return-object v0

    .line 185
    .end local v0           #statements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 188
    .restart local v0       #statements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 189
    .local v1, tableName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static getRowCount(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .parameter "db"
    .parameter "distinct"
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 134
    if-eqz p3, :cond_0

    array-length v1, p3

    if-lez v1, :cond_0

    .line 135
    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v2, p3, v2

    aput-object v2, v9, v1

    .end local p3
    .local v9, columns:[Ljava/lang/String;
    move-object p3, v9

    .end local v9           #columns:[Ljava/lang/String;
    .restart local p3
    :cond_0
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 137
    invoke-static/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 139
    .local v11, sql:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT count(*) FROM ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 140
    .local v10, countSelection:Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-static {p0, v10, v0}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v1, v1

    return v1
.end method

.method public static getSQLCreate(Ljava/lang/String;[Lcom/jd/droidlib/inner/ann/FieldSpec;)Ljava/lang/String;
    .locals 8
    .parameter "tableName"
    .parameter "specs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/jd/droidlib/inner/ann/FieldSpec",
            "<",
            "Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .local v2, sb:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CREATE TABLE "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v4, "_id INTEGER PRIMARY KEY"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .local v1, fkSb:Ljava/lang/StringBuilder;
    array-length v6, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v6, :cond_0

    .line 293
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 294
    const-string v4, ");"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 272
    :cond_0
    aget-object v3, p1, v5

    .line 273
    .local v3, spec:Lcom/jd/droidlib/inner/ann/FieldSpec;,"Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;>;"
    const-string v7, "_id"

    iget-object v4, v3, Lcom/jd/droidlib/inner/ann/FieldSpec;->ann:Lcom/jd/droidlib/inner/ann/Ann;

    check-cast v4, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;

    iget-object v4, v4, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;->name:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 272
    :cond_1
    :goto_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 277
    :cond_2
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v4, v3, Lcom/jd/droidlib/inner/ann/FieldSpec;->ann:Lcom/jd/droidlib/inner/ann/Ann;

    check-cast v4, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;

    iget-object v4, v4, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    iget-object v4, v3, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    .line 280
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 279
    invoke-static {v4}, Lcom/jd/droidlib/inner/ConverterRegistry;->getConverter(Ljava/lang/Class;)Lcom/jd/droidlib/inner/converter/Converter;

    move-result-object v0

    .line 281
    .local v0, converter:Lcom/jd/droidlib/inner/converter/Converter;,"Lcom/jd/droidlib/inner/converter/Converter<*>;"
    invoke-virtual {v0}, Lcom/jd/droidlib/inner/converter/Converter;->getDBColumnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget-object v4, v3, Lcom/jd/droidlib/inner/ann/FieldSpec;->ann:Lcom/jd/droidlib/inner/ann/Ann;

    check-cast v4, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;

    iget-boolean v4, v4, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;->nullable:Z

    if-nez v4, :cond_3

    .line 283
    const-string v4, " NOT NULL"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_3
    iget-object v4, v3, Lcom/jd/droidlib/inner/ann/FieldSpec;->ann:Lcom/jd/droidlib/inner/ann/Ann;

    check-cast v4, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;

    iget-boolean v4, v4, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;->unique:Z

    if-eqz v4, :cond_4

    .line 286
    const-string v4, " UNIQUE"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :cond_4
    iget-object v4, v3, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/jd/droidlib/inner/TypeHelper;->isEntity(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 289
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-static {v3, v1}, Lcom/jd/droidlib/inner/PersistUtils;->appendForeignKeyDef(Lcom/jd/droidlib/inner/ann/FieldSpec;Ljava/lang/StringBuilder;)V

    goto :goto_1
.end method

.method public static getTableNames(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 2
    .parameter "db"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    .line 258
    const-string v0, "SELECT name FROM sqlite_master WHERE type=\'table\'"

    const/4 v1, 0x0

    .line 257
    invoke-static {p0, v0, v1}, Lcom/jd/droidlib/inner/PersistUtils;->readStrings(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static hasNonNull(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 2
    .parameter "obj"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readAll(Lcom/jd/droidlib/persist/sql/AbstractEntityManager;Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 2
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<EntityType:",
            "Lcom/jd/droidlib/model/Entity;",
            ">(",
            "Lcom/jd/droidlib/persist/sql/AbstractEntityManager",
            "<TEntityType;>;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<TEntityType;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, entityManager:Lcom/jd/droidlib/persist/sql/AbstractEntityManager;,"Lcom/jd/droidlib/persist/sql/AbstractEntityManager<TEntityType;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TEntityType;>;"
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 91
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 93
    return-object v0

    .line 88
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/jd/droidlib/persist/sql/AbstractEntityManager;->readRow(Landroid/database/Cursor;)Lcom/jd/droidlib/model/Entity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v1

    .line 91
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 92
    throw v1
.end method

.method public static readFirst(Lcom/jd/droidlib/persist/sql/AbstractEntityManager;Landroid/database/Cursor;)Lcom/jd/droidlib/model/Entity;
    .locals 2
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<EntityType:",
            "Lcom/jd/droidlib/model/Entity;",
            ">(",
            "Lcom/jd/droidlib/persist/sql/AbstractEntityManager",
            "<TEntityType;>;",
            "Landroid/database/Cursor;",
            ")TEntityType;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, entityManager:Lcom/jd/droidlib/persist/sql/AbstractEntityManager;,"Lcom/jd/droidlib/persist/sql/AbstractEntityManager<TEntityType;>;"
    const/4 v0, 0x0

    .line 74
    .local v0, item:Lcom/jd/droidlib/model/Entity;,"TEntityType;"
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Lcom/jd/droidlib/persist/sql/AbstractEntityManager;->readRow(Landroid/database/Cursor;)Lcom/jd/droidlib/model/Entity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 78
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 80
    return-object v0

    .line 77
    :catchall_0
    move-exception v1

    .line 78
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 79
    throw v1
.end method

.method public static readIds(Landroid/database/Cursor;)[J
    .locals 5
    .parameter "cursor"

    .prologue
    .line 58
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v0, v3, [J

    .line 59
    .local v0, arr:[J
    const/4 v1, 0x0

    .local v1, count:I
    move v2, v1

    .line 61
    .end local v1           #count:I
    .local v2, count:I
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 65
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 67
    return-object v0

    .line 62
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2           #count:I
    .restart local v1       #count:I
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v2, v1

    .end local v1           #count:I
    .restart local v2       #count:I
    goto :goto_0

    .line 64
    :catchall_0
    move-exception v3

    move v1, v2

    .line 65
    .end local v2           #count:I
    .restart local v1       #count:I
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 66
    throw v3

    .line 64
    :catchall_1
    move-exception v3

    goto :goto_1
.end method

.method private static readStrings(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 3
    .parameter "db"
    .parameter "query"
    .parameter "colIdx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v1, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 314
    .local v0, c:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 317
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 318
    return-object v1

    .line 315
    :cond_0
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static varargs toWhereArgs([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 6
    .parameter "args"

    .prologue
    .line 99
    array-length v4, p0

    new-array v2, v4, [Ljava/lang/String;

    .line 100
    .local v2, arr:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, p0

    if-lt v3, v4, :cond_0

    .line 116
    return-object v2

    .line 101
    :cond_0
    aget-object v0, p0, v3

    .line 103
    .local v0, arg:Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 104
    const-string v1, "NULL"

    .line 114
    .end local v0           #arg:Ljava/lang/Object;
    .local v1, argStr:Ljava/lang/String;
    :goto_1
    aput-object v1, v2, v3

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    .end local v1           #argStr:Ljava/lang/String;
    .restart local v0       #arg:Ljava/lang/Object;
    :cond_1
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    .line 106
    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #arg:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "1"

    .line 107
    .restart local v1       #argStr:Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 106
    .end local v1           #argStr:Ljava/lang/String;
    :cond_2
    const-string v1, "0"

    goto :goto_2

    .line 107
    .restart local v0       #arg:Ljava/lang/Object;
    :cond_3
    instance-of v4, v0, Ljava/util/Date;

    if-eqz v4, :cond_4

    .line 108
    check-cast v0, Ljava/util/Date;

    .end local v0           #arg:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 109
    .restart local v1       #argStr:Ljava/lang/String;
    goto :goto_1

    .end local v1           #argStr:Ljava/lang/String;
    .restart local v0       #arg:Ljava/lang/Object;
    :cond_4
    instance-of v4, v0, Lcom/jd/droidlib/model/Entity;

    if-eqz v4, :cond_5

    .line 110
    check-cast v0, Lcom/jd/droidlib/model/Entity;

    .end local v0           #arg:Ljava/lang/Object;
    iget-wide v4, v0, Lcom/jd/droidlib/model/Entity;->id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 111
    .restart local v1       #argStr:Ljava/lang/String;
    goto :goto_1

    .line 112
    .end local v1           #argStr:Ljava/lang/String;
    .restart local v0       #arg:Ljava/lang/Object;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #argStr:Ljava/lang/String;
    goto :goto_1
.end method
