.class public Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPlugsTools;
.super Ljava/lang/Object;
.source "LocalPlugsTools.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalPlugsTools"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enoughInternalSpace(Ljava/io/File;)Z
    .locals 10
    .parameter "file"

    .prologue
    .line 203
    const/4 v3, 0x0

    .line 204
    .local v3, ok:Z
    const-wide/16 v4, 0x0

    .line 206
    .local v4, size:J
    :try_start_0
    invoke-static {p0}, Lcom/jingdong/app/mall/plug/utils/FileUtil;->getFileSizes(Ljava/io/File;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 211
    :goto_0
    invoke-static {}, Lcom/jingdong/app/mall/plug/utils/FileUtil;->getAvailableInternalMemorySize()J

    move-result-wide v0

    .line 212
    .local v0, availaSize:J
    const-wide/16 v6, 0x2

    mul-long/2addr v6, v4

    const-wide/32 v8, 0x30d40

    sub-long v8, v0, v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    .line 217
    const/4 v3, 0x1

    .line 219
    :cond_0
    return v3

    .line 207
    .end local v0           #availaSize:J
    :catch_0
    move-exception v2

    .line 209
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static enoughInternalSpace(Ljava/io/InputStream;)Z
    .locals 10
    .parameter "inputStream"

    .prologue
    .line 239
    const/4 v3, 0x0

    .line 240
    .local v3, ok:Z
    const-wide/16 v4, 0x0

    .line 242
    .local v4, size:J
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-long v4, v6

    .line 247
    :goto_0
    invoke-static {}, Lcom/jingdong/app/mall/plug/utils/FileUtil;->getAvailableInternalMemorySize()J

    move-result-wide v0

    .line 248
    .local v0, availaSize:J
    const-wide/16 v6, 0x2

    mul-long/2addr v6, v4

    const-wide/32 v8, 0x30d40

    sub-long v8, v0, v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    .line 253
    const/4 v3, 0x1

    .line 255
    :cond_0
    return v3

    .line 243
    .end local v0           #availaSize:J
    :catch_0
    move-exception v2

    .line 245
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static installPlugFromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .locals 7
    .parameter "context"
    .parameter "pulgId"

    .prologue
    .line 171
    const-string v0, ""

    .line 172
    .local v0, fileName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 173
    .local v3, plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    const-string v1, ""

    .line 178
    .local v1, jsonStr:Ljava/lang/String;
    :try_start_0
    sget v4, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->SPACE_ONLY_INTERNAL:I

    const-string v5, "plugs"

    const-string v6, "localplug.properties"

    invoke-static {v4, v5, v6}, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->getPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jingdong/app/mall/plug/utils/StreamToolBox;->loadStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 185
    :goto_0
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    invoke-static {p0}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPlugsTools;->intiAssetplugInforToLocal(Landroid/content/Context;)V

    .line 188
    sget v4, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->SPACE_ONLY_INTERNAL:I

    const-string v5, "plugs"

    const-string v6, "localplug.properties"

    invoke-static {v4, v5, v6}, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->getPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jingdong/app/mall/plug/utils/StreamToolBox;->loadStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 191
    .local v2, objjson:Lorg/json/JSONObject;
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {p0, v0}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPlugsTools;->readApkToDBFromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 199
    .end local v2           #objjson:Lorg/json/JSONObject;
    :goto_1
    return-object v3

    .line 194
    :catch_0
    move-exception v4

    goto :goto_1

    .line 179
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private static intiAssetplugInforToLocal(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 152
    .local v0, assetManager:Landroid/content/res/AssetManager;
    const/4 v2, 0x0

    .line 154
    .local v2, files:[Ljava/lang/String;
    :try_start_0
    const-string v5, "plugs"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 155
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 156
    .local v3, hashtable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 162
    invoke-static {v3}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPlugsTools;->saveLocalPluginfo(Ljava/util/Hashtable;)V

    .line 168
    .end local v3           #hashtable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 156
    .restart local v3       #hashtable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    aget-object v1, v2, v5

    .line 157
    .local v1, fileName:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPlugsTools;->readApkFromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v4

    .line 158
    .local v4, plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    if-eqz v4, :cond_1

    .line 159
    iget-object v7, v4, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    invoke-virtual {v3, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 163
    .end local v1           #fileName:Ljava/lang/String;
    .end local v3           #hashtable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static isGreater_1M()Z
    .locals 5

    .prologue
    .line 228
    const/4 v2, 0x1

    .line 230
    .local v2, greater:Z
    invoke-static {}, Lcom/jingdong/app/mall/plug/utils/FileUtil;->getAvailableInternalMemorySize()J

    move-result-wide v0

    .line 231
    .local v0, availaSize:J
    const-wide/32 v3, 0x100000

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 232
    const/4 v2, 0x0

    .line 234
    :cond_0
    return v2
.end method

.method private static readApkFromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .locals 10
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 98
    .local v0, assetManager:Landroid/content/res/AssetManager;
    const/4 v4, 0x0

    .line 99
    .local v4, isok:Z
    const/4 v5, 0x0

    .line 101
    .local v5, plugin:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :try_start_0
    const-string v7, ".apk"

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 102
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "plugs/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 103
    .local v3, inputStream:Ljava/io/InputStream;
    invoke-static {v3}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPlugsTools;->enoughInternalSpace(Ljava/io/InputStream;)Z

    move-result v2

    .line 104
    .local v2, enough:Z
    if-nez v2, :cond_0

    .line 105
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v7

    const-string v8, "\u5185\u5b58\u4e0d\u8db3\uff0c\u8bf7\u91ca\u653e\u90e8\u5206\u5185\u5b58\u4ee5\u4fdd\u8bc1\u7a0b\u5e8f\u6b63\u5e38\u8fd0\u884c!"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    move-object v6, v5

    .line 122
    .end local v2           #enough:Z
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v5           #plugin:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .local v6, plugin:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :goto_0
    return-object v6

    .line 108
    .end local v6           #plugin:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .restart local v2       #enough:Z
    .restart local v3       #inputStream:Ljava/io/InputStream;
    .restart local v5       #plugin:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :cond_0
    sget v7, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->SPACE_ONLY_INTERNAL:I

    const-string v8, "plugs/install/temp"

    invoke-static {v7, v8, p1}, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->getPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, downpath:Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/jingdong/app/mall/plug/utils/StreamToolBox;->saveStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)Z

    .line 110
    invoke-static {p0, v1}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPluginParser;->parseFirstProperties(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .end local v1           #downpath:Ljava/lang/String;
    .end local v2           #enough:Z
    .end local v3           #inputStream:Ljava/io/InputStream;
    :goto_1
    move-object v6, v5

    .line 122
    .end local v5           #plugin:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .restart local v6       #plugin:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    goto :goto_0

    .line 112
    .end local v6           #plugin:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .restart local v5       #plugin:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 115
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private static readApkToDBFromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .locals 10
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 55
    .local v0, assetManager:Landroid/content/res/AssetManager;
    const/4 v4, 0x0

    .line 56
    .local v4, isok:Z
    const/4 v5, 0x0

    .line 58
    .local v5, plugin:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :try_start_0
    const-string v7, ".apk"

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 59
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "plugs/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 60
    .local v3, inputStream:Ljava/io/InputStream;
    invoke-static {v3}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPlugsTools;->enoughInternalSpace(Ljava/io/InputStream;)Z

    move-result v2

    .line 61
    .local v2, enough:Z
    if-nez v2, :cond_0

    .line 62
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v7

    const-string v8, "\u5185\u5b58\u4e0d\u8db3\uff0c\u8bf7\u91ca\u653e\u90e8\u5206\u5185\u5b58\u4ee5\u4fdd\u8bc1\u7a0b\u5e8f\u6b63\u5e38\u8fd0\u884c!"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    move-object v6, v5

    .line 93
    .end local v2           #enough:Z
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v5           #plugin:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .local v6, plugin:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :goto_0
    return-object v6

    .line 65
    .end local v6           #plugin:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .restart local v2       #enough:Z
    .restart local v3       #inputStream:Ljava/io/InputStream;
    .restart local v5       #plugin:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :cond_0
    sget v7, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->SPACE_ONLY_INTERNAL:I

    const-string v8, "plugs/install/temp"

    invoke-static {v7, v8, p1}, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->getPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, downpath:Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/jingdong/app/mall/plug/utils/StreamToolBox;->saveStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)Z

    .line 67
    invoke-static {p0, v1}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPluginParser;->parseFirstProperties(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v5

    .line 68
    if-eqz v5, :cond_1

    .line 69
    iput-object v1, v5, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->downFilePath:Ljava/lang/String;

    .line 70
    invoke-virtual {v5, p0}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->install(Landroid/content/Context;)Z

    move-result v4

    .line 71
    invoke-static {v1}, Lcom/jingdong/app/mall/plug/utils/FileUtil;->delFile(Ljava/lang/String;)V

    .line 72
    if-eqz v4, :cond_1

    .line 76
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jingdong/app/mall/MyApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->getDao(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;

    move-result-object v7

    iget-object v8, v5, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->exist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 77
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jingdong/app/mall/MyApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->getDao(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->update(Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;)V

    .line 81
    :goto_1
    invoke-static {}, Lcom/jingdong/app/mall/plug/PlugManager;->getInstance()Lcom/jingdong/app/mall/plug/PlugManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/jingdong/app/mall/plug/PlugManager;->addAndUpdate(Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;)V

    .end local v1           #downpath:Ljava/lang/String;
    .end local v2           #enough:Z
    .end local v3           #inputStream:Ljava/io/InputStream;
    :cond_1
    :goto_2
    move-object v6, v5

    .line 93
    .end local v5           #plugin:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .restart local v6       #plugin:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    goto :goto_0

    .line 79
    .end local v6           #plugin:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .restart local v1       #downpath:Ljava/lang/String;
    .restart local v2       #enough:Z
    .restart local v3       #inputStream:Ljava/io/InputStream;
    .restart local v5       #plugin:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :cond_2
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jingdong/app/mall/MyApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->getDao(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->insert(Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 88
    .end local v1           #downpath:Ljava/lang/String;
    .end local v2           #enough:Z
    .end local v3           #inputStream:Ljava/io/InputStream;
    :catch_0
    move-exception v7

    goto :goto_2

    .line 85
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static readApkToDBFromAsset(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 34
    .local v0, assetManager:Landroid/content/res/AssetManager;
    const/4 v2, 0x0

    .line 36
    .local v2, files:[Ljava/lang/String;
    :try_start_0
    const-string v5, "plugs"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 37
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 38
    .local v3, hashtable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 44
    invoke-static {v3}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPlugsTools;->saveLocalPluginfo(Ljava/util/Hashtable;)V

    .line 50
    .end local v3           #hashtable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 38
    .restart local v3       #hashtable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    aget-object v1, v2, v5

    .line 39
    .local v1, fileName:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPlugsTools;->readApkToDBFromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v4

    .line 40
    .local v4, plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    if-eqz v4, :cond_1

    .line 41
    iget-object v7, v4, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    invoke-virtual {v3, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 45
    .end local v1           #fileName:Ljava/lang/String;
    .end local v3           #hashtable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private static saveLocalPluginfo(Ljava/util/Hashtable;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, hashtable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 127
    .local v2, objjson:Lorg/json/JSONObject;
    invoke-virtual {p0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 140
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->SPACE_ONLY_INTERNAL:I

    const-string v6, "plugs"

    const-string v7, "localplug.properties"

    invoke-static {v5, v6, v7}, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->getPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jingdong/app/mall/plug/utils/StreamToolBox;->saveStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    :goto_1
    return-void

    .line 128
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 129
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 131
    .local v3, value:Ljava/lang/Object;
    :try_start_1
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v4

    goto :goto_0

    .line 141
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/Object;
    :catch_1
    move-exception v4

    goto :goto_1
.end method
