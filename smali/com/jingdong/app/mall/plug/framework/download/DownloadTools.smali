.class public Lcom/jingdong/app/mall/plug/framework/download/DownloadTools;
.super Ljava/lang/Object;
.source "DownloadTools.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadTools"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DownloadPlug(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/util/ArrayList;I)V
    .locals 9
    .parameter "activity"
    .parameter
    .parameter "currentIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/app/mall/utils/MyActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, downloadPlugList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;>;"
    :try_start_0
    invoke-static {}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPlugsTools;->isGreater_1M()Z

    move-result v5

    .line 54
    .local v5, isGreater_1M:Z
    if-nez v5, :cond_1

    .line 184
    .end local v5           #isGreater_1M:Z
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 63
    .restart local v5       #isGreater_1M:Z
    :cond_1
    move-object v0, p0

    .line 66
    .local v0, currentActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    add-int/lit8 v6, p2, 0x1

    .line 68
    .local v6, nextIndex:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-le p2, v7, :cond_2

    .line 71
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/jingdong/app/mall/utils/CommonUtil;->setPlugRequestTime(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    .end local v0           #currentActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    .end local v5           #isGreater_1M:Z
    .end local v6           #nextIndex:I
    :catch_0
    move-exception v3

    .line 181
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #currentActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    .restart local v5       #isGreater_1M:Z
    .restart local v6       #nextIndex:I
    :cond_2
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    .line 85
    .local v1, currentPlug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    iget v7, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->update:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 169
    :pswitch_1
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jingdong/app/mall/MyApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->getDao(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;

    move-result-object v7

    iget-object v8, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->select(Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v2

    .line 170
    .local v2, deletePlug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    if-eqz v2, :cond_0

    .line 171
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jingdong/app/mall/MyApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->getDao(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;

    move-result-object v7

    iget-object v8, v2, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->delete(Ljava/lang/String;)I

    .line 173
    new-instance v4, Ljava/io/File;

    iget-object v7, v2, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->intallPath:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 175
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 88
    .end local v2           #deletePlug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .end local v4           #file:Ljava/io/File;
    :pswitch_2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    new-instance v8, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$1;

    invoke-direct {v8, v0, p1, v6}, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$1;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/util/ArrayList;I)V

    invoke-static {p0, v7, v8}, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools;->downloadPlugin(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;Lcom/jingdong/app/mall/plug/framework/download/OnDownloadListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static downloadPlugin(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;Lcom/jingdong/app/mall/plug/framework/download/OnDownloadListener;)V
    .locals 9
    .parameter "activity"
    .parameter "plug"
    .parameter "listener"

    .prologue
    .line 229
    :try_start_0
    new-instance v0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2;

    invoke-direct {v0, p2, p1, p0}, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2;-><init>(Lcom/jingdong/app/mall/plug/framework/download/OnDownloadListener;Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;Lcom/jingdong/app/mall/utils/MyActivity;)V

    .line 300
    .local v0, downloadListener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;
    iget-object v6, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->version:Ljava/lang/String;

    const-string v7, "."

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 301
    .local v4, replaceVersion:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, fileName:Ljava/lang/String;
    new-instance v5, Lcom/jingdong/common/utils/FileGuider;

    invoke-direct {v5}, Lcom/jingdong/common/utils/FileGuider;-><init>()V

    .line 304
    .local v5, savePath:Lcom/jingdong/common/utils/FileGuider;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/FileGuider;->setSpace(I)V

    .line 305
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/FileGuider;->setImmutable(Z)V

    .line 306
    invoke-virtual {v5, v2}, Lcom/jingdong/common/utils/FileGuider;->setFileName(Ljava/lang/String;)V

    .line 307
    const-string v6, "plugs/down"

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/FileGuider;->setChildDirName(Ljava/lang/String;)V

    .line 308
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/FileGuider;->setMode(I)V

    .line 311
    new-instance v3, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 312
    .local v3, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    iget-object v6, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 313
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 314
    invoke-virtual {v3, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 315
    const/16 v6, 0x1f4

    invoke-virtual {v3, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setType(I)V

    .line 316
    invoke-virtual {v3, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setSavePath(Lcom/jingdong/common/utils/FileGuider;)V

    .line 317
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUseCookies(Z)V

    .line 318
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v0           #downloadListener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;
    .end local v2           #fileName:Ljava/lang/String;
    .end local v3           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    .end local v4           #replaceVersion:Ljava/lang/String;
    .end local v5           #savePath:Lcom/jingdong/common/utils/FileGuider;
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v1

    .line 320
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDownloadPlugList(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 8
    .parameter "json"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    invoke-static {p0}, Lcom/jingdong/app/mall/plug/framework/download/PlugHelper;->parsePlugs(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v2

    .line 327
    .local v2, pluglist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;>;"
    if-nez v2, :cond_1

    .line 328
    const/4 v0, 0x0

    .line 356
    :cond_0
    return-object v0

    .line 330
    :cond_1
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jingdong/app/mall/MyApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->getDao(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->selectAll()Ljava/util/HashMap;

    move-result-object v3

    .line 335
    .local v3, pluglistlocal:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v0, downloadPlugList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    .line 341
    .local v1, plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    iget-object v6, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 342
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 344
    :cond_3
    iget-object v6, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    .line 349
    .local v4, pluglocal:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    if-eqz v4, :cond_2

    iget-object v6, v4, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->version:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v4, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->version:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 350
    iget-object v6, v4, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->version:Ljava/lang/String;

    iget-object v7, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->version:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 351
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static isEnough(Ljava/lang/String;)Z
    .locals 5
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 197
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    :goto_0
    return v3

    .line 201
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v1, file:Ljava/io/File;
    invoke-static {v1}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPlugsTools;->enoughInternalSpace(Ljava/io/File;)Z

    move-result v2

    .line 203
    .local v2, isEnough:Z
    if-nez v2, :cond_1

    .line 204
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 209
    .local v0, delete:Z
    goto :goto_0

    .line 214
    .end local v0           #delete:Z
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method
