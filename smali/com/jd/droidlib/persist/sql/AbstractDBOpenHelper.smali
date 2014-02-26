.class public abstract Lcom/jd/droidlib/persist/sql/AbstractDBOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AbstractDBOpenHelper.java"

# interfaces
.implements Lcom/jd/droidlib/contract/SQL$DDL;


# instance fields
.field private final ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "ctx"
    .parameter "name"
    .parameter "version"

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/droidlib/persist/sql/AbstractDBOpenHelper;->ctx:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method protected final varargs addMissingColumns(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Class;)Z
    .locals 5
    .parameter "db"
    .parameter "entityClasses"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lcom/jd/droidlib/model/Entity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v1, statements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 77
    invoke-virtual {p0, p1, v1}, Lcom/jd/droidlib/persist/sql/AbstractDBOpenHelper;->executeStatements(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)Z

    move-result v2

    return v2

    .line 74
    :cond_0
    aget-object v0, p2, v2

    .line 75
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/jd/droidlib/model/Entity;>;"
    invoke-static {p1, v0}, Lcom/jd/droidlib/inner/PersistUtils;->getAddMissingColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected final varargs createIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "db"
    .parameter "table"
    .parameter "unique"
    .parameter "firstColumn"
    .parameter "otherColumns"

    .prologue
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v0, statements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2, p3, p4, p5}, Lcom/jd/droidlib/inner/PersistUtils;->getCreateIndex(Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/jd/droidlib/persist/sql/AbstractDBOpenHelper;->executeStatements(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)Z

    move-result v1

    return v1
.end method

.method protected final varargs createTables(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Class;)Z
    .locals 7
    .parameter "db"
    .parameter "entityClasses"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lcom/jd/droidlib/model/Entity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v2, statements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v4, p2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 68
    invoke-virtual {p0, p1, v2}, Lcom/jd/droidlib/persist/sql/AbstractDBOpenHelper;->executeStatements(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)Z

    move-result v3

    return v3

    .line 63
    :cond_0
    aget-object v0, p2, v3

    .line 64
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/jd/droidlib/model/Entity;>;"
    invoke-static {v0}, Lcom/jd/droidlib/inner/ClassSpecRegistry;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    .line 65
    invoke-static {v0}, Lcom/jd/droidlib/inner/ClassSpecRegistry;->getTableColumnSpecs(Ljava/lang/Class;)[Lcom/jd/droidlib/inner/ann/FieldSpec;

    move-result-object v6

    .line 64
    invoke-static {v5, v6}, Lcom/jd/droidlib/inner/PersistUtils;->getSQLCreate(Ljava/lang/String;[Lcom/jd/droidlib/inner/ann/FieldSpec;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, query:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected final varargs dropTables(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)Z
    .locals 2
    .parameter "db"
    .parameter "optionalTableNames"

    .prologue
    .line 82
    invoke-static {p1, p2}, Lcom/jd/droidlib/inner/PersistUtils;->getDropTables(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 84
    .local v0, statements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, v0}, Lcom/jd/droidlib/persist/sql/AbstractDBOpenHelper;->executeStatements(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)Z

    move-result v1

    return v1
.end method

.method protected final executeStatements(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)Z
    .locals 1
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
    .line 89
    .local p2, statements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/jd/droidlib/inner/PersistUtils;->executeStatements(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jd/droidlib/persist/sql/AbstractDBOpenHelper;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/jd/droidlib/persist/sql/AbstractDBOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/jd/droidlib/persist/sql/AbstractDBOpenHelper;->onCreateTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 98
    return-void
.end method

.method protected abstract onCreateTables(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const-string v0, "PRAGMA foreign_keys = ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jd/droidlib/persist/sql/AbstractDBOpenHelper;->onOpenExtra(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 106
    return-void
.end method

.method protected onOpenExtra(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 48
    return-void
.end method
