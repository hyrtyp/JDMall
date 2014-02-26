.class public Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;
.super Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
.source "DynamicAPKPlug.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DynamicAPKPlug"


# instance fields
.field private classLoader:Ljava/lang/ClassLoader;

.field iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPlugInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPlugInterface;

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "json"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;-><init>(Lorg/json/JSONObject;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPlugInterface;

    .line 41
    return-void
.end method

.method public static checkApk(Ljava/lang/String;ILandroid/content/Context;)Z
    .locals 9
    .parameter "path"
    .parameter "screen"
    .parameter "context"

    .prologue
    .line 291
    const/4 v2, 0x0

    .line 292
    .local v2, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 295
    .local v5, isOk:Z
    :try_start_0
    invoke-static {p2, p0}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPluginParser;->parseFirstProperties(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v6

    .line 296
    .local v6, localPluginItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    iget-object v7, v6, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->lunchPath:Ljava/lang/String;

    .line 297
    .local v7, lunchPath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v2           #file:Ljava/io/File;
    .local v3, file:Ljava/io/File;
    :try_start_1
    invoke-static {v3}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;->getClassLoader(Ljava/io/File;)Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    move-result-object v0

    .line 299
    .local v0, classLoader:Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 300
    invoke-virtual {p2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 302
    :cond_0
    invoke-virtual {v0, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/app/mall/plug/framework/plug/open/IPlugInterface;

    .line 303
    .local v4, iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPlugInterface;
    if-eqz p1, :cond_1

    const/4 v8, 0x1

    if-ne p1, v8, :cond_2

    :cond_1
    instance-of v8, v4, Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    if-eqz v8, :cond_2

    .line 304
    const/4 v5, 0x1

    move-object v2, v3

    .line 311
    .end local v0           #classLoader:Ljava/lang/ClassLoader;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPlugInterface;
    .end local v6           #localPluginItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .end local v7           #lunchPath:Ljava/lang/String;
    .restart local v2       #file:Ljava/io/File;
    :goto_0
    return v5

    .line 305
    .end local v2           #file:Ljava/io/File;
    .restart local v0       #classLoader:Ljava/lang/ClassLoader;
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPlugInterface;
    .restart local v6       #localPluginItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .restart local v7       #lunchPath:Ljava/lang/String;
    :cond_2
    const/4 v8, -0x1

    if-ne p1, v8, :cond_3

    instance-of v8, v4, Lcom/jingdong/app/mall/plug/framework/plug/open/IPServiceplug;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v8, :cond_3

    .line 306
    const/4 v5, 0x1

    move-object v2, v3

    .line 308
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_0

    .end local v0           #classLoader:Ljava/lang/ClassLoader;
    .end local v4           #iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPlugInterface;
    .end local v6           #localPluginItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .end local v7           #lunchPath:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 309
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 308
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    .restart local v6       #localPluginItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .restart local v7       #lunchPath:Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_1

    .end local v2           #file:Ljava/io/File;
    .restart local v0       #classLoader:Ljava/lang/ClassLoader;
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPlugInterface;
    :cond_3
    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_0
.end method

.method private static isWrongPkg(Landroid/content/Context;Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;Ljava/lang/String;)Z
    .locals 4
    .parameter "activity"
    .parameter "plug"
    .parameter "path"

    .prologue
    .line 332
    const/4 v1, 0x0

    .line 334
    .local v1, isWrong:Z
    const/4 v0, 0x0

    .line 336
    .local v0, downLoadPlug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :try_start_0
    invoke-static {p0, p2}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPluginParser;->parseFirstProperties(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 354
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    iget-object v3, v0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 355
    :cond_0
    const/4 v1, 0x1

    .line 363
    :cond_1
    return v1

    .line 337
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public getPlugIntance(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/plug/open/IPlugInterface;
    .locals 5
    .parameter "context"

    .prologue
    .line 261
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPlugInterface;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPlugInterface;

    invoke-interface {v3}, Lcom/jingdong/app/mall/plug/framework/plug/open/IPlugInterface;->getVersion()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    iget-object v3, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPlugInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    return-object v3

    .line 265
    :cond_0
    const/4 v1, 0x0

    .line 267
    .local v1, file:Ljava/io/File;
    :try_start_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->intallPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1           #file:Ljava/io/File;
    .local v2, file:Ljava/io/File;
    move-object v1, v2

    .line 271
    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    :goto_1
    :try_start_2
    invoke-static {v1}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;->getClassLoader(Ljava/io/File;)Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->classLoader:Ljava/lang/ClassLoader;

    .line 272
    iget-object v3, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->classLoader:Ljava/lang/ClassLoader;

    if-nez v3, :cond_1

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->classLoader:Ljava/lang/ClassLoader;

    .line 275
    :cond_1
    iget-object v3, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->classLoader:Ljava/lang/ClassLoader;

    iget-object v4, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->lunchPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/app/mall/plug/framework/plug/open/IPlugInterface;

    iput-object v3, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPlugInterface;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 279
    .end local v1           #file:Ljava/io/File;
    :goto_2
    iget-object v3, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPlugInterface;

    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 268
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #file:Ljava/io/File;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public install(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 56
    const/4 v4, 0x0

    .line 66
    .local v4, isok:Z
    iget-object v7, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->downFilePath:Ljava/lang/String;

    invoke-static {p1, p0, v7}, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->isWrongPkg(Landroid/content/Context;Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;Ljava/lang/String;)Z

    move-result v3

    .line 71
    .local v3, isWrong:Z
    if-eqz v3, :cond_0

    .line 117
    :goto_0
    return v6

    .line 75
    :cond_0
    iget-object v7, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->downFilePath:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 81
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->getInstalledPath(Landroid/content/Context;)Ljava/lang/String;

    .line 86
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->downFilePath:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v1, f:Ljava/io/File;
    invoke-static {v1}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPlugsTools;->enoughInternalSpace(Ljava/io/File;)Z

    move-result v0

    .line 88
    .local v0, enough:Z
    if-nez v0, :cond_2

    .line 89
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v7

    const-string v8, "\u5185\u5b58\u4e0d\u8db3\uff0c\u8bf7\u91ca\u653e\u90e8\u5206\u5185\u5b58\u4ee5\u4fdd\u8bc1\u7a0b\u5e8f\u6b63\u5e38\u8fd0\u884c!"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 114
    .end local v0           #enough:Z
    .end local v1           #f:Ljava/io/File;
    :catch_0
    move-exception v6

    :cond_1
    :goto_1
    move v6, v4

    .line 117
    goto :goto_0

    .line 92
    .restart local v0       #enough:Z
    .restart local v1       #f:Ljava/io/File;
    :cond_2
    iget-object v7, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->downFilePath:Ljava/lang/String;

    iget-object v8, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->intallPath:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/jingdong/app/mall/plug/utils/FileUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v7, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->intallPath:Ljava/lang/String;

    iget v8, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->screen:I

    invoke-static {v7, v8, p1}, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->checkApk(Ljava/lang/String;ILandroid/content/Context;)Z

    move-result v2

    .line 95
    .local v2, isOk:Z
    if-nez v2, :cond_3

    .line 96
    iget-object v7, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->intallPath:Ljava/lang/String;

    invoke-static {v7}, Lcom/jingdong/app/mall/plug/utils/FileUtil;->delAllFile(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_3
    iget-object v6, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->intallPath:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPluginParser;->parseFirstProperties(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v5

    .line 101
    .local v5, localPluginItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->cloneFromLocalProperties(Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;)V

    .line 102
    if-nez v5, :cond_4

    iget-object v6, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->intallPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 103
    iget-object v6, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->intallPath:Ljava/lang/String;

    invoke-static {v6}, Lcom/jingdong/app/mall/plug/utils/FileUtil;->delFile(Ljava/lang/String;)V

    goto :goto_1

    .line 105
    :cond_4
    iget-object v6, v5, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->lunchPath:Ljava/lang/String;

    iput-object v6, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->lunchPath:Ljava/lang/String;

    .line 109
    iget-object v6, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->lunchPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 110
    const/4 v4, 0x1

    .line 111
    sget-object v6, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;->INSTALLED:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    iput-object v6, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->status:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public install(Landroid/content/Context;Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;)Z
    .locals 1
    .parameter "context"
    .parameter "plugStatusListener"

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->install(Landroid/content/Context;)Z

    move-result v0

    invoke-interface {p2, v0}, Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;->onChange(Z)V

    .line 228
    const/4 v0, 0x1

    return v0
.end method

.method public start(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, p1, v0, v0}, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->start(Landroid/content/Context;Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;Landroid/content/Intent;)Z

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public start(Landroid/content/Context;Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;Landroid/content/Intent;)Z
    .locals 4
    .parameter "context"
    .parameter "plugStatusListener"
    .parameter "intent"

    .prologue
    .line 213
    invoke-virtual {p0, p1, p2, p3}, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->startWithoutRepair(Landroid/content/Context;Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;Landroid/content/Intent;)Z

    move-result v1

    .line 214
    .local v1, isOk:Z
    if-nez v1, :cond_0

    .line 215
    iget-object v3, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->plugId:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPlugsTools;->installPlugFromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v2

    .line 216
    .local v2, plugItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 217
    check-cast v0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;

    .line 218
    .local v0, dynamicAPKPlug:Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;
    invoke-virtual {v0, p1, p2, p3}, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->startWithoutRepair(Landroid/content/Context;Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;Landroid/content/Intent;)Z

    move-result v1

    .line 222
    .end local v0           #dynamicAPKPlug:Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;
    .end local v2           #plugItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :cond_0
    return v1
.end method

.method public startWithoutRepair(Landroid/content/Context;Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;Landroid/content/Intent;)Z
    .locals 9
    .parameter "context"
    .parameter "plugStatusListener"
    .parameter "intent"

    .prologue
    .line 145
    const/4 v3, 0x0

    .line 146
    .local v3, isOk:Z
    instance-of v6, p1, Landroid/app/Activity;

    if-nez v6, :cond_0

    .line 147
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "context must be Activity instance!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 149
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v6, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->intallPath:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 159
    iget v6, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->screen:I

    if-nez v6, :cond_6

    .line 160
    move-object v5, p3

    .line 161
    .local v5, tempIntent:Landroid/content/Intent;
    if-nez v5, :cond_3

    .line 162
    new-instance v5, Landroid/content/Intent;

    .end local v5           #tempIntent:Landroid/content/Intent;
    const-class v6, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .restart local v5       #tempIntent:Landroid/content/Intent;
    :goto_0
    const-string v6, "plugId"

    iget-object v7, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->plugId:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v6, "file"

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->intallPath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 168
    const-string v6, "fragmentName"

    iget-object v7, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->lunchPath:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v6, "isInFrame"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 174
    .local v2, isInFrame:Z
    if-eqz v2, :cond_5

    .line 175
    instance-of v6, p1, Lcom/jingdong/app/mall/utils/MyActivity;

    if-eqz v6, :cond_4

    .line 176
    check-cast p1, Lcom/jingdong/app/mall/utils/MyActivity;

    .end local p1
    invoke-virtual {p1, p3}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 181
    :cond_1
    :goto_1
    const/4 v3, 0x1

    .line 208
    .end local v2           #isInFrame:Z
    .end local v5           #tempIntent:Landroid/content/Intent;
    :cond_2
    :goto_2
    return v3

    .line 164
    .restart local v5       #tempIntent:Landroid/content/Intent;
    .restart local p1
    :cond_3
    const-class v6, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;

    invoke-virtual {p3, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 177
    .restart local v2       #isInFrame:Z
    :cond_4
    instance-of v6, p1, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    if-eqz v6, :cond_1

    .line 178
    check-cast p1, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    .end local p1
    invoke-virtual {p1, p3}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->startSubActivity(Landroid/content/Intent;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    goto :goto_1

    .line 183
    .restart local p1
    :cond_5
    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 184
    const/4 v3, 0x1

    .line 186
    goto :goto_2

    .end local v2           #isInFrame:Z
    .end local v5           #tempIntent:Landroid/content/Intent;
    :cond_6
    iget v6, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->screen:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 187
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->getPlugIntance(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/plug/open/IPlugInterface;

    move-result-object v1

    check-cast v1, Lcom/jingdong/app/mall/plug/framework/plug/open/IPServiceplug;

    .line 188
    .local v1, ipServiceplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPServiceplug;
    if-nez v1, :cond_7

    .line 189
    iget-object v6, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->plugId:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPlugsTools;->installPlugFromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v4

    .line 190
    .local v4, plugItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    if-eqz v4, :cond_7

    .line 191
    invoke-virtual {v4, p1}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->getPlugIntance(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/plug/open/IPlugInterface;

    move-result-object v1

    .end local v1           #ipServiceplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPServiceplug;
    check-cast v1, Lcom/jingdong/app/mall/plug/framework/plug/open/IPServiceplug;

    .line 194
    .end local v4           #plugItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .restart local v1       #ipServiceplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPServiceplug;
    :cond_7
    if-eqz v1, :cond_2

    .line 195
    invoke-interface {v1, p1, p3}, Lcom/jingdong/app/mall/plug/framework/plug/open/IPServiceplug;->onStart(Landroid/content/Context;Landroid/content/Intent;)V

    .line 196
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public unInstall(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->downFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->downFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    .end local v0           #file:Ljava/io/File;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->intallPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->intallPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    .end local v0           #file:Ljava/io/File;
    :cond_1
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 138
    :catch_0
    move-exception v1

    goto :goto_1

    .line 129
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public unInstall(Landroid/content/Context;Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;)Z
    .locals 3
    .parameter "context"
    .parameter "plugStatusListener"

    .prologue
    const/4 v2, 0x1

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->downFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->downFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 244
    .end local v0           #file:Ljava/io/File;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->intallPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 245
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;->intallPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 252
    .end local v0           #file:Ljava/io/File;
    :cond_1
    :goto_1
    invoke-interface {p2, v2}, Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;->onChange(Z)V

    .line 253
    return v2

    .line 250
    :catch_0
    move-exception v1

    goto :goto_1

    .line 241
    :catch_1
    move-exception v1

    goto :goto_0
.end method
