.class public final Lcom/jd/droidlib/util/ResourceUtils;
.super Ljava/lang/Object;
.source "ResourceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dpToPx(Landroid/content/Context;I)I
    .locals 3
    .parameter "ctx"
    .parameter "val"

    .prologue
    .line 67
    const/4 v0, 0x1

    .line 68
    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 67
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static dumpDBToCacheDir(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "ctx"
    .parameter "db"

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, dbFilePath:Ljava/lang/String;
    const/16 v4, 0x2f

    .line 48
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    .line 47
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, dbFileName:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    .local v3, fileTo:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v3}, Lcom/jd/droidlib/util/IOUtils;->copy(Ljava/io/File;Ljava/io/File;)V

    .line 52
    const-string v4, "Copied DB file to \'%s\'."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/jd/droidlib/util/L;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v2

    .line 54
    .local v2, e:Ljava/io/IOException;
    invoke-static {v2}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "ctx"
    .parameter "type"
    .parameter "name"

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {v0, p2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getResourceId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter "ctx"
    .parameter "resourceName"

    .prologue
    .line 85
    const-string v0, "id"

    invoke-static {p0, v0, p1}, Lcom/jd/droidlib/util/ResourceUtils;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStringId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter "ctx"
    .parameter "stringName"

    .prologue
    .line 89
    const-string v0, "string"

    invoke-static {p0, v0, p1}, Lcom/jd/droidlib/util/ResourceUtils;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static merge(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    .locals 3
    .parameter "source"
    .parameter "target"
    .parameter "overwrite"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 37
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 43
    return-void

    .line 38
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 39
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_0

    .line 40
    :cond_2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public static readRawResource(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter "ctx"
    .parameter "resId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 73
    const/4 v1, 0x0

    .line 75
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 76
    invoke-static {v1}, Lcom/jd/droidlib/util/IOUtils;->readToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 79
    new-array v3, v3, [Ljava/io/Closeable;

    .line 80
    aput-object v1, v3, v4

    invoke-static {v3}, Lcom/jd/droidlib/util/IOUtils;->silentlyClose([Ljava/io/Closeable;)V

    .line 76
    return-object v2

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    new-array v3, v3, [Ljava/io/Closeable;

    .line 80
    aput-object v1, v3, v4

    invoke-static {v3}, Lcom/jd/droidlib/util/IOUtils;->silentlyClose([Ljava/io/Closeable;)V

    .line 81
    throw v2
.end method

.method public static valueForKey(Landroid/content/Context;IILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "ctx"
    .parameter "keysArrId"
    .parameter "valuesArrId"
    .parameter "key"

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, keysArr:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, valuesArr:[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 63
    .local v0, idx:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    aget-object v3, v2, v0

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
