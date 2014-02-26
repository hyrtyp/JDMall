.class public Lcom/jd/droidlib/Injector;
.super Ljava/lang/Object;
.source "Injector.java"


# static fields
.field private static volatile appCtx:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/jd/droidlib/Injector;->appCtx:Landroid/content/Context;

    return-object v0
.end method

.method public static getDependency(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 68
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/jd/droidlib/Injector;->setContext(Landroid/content/Context;)V

    .line 69
    invoke-static {p0, p1}, Lcom/jd/droidlib/inner/reader/DependencyReader;->readVal(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static inject(Landroid/app/Activity;)V
    .locals 2
    .parameter "act"

    .prologue
    .line 40
    invoke-static {p0}, Lcom/jd/droidlib/Injector;->setContext(Landroid/content/Context;)V

    .line 41
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, root:Landroid/view/View;
    invoke-static {p0, v0, p0}, Lcom/jd/droidlib/Injector;->inject(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public static inject(Landroid/app/Dialog;Ljava/lang/Object;)V
    .locals 2
    .parameter "dialog"
    .parameter "target"

    .prologue
    .line 56
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, root:Landroid/view/View;
    invoke-static {v0, p1}, Lcom/jd/droidlib/Injector;->inject(Landroid/view/View;Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public static inject(Landroid/app/Service;)V
    .locals 1
    .parameter "serv"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/jd/droidlib/Injector;->setContext(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    invoke-static {p0, v0, p0}, Lcom/jd/droidlib/Injector;->inject(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method private static inject(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;)V
    .locals 13
    .parameter "ctx"
    .parameter "root"
    .parameter "target"

    .prologue
    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 96
    .local v4, start:J
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 97
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/jd/droidlib/inner/ClassSpecRegistry;->getInjectSpecs(Ljava/lang/Class;)[Lcom/jd/droidlib/inner/ann/FieldSpec;

    move-result-object v3

    .line 98
    .local v3, specs:[Lcom/jd/droidlib/inner/ann/FieldSpec;
    array-length v8, v3

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v8, :cond_0

    .line 110
    const-string v7, "Injected into %s in %d ms."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    .line 110
    invoke-static {v7, v8}, Lcom/jd/droidlib/util/L;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    return-void

    .line 98
    :cond_0
    aget-object v2, v3, v7

    .line 100
    .local v2, spec:Lcom/jd/droidlib/inner/ann/FieldSpec;,"Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/inject/InjectAnn<*>;>;"
    :try_start_0
    invoke-static {p0, p1, p2, v2}, Lcom/jd/droidlib/inner/reader/ValueReader;->getVal(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;Lcom/jd/droidlib/inner/ann/FieldSpec;)Ljava/lang/Object;

    move-result-object v6

    .line 101
    .local v6, val:Ljava/lang/Object;
    if-eqz v6, :cond_1

    .line 102
    iget-object v9, v2, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    invoke-static {p2, v9, v6}, Lcom/jd/droidlib/inner/ReflectionUtils;->setFieldVal(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v6           #val:Ljava/lang/Object;
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, e:Ljava/lang/Throwable;
    const-string v9, "Failed to inject %s#%s: %s."

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 106
    iget-object v12, v2, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 105
    invoke-static {v9, v10}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-static {v1}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static inject(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .parameter "ctx"
    .parameter "target"

    .prologue
    .line 51
    invoke-static {p0}, Lcom/jd/droidlib/Injector;->setContext(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/jd/droidlib/Injector;->inject(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public static inject(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1
    .parameter "view"
    .parameter "target"

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    .local v0, ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/jd/droidlib/Injector;->setContext(Landroid/content/Context;)V

    .line 63
    invoke-static {v0, p0, p1}, Lcom/jd/droidlib/Injector;->inject(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method private static setContext(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 87
    sget-object v0, Lcom/jd/droidlib/Injector;->appCtx:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/jd/droidlib/Injector;->appCtx:Landroid/content/Context;

    .line 90
    :cond_0
    return-void
.end method

.method public static setUp(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 77
    invoke-static {p0}, Lcom/jd/droidlib/Injector;->setContext(Landroid/content/Context;)V

    .line 78
    invoke-static {p0}, Lcom/jd/droidlib/inner/reader/DependencyReader;->init(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public static tearDown()V
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/jd/droidlib/inner/reader/DependencyReader;->tearDown()V

    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/jd/droidlib/Injector;->appCtx:Landroid/content/Context;

    .line 84
    return-void
.end method
