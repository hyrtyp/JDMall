.class public Lcom/jd/droidlib/inner/converter/EntityConverter;
.super Lcom/jd/droidlib/inner/converter/ModelConverter;
.source "EntityConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/jd/droidlib/inner/converter/ModelConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandle(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcom/jd/droidlib/inner/TypeHelper;->isEntity(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public getDBColumnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, " INTEGER"

    return-object v0
.end method

.method protected parseFromString(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lcom/jd/droidlib/model/Model;
    .locals 3
    .parameter
    .parameter
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<",
            "Lcom/jd/droidlib/model/Model;",
            ">;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/jd/droidlib/model/Model;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, valType:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/jd/droidlib/model/Model;>;"
    .local p2, componentType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    const-string v1, "{"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/jd/droidlib/inner/converter/ModelConverter;->parseFromString(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lcom/jd/droidlib/model/Model;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 61
    :cond_0
    invoke-static {p1}, Lcom/jd/droidlib/inner/ReflectionUtils;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jd/droidlib/model/Entity;

    .line 62
    .local v0, entity:Lcom/jd/droidlib/model/Entity;
    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jd/droidlib/model/Entity;->id:J

    goto :goto_0
.end method

.method public putToContentValues(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/ContentValues;Ljava/lang/String;Lcom/jd/droidlib/model/Model;)V
    .locals 2
    .parameter
    .parameter
    .parameter "cv"
    .parameter "key"
    .parameter "val"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<",
            "Lcom/jd/droidlib/model/Model;",
            ">;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "Lcom/jd/droidlib/model/Model;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, valueType:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/jd/droidlib/model/Model;>;"
    .local p2, componentType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    check-cast p5, Lcom/jd/droidlib/model/Entity;

    .end local p5
    iget-wide v0, p5, Lcom/jd/droidlib/model/Entity;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 43
    return-void
.end method

.method public readFromCursor(Ljava/lang/Class;Ljava/lang/Class;Landroid/database/Cursor;I)Lcom/jd/droidlib/model/Entity;
    .locals 3
    .parameter
    .parameter
    .parameter "cursor"
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<",
            "Lcom/jd/droidlib/model/Model;",
            ">;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Landroid/database/Cursor;",
            "I)",
            "Lcom/jd/droidlib/model/Entity;"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, valType:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/jd/droidlib/model/Model;>;"
    .local p2, componentType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 49
    .local v1, id:J
    invoke-static {p1}, Lcom/jd/droidlib/inner/ReflectionUtils;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jd/droidlib/model/Entity;

    .line 50
    .local v0, entity:Lcom/jd/droidlib/model/Entity;
    iput-wide v1, v0, Lcom/jd/droidlib/model/Entity;->id:J

    .line 51
    return-object v0
.end method

.method public bridge synthetic readFromCursor(Ljava/lang/Class;Ljava/lang/Class;Landroid/database/Cursor;I)Lcom/jd/droidlib/model/Model;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jd/droidlib/inner/converter/EntityConverter;->readFromCursor(Ljava/lang/Class;Ljava/lang/Class;Landroid/database/Cursor;I)Lcom/jd/droidlib/model/Entity;

    move-result-object v0

    return-object v0
.end method
