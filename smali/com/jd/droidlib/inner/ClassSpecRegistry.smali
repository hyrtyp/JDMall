.class public final Lcom/jd/droidlib/inner/ClassSpecRegistry;
.super Ljava/lang/Object;
.source "ClassSpecRegistry.java"


# static fields
.field private static final COLUMN_SPECS:Ljava/util/concurrent/ConcurrentHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/jd/droidlib/model/Entity;",
            ">;[",
            "Lcom/jd/droidlib/inner/ann/FieldSpec",
            "<",
            "Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final ID_AFFIX:Ljava/lang/String; = "_id"

.field private static final INJECT_SPECS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/jd/droidlib/inner/ann/FieldSpec",
            "<",
            "Lcom/jd/droidlib/inner/ann/inject/InjectAnn",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private static final KEY_SPECS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/jd/droidlib/model/Model;",
            ">;[",
            "Lcom/jd/droidlib/inner/ann/FieldSpec",
            "<",
            "Lcom/jd/droidlib/inner/ann/json/KeyAnn;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final RECEIVE_EVENTS_SPECS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/jd/droidlib/inner/ann/MethodSpec",
            "<",
            "Lcom/jd/droidlib/inner/ann/bus/ReceiveEventsAnn;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TABLE_NAMES:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/jd/droidlib/model/Entity;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/jd/droidlib/inner/ClassSpecRegistry;->INJECT_SPECS:Ljava/util/concurrent/ConcurrentHashMap;

    .line 180
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/jd/droidlib/inner/ClassSpecRegistry;->RECEIVE_EVENTS_SPECS:Ljava/util/concurrent/ConcurrentHashMap;

    .line 182
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/jd/droidlib/inner/ClassSpecRegistry;->TABLE_NAMES:Ljava/util/concurrent/ConcurrentHashMap;

    .line 183
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/jd/droidlib/inner/ClassSpecRegistry;->COLUMN_SPECS:Ljava/util/concurrent/ConcurrentHashMap;

    .line 185
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/jd/droidlib/inner/ClassSpecRegistry;->KEY_SPECS:Ljava/util/concurrent/ConcurrentHashMap;

    .line 225
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getColumnName(Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 3
    .parameter "ann"
    .parameter "field"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;->name:Ljava/lang/String;

    .line 216
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Lcom/jd/droidlib/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/jd/droidlib/inner/TypeHelper;->isEntity(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    :cond_0
    return-object v0
.end method

.method private static getComponentType(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 4
    .parameter "field"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 192
    .local v1, fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/jd/droidlib/inner/TypeHelper;->isArray(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    invoke-static {v1}, Lcom/jd/droidlib/inner/ReflectionUtils;->getArrayComponentType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 199
    :cond_0
    :goto_0
    return-object v0

    .line 194
    :cond_1
    invoke-static {v1}, Lcom/jd/droidlib/inner/TypeHelper;->isCollection(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    invoke-static {p0}, Lcom/jd/droidlib/inner/ReflectionUtils;->getFieldGenericArgs(Ljava/lang/reflect/Field;)[Ljava/lang/Class;

    move-result-object v2

    .line 196
    .local v2, genericArgs:[Ljava/lang/Class;
    array-length v3, v2

    if-lez v3, :cond_2

    const/4 v3, 0x0

    aget-object v0, v2, v3

    :goto_1
    goto :goto_0

    .line 197
    :cond_2
    const-class v0, Ljava/lang/Object;

    goto :goto_1
.end method

.method public static getInjectSpecs(Ljava/lang/Class;)[Lcom/jd/droidlib/inner/ann/FieldSpec;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lcom/jd/droidlib/inner/ann/FieldSpec",
            "<",
            "Lcom/jd/droidlib/inner/ann/inject/InjectAnn",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .local p0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 60
    sget-object v5, Lcom/jd/droidlib/inner/ClassSpecRegistry;->INJECT_SPECS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/jd/droidlib/inner/ann/FieldSpec;

    .line 61
    .local v4, specs:[Lcom/jd/droidlib/inner/ann/FieldSpec;
    if-nez v4, :cond_1

    .line 62
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/inject/InjectAnn<*>;>;>;"
    invoke-static {p0}, Lcom/jd/droidlib/inner/ReflectionUtils;->buildClassHierarchy(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 74
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/jd/droidlib/inner/ann/FieldSpec;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4           #specs:[Lcom/jd/droidlib/inner/ann/FieldSpec;
    check-cast v4, [Lcom/jd/droidlib/inner/ann/FieldSpec;

    .line 75
    .restart local v4       #specs:[Lcom/jd/droidlib/inner/ann/FieldSpec;
    sget-object v5, Lcom/jd/droidlib/inner/ClassSpecRegistry;->INJECT_SPECS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/inject/InjectAnn<*>;>;>;"
    :cond_1
    return-object v4

    .line 63
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/inject/InjectAnn<*>;>;>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 64
    .local v1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    array-length v10, v9

    move v7, v6

    :goto_0
    if-ge v7, v10, :cond_0

    aget-object v2, v9, v7

    .line 65
    .local v2, field:Ljava/lang/reflect/Field;
    invoke-static {v2}, Lcom/jd/droidlib/inner/AnnBuilder;->getFieldAnns(Ljava/lang/reflect/Field;)[Lcom/jd/droidlib/inner/ann/Ann;

    move-result-object v11

    array-length v12, v11

    move v5, v6

    :goto_1
    if-lt v5, v12, :cond_3

    .line 64
    :goto_2
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_0

    .line 65
    :cond_3
    aget-object v0, v11, v5

    .line 66
    .local v0, ann:Lcom/jd/droidlib/inner/ann/Ann;,"Lcom/jd/droidlib/inner/ann/Ann<*>;"
    instance-of v13, v0, Lcom/jd/droidlib/inner/ann/inject/InjectAnn;

    if-eqz v13, :cond_4

    .line 67
    new-instance v5, Lcom/jd/droidlib/inner/ann/FieldSpec;

    const/4 v11, 0x0

    .line 68
    check-cast v0, Lcom/jd/droidlib/inner/ann/inject/InjectAnn;

    .end local v0           #ann:Lcom/jd/droidlib/inner/ann/Ann;,"Lcom/jd/droidlib/inner/ann/Ann<*>;"
    invoke-direct {v5, v2, v11, v0}, Lcom/jd/droidlib/inner/ann/FieldSpec;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Class;Lcom/jd/droidlib/inner/ann/Ann;)V

    .line 67
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 65
    .restart local v0       #ann:Lcom/jd/droidlib/inner/ann/Ann;,"Lcom/jd/droidlib/inner/ann/Ann<*>;"
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static getJsonKeySpecs(Ljava/lang/Class;)[Lcom/jd/droidlib/inner/ann/FieldSpec;
    .locals 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/jd/droidlib/model/Model;",
            ">;)[",
            "Lcom/jd/droidlib/inner/ann/FieldSpec",
            "<",
            "Lcom/jd/droidlib/inner/ann/json/KeyAnn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/jd/droidlib/model/Model;>;"
    sget-object v7, Lcom/jd/droidlib/inner/ClassSpecRegistry;->KEY_SPECS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/jd/droidlib/inner/ann/FieldSpec;

    .line 155
    .local v6, specs:[Lcom/jd/droidlib/inner/ann/FieldSpec;
    if-nez v6, :cond_1

    .line 156
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/json/KeyAnn;>;>;"
    invoke-static {p0}, Lcom/jd/droidlib/inner/ReflectionUtils;->buildClassHierarchy(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 171
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lcom/jd/droidlib/inner/ann/FieldSpec;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .end local v6           #specs:[Lcom/jd/droidlib/inner/ann/FieldSpec;
    check-cast v6, [Lcom/jd/droidlib/inner/ann/FieldSpec;

    .line 172
    .restart local v6       #specs:[Lcom/jd/droidlib/inner/ann/FieldSpec;
    sget-object v7, Lcom/jd/droidlib/inner/ClassSpecRegistry;->KEY_SPECS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, p0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/json/KeyAnn;>;>;"
    :cond_1
    return-object v6

    .line 157
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/json/KeyAnn;>;>;"
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 158
    .local v1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    array-length v11, v10

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v11, :cond_0

    aget-object v3, v10, v8

    .line 159
    .local v3, field:Ljava/lang/reflect/Field;
    invoke-static {v3}, Lcom/jd/droidlib/inner/AnnBuilder;->getFieldAnns(Ljava/lang/reflect/Field;)[Lcom/jd/droidlib/inner/ann/Ann;

    move-result-object v12

    array-length v13, v12

    const/4 v7, 0x0

    :goto_1
    if-lt v7, v13, :cond_3

    .line 158
    :goto_2
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    .line 159
    :cond_3
    aget-object v0, v12, v7

    .line 160
    .local v0, ann:Lcom/jd/droidlib/inner/ann/Ann;,"Lcom/jd/droidlib/inner/ann/Ann<*>;"
    instance-of v14, v0, Lcom/jd/droidlib/inner/ann/json/KeyAnn;

    if-eqz v14, :cond_4

    move-object v4, v0

    .line 161
    check-cast v4, Lcom/jd/droidlib/inner/ann/json/KeyAnn;

    .line 162
    .local v4, keyAnn:Lcom/jd/droidlib/inner/ann/json/KeyAnn;
    invoke-static {v3}, Lcom/jd/droidlib/inner/ClassSpecRegistry;->getComponentType(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v2

    .line 163
    .local v2, componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v4, v3}, Lcom/jd/droidlib/inner/ClassSpecRegistry;->getKeyName(Lcom/jd/droidlib/inner/ann/json/KeyAnn;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/jd/droidlib/inner/ann/json/KeyAnn;->name:Ljava/lang/String;

    .line 164
    new-instance v7, Lcom/jd/droidlib/inner/ann/FieldSpec;

    .line 165
    invoke-direct {v7, v3, v2, v4}, Lcom/jd/droidlib/inner/ann/FieldSpec;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Class;Lcom/jd/droidlib/inner/ann/Ann;)V

    .line 164
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 159
    .end local v2           #componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #keyAnn:Lcom/jd/droidlib/inner/ann/json/KeyAnn;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method private static getKeyName(Lcom/jd/droidlib/inner/ann/json/KeyAnn;Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 2
    .parameter "ann"
    .parameter "field"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/jd/droidlib/inner/ann/json/KeyAnn;->name:Ljava/lang/String;

    .line 206
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Lcom/jd/droidlib/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_0
    return-object v0
.end method

.method public static getReceiveEventsSpecs(Ljava/lang/Class;)[Lcom/jd/droidlib/inner/ann/MethodSpec;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lcom/jd/droidlib/inner/ann/MethodSpec",
            "<",
            "Lcom/jd/droidlib/inner/ann/bus/ReceiveEventsAnn;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 85
    sget-object v5, Lcom/jd/droidlib/inner/ClassSpecRegistry;->RECEIVE_EVENTS_SPECS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/jd/droidlib/inner/ann/MethodSpec;

    .line 86
    .local v4, specs:[Lcom/jd/droidlib/inner/ann/MethodSpec;
    if-nez v4, :cond_1

    .line 87
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jd/droidlib/inner/ann/MethodSpec<Lcom/jd/droidlib/inner/ann/bus/ReceiveEventsAnn;>;>;"
    invoke-static {p0}, Lcom/jd/droidlib/inner/ReflectionUtils;->buildClassHierarchy(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 99
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/jd/droidlib/inner/ann/MethodSpec;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4           #specs:[Lcom/jd/droidlib/inner/ann/MethodSpec;
    check-cast v4, [Lcom/jd/droidlib/inner/ann/MethodSpec;

    .line 100
    .restart local v4       #specs:[Lcom/jd/droidlib/inner/ann/MethodSpec;
    sget-object v5, Lcom/jd/droidlib/inner/ClassSpecRegistry;->RECEIVE_EVENTS_SPECS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jd/droidlib/inner/ann/MethodSpec<Lcom/jd/droidlib/inner/ann/bus/ReceiveEventsAnn;>;>;"
    :cond_1
    return-object v4

    .line 88
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jd/droidlib/inner/ann/MethodSpec<Lcom/jd/droidlib/inner/ann/bus/ReceiveEventsAnn;>;>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 89
    .local v1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    array-length v10, v9

    move v7, v6

    :goto_0
    if-ge v7, v10, :cond_0

    aget-object v3, v9, v7

    .line 90
    .local v3, method:Ljava/lang/reflect/Method;
    invoke-static {v3}, Lcom/jd/droidlib/inner/AnnBuilder;->getMethodAnns(Ljava/lang/reflect/Method;)[Lcom/jd/droidlib/inner/ann/Ann;

    move-result-object v11

    array-length v12, v11

    move v5, v6

    :goto_1
    if-lt v5, v12, :cond_3

    .line 89
    :goto_2
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_0

    .line 90
    :cond_3
    aget-object v0, v11, v5

    .line 91
    .local v0, ann:Lcom/jd/droidlib/inner/ann/Ann;,"Lcom/jd/droidlib/inner/ann/Ann<*>;"
    instance-of v13, v0, Lcom/jd/droidlib/inner/ann/bus/ReceiveEventsAnn;

    if-eqz v13, :cond_4

    .line 92
    new-instance v5, Lcom/jd/droidlib/inner/ann/MethodSpec;

    .line 93
    check-cast v0, Lcom/jd/droidlib/inner/ann/bus/ReceiveEventsAnn;

    .end local v0           #ann:Lcom/jd/droidlib/inner/ann/Ann;,"Lcom/jd/droidlib/inner/ann/Ann<*>;"
    invoke-direct {v5, v3, v0}, Lcom/jd/droidlib/inner/ann/MethodSpec;-><init>(Ljava/lang/reflect/Method;Lcom/jd/droidlib/inner/ann/Ann;)V

    .line 92
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 90
    .restart local v0       #ann:Lcom/jd/droidlib/inner/ann/Ann;,"Lcom/jd/droidlib/inner/ann/Ann<*>;"
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static getTableColumnSpecs(Ljava/lang/Class;)[Lcom/jd/droidlib/inner/ann/FieldSpec;
    .locals 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/jd/droidlib/model/Entity;",
            ">;)[",
            "Lcom/jd/droidlib/inner/ann/FieldSpec",
            "<",
            "Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/jd/droidlib/model/Entity;>;"
    sget-object v7, Lcom/jd/droidlib/inner/ClassSpecRegistry;->COLUMN_SPECS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/jd/droidlib/inner/ann/FieldSpec;

    .line 128
    .local v6, specs:[Lcom/jd/droidlib/inner/ann/FieldSpec;
    if-nez v6, :cond_1

    .line 129
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;>;>;"
    invoke-static {p0}, Lcom/jd/droidlib/inner/ReflectionUtils;->buildClassHierarchy(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 144
    invoke-static {v5}, Lcom/jd/droidlib/inner/ClassSpecRegistry;->sanitizeSpecs(Ljava/util/ArrayList;)V

    .line 145
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lcom/jd/droidlib/inner/ann/FieldSpec;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .end local v6           #specs:[Lcom/jd/droidlib/inner/ann/FieldSpec;
    check-cast v6, [Lcom/jd/droidlib/inner/ann/FieldSpec;

    .line 146
    .restart local v6       #specs:[Lcom/jd/droidlib/inner/ann/FieldSpec;
    sget-object v7, Lcom/jd/droidlib/inner/ClassSpecRegistry;->COLUMN_SPECS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, p0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;>;>;"
    :cond_1
    return-object v6

    .line 130
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;>;>;"
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 131
    .local v1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    array-length v11, v10

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v11, :cond_0

    aget-object v4, v10, v8

    .line 132
    .local v4, field:Ljava/lang/reflect/Field;
    invoke-static {v4}, Lcom/jd/droidlib/inner/AnnBuilder;->getFieldAnns(Ljava/lang/reflect/Field;)[Lcom/jd/droidlib/inner/ann/Ann;

    move-result-object v12

    array-length v13, v12

    const/4 v7, 0x0

    :goto_1
    if-lt v7, v13, :cond_3

    .line 131
    :goto_2
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    .line 132
    :cond_3
    aget-object v0, v12, v7

    .line 133
    .local v0, ann:Lcom/jd/droidlib/inner/ann/Ann;,"Lcom/jd/droidlib/inner/ann/Ann<*>;"
    instance-of v14, v0, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;

    if-eqz v14, :cond_4

    move-object v2, v0

    .line 134
    check-cast v2, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;

    .line 135
    .local v2, columnAnn:Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;
    invoke-static {v4}, Lcom/jd/droidlib/inner/ClassSpecRegistry;->getComponentType(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v3

    .line 136
    .local v3, componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v2, v4}, Lcom/jd/droidlib/inner/ClassSpecRegistry;->getColumnName(Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;->name:Ljava/lang/String;

    .line 137
    new-instance v7, Lcom/jd/droidlib/inner/ann/FieldSpec;

    .line 138
    invoke-direct {v7, v4, v3, v2}, Lcom/jd/droidlib/inner/ann/FieldSpec;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Class;Lcom/jd/droidlib/inner/ann/Ann;)V

    .line 137
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 132
    .end local v2           #columnAnn:Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;
    .end local v3           #componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public static getTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/jd/droidlib/model/Entity;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/jd/droidlib/model/Entity;>;"
    sget-object v2, Lcom/jd/droidlib/inner/ClassSpecRegistry;->TABLE_NAMES:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 109
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 110
    invoke-static {p0}, Lcom/jd/droidlib/inner/AnnBuilder;->getClassAnns(Ljava/lang/Class;)[Lcom/jd/droidlib/inner/ann/Ann;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_2

    .line 116
    :goto_1
    invoke-static {v1}, Lcom/jd/droidlib/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 119
    :cond_0
    sget-object v2, Lcom/jd/droidlib/inner/ClassSpecRegistry;->TABLE_NAMES:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_1
    return-object v1

    .line 110
    :cond_2
    aget-object v0, v3, v2

    .line 111
    .local v0, ann:Lcom/jd/droidlib/inner/ann/Ann;,"Lcom/jd/droidlib/inner/ann/Ann<*>;"
    instance-of v5, v0, Lcom/jd/droidlib/inner/ann/sql/TableAnn;

    if-eqz v5, :cond_3

    .line 112
    check-cast v0, Lcom/jd/droidlib/inner/ann/sql/TableAnn;

    .end local v0           #ann:Lcom/jd/droidlib/inner/ann/Ann;,"Lcom/jd/droidlib/inner/ann/Ann<*>;"
    iget-object v1, v0, Lcom/jd/droidlib/inner/ann/sql/TableAnn;->name:Ljava/lang/String;

    .line 113
    goto :goto_1

    .line 110
    .restart local v0       #ann:Lcom/jd/droidlib/inner/ann/Ann;,"Lcom/jd/droidlib/inner/ann/Ann<*>;"
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static sanitizeSpecs(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jd/droidlib/inner/ann/FieldSpec",
            "<",
            "Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p0, columnSpecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;>;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 229
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 246
    return-void

    .line 229
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jd/droidlib/inner/ann/FieldSpec;

    .line 230
    .local v1, spec:Lcom/jd/droidlib/inner/ann/FieldSpec;,"Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;>;"
    iget-object v2, v1, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 231
    .local v0, fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v2, v1, Lcom/jd/droidlib/inner/ann/FieldSpec;->ann:Lcom/jd/droidlib/inner/ann/Ann;

    check-cast v2, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;

    iget-boolean v2, v2, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;->nullable:Z

    if-eqz v2, :cond_3

    .line 232
    invoke-static {v0}, Lcom/jd/droidlib/inner/TypeHelper;->isByte(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/jd/droidlib/inner/TypeHelper;->isShort(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 233
    invoke-static {v0}, Lcom/jd/droidlib/inner/TypeHelper;->isInteger(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/jd/droidlib/inner/TypeHelper;->isLong(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 234
    invoke-static {v0}, Lcom/jd/droidlib/inner/TypeHelper;->isFloat(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/jd/droidlib/inner/TypeHelper;->isDouble(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 235
    invoke-static {v0}, Lcom/jd/droidlib/inner/TypeHelper;->isBoolean(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/jd/droidlib/inner/TypeHelper;->isCharacter(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    :cond_2
    const-string v2, "%s can\'t be null."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    iget-object v2, v1, Lcom/jd/droidlib/inner/ann/FieldSpec;->ann:Lcom/jd/droidlib/inner/ann/Ann;

    check-cast v2, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;

    iput-boolean v6, v2, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;->nullable:Z

    goto :goto_0

    .line 239
    :cond_3
    iget-object v2, v1, Lcom/jd/droidlib/inner/ann/FieldSpec;->ann:Lcom/jd/droidlib/inner/ann/Ann;

    check-cast v2, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;

    iget-boolean v2, v2, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;->eager:Z

    if-eqz v2, :cond_0

    .line 240
    invoke-static {v0}, Lcom/jd/droidlib/inner/TypeHelper;->isEntity(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/jd/droidlib/inner/ann/FieldSpec;->componentType:Ljava/lang/Class;

    invoke-static {v2}, Lcom/jd/droidlib/inner/TypeHelper;->isEntity(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    const-string v2, "%s can\'t be eager."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    iget-object v2, v1, Lcom/jd/droidlib/inner/ann/FieldSpec;->ann:Lcom/jd/droidlib/inner/ann/Ann;

    check-cast v2, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;

    iput-boolean v6, v2, Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;->eager:Z

    goto/16 :goto_0
.end method
