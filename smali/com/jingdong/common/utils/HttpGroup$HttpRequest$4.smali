.class Lcom/jingdong/common/utils/HttpGroup$HttpRequest$4;
.super Ljava/lang/Object;
.source "HttpGroup.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$4;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 1385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1389
    const/4 v0, 0x0

    .line 1398
    .local v0, cachesFile:Ljava/io/File;
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$4;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v7, v7, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getCacheMode()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$4;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v7, v7, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isLocalFileCache()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$4;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #calls: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->findCachesFileByMd5()Ljava/io/File;
    invoke-static {v7}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$4(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1400
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$4;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v7, v7, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getLocalFileCacheTime()J

    move-result-wide v4

    .line 1402
    .local v4, localFileCacheTime:J
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-eqz v7, :cond_1

    invoke-static {v0}, Lcom/jingdong/common/database/table/CacheFileTable;->isExpired(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1406
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$4;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #calls: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->doNetAndCache()V
    invoke-static {v7}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$5(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    .line 1469
    .end local v4           #localFileCacheTime:J
    :cond_0
    :goto_0
    return-void

    .line 1410
    .restart local v4       #localFileCacheTime:J
    :cond_1
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$4;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    new-instance v8, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    iget-object v9, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$4;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #getter for: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->this$0:Lcom/jingdong/common/utils/HttpGroup;
    invoke-static {v9}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$14(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;-><init>(Lcom/jingdong/common/utils/HttpGroup;)V

    iput-object v8, v7, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    .line 1412
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$4;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v7, v7, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getType()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    .line 1419
    :sswitch_0
    const/4 v2, 0x0

    .line 1421
    .local v2, inputStream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1422
    .end local v2           #inputStream:Ljava/io/FileInputStream;
    .local v3, inputStream:Ljava/io/FileInputStream;
    :try_start_1
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$4;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v7, v7, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$5()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/jingdong/common/utils/IOUtil;->readAsString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setString(Ljava/lang/String;)V

    .line 1423
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$4;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v7, v7, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    new-instance v8, Lcom/jingdong/common/utils/JSONObjectProxy;

    new-instance v9, Lorg/json/JSONObject;

    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$4;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v10, v10, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v10}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v7, v8}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setJsonObject(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 1430
    if-eqz v3, :cond_0

    .line 1432
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1433
    :catch_0
    move-exception v7

    goto :goto_0

    .line 1424
    .end local v3           #inputStream:Ljava/io/FileInputStream;
    .restart local v2       #inputStream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 1425
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1426
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1427
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$4;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    .line 1428
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$4;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #calls: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->doNetAndCache()V
    invoke-static {v7}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$5(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1430
    if-eqz v2, :cond_0

    .line 1432
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1433
    :catch_2
    move-exception v7

    goto :goto_0

    .line 1429
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 1430
    :goto_2
    if-eqz v2, :cond_2

    .line 1432
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1436
    :cond_2
    :goto_3
    throw v7

    .line 1447
    .end local v2           #inputStream:Ljava/io/FileInputStream;
    :sswitch_1
    :try_start_6
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$4;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v7, v7, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setLength(J)V

    .line 1449
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$4;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v7, v7, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v7, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setSaveFile(Ljava/io/File;)V

    .line 1451
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$4;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v7, v7, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isNeedShareImage()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1452
    invoke-static {v0}, Lcom/jingdong/common/utils/FileService;->saveShareImage(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    .line 1453
    .local v6, shareImagePath:Ljava/lang/String;
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$4;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v7, v7, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v7, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setShareImagePath(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 1455
    .end local v6           #shareImagePath:Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 1456
    .local v1, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1457
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$4;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iput-object v10, v7, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    .line 1458
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$4;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #calls: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->doNetAndCache()V
    invoke-static {v7}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$5(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    goto/16 :goto_0

    .line 1467
    .end local v1           #e:Ljava/lang/Throwable;
    .end local v4           #localFileCacheTime:J
    :cond_3
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$4;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #calls: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->doNetAndCache()V
    invoke-static {v7}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$5(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    goto/16 :goto_0

    .line 1433
    .restart local v2       #inputStream:Ljava/io/FileInputStream;
    .restart local v4       #localFileCacheTime:J
    :catch_4
    move-exception v8

    goto :goto_3

    .line 1429
    .end local v2           #inputStream:Ljava/io/FileInputStream;
    .restart local v3       #inputStream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #inputStream:Ljava/io/FileInputStream;
    .restart local v2       #inputStream:Ljava/io/FileInputStream;
    goto :goto_2

    .line 1424
    .end local v2           #inputStream:Ljava/io/FileInputStream;
    .restart local v3       #inputStream:Ljava/io/FileInputStream;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3           #inputStream:Ljava/io/FileInputStream;
    .restart local v2       #inputStream:Ljava/io/FileInputStream;
    goto :goto_1

    .line 1412
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x1388 -> :sswitch_1
    .end sparse-switch
.end method
