.class public Lcom/jd/droidlib/persist/sql/EntityManager;
.super Lcom/jd/droidlib/persist/sql/AbstractEntityManager;
.source "EntityManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<EntityType:",
        "Lcom/jd/droidlib/model/Entity;",
        ">",
        "Lcom/jd/droidlib/persist/sql/AbstractEntityManager",
        "<TEntityType;>;"
    }
.end annotation


# instance fields
.field private final cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TEntityType;>;"
        }
    .end annotation
.end field

.field private final ctx:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectDependency;
    .end annotation
.end field

.field private eagerForeignKeyColumnNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TEntityType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Lcom/jd/droidlib/persist/sql/EntityManager;,"Lcom/jd/droidlib/persist/sql/EntityManager<TEntityType;>;"
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<TEntityType;>;"
    invoke-direct {p0}, Lcom/jd/droidlib/persist/sql/AbstractEntityManager;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/jd/droidlib/persist/sql/EntityManager;->cls:Ljava/lang/Class;

    .line 55
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/droidlib/persist/sql/EntityManager;->ctx:Landroid/content/Context;

    .line 56
    invoke-static {p2, p0}, Lcom/jd/droidlib/Injector;->inject(Landroid/content/Context;Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter
    .parameter "ctx"
    .parameter "db"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TEntityType;>;",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lcom/jd/droidlib/persist/sql/EntityManager;,"Lcom/jd/droidlib/persist/sql/EntityManager<TEntityType;>;"
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<TEntityType;>;"
    invoke-direct {p0}, Lcom/jd/droidlib/persist/sql/AbstractEntityManager;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/jd/droidlib/persist/sql/EntityManager;->cls:Ljava/lang/Class;

    .line 62
    iput-object p2, p0, Lcom/jd/droidlib/persist/sql/EntityManager;->ctx:Landroid/content/Context;

    .line 63
    iput-object p3, p0, Lcom/jd/droidlib/persist/sql/EntityManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 64
    return-void
.end method

.method private subManager(Ljava/lang/Class;)Lcom/jd/droidlib/persist/sql/EntityManager;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/jd/droidlib/persist/sql/EntityManager",
            "<",
            "Lcom/jd/droidlib/model/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, this:Lcom/jd/droidlib/persist/sql/EntityManager;,"Lcom/jd/droidlib/persist/sql/EntityManager<TEntityType;>;"
    .local p1, entityType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Lcom/jd/droidlib/persist/sql/EntityManager;

    iget-object v1, p0, Lcom/jd/droidlib/persist/sql/EntityManager;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/jd/droidlib/persist/sql/EntityManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, p1, v1, v2}, Lcom/jd/droidlib/persist/sql/EntityManager;-><init>(Ljava/lang/Class;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method


# virtual methods
.method protected createForeignKeys(Lcom/jd/droidlib/model/Entity;)V
    .locals 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntityType;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, this:Lcom/jd/droidlib/persist/sql/EntityManager;,"Lcom/jd/droidlib/persist/sql/EntityManager<TEntityType;>;"
    .local p1, item:Lcom/jd/droidlib/model/Entity;,"TEntityType;"
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/jd/droidlib/persist/sql/EntityManager;->cls:Ljava/lang/Class;

    invoke-static {v9}, Lcom/jd/droidlib/inner/ClassSpecRegistry;->getTableColumnSpecs(Ljava/lang/Class;)[Lcom/jd/droidlib/inner/ann/FieldSpec;

    move-result-object v3

    .line 165
    .local v3, columnSpecs:[Lcom/jd/droidlib/inner/ann/FieldSpec;
    array-length v11, v3

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-lt v10, v11, :cond_0

    .line 200
    return-void

    .line 165
    :cond_0
    aget-object v7, v3, v10

    .line 166
    .local v7, spec:Lcom/jd/droidlib/inner/ann/FieldSpec;,"Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;>;"
    iget-object v9, v7, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 167
    .local v5, fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v5}, Lcom/jd/droidlib/inner/TypeHelper;->isEntity(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 168
    iget-object v9, v7, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/jd/droidlib/inner/ReflectionUtils;->getFieldVal(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jd/droidlib/model/Entity;

    .line 169
    .local v6, foreignEntity:Lcom/jd/droidlib/model/Entity;
    if-eqz v6, :cond_1

    iget-wide v12, v6, Lcom/jd/droidlib/model/Entity;->id:J

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-nez v9, :cond_1

    .line 170
    iget-object v9, v7, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/jd/droidlib/persist/sql/EntityManager;->subManager(Ljava/lang/Class;)Lcom/jd/droidlib/persist/sql/EntityManager;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/jd/droidlib/persist/sql/EntityManager;->create(Lcom/jd/droidlib/model/Entity;)Z

    .line 165
    .end local v6           #foreignEntity:Lcom/jd/droidlib/model/Entity;
    :cond_1
    :goto_1
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_0

    .line 172
    :cond_2
    invoke-static {v5}, Lcom/jd/droidlib/inner/TypeHelper;->isArray(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v5}, Lcom/jd/droidlib/inner/TypeHelper;->isCollection(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 173
    :cond_3
    iget-object v9, v7, Lcom/jd/droidlib/inner/ann/FieldSpec;->componentType:Ljava/lang/Class;

    invoke-static {v9}, Lcom/jd/droidlib/inner/TypeHelper;->isEntity(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 174
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v8, toCreate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jd/droidlib/model/Entity;>;"
    invoke-static {v5}, Lcom/jd/droidlib/inner/TypeHelper;->isArray(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 176
    iget-object v9, v7, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/jd/droidlib/inner/ReflectionUtils;->getFieldVal(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/jd/droidlib/model/Entity;

    .line 177
    .local v1, arr:[Lcom/jd/droidlib/model/Entity;
    if-eqz v1, :cond_4

    .line 178
    array-length v12, v1

    const/4 v9, 0x0

    :goto_2
    if-lt v9, v12, :cond_5

    .line 194
    .end local v1           #arr:[Lcom/jd/droidlib/model/Entity;
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 195
    iget-object v9, v7, Lcom/jd/droidlib/inner/ann/FieldSpec;->componentType:Ljava/lang/Class;

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/jd/droidlib/persist/sql/EntityManager;->subManager(Ljava/lang/Class;)Lcom/jd/droidlib/persist/sql/EntityManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/jd/droidlib/persist/sql/EntityManager;->create(Ljava/util/Collection;)I

    goto :goto_1

    .line 178
    .restart local v1       #arr:[Lcom/jd/droidlib/model/Entity;
    :cond_5
    aget-object v4, v1, v9

    .line 179
    .local v4, ent:Lcom/jd/droidlib/model/Entity;
    if-eqz v4, :cond_6

    iget-wide v13, v4, Lcom/jd/droidlib/model/Entity;->id:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_6

    .line 180
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 185
    .end local v1           #arr:[Lcom/jd/droidlib/model/Entity;
    .end local v4           #ent:Lcom/jd/droidlib/model/Entity;
    :cond_7
    iget-object v9, v7, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/jd/droidlib/inner/ReflectionUtils;->getFieldVal(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 186
    .local v2, coll:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/jd/droidlib/model/Entity;>;"
    if-eqz v2, :cond_4

    .line 187
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jd/droidlib/model/Entity;

    .line 188
    .restart local v4       #ent:Lcom/jd/droidlib/model/Entity;
    if-eqz v4, :cond_8

    iget-wide v12, v4, Lcom/jd/droidlib/model/Entity;->id:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_8

    .line 189
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method protected fillEagerForeignKeys(Lcom/jd/droidlib/model/Entity;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntityType;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, this:Lcom/jd/droidlib/persist/sql/EntityManager;,"Lcom/jd/droidlib/persist/sql/EntityManager<TEntityType;>;"
    .local p1, item:Lcom/jd/droidlib/model/Entity;,"TEntityType;"
    invoke-virtual {p0}, Lcom/jd/droidlib/persist/sql/EntityManager;->getEagerForeignKeyColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, eagerColumnNames:[Ljava/lang/String;
    array-length v1, v0

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p0, p1, v0}, Lcom/jd/droidlib/persist/sql/EntityManager;->fillForeignKeys(Lcom/jd/droidlib/model/Entity;[Ljava/lang/String;)V

    .line 208
    :cond_0
    return-void
.end method

.method public varargs fillForeignKeys(Lcom/jd/droidlib/model/Entity;[Ljava/lang/String;)V
    .locals 20
    .parameter
    .parameter "columnNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntityType;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, this:Lcom/jd/droidlib/persist/sql/EntityManager;,"Lcom/jd/droidlib/persist/sql/EntityManager<TEntityType;>;"
    .local p1, item:Lcom/jd/droidlib/model/Entity;,"TEntityType;"
    new-instance v4, Ljava/util/HashSet;

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v4, v15}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 91
    .local v4, columnNameSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v9

    .line 93
    .local v9, fillAll:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jd/droidlib/persist/sql/EntityManager;->cls:Ljava/lang/Class;

    invoke-static {v15}, Lcom/jd/droidlib/inner/ClassSpecRegistry;->getTableColumnSpecs(Ljava/lang/Class;)[Lcom/jd/droidlib/inner/ann/FieldSpec;

    move-result-object v5

    .line 94
    .local v5, columnSpecs:[Lcom/jd/droidlib/inner/ann/FieldSpec;
    array-length v0, v5

    move/from16 v17, v0

    const/4 v15, 0x0

    move/from16 v16, v15

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_0

    .line 136
    return-void

    .line 94
    :cond_0
    aget-object v14, v5, v16

    .line 95
    .local v14, spec:Lcom/jd/droidlib/inner/ann/FieldSpec;,"Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;>;"
    if-nez v9, :cond_1

    iget-object v15, v14, Lcom/jd/droidlib/inner/ann/FieldSpec;->ann:Lcom/jd/droidlib/inner/ann/Ann;

    check-cast v15, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;

    iget-object v15, v15, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;->name:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 96
    :cond_1
    iget-object v15, v14, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    .line 97
    .local v8, fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v8}, Lcom/jd/droidlib/inner/TypeHelper;->isEntity(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 98
    iget-object v15, v14, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/jd/droidlib/inner/ReflectionUtils;->getFieldVal(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jd/droidlib/model/Entity;

    .line 99
    .local v10, foreignEntity:Lcom/jd/droidlib/model/Entity;
    if-eqz v10, :cond_2

    .line 100
    iget-object v15, v14, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    .line 101
    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v15

    .line 100
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/jd/droidlib/persist/sql/EntityManager;->subManager(Ljava/lang/Class;)Lcom/jd/droidlib/persist/sql/EntityManager;

    move-result-object v12

    .line 102
    .local v12, manager:Lcom/jd/droidlib/persist/sql/EntityManager;,"Lcom/jd/droidlib/persist/sql/EntityManager<Lcom/jd/droidlib/model/Entity;>;"
    iget-wide v0, v10, Lcom/jd/droidlib/model/Entity;->id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Lcom/jd/droidlib/persist/sql/EntityManager;->read(J)Lcom/jd/droidlib/model/Entity;

    move-result-object v13

    .line 103
    .local v13, obj:Lcom/jd/droidlib/model/Entity;
    iget-object v15, v14, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    move-object/from16 v0, p1

    invoke-static {v0, v15, v13}, Lcom/jd/droidlib/inner/ReflectionUtils;->setFieldVal(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 94
    .end local v8           #fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v10           #foreignEntity:Lcom/jd/droidlib/model/Entity;
    .end local v12           #manager:Lcom/jd/droidlib/persist/sql/EntityManager;,"Lcom/jd/droidlib/persist/sql/EntityManager<Lcom/jd/droidlib/model/Entity;>;"
    .end local v13           #obj:Lcom/jd/droidlib/model/Entity;
    :cond_2
    :goto_1
    add-int/lit8 v15, v16, 0x1

    move/from16 v16, v15

    goto :goto_0

    .line 105
    .restart local v8       #fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_3
    invoke-static {v8}, Lcom/jd/droidlib/inner/TypeHelper;->isArray(Ljava/lang/Class;)Z

    move-result v15

    if-nez v15, :cond_4

    invoke-static {v8}, Lcom/jd/droidlib/inner/TypeHelper;->isCollection(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 106
    :cond_4
    iget-object v15, v14, Lcom/jd/droidlib/inner/ann/FieldSpec;->componentType:Ljava/lang/Class;

    invoke-static {v15}, Lcom/jd/droidlib/inner/TypeHelper;->isEntity(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 107
    iget-object v15, v14, Lcom/jd/droidlib/inner/ann/FieldSpec;->componentType:Ljava/lang/Class;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/jd/droidlib/persist/sql/EntityManager;->subManager(Ljava/lang/Class;)Lcom/jd/droidlib/persist/sql/EntityManager;

    move-result-object v12

    .line 108
    .restart local v12       #manager:Lcom/jd/droidlib/persist/sql/EntityManager;,"Lcom/jd/droidlib/persist/sql/EntityManager<Lcom/jd/droidlib/model/Entity;>;"
    invoke-static {v8}, Lcom/jd/droidlib/inner/TypeHelper;->isArray(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 109
    iget-object v15, v14, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/jd/droidlib/inner/ReflectionUtils;->getFieldVal(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/jd/droidlib/model/Entity;

    .line 110
    .local v2, arr:[Lcom/jd/droidlib/model/Entity;
    if-eqz v2, :cond_2

    .line 111
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    array-length v15, v2

    if-ge v11, v15, :cond_2

    .line 112
    aget-object v6, v2, v11

    .line 113
    .local v6, ent:Lcom/jd/droidlib/model/Entity;
    if-eqz v6, :cond_5

    .line 114
    iget-wide v0, v6, Lcom/jd/droidlib/model/Entity;->id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Lcom/jd/droidlib/persist/sql/EntityManager;->read(J)Lcom/jd/droidlib/model/Entity;

    move-result-object v15

    aput-object v15, v2, v11

    .line 111
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 119
    .end local v2           #arr:[Lcom/jd/droidlib/model/Entity;
    .end local v6           #ent:Lcom/jd/droidlib/model/Entity;
    .end local v11           #i:I
    :cond_6
    iget-object v15, v14, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/jd/droidlib/inner/ReflectionUtils;->getFieldVal(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 120
    .local v3, coll:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/jd/droidlib/model/Entity;>;"
    if-eqz v3, :cond_2

    .line 121
    new-instance v7, Ljava/util/ArrayList;

    .line 122
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v15

    .line 121
    invoke-direct {v7, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    .local v7, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jd/droidlib/model/Entity;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_7
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_8

    .line 128
    invoke-interface {v3}, Ljava/util/Collection;->clear()V

    .line 129
    invoke-interface {v3, v7}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 123
    :cond_8
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jd/droidlib/model/Entity;

    .line 124
    .restart local v6       #ent:Lcom/jd/droidlib/model/Entity;
    if-eqz v6, :cond_7

    .line 125
    iget-wide v0, v6, Lcom/jd/droidlib/model/Entity;->id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Lcom/jd/droidlib/persist/sql/EntityManager;->read(J)Lcom/jd/droidlib/model/Entity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 67
    .local p0, this:Lcom/jd/droidlib/persist/sql/EntityManager;,"Lcom/jd/droidlib/persist/sql/EntityManager<TEntityType;>;"
    iget-object v0, p0, Lcom/jd/droidlib/persist/sql/EntityManager;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method protected getDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 140
    .local p0, this:Lcom/jd/droidlib/persist/sql/EntityManager;,"Lcom/jd/droidlib/persist/sql/EntityManager<TEntityType;>;"
    iget-object v0, p0, Lcom/jd/droidlib/persist/sql/EntityManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method protected getEagerForeignKeyColumnNames()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 211
    .local p0, this:Lcom/jd/droidlib/persist/sql/EntityManager;,"Lcom/jd/droidlib/persist/sql/EntityManager<TEntityType;>;"
    iget-object v3, p0, Lcom/jd/droidlib/persist/sql/EntityManager;->eagerForeignKeyColumnNames:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 212
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 214
    .local v1, eagerColumnNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/jd/droidlib/persist/sql/EntityManager;->cls:Ljava/lang/Class;

    invoke-static {v3}, Lcom/jd/droidlib/inner/ClassSpecRegistry;->getTableColumnSpecs(Ljava/lang/Class;)[Lcom/jd/droidlib/inner/ann/FieldSpec;

    move-result-object v0

    .line 215
    .local v0, columnSpecs:[Lcom/jd/droidlib/inner/ann/FieldSpec;
    array-length v5, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v5, :cond_1

    .line 221
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 220
    iput-object v3, p0, Lcom/jd/droidlib/persist/sql/EntityManager;->eagerForeignKeyColumnNames:[Ljava/lang/String;

    .line 223
    .end local v0           #columnSpecs:[Lcom/jd/droidlib/inner/ann/FieldSpec;
    .end local v1           #eagerColumnNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    iget-object v3, p0, Lcom/jd/droidlib/persist/sql/EntityManager;->eagerForeignKeyColumnNames:[Ljava/lang/String;

    return-object v3

    .line 215
    .restart local v0       #columnSpecs:[Lcom/jd/droidlib/inner/ann/FieldSpec;
    .restart local v1       #eagerColumnNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    aget-object v2, v0, v4

    .line 216
    .local v2, spec:Lcom/jd/droidlib/inner/ann/FieldSpec;,"Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;>;"
    iget-object v3, v2, Lcom/jd/droidlib/inner/ann/FieldSpec;->ann:Lcom/jd/droidlib/inner/ann/Ann;

    check-cast v3, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;

    iget-boolean v3, v3, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;->eager:Z

    if-eqz v3, :cond_2

    .line 217
    iget-object v3, v2, Lcom/jd/droidlib/inner/ann/FieldSpec;->ann:Lcom/jd/droidlib/inner/ann/Ann;

    check-cast v3, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;

    iget-object v3, v3, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0
.end method

.method protected getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    .local p0, this:Lcom/jd/droidlib/persist/sql/EntityManager;,"Lcom/jd/droidlib/persist/sql/EntityManager<TEntityType;>;"
    iget-object v0, p0, Lcom/jd/droidlib/persist/sql/EntityManager;->cls:Ljava/lang/Class;

    invoke-static {v0}, Lcom/jd/droidlib/inner/ClassSpecRegistry;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected putToContentValues(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 6
    .parameter "cv"
    .parameter "key"
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 232
    .local p0, this:Lcom/jd/droidlib/persist/sql/EntityManager;,"Lcom/jd/droidlib/persist/sql/EntityManager<TEntityType;>;"
    .local p3, valueType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p4, componentType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    if-nez p5, :cond_0

    .line 233
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 239
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-static {p3}, Lcom/jd/droidlib/inner/ConverterRegistry;->getConverter(Ljava/lang/Class;)Lcom/jd/droidlib/inner/converter/Converter;

    move-result-object v0

    .local v0, converter:Lcom/jd/droidlib/inner/converter/Converter;,"Lcom/jd/droidlib/inner/converter/Converter<TT;>;"
    move-object v1, p3

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    .line 236
    invoke-virtual/range {v0 .. v5}, Lcom/jd/droidlib/inner/converter/Converter;->putToContentValues(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected readFromCursor(Landroid/database/Cursor;ILjava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter "cursor"
    .parameter "columnIndex"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 244
    .local p0, this:Lcom/jd/droidlib/persist/sql/EntityManager;,"Lcom/jd/droidlib/persist/sql/EntityManager<TEntityType;>;"
    .local p3, valType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p4, componentType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    const/4 v1, 0x0

    .line 248
    :goto_0
    return-object v1

    .line 247
    :cond_0
    invoke-static {p3}, Lcom/jd/droidlib/inner/ConverterRegistry;->getConverter(Ljava/lang/Class;)Lcom/jd/droidlib/inner/converter/Converter;

    move-result-object v0

    .line 248
    .local v0, converter:Lcom/jd/droidlib/inner/converter/Converter;,"Lcom/jd/droidlib/inner/converter/Converter<TT;>;"
    invoke-virtual {v0, p3, p4, p1, p2}, Lcom/jd/droidlib/inner/converter/Converter;->readFromCursor(Ljava/lang/Class;Ljava/lang/Class;Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public readRow(Landroid/database/Cursor;)Lcom/jd/droidlib/model/Entity;
    .locals 9
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TEntityType;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, this:Lcom/jd/droidlib/persist/sql/EntityManager;,"Lcom/jd/droidlib/persist/sql/EntityManager<TEntityType;>;"
    iget-object v5, p0, Lcom/jd/droidlib/persist/sql/EntityManager;->cls:Ljava/lang/Class;

    invoke-static {v5}, Lcom/jd/droidlib/inner/ReflectionUtils;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jd/droidlib/model/Entity;

    .line 74
    .local v3, entity:Lcom/jd/droidlib/model/Entity;,"TEntityType;"
    iget-object v5, p0, Lcom/jd/droidlib/persist/sql/EntityManager;->cls:Ljava/lang/Class;

    invoke-static {v5}, Lcom/jd/droidlib/inner/ClassSpecRegistry;->getTableColumnSpecs(Ljava/lang/Class;)[Lcom/jd/droidlib/inner/ann/FieldSpec;

    move-result-object v1

    .line 75
    .local v1, columnSpecs:[Lcom/jd/droidlib/inner/ann/FieldSpec;
    array-length v7, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-lt v6, v7, :cond_0

    .line 85
    return-object v3

    .line 75
    :cond_0
    aget-object v4, v1, v6

    .line 76
    .local v4, spec:Lcom/jd/droidlib/inner/ann/FieldSpec;,"Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;>;"
    iget-object v5, v4, Lcom/jd/droidlib/inner/ann/FieldSpec;->ann:Lcom/jd/droidlib/inner/ann/Ann;

    check-cast v5, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;

    iget-object v5, v5, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;->name:Ljava/lang/String;

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 77
    .local v0, colIdx:I
    if-ltz v0, :cond_2

    .line 79
    iget-object v5, v4, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    iget-object v8, v4, Lcom/jd/droidlib/inner/ann/FieldSpec;->componentType:Ljava/lang/Class;

    .line 78
    invoke-virtual {p0, p1, v0, v5, v8}, Lcom/jd/droidlib/persist/sql/EntityManager;->readFromCursor(Landroid/database/Cursor;ILjava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 80
    .local v2, columnVal:Ljava/lang/Object;
    if-nez v2, :cond_1

    iget-object v5, v4, Lcom/jd/droidlib/inner/ann/FieldSpec;->ann:Lcom/jd/droidlib/inner/ann/Ann;

    check-cast v5, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;

    iget-boolean v5, v5, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;->nullable:Z

    if-eqz v5, :cond_2

    .line 81
    :cond_1
    iget-object v5, v4, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    invoke-static {v3, v5, v2}, Lcom/jd/droidlib/inner/ReflectionUtils;->setFieldVal(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 75
    .end local v2           #columnVal:Ljava/lang/Object;
    :cond_2
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0
.end method

.method protected toContentValues(Lcom/jd/droidlib/model/Entity;)Landroid/content/ContentValues;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntityType;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, this:Lcom/jd/droidlib/persist/sql/EntityManager;,"Lcom/jd/droidlib/persist/sql/EntityManager<TEntityType;>;"
    .local p1, item:Lcom/jd/droidlib/model/Entity;,"TEntityType;"
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 152
    .local v1, cv:Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/jd/droidlib/persist/sql/EntityManager;->cls:Ljava/lang/Class;

    invoke-static {v0}, Lcom/jd/droidlib/inner/ClassSpecRegistry;->getTableColumnSpecs(Ljava/lang/Class;)[Lcom/jd/droidlib/inner/ann/FieldSpec;

    move-result-object v6

    .line 153
    .local v6, columnSpecs:[Lcom/jd/droidlib/inner/ann/FieldSpec;
    array-length v9, v6

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-lt v8, v9, :cond_0

    .line 158
    return-object v1

    .line 153
    :cond_0
    aget-object v7, v6, v8

    .line 154
    .local v7, spec:Lcom/jd/droidlib/inner/ann/FieldSpec;,"Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;>;"
    iget-object v0, v7, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    invoke-static {p1, v0}, Lcom/jd/droidlib/inner/ReflectionUtils;->getFieldVal(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v5

    .line 155
    .local v5, columnVal:Ljava/lang/Object;
    iget-object v0, v7, Lcom/jd/droidlib/inner/ann/FieldSpec;->ann:Lcom/jd/droidlib/inner/ann/Ann;

    check-cast v0, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;

    iget-object v2, v0, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;->name:Ljava/lang/String;

    iget-object v0, v7, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 156
    iget-object v4, v7, Lcom/jd/droidlib/inner/ann/FieldSpec;->componentType:Ljava/lang/Class;

    move-object v0, p0

    .line 155
    invoke-virtual/range {v0 .. v5}, Lcom/jd/droidlib/persist/sql/EntityManager;->putToContentValues(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 153
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0
.end method
