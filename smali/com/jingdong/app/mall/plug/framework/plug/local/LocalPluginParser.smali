.class public Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPluginParser;
.super Ljava/lang/Object;
.source "LocalPluginParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalPluginParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFirstProperties(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .locals 2
    .parameter "ctx"
    .parameter "apkPath"

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPluginParser;->parseInternal(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 54
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    .line 57
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static parseInternal(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 20
    .parameter "ctx"
    .parameter "apkPath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v12, pluginItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;>;"
    :try_start_0
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v3, apkFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_1

    .line 72
    new-instance v16, Ljava/lang/RuntimeException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " not found"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v3           #apkFile:Ljava/io/File;
    :catch_0
    move-exception v9

    .line 160
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    .end local v9           #e:Ljava/lang/Exception;
    :cond_0
    return-object v12

    .line 80
    .restart local v3       #apkFile:Ljava/io/File;
    :cond_1
    const/16 v16, 0x1

    :try_start_1
    move/from16 v0, v16

    new-array v14, v0, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v14, v16

    .line 83
    .local v14, typeArgs:[Ljava/lang/Class;
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v15, v0, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p1, v15, v16

    .line 87
    .local v15, valueArgs:[Ljava/lang/Object;
    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    .line 88
    .local v11, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v11}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 89
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v14, v0, [Ljava/lang/Class;

    .end local v14           #typeArgs:[Ljava/lang/Class;
    const/16 v16, 0x0

    const-class v17, Ljava/io/File;

    aput-object v17, v14, v16

    const/16 v16, 0x1

    const-class v17, Ljava/lang/String;

    aput-object v17, v14, v16

    const/16 v16, 0x2

    const-class v17, Landroid/util/DisplayMetrics;

    aput-object v17, v14, v16

    const/16 v16, 0x3

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v14, v16

    .line 94
    .restart local v14       #typeArgs:[Ljava/lang/Class;
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v15, v0, [Ljava/lang/Object;

    .end local v15           #valueArgs:[Ljava/lang/Object;
    const/16 v16, 0x0

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object p1, v15, v16

    const/16 v16, 0x2

    aput-object v11, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    .line 115
    .restart local v15       #valueArgs:[Ljava/lang/Object;
    const-class v16, Landroid/content/res/AssetManager;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 116
    .local v6, assetMagCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .line 118
    .local v5, assetMag:Ljava/lang/Object;
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v14, v0, [Ljava/lang/Class;

    .line 119
    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v14, v16

    .line 120
    const-string v16, "addAssetPath"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 121
    .local v7, assetMag_addAssetPathMtd:Ljava/lang/reflect/Method;
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v15, v0, [Ljava/lang/Object;

    .line 122
    const/16 v16, 0x0

    aput-object p1, v15, v16

    .line 124
    invoke-virtual {v7, v5, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    move-object v0, v5

    check-cast v0, Landroid/content/res/AssetManager;

    move-object v8, v0

    .line 126
    .local v8, assetManager:Landroid/content/res/AssetManager;
    const-string v16, "plugin"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, asStrings:[Ljava/lang/String;
    array-length v0, v4

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    aget-object v13, v4, v16

    .line 129
    .local v13, string:Ljava/lang/String;
    const-string v18, "plugin.properties"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 130
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "plugin/"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 133
    .local v10, inputStream:Ljava/io/InputStream;
    invoke-static {v10}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPluginParser;->parserPlug(Ljava/io/InputStream;)Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;

    move-result-object v2

    .line 134
    .local v2, activityPlugin:Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 135
    const/4 v10, 0x0

    .line 136
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    .end local v2           #activityPlugin:Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;
    .end local v10           #inputStream:Ljava/io/InputStream;
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_0
.end method

.method private static parserPlug(Ljava/io/InputStream;)Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;
    .locals 3
    .parameter "inputStream"

    .prologue
    .line 167
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 169
    .local v2, properties:Ljava/util/Properties;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 170
    new-instance v0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;

    invoke-direct {v0}, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;-><init>()V

    .line 171
    .local v0, activityPlugin:Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;
    invoke-virtual {v0, v2}, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->parse(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v0           #activityPlugin:Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;
    :goto_0
    return-object v0

    .line 173
    :catch_0
    move-exception v1

    .line 175
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 176
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized parserPlugin(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .parameter "apkPath"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    invoke-static {p2, p1}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPluginParser;->parseInternal(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
