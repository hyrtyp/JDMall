.class public Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;
.super Ldalvik/system/DexClassLoader;
.source "PlugClassLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PlugClassLoader"

.field private static loaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private file:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;->loaders:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "file"
    .parameter "dexPath"
    .parameter "optimizedDirectory"
    .parameter "libraryPath"
    .parameter "parent"

    .prologue
    .line 23
    invoke-direct {p0, p2, p3, p4, p5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 24
    iput-object p1, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;->file:Ljava/io/File;

    .line 25
    return-void
.end method

.method public static getClassLoader(Ljava/io/File;)Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;
    .locals 8
    .parameter "file"

    .prologue
    const/4 v4, 0x0

    .line 54
    invoke-static {p0}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPlugsTools;->enoughInternalSpace(Ljava/io/File;)Z

    move-result v6

    .line 55
    .local v6, enough:Z
    if-nez v6, :cond_1

    .line 56
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v1

    const-string v2, "\u5185\u5b58\u4e0d\u8db3\uff0c\u8bf7\u91ca\u653e\u90e8\u5206\u5185\u5b58\u4ee5\u4fdd\u8bc1\u7a0b\u5e8f\u6b63\u5e38\u8fd0\u884c!"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 77
    :cond_0
    :goto_0
    return-object v4

    .line 60
    :cond_1
    if-eqz p0, :cond_0

    .line 64
    sget-object v1, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;->loaders:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    .line 65
    .local v0, cl:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;
    if-eqz v0, :cond_2

    move-object v4, v0

    .line 66
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    new-instance v7, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dexout"

    invoke-direct {v7, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .local v7, outdir:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 74
    new-instance v0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    .end local v0           #cl:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/MyApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 76
    .restart local v0       #cl:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;
    sget-object v1, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;->loaders:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v0

    .line 77
    goto :goto_0
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;->file:Ljava/io/File;

    return-object v0
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 3
    .parameter "className"
    .parameter "resolve"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 30
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 39
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object v1

    .line 33
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v0       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 36
    :goto_1
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 37
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v1       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_0

    .line 38
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v0       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    .line 39
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v1       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_0

    .line 34
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v0       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    goto :goto_1
.end method
