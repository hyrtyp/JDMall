.class public Lcom/jd/common/util/bean/BeanUtils;
.super Ljava/lang/Object;
.source "BeanUtils.java"


# static fields
.field private static final GET_METHOD:Ljava/lang/String; = "get"

.field private static instance:Lcom/jd/common/util/bean/BeanUtils;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/jd/common/util/bean/BeanUtils;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/jd/common/util/bean/BeanUtils;->instance:Lcom/jd/common/util/bean/BeanUtils;

    if-nez v0, :cond_0

    .line 27
    const-string v1, "get"

    monitor-enter v1

    .line 28
    :try_start_0
    new-instance v0, Lcom/jd/common/util/bean/BeanUtils;

    invoke-direct {v0}, Lcom/jd/common/util/bean/BeanUtils;-><init>()V

    sput-object v0, Lcom/jd/common/util/bean/BeanUtils;->instance:Lcom/jd/common/util/bean/BeanUtils;

    .line 27
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_0
    sget-object v0, Lcom/jd/common/util/bean/BeanUtils;->instance:Lcom/jd/common/util/bean/BeanUtils;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private pushField(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/String;)V
    .locals 12
    .parameter "obj"
    .parameter "map"
    .parameter "c"
    .parameter "field"
    .parameter "prefix"

    .prologue
    .line 56
    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    .local v5, i:I
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    .line 57
    invoke-direct/range {v1 .. v6}, Lcom/jd/common/util/bean/BeanUtils;->vevifField(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/reflect/Field;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 60
    :cond_0
    const/4 v10, 0x0

    .line 62
    .local v10, retObj:Ljava/lang/Object;
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    .line 63
    .local v11, stringLetter:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 64
    .local v9, getMethodName:Ljava/lang/String;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p3, v9, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 65
    .local v8, getMethod:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v8, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 69
    .end local v8           #getMethod:Ljava/lang/reflect/Method;
    .end local v9           #getMethodName:Ljava/lang/String;
    .end local v10           #retObj:Ljava/lang/Object;
    .end local v11           #stringLetter:Ljava/lang/String;
    :goto_1
    if-nez v10, :cond_1

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    :try_start_1
    move-object/from16 v0, p4

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 76
    :cond_1
    :goto_2
    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, p2, v1, v10, v0}, Lcom/jd/common/util/bean/BeanUtils;->pushMap(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Map;

    goto :goto_0

    .line 66
    .restart local v10       #retObj:Ljava/lang/Object;
    :catch_0
    move-exception v7

    .line 67
    .local v7, e:Ljava/lang/Exception;
    const/4 v10, 0x0

    goto :goto_1

    .line 72
    .end local v7           #e:Ljava/lang/Exception;
    .end local v10           #retObj:Ljava/lang/Object;
    :catch_1
    move-exception v7

    .line 73
    .restart local v7       #e:Ljava/lang/Exception;
    const/4 v10, 0x0

    .restart local v10       #retObj:Ljava/lang/Object;
    goto :goto_2
.end method

.method private pushMap(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .parameter "map"
    .parameter "key"
    .parameter "value"
    .parameter "prefix"

    .prologue
    .line 99
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_0
    return-object p1
.end method

.method private vevifField(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/reflect/Field;ILjava/lang/String;)Z
    .locals 4
    .parameter "obj"
    .parameter "map"
    .parameter "field"
    .parameter "i"
    .parameter "prefix"

    .prologue
    const/4 v2, 0x1

    .line 80
    const-class v3, Lcom/jd/common/util/bean/FieldTransient;

    invoke-virtual {p3, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/jd/common/util/bean/FieldTransient;

    .line 81
    .local v0, ft:Lcom/jd/common/util/bean/FieldTransient;
    if-eqz v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v2

    .line 84
    :cond_1
    invoke-static {p4}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p4}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    invoke-static {p4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    :try_start_0
    invoke-virtual {p3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 90
    .local v1, retObj:Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v3, v1, p5}, Lcom/jd/common/util/bean/BeanUtils;->pushMap(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    .end local v1           #retObj:Ljava/lang/Object;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 95
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public beanToMap(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;)Lcom/jd/common/util/bean/BeanUtils;
    .locals 12
    .parameter "map"
    .parameter "obj"
    .parameter "prefix"

    .prologue
    const/4 v6, 0x0

    .line 39
    if-nez p2, :cond_1

    .line 52
    :cond_0
    return-object p0

    .line 42
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 43
    .local v3, c:Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    .line 44
    .local v8, cc:Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    .line 45
    .local v11, fieldArr:[Ljava/lang/reflect/Field;
    array-length v9, v11

    move v7, v6

    :goto_0
    if-lt v7, v9, :cond_2

    .line 48
    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    .line 49
    array-length v1, v11

    move v0, v6

    :goto_1
    if-ge v0, v1, :cond_0

    aget-object v4, v11, v0

    .local v4, field:Ljava/lang/reflect/Field;
    move-object v5, p0

    move-object v6, p2

    move-object v7, p1

    move-object v9, v4

    move-object v10, p3

    .line 50
    invoke-direct/range {v5 .. v10}, Lcom/jd/common/util/bean/BeanUtils;->pushField(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/String;)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 45
    .end local v4           #field:Ljava/lang/reflect/Field;
    :cond_2
    aget-object v4, v11, v7

    .restart local v4       #field:Ljava/lang/reflect/Field;
    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v5, p3

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/jd/common/util/bean/BeanUtils;->pushField(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/String;)V

    .line 45
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0
.end method
