.class public abstract Lcom/jd/droidlib/persist/sql/stmt/Statement;
.super Ljava/lang/Object;
.source "Statement.java"

# interfaces
.implements Lcom/jd/droidlib/contract/SQL;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<EntityType:",
        "Lcom/jd/droidlib/model/Entity;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/jd/droidlib/contract/SQL;"
    }
.end annotation


# instance fields
.field protected final db:Landroid/database/sqlite/SQLiteDatabase;

.field private selection:Ljava/lang/String;

.field private selectionArgs:[Ljava/lang/String;

.field protected final tableName:Ljava/lang/String;

.field private where:Lcom/jd/droidlib/persist/sql/stmt/Where;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0
    .parameter "db"
    .parameter "tableName"

    .prologue
    .line 39
    .local p0, this:Lcom/jd/droidlib/persist/sql/stmt/Statement;,"Lcom/jd/droidlib/persist/sql/stmt/Statement<TEntityType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/jd/droidlib/persist/sql/stmt/Statement;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    iput-object p2, p0, Lcom/jd/droidlib/persist/sql/stmt/Statement;->tableName:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method protected getSelection()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, this:Lcom/jd/droidlib/persist/sql/stmt/Statement;,"Lcom/jd/droidlib/persist/sql/stmt/Statement<TEntityType;>;"
    iget-object v1, p0, Lcom/jd/droidlib/persist/sql/stmt/Statement;->selection:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jd/droidlib/persist/sql/stmt/Statement;->where:Lcom/jd/droidlib/persist/sql/stmt/Where;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/jd/droidlib/persist/sql/stmt/Statement;->where:Lcom/jd/droidlib/persist/sql/stmt/Where;

    invoke-virtual {v1}, Lcom/jd/droidlib/persist/sql/stmt/Where;->build()Landroid/util/Pair;

    move-result-object v0

    .line 78
    .local v0, p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/Object;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/jd/droidlib/persist/sql/stmt/Statement;->selection:Ljava/lang/String;

    .line 79
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/jd/droidlib/inner/PersistUtils;->toWhereArgs([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jd/droidlib/persist/sql/stmt/Statement;->selectionArgs:[Ljava/lang/String;

    .line 81
    .end local v0           #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/Object;>;"
    :cond_0
    iget-object v1, p0, Lcom/jd/droidlib/persist/sql/stmt/Statement;->selection:Ljava/lang/String;

    iget-object v2, p0, Lcom/jd/droidlib/persist/sql/stmt/Statement;->selectionArgs:[Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    .local p0, this:Lcom/jd/droidlib/persist/sql/stmt/Statement;,"Lcom/jd/droidlib/persist/sql/stmt/Statement<TEntityType;>;"
    invoke-virtual {p0}, Lcom/jd/droidlib/persist/sql/stmt/Statement;->getSelection()Landroid/util/Pair;

    move-result-object v0

    .line 87
    .local v0, sel:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " on table \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jd/droidlib/persist/sql/stmt/Statement;->tableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', selection: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 88
    const-string v2, "\', selectionArgs: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected where(Lcom/jd/droidlib/persist/sql/stmt/Where;)Lcom/jd/droidlib/persist/sql/stmt/Statement;
    .locals 1
    .parameter "where"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jd/droidlib/persist/sql/stmt/Where;",
            ")",
            "Lcom/jd/droidlib/persist/sql/stmt/Statement",
            "<TEntityType;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, this:Lcom/jd/droidlib/persist/sql/stmt/Statement;,"Lcom/jd/droidlib/persist/sql/stmt/Statement<TEntityType;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jd/droidlib/persist/sql/stmt/Statement;->selection:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/jd/droidlib/persist/sql/stmt/Statement;->where:Lcom/jd/droidlib/persist/sql/stmt/Where;

    if-nez v0, :cond_0

    .line 60
    iput-object p1, p0, Lcom/jd/droidlib/persist/sql/stmt/Statement;->where:Lcom/jd/droidlib/persist/sql/stmt/Where;

    .line 64
    :goto_0
    return-object p0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/jd/droidlib/persist/sql/stmt/Statement;->where:Lcom/jd/droidlib/persist/sql/stmt/Where;

    invoke-virtual {v0, p1}, Lcom/jd/droidlib/persist/sql/stmt/Where;->and(Lcom/jd/droidlib/persist/sql/stmt/Where;)Lcom/jd/droidlib/persist/sql/stmt/Where;

    goto :goto_0
.end method

.method protected varargs where(Ljava/lang/String;Lcom/jd/droidlib/persist/sql/stmt/Is;[Ljava/lang/Object;)Lcom/jd/droidlib/persist/sql/stmt/Statement;
    .locals 1
    .parameter "columnName"
    .parameter "operator"
    .parameter "columnValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/jd/droidlib/persist/sql/stmt/Is;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/jd/droidlib/persist/sql/stmt/Statement",
            "<TEntityType;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Lcom/jd/droidlib/persist/sql/stmt/Statement;,"Lcom/jd/droidlib/persist/sql/stmt/Statement<TEntityType;>;"
    new-instance v0, Lcom/jd/droidlib/persist/sql/stmt/Where;

    invoke-direct {v0, p1, p2, p3}, Lcom/jd/droidlib/persist/sql/stmt/Where;-><init>(Ljava/lang/String;Lcom/jd/droidlib/persist/sql/stmt/Is;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/jd/droidlib/persist/sql/stmt/Statement;->where(Lcom/jd/droidlib/persist/sql/stmt/Where;)Lcom/jd/droidlib/persist/sql/stmt/Statement;

    move-result-object v0

    return-object v0
.end method

.method protected varargs where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/jd/droidlib/persist/sql/stmt/Statement;
    .locals 1
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/jd/droidlib/persist/sql/stmt/Statement",
            "<TEntityType;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, this:Lcom/jd/droidlib/persist/sql/stmt/Statement;,"Lcom/jd/droidlib/persist/sql/stmt/Statement<TEntityType;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jd/droidlib/persist/sql/stmt/Statement;->where:Lcom/jd/droidlib/persist/sql/stmt/Where;

    .line 70
    iput-object p1, p0, Lcom/jd/droidlib/persist/sql/stmt/Statement;->selection:Ljava/lang/String;

    .line 71
    invoke-static {p2}, Lcom/jd/droidlib/inner/PersistUtils;->toWhereArgs([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/droidlib/persist/sql/stmt/Statement;->selectionArgs:[Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method protected varargs whereId([J)Lcom/jd/droidlib/persist/sql/stmt/Statement;
    .locals 6
    .parameter "oneOrMore"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Lcom/jd/droidlib/persist/sql/stmt/Statement",
            "<TEntityType;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/jd/droidlib/persist/sql/stmt/Statement;,"Lcom/jd/droidlib/persist/sql/stmt/Statement<TEntityType;>;"
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 45
    array-length v0, p1

    if-ne v0, v2, :cond_0

    .line 46
    const-string v0, "_id"

    sget-object v1, Lcom/jd/droidlib/persist/sql/stmt/Is;->EQUAL:Lcom/jd/droidlib/persist/sql/stmt/Is;

    new-array v2, v2, [Ljava/lang/Object;

    aget-wide v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v0, v1, v2}, Lcom/jd/droidlib/persist/sql/stmt/Statement;->where(Ljava/lang/String;Lcom/jd/droidlib/persist/sql/stmt/Is;[Ljava/lang/Object;)Lcom/jd/droidlib/persist/sql/stmt/Statement;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "_id"

    sget-object v1, Lcom/jd/droidlib/persist/sql/stmt/Is;->IN:Lcom/jd/droidlib/persist/sql/stmt/Is;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {p0, v0, v1, v2}, Lcom/jd/droidlib/persist/sql/stmt/Statement;->where(Ljava/lang/String;Lcom/jd/droidlib/persist/sql/stmt/Is;[Ljava/lang/Object;)Lcom/jd/droidlib/persist/sql/stmt/Statement;

    move-result-object v0

    goto :goto_0
.end method
