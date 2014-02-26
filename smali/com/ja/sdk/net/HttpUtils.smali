.class public Lcom/ja/sdk/net/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final OK:I = 0xc8

.field private static final POST:Ljava/lang/String; = "POST"

.field private static final TAG:Ljava/lang/String; = "HttpUtils"

.field private static final TIME_OUT:I = 0x7530

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static isNetWorkExceptionOk:Ljava/lang/Boolean;

.field private static isNetWorkPageVisitOk:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 365
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ja/sdk/net/HttpUtils;->isNetWorkPageVisitOk:Ljava/lang/Boolean;

    .line 366
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ja/sdk/net/HttpUtils;->isNetWorkExceptionOk:Ljava/lang/Boolean;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized doHttpException(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/ja/sdk/net/HttpCallBackListener;)V
    .locals 16
    .parameter "context"
    .parameter "method"
    .parameter "urlStr"
    .parameter "ja"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 276
    const-class v12, Lcom/ja/sdk/net/HttpUtils;

    monitor-enter v12

    const/4 v4, 0x0

    .line 277
    .local v4, conn:Ljava/net/HttpURLConnection;
    const/4 v6, 0x0

    .line 278
    .local v6, outStream:Ljava/io/OutputStream;
    move-object/from16 v8, p2

    .line 281
    .local v8, reallyUrl:Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 282
    :try_start_0
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-interface {v0, v8, v1}, Lcom/ja/sdk/net/HttpCallBackListener;->onStart(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 286
    :cond_0
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v11}, Lcom/ja/sdk/framework/ExceptionDataHandle;->setSendFlag(Ljava/lang/Boolean;)V

    .line 288
    new-instance v10, Ljava/net/URL;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 289
    .local v10, url:Ljava/net/URL;
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/ja/sdk/utils/NetUtils;->openConncetion(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 290
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 291
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 292
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 295
    const-string v11, "Content-type"

    const-string v13, "application/x-javascript;charset=UTF-8"

    invoke-virtual {v4, v11, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const/16 v11, 0x7530

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 298
    const/16 v11, 0x7530

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 300
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_5

    .line 303
    const-string v11, "HttpUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ": before: conn.connect()"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 311
    :goto_1
    :try_start_2
    const-string v11, "HttpUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ": after: conn.connect()"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 314
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    .end local v6           #outStream:Ljava/io/OutputStream;
    .local v7, outStream:Ljava/io/OutputStream;
    :try_start_3
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v13, "UTF-8"

    invoke-virtual {v11, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/io/OutputStream;->write([B)V

    .line 316
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v6, v7

    .line 319
    .end local v7           #outStream:Ljava/io/OutputStream;
    .restart local v6       #outStream:Ljava/io/OutputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 321
    .local v3, code:I
    const/16 v11, 0xc8

    if-ne v3, v11, :cond_8

    .line 322
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v11}, Lcom/ja/sdk/framework/ExceptionDataHandle;->setSendFlag(Ljava/lang/Boolean;)V

    .line 323
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v11}, Lcom/ja/sdk/net/HttpUtils;->setExceptionSendNetWorkStatus(Ljava/lang/Boolean;)V

    .line 324
    if-eqz p4, :cond_2

    .line 325
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/ja/sdk/net/HttpCallBackListener;->onEnd(Lorg/json/JSONArray;)V

    .line 327
    :cond_2
    const-string v11, "HttpUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "conn.getResponseCode():= "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/ja/sdk/utils/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v11, "HttpUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "The http request:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/ja/sdk/utils/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v11, "HttpUtils"

    const-string v13, "The url:http://jlog.jd.com/"

    invoke-static {v11, v13}, Lcom/ja/sdk/utils/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 347
    :try_start_5
    const-string v11, "HttpUtils"

    const-string v13, "doHttp  finally!"

    invoke-static {v11, v13}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 348
    if-eqz v6, :cond_3

    .line 350
    :try_start_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 354
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 356
    :try_start_7
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 357
    const-wide/16 v13, 0x3e8

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    .line 358
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 363
    .end local v3           #code:I
    :cond_4
    :goto_3
    monitor-exit v12

    return-void

    .line 300
    :cond_5
    :try_start_8
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 301
    .local v9, s:Ljava/lang/String;
    const-string v13, "HttpUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 346
    .end local v9           #s:Ljava/lang/String;
    .end local v10           #url:Ljava/net/URL;
    :catchall_0
    move-exception v11

    .line 347
    :goto_4
    :try_start_9
    const-string v13, "HttpUtils"

    const-string v14, "doHttp  finally!"

    invoke-static {v13, v14}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 348
    if-eqz v6, :cond_6

    .line 350
    :try_start_a
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 354
    :cond_6
    :goto_5
    if-eqz v4, :cond_7

    .line 356
    :try_start_b
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 357
    const-wide/16 v13, 0x3e8

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    .line 358
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 362
    :cond_7
    :goto_6
    :try_start_c
    throw v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 276
    :catchall_1
    move-exception v11

    monitor-exit v12

    throw v11

    .line 306
    .restart local v10       #url:Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 308
    .local v5, e:Ljava/io/IOException;
    const/4 v11, 0x0

    :try_start_d
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v11}, Lcom/ja/sdk/net/HttpUtils;->setExceptionSendNetWorkStatus(Ljava/lang/Boolean;)V

    .line 309
    const-string v11, "HttpUtilsconn.connect()"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 333
    .end local v5           #e:Ljava/io/IOException;
    .restart local v3       #code:I
    :cond_8
    :try_start_e
    const-string v11, "HttpUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "conn.getResponseCode():= "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v11, "HttpUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "The http request:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v11, "HttpUtils"

    const-string v13, "The url:http://jlog.jd.com/"

    invoke-static {v11, v13}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    .line 341
    .end local v3           #code:I
    :goto_7
    if-eqz p4, :cond_9

    .line 342
    const/4 v11, 0x0

    :try_start_f
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v11}, Lcom/ja/sdk/framework/ExceptionDataHandle;->setSendFlag(Ljava/lang/Boolean;)V

    .line 343
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lcom/ja/sdk/net/HttpCallBackListener;->onError(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 347
    :cond_9
    :try_start_10
    const-string v11, "HttpUtils"

    const-string v13, "doHttp  finally!"

    invoke-static {v11, v13}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 348
    if-eqz v6, :cond_a

    .line 350
    :try_start_11
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    .line 354
    :cond_a
    :goto_8
    if-eqz v4, :cond_4

    .line 356
    :try_start_12
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 357
    const-wide/16 v13, 0x3e8

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    .line 358
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    goto/16 :goto_3

    .line 359
    :catch_1
    move-exception v11

    goto/16 :goto_3

    .line 337
    :catch_2
    move-exception v5

    .line 339
    .restart local v5       #e:Ljava/io/IOException;
    :try_start_13
    const-string v11, "HttpUtils"

    const-string v13, "conn.getResponseCode() exception!!"

    invoke-static {v11, v13}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_7

    .line 351
    .end local v5           #e:Ljava/io/IOException;
    .restart local v3       #code:I
    :catch_3
    move-exception v11

    goto/16 :goto_2

    .end local v3           #code:I
    .end local v10           #url:Ljava/net/URL;
    :catch_4
    move-exception v13

    goto/16 :goto_5

    .restart local v10       #url:Ljava/net/URL;
    :catch_5
    move-exception v11

    goto :goto_8

    .line 359
    .end local v10           #url:Ljava/net/URL;
    :catch_6
    move-exception v13

    goto/16 :goto_6

    .line 346
    .end local v6           #outStream:Ljava/io/OutputStream;
    .restart local v7       #outStream:Ljava/io/OutputStream;
    .restart local v10       #url:Ljava/net/URL;
    :catchall_2
    move-exception v11

    move-object v6, v7

    .end local v7           #outStream:Ljava/io/OutputStream;
    .restart local v6       #outStream:Ljava/io/OutputStream;
    goto/16 :goto_4

    .line 359
    .restart local v3       #code:I
    :catch_7
    move-exception v11

    goto/16 :goto_3
.end method

.method private static declared-synchronized doHttpGzip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/ja/sdk/net/HttpCallBackListener;)V
    .locals 15
    .parameter "context"
    .parameter "method"
    .parameter "urlStr"
    .parameter "ja"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    const-class v11, Lcom/ja/sdk/net/HttpUtils;

    monitor-enter v11

    const/4 v4, 0x0

    .line 90
    .local v4, conn:Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 91
    .local v5, outStream:Ljava/io/OutputStream;
    move-object/from16 v7, p2

    .line 94
    .local v7, reallyUrl:Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 95
    :try_start_0
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-interface {v0, v7, v1}, Lcom/ja/sdk/net/HttpCallBackListener;->onStart(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 99
    :cond_0
    new-instance v9, Ljava/net/URL;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 100
    .local v9, url:Ljava/net/URL;
    invoke-static {p0, v9}, Lcom/ja/sdk/utils/NetUtils;->openConncetion(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 101
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 102
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 103
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 105
    const-string v10, "Content-type"

    const-string v12, "application/x-javascript;charset=UTF-8"

    invoke-virtual {v4, v10, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v10, "Accept-Encoding"

    const-string v12, "gzip"

    invoke-virtual {v4, v10, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/16 v10, 0x7530

    invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 110
    const/16 v10, 0x7530

    invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 112
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_5

    .line 116
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 118
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 119
    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .end local v5           #outStream:Ljava/io/OutputStream;
    .local v6, outStream:Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "UTF-8"

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/OutputStream;->write([B)V

    .line 121
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v5, v6

    .line 124
    .end local v6           #outStream:Ljava/io/OutputStream;
    .restart local v5       #outStream:Ljava/io/OutputStream;
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 126
    .local v3, code:I
    const-string v10, "HttpUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "A code=:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/16 v10, 0xc8

    if-ne v3, v10, :cond_8

    .line 128
    const-string v10, "HttpUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "B code=:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v10}, Lcom/ja/sdk/framework/ExceptionDataHandle;->setSendFlag(Ljava/lang/Boolean;)V

    .line 130
    if-eqz p4, :cond_2

    .line 131
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/ja/sdk/net/HttpCallBackListener;->onEnd(Lorg/json/JSONArray;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    :cond_2
    if-eqz v5, :cond_3

    .line 144
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 148
    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    .line 150
    :try_start_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 151
    const-wide/16 v12, 0x3e8

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 152
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 157
    :cond_4
    :goto_2
    monitor-exit v11

    return-void

    .line 112
    .end local v3           #code:I
    :cond_5
    :try_start_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 113
    .local v8, s:Ljava/lang/String;
    const-string v12, "HttpUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4, v8}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 141
    .end local v8           #s:Ljava/lang/String;
    .end local v9           #url:Ljava/net/URL;
    :catchall_0
    move-exception v10

    .line 142
    :goto_3
    if-eqz v5, :cond_6

    .line 144
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 148
    :cond_6
    :goto_4
    if-eqz v4, :cond_7

    .line 150
    :try_start_7
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 151
    const-wide/16 v12, 0x3e8

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 152
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 156
    :cond_7
    :goto_5
    :try_start_8
    throw v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 89
    :catchall_1
    move-exception v10

    monitor-exit v11

    throw v10

    .line 136
    .restart local v3       #code:I
    .restart local v9       #url:Ljava/net/URL;
    :cond_8
    if-eqz p4, :cond_9

    .line 137
    :try_start_9
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lcom/ja/sdk/net/HttpCallBackListener;->onError(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 138
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v10}, Lcom/ja/sdk/framework/ExceptionDataHandle;->setSendFlag(Ljava/lang/Boolean;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 142
    :cond_9
    if-eqz v5, :cond_a

    .line 144
    :try_start_a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 148
    :cond_a
    :goto_6
    if-eqz v4, :cond_4

    .line 150
    :try_start_b
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 151
    const-wide/16 v12, 0x3e8

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 152
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_2

    .line 153
    :catch_0
    move-exception v10

    goto :goto_2

    .line 145
    :catch_1
    move-exception v10

    goto :goto_1

    .end local v3           #code:I
    .end local v9           #url:Ljava/net/URL;
    :catch_2
    move-exception v12

    goto :goto_4

    .restart local v3       #code:I
    .restart local v9       #url:Ljava/net/URL;
    :catch_3
    move-exception v10

    goto :goto_6

    .line 153
    .end local v3           #code:I
    .end local v9           #url:Ljava/net/URL;
    :catch_4
    move-exception v12

    goto :goto_5

    .line 141
    .end local v5           #outStream:Ljava/io/OutputStream;
    .restart local v6       #outStream:Ljava/io/OutputStream;
    .restart local v9       #url:Ljava/net/URL;
    :catchall_2
    move-exception v10

    move-object v5, v6

    .end local v6           #outStream:Ljava/io/OutputStream;
    .restart local v5       #outStream:Ljava/io/OutputStream;
    goto :goto_3

    .line 153
    .restart local v3       #code:I
    :catch_5
    move-exception v10

    goto :goto_2
.end method

.method private static declared-synchronized doHttpPageVisit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/ja/sdk/net/HttpCallBackListener;)V
    .locals 16
    .parameter "context"
    .parameter "method"
    .parameter "urlStr"
    .parameter "ja"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 171
    const-class v12, Lcom/ja/sdk/net/HttpUtils;

    monitor-enter v12

    const/4 v4, 0x0

    .line 172
    .local v4, conn:Ljava/net/HttpURLConnection;
    const/4 v6, 0x0

    .line 173
    .local v6, outStream:Ljava/io/OutputStream;
    move-object/from16 v8, p2

    .line 176
    .local v8, reallyUrl:Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 177
    :try_start_0
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-interface {v0, v8, v1}, Lcom/ja/sdk/net/HttpCallBackListener;->onStart(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 181
    :cond_0
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v11}, Lcom/ja/sdk/framework/PageAccessDataHandle;->setSendFlag(Ljava/lang/Boolean;)V

    .line 183
    new-instance v10, Ljava/net/URL;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 184
    .local v10, url:Ljava/net/URL;
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/ja/sdk/utils/NetUtils;->openConncetion(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 185
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 186
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 187
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 190
    const-string v11, "Content-type"

    const-string v13, "application/x-javascript;charset=UTF-8"

    invoke-virtual {v4, v11, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/16 v11, 0x7530

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 193
    const/16 v11, 0x7530

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 195
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_5

    .line 198
    const-string v11, "HttpUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ": before: conn.connect()"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 206
    :goto_1
    :try_start_2
    const-string v11, "HttpUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ": after: conn.connect()"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 209
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    .end local v6           #outStream:Ljava/io/OutputStream;
    .local v7, outStream:Ljava/io/OutputStream;
    :try_start_3
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v13, "UTF-8"

    invoke-virtual {v11, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/io/OutputStream;->write([B)V

    .line 211
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v6, v7

    .line 215
    .end local v7           #outStream:Ljava/io/OutputStream;
    .restart local v6       #outStream:Ljava/io/OutputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 216
    .local v3, code:I
    const/16 v11, 0xc8

    if-ne v3, v11, :cond_8

    .line 217
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v11}, Lcom/ja/sdk/framework/PageAccessDataHandle;->setSendFlag(Ljava/lang/Boolean;)V

    .line 218
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v11}, Lcom/ja/sdk/net/HttpUtils;->setPageVisitSendNetWorkStatus(Ljava/lang/Boolean;)V

    .line 220
    if-eqz p4, :cond_2

    .line 221
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/ja/sdk/net/HttpCallBackListener;->onEnd(Lorg/json/JSONArray;)V

    .line 223
    :cond_2
    const-string v11, "HttpUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "conn.getResponseCode():= "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/ja/sdk/utils/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v11, "HttpUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "The http request:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/ja/sdk/utils/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v11, "HttpUtils"

    const-string v13, "The url:http://jlog.jd.com/"

    invoke-static {v11, v13}, Lcom/ja/sdk/utils/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 246
    :try_start_5
    const-string v11, "HttpUtils"

    const-string v13, "doHttp  finally!"

    invoke-static {v11, v13}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 247
    if-eqz v6, :cond_3

    .line 249
    :try_start_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 253
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 255
    :try_start_7
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 256
    const-wide/16 v13, 0x3e8

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    .line 257
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 262
    .end local v3           #code:I
    :cond_4
    :goto_3
    monitor-exit v12

    return-void

    .line 195
    :cond_5
    :try_start_8
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 196
    .local v9, s:Ljava/lang/String;
    const-string v13, "HttpUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 245
    .end local v9           #s:Ljava/lang/String;
    .end local v10           #url:Ljava/net/URL;
    :catchall_0
    move-exception v11

    .line 246
    :goto_4
    :try_start_9
    const-string v13, "HttpUtils"

    const-string v14, "doHttp  finally!"

    invoke-static {v13, v14}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 247
    if-eqz v6, :cond_6

    .line 249
    :try_start_a
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 253
    :cond_6
    :goto_5
    if-eqz v4, :cond_7

    .line 255
    :try_start_b
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 256
    const-wide/16 v13, 0x3e8

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    .line 257
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 261
    :cond_7
    :goto_6
    :try_start_c
    throw v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 171
    :catchall_1
    move-exception v11

    monitor-exit v12

    throw v11

    .line 201
    .restart local v10       #url:Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 203
    .local v5, e:Ljava/io/IOException;
    const/4 v11, 0x0

    :try_start_d
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v11}, Lcom/ja/sdk/net/HttpUtils;->setPageVisitSendNetWorkStatus(Ljava/lang/Boolean;)V

    .line 204
    const-string v11, "HttpUtilsconn.connect()"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 229
    .end local v5           #e:Ljava/io/IOException;
    .restart local v3       #code:I
    :cond_8
    :try_start_e
    const-string v11, "HttpUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "conn.getResponseCode():= "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v11, "HttpUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "The http request:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v11, "HttpUtils"

    const-string v13, "The url:http://jlog.jd.com/"

    invoke-static {v11, v13}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    .line 240
    .end local v3           #code:I
    :goto_7
    if-eqz p4, :cond_9

    .line 241
    const/4 v11, 0x0

    :try_start_f
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v11}, Lcom/ja/sdk/framework/PageAccessDataHandle;->setSendFlag(Ljava/lang/Boolean;)V

    .line 242
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lcom/ja/sdk/net/HttpCallBackListener;->onError(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 246
    :cond_9
    :try_start_10
    const-string v11, "HttpUtils"

    const-string v13, "doHttp  finally!"

    invoke-static {v11, v13}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 247
    if-eqz v6, :cond_a

    .line 249
    :try_start_11
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    .line 253
    :cond_a
    :goto_8
    if-eqz v4, :cond_4

    .line 255
    :try_start_12
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 256
    const-wide/16 v13, 0x3e8

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    .line 257
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    goto/16 :goto_3

    .line 258
    :catch_1
    move-exception v11

    goto/16 :goto_3

    .line 234
    :catch_2
    move-exception v5

    .line 237
    .restart local v5       #e:Ljava/io/IOException;
    :try_start_13
    const-string v11, "HttpUtils"

    const-string v13, "conn.getResponseCode() exception!"

    invoke-static {v11, v13}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_7

    .line 250
    .end local v5           #e:Ljava/io/IOException;
    .restart local v3       #code:I
    :catch_3
    move-exception v11

    goto/16 :goto_2

    .end local v3           #code:I
    .end local v10           #url:Ljava/net/URL;
    :catch_4
    move-exception v13

    goto/16 :goto_5

    .restart local v10       #url:Ljava/net/URL;
    :catch_5
    move-exception v11

    goto :goto_8

    .line 258
    .end local v10           #url:Ljava/net/URL;
    :catch_6
    move-exception v13

    goto/16 :goto_6

    .line 245
    .end local v6           #outStream:Ljava/io/OutputStream;
    .restart local v7       #outStream:Ljava/io/OutputStream;
    .restart local v10       #url:Ljava/net/URL;
    :catchall_2
    move-exception v11

    move-object v6, v7

    .end local v7           #outStream:Ljava/io/OutputStream;
    .restart local v6       #outStream:Ljava/io/OutputStream;
    goto/16 :goto_4

    .line 258
    .restart local v3       #code:I
    :catch_7
    move-exception v11

    goto/16 :goto_3
.end method

.method public static declared-synchronized getExceptionSendNetWorkStatus()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 369
    const-class v0, Lcom/ja/sdk/net/HttpUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ja/sdk/net/HttpUtils;->isNetWorkExceptionOk:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getPageVisitSendNetWorkStatus()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 372
    const-class v0, Lcom/ja/sdk/net/HttpUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ja/sdk/net/HttpUtils;->isNetWorkPageVisitOk:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized postException(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;Lcom/ja/sdk/net/HttpCallBackListener;)V
    .locals 3
    .parameter "context"
    .parameter "urlStr"
    .parameter "ja"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    const-class v2, Lcom/ja/sdk/net/HttpUtils;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/ja/sdk/constant/Constants;->GZIP_SEND:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    const-string v1, "POST"

    invoke-static {p0, v1, p1, p2, p3}, Lcom/ja/sdk/net/HttpUtils;->doHttpGzip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/ja/sdk/net/HttpCallBackListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    monitor-exit v2

    return-void

    .line 52
    :cond_0
    :try_start_1
    const-string v1, "POST"

    invoke-static {p0, v1, p1, p2, p3}, Lcom/ja/sdk/net/HttpUtils;->doHttpException(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/ja/sdk/net/HttpCallBackListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "HttpUtils"

    invoke-static {v1, v0}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    sget-object v1, Lcom/ja/sdk/constant/Constants;->GZIP_SEND:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    const-string v1, "POST"

    invoke-static {p0, v1, p1, p2, p3}, Lcom/ja/sdk/net/HttpUtils;->doHttpGzip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/ja/sdk/net/HttpCallBackListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 49
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 58
    .restart local v0       #e:Ljava/lang/Throwable;
    :cond_1
    :try_start_3
    const-string v1, "POST"

    invoke-static {p0, v1, p1, p2, p3}, Lcom/ja/sdk/net/HttpUtils;->doHttpException(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/ja/sdk/net/HttpCallBackListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized postPageVisit(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;Lcom/ja/sdk/net/HttpCallBackListener;)V
    .locals 3
    .parameter "context"
    .parameter "urlStr"
    .parameter "ja"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    const-class v2, Lcom/ja/sdk/net/HttpUtils;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/ja/sdk/constant/Constants;->GZIP_SEND:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "POST"

    invoke-static {p0, v1, p1, p2, p3}, Lcom/ja/sdk/net/HttpUtils;->doHttpGzip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/ja/sdk/net/HttpCallBackListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    monitor-exit v2

    return-void

    .line 67
    :cond_0
    :try_start_1
    const-string v1, "POST"

    invoke-static {p0, v1, p1, p2, p3}, Lcom/ja/sdk/net/HttpUtils;->doHttpPageVisit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/ja/sdk/net/HttpCallBackListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "HttpUtils"

    invoke-static {v1, v0}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    sget-object v1, Lcom/ja/sdk/constant/Constants;->GZIP_SEND:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const-string v1, "POST"

    invoke-static {p0, v1, p1, p2, p3}, Lcom/ja/sdk/net/HttpUtils;->doHttpGzip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/ja/sdk/net/HttpCallBackListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 64
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 73
    .restart local v0       #e:Ljava/lang/Throwable;
    :cond_1
    :try_start_3
    const-string v1, "POST"

    invoke-static {p0, v1, p1, p2, p3}, Lcom/ja/sdk/net/HttpUtils;->doHttpPageVisit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/ja/sdk/net/HttpCallBackListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized setExceptionSendNetWorkStatus(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 378
    const-class v0, Lcom/ja/sdk/net/HttpUtils;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/ja/sdk/net/HttpUtils;->isNetWorkExceptionOk:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    monitor-exit v0

    return-void

    .line 378
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setPageVisitSendNetWorkStatus(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 375
    const-class v0, Lcom/ja/sdk/net/HttpUtils;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/ja/sdk/net/HttpUtils;->isNetWorkPageVisitOk:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    monitor-exit v0

    return-void

    .line 375
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
