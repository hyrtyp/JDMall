.class public Lcom/ja/analytics/net/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final OK:I = 0xc8

.field private static final POST:Ljava/lang/String; = "POST"

.field private static final TAG:Ljava/lang/String; = null

.field private static final TIME_OUT:I = 0x7530

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static mCrashNetworkStatus:I

.field private static mEventNetworkStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const v1, 0xffff

    .line 56
    const-class v0, Lcom/ja/analytics/net/HttpUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    .line 322
    sput v1, Lcom/ja/analytics/net/HttpUtils;->mEventNetworkStatus:I

    .line 323
    sput v1, Lcom/ja/analytics/net/HttpUtils;->mCrashNetworkStatus:I

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized doHttpCrash(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/ja/analytics/net/HttpCallBackListener;)V
    .locals 17
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
    .line 223
    const-class v13, Lcom/ja/analytics/net/HttpUtils;

    monitor-enter v13

    const/4 v3, 0x0

    .line 224
    .local v3, conn:Ljava/net/HttpURLConnection;
    const/4 v6, 0x0

    .line 225
    .local v6, outStream:Ljava/io/OutputStream;
    move-object/from16 v8, p2

    .line 228
    .local v8, reallyUrl:Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 229
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 230
    .local v5, jo:Lorg/json/JSONObject;
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    .line 231
    .local v10, str:Ljava/lang/String;
    const-string v12, "jsonarray"

    invoke-virtual {v5, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    move-object/from16 v0, p4

    invoke-interface {v0, v8, v5}, Lcom/ja/analytics/net/HttpCallBackListener;->onStart(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 236
    .end local v5           #jo:Lorg/json/JSONObject;
    .end local v10           #str:Ljava/lang/String;
    :cond_0
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v12}, Lcom/ja/analytics/framework/CrashLogSend;->setSendFlag(Ljava/lang/Boolean;)V

    .line 238
    new-instance v11, Ljava/net/URL;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 239
    .local v11, url:Ljava/net/URL;
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/ja/analytics/utils/NetUtils;->openConncetion(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 240
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 241
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 242
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 245
    const-string v12, "Content-type"

    const-string v14, "application/x-javascript;charset=UTF-8"

    invoke-virtual {v3, v12, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/16 v12, 0x7530

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 248
    const/16 v12, 0x7530

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 250
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_5

    .line 253
    sget-object v12, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, ": before: conn.connect()"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :try_start_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 261
    :goto_1
    :try_start_2
    sget-object v12, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, ": after: conn.connect()"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_1

    .line 264
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    .end local v6           #outStream:Ljava/io/OutputStream;
    .local v7, outStream:Ljava/io/OutputStream;
    :try_start_3
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v14, "UTF-8"

    invoke-static {v12, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "UTF-8"

    invoke-virtual {v12, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-static {v12}, Lcom/ja/analytics/utils/StrUtil;->compress([B)[B

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/io/OutputStream;->write([B)V

    .line 267
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v6, v7

    .line 270
    .end local v7           #outStream:Ljava/io/OutputStream;
    .restart local v6       #outStream:Ljava/io/OutputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 272
    .local v2, code:I
    const/16 v12, 0xc8

    if-ne v2, v12, :cond_8

    .line 273
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v12}, Lcom/ja/analytics/framework/CrashLogSend;->setSendFlag(Ljava/lang/Boolean;)V

    .line 274
    const/16 v12, 0x1111

    invoke-static {v12}, Lcom/ja/analytics/net/HttpUtils;->setCrashNetworkStatus(I)V

    .line 275
    if-eqz p4, :cond_2

    .line 276
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 277
    .restart local v5       #jo:Lorg/json/JSONObject;
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    .line 278
    .restart local v10       #str:Ljava/lang/String;
    const-string v12, "jsonarray"

    invoke-virtual {v5, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Lcom/ja/analytics/net/HttpCallBackListener;->onEnd(Lorg/json/JSONObject;)V

    .line 281
    .end local v5           #jo:Lorg/json/JSONObject;
    .end local v10           #str:Ljava/lang/String;
    :cond_2
    sget-object v12, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "conn.getResponseCode():= "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sget-object v12, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "The http request:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    sget-object v12, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "The url:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    sget-object v12, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "The data:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 304
    :try_start_5
    sget-object v12, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    const-string v14, "doHttp  finally!"

    invoke-static {v12, v14}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 305
    if-eqz v6, :cond_3

    .line 307
    :try_start_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 311
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 313
    :try_start_7
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 314
    const-wide/16 v14, 0x3e8

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V

    .line 315
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 320
    .end local v2           #code:I
    :cond_4
    :goto_3
    monitor-exit v13

    return-void

    .line 250
    :cond_5
    :try_start_8
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 251
    .local v9, s:Ljava/lang/String;
    sget-object v14, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 303
    .end local v9           #s:Ljava/lang/String;
    .end local v11           #url:Ljava/net/URL;
    :catchall_0
    move-exception v12

    .line 304
    :goto_4
    :try_start_9
    sget-object v14, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    const-string v15, "doHttp  finally!"

    invoke-static {v14, v15}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 305
    if-eqz v6, :cond_6

    .line 307
    :try_start_a
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 311
    :cond_6
    :goto_5
    if-eqz v3, :cond_7

    .line 313
    :try_start_b
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 314
    const-wide/16 v14, 0x3e8

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V

    .line 315
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 319
    :cond_7
    :goto_6
    :try_start_c
    throw v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 223
    :catchall_1
    move-exception v12

    monitor-exit v13

    throw v12

    .line 256
    .restart local v11       #url:Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 258
    .local v4, e:Ljava/io/IOException;
    const/4 v12, 0x0

    :try_start_d
    invoke-static {v12}, Lcom/ja/analytics/net/HttpUtils;->setCrashNetworkStatus(I)V

    .line 259
    new-instance v12, Ljava/lang/StringBuilder;

    sget-object v14, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "conn.connect()"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 287
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #code:I
    :cond_8
    :try_start_e
    sget-object v12, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "conn.getResponseCode():= "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sget-object v12, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "The http request:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    sget-object v12, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "The url:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    .line 295
    .end local v2           #code:I
    :goto_7
    if-eqz p4, :cond_9

    .line 296
    const/4 v12, 0x0

    :try_start_f
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v12}, Lcom/ja/analytics/framework/CrashLogSend;->setSendFlag(Ljava/lang/Boolean;)V

    .line 297
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 298
    .restart local v5       #jo:Lorg/json/JSONObject;
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    .line 299
    .restart local v10       #str:Ljava/lang/String;
    const-string v12, "jsonarray"

    invoke-virtual {v5, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v5}, Lcom/ja/analytics/net/HttpCallBackListener;->onError(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 304
    .end local v5           #jo:Lorg/json/JSONObject;
    .end local v10           #str:Ljava/lang/String;
    :cond_9
    :try_start_10
    sget-object v12, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    const-string v14, "doHttp  finally!"

    invoke-static {v12, v14}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 305
    if-eqz v6, :cond_a

    .line 307
    :try_start_11
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    .line 311
    :cond_a
    :goto_8
    if-eqz v3, :cond_4

    .line 313
    :try_start_12
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 314
    const-wide/16 v14, 0x3e8

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V

    .line 315
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    goto/16 :goto_3

    .line 316
    :catch_1
    move-exception v12

    goto/16 :goto_3

    .line 291
    :catch_2
    move-exception v4

    .line 293
    .restart local v4       #e:Ljava/io/IOException;
    :try_start_13
    sget-object v12, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    const-string v14, "conn.getResponseCode() exception!!"

    invoke-static {v12, v14}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_7

    .line 308
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #code:I
    :catch_3
    move-exception v12

    goto/16 :goto_2

    .end local v2           #code:I
    .end local v11           #url:Ljava/net/URL;
    :catch_4
    move-exception v14

    goto/16 :goto_5

    .restart local v11       #url:Ljava/net/URL;
    :catch_5
    move-exception v12

    goto :goto_8

    .line 316
    .end local v11           #url:Ljava/net/URL;
    :catch_6
    move-exception v14

    goto/16 :goto_6

    .line 303
    .end local v6           #outStream:Ljava/io/OutputStream;
    .restart local v7       #outStream:Ljava/io/OutputStream;
    .restart local v11       #url:Ljava/net/URL;
    :catchall_2
    move-exception v12

    move-object v6, v7

    .end local v7           #outStream:Ljava/io/OutputStream;
    .restart local v6       #outStream:Ljava/io/OutputStream;
    goto/16 :goto_4

    .line 316
    .restart local v2       #code:I
    :catch_7
    move-exception v12

    goto/16 :goto_3
.end method

.method private static declared-synchronized doHttpEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ja/analytics/net/HttpCallBackListener;)V
    .locals 17
    .parameter "context"
    .parameter "method"
    .parameter "urlStr"
    .parameter "json"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 101
    const-class v13, Lcom/ja/analytics/net/HttpUtils;

    monitor-enter v13

    const/4 v3, 0x0

    .line 102
    .local v3, conn:Ljava/net/HttpURLConnection;
    const/4 v6, 0x0

    .line 103
    .local v6, outStream:Ljava/io/OutputStream;
    move-object/from16 v8, p2

    .line 106
    .local v8, reallyUrl:Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 107
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 108
    .local v5, jo:Lorg/json/JSONObject;
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    .line 109
    .local v10, str:Ljava/lang/String;
    const-string v12, "jsonarray"

    invoke-virtual {v5, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    move-object/from16 v0, p4

    invoke-interface {v0, v8, v5}, Lcom/ja/analytics/net/HttpCallBackListener;->onStart(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 115
    .end local v5           #jo:Lorg/json/JSONObject;
    .end local v10           #str:Ljava/lang/String;
    :cond_0
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v12}, Lcom/ja/analytics/framework/EventLogSend;->setSendFlag(Ljava/lang/Boolean;)V

    .line 117
    new-instance v11, Ljava/net/URL;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 118
    .local v11, url:Ljava/net/URL;
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/ja/analytics/utils/NetUtils;->openConncetion(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 119
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 120
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 121
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 124
    const-string v12, "Content-type"

    const-string v14, "x-www-form-urlencoded;charset=UTF-8"

    invoke-virtual {v3, v12, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/16 v12, 0x7530

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 127
    const/16 v12, 0x7530

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 129
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_5

    .line 132
    sget-object v12, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, ": before: conn.connect()"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :try_start_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    :goto_1
    :try_start_2
    sget-object v12, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, ": after: conn.connect()"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->length()I

    move-result v12

    if-lez v12, :cond_1

    .line 148
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    .end local v6           #outStream:Ljava/io/OutputStream;
    .local v7, outStream:Ljava/io/OutputStream;
    :try_start_3
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v14, "UTF-8"

    invoke-static {v12, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "UTF-8"

    invoke-virtual {v12, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-static {v12}, Lcom/ja/analytics/utils/StrUtil;->compress([B)[B

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/io/OutputStream;->write([B)V

    .line 151
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v6, v7

    .line 155
    .end local v7           #outStream:Ljava/io/OutputStream;
    .restart local v6       #outStream:Ljava/io/OutputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 156
    .local v2, code:I
    const/16 v12, 0xc8

    if-ne v2, v12, :cond_8

    .line 157
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v12}, Lcom/ja/analytics/framework/EventLogSend;->setSendFlag(Ljava/lang/Boolean;)V

    .line 158
    const/16 v12, 0x1111

    invoke-static {v12}, Lcom/ja/analytics/net/HttpUtils;->setEventNetworkStatus(I)V

    .line 160
    if-eqz p4, :cond_2

    .line 161
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 162
    .restart local v5       #jo:Lorg/json/JSONObject;
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    .line 163
    .restart local v10       #str:Ljava/lang/String;
    const-string v12, "jsonarray"

    invoke-virtual {v5, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Lcom/ja/analytics/net/HttpCallBackListener;->onEnd(Lorg/json/JSONObject;)V

    .line 167
    .end local v5           #jo:Lorg/json/JSONObject;
    .end local v10           #str:Ljava/lang/String;
    :cond_2
    sget-object v12, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "conn.getResponseCode():= "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sget-object v12, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "The http request:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-object v12, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "The url:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget-object v12, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "The data:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 193
    :try_start_5
    sget-object v12, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    const-string v14, "doHttp  finally!"

    invoke-static {v12, v14}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 194
    if-eqz v6, :cond_3

    .line 196
    :try_start_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 200
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 202
    :try_start_7
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 203
    const-wide/16 v14, 0x3e8

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V

    .line 204
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 209
    .end local v2           #code:I
    :cond_4
    :goto_3
    monitor-exit v13

    return-void

    .line 129
    :cond_5
    :try_start_8
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 130
    .local v9, s:Ljava/lang/String;
    sget-object v14, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 192
    .end local v9           #s:Ljava/lang/String;
    .end local v11           #url:Ljava/net/URL;
    :catchall_0
    move-exception v12

    .line 193
    :goto_4
    :try_start_9
    sget-object v14, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    const-string v15, "doHttp  finally!"

    invoke-static {v14, v15}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 194
    if-eqz v6, :cond_6

    .line 196
    :try_start_a
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 200
    :cond_6
    :goto_5
    if-eqz v3, :cond_7

    .line 202
    :try_start_b
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 203
    const-wide/16 v14, 0x3e8

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V

    .line 204
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 208
    :cond_7
    :goto_6
    :try_start_c
    throw v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 101
    :catchall_1
    move-exception v12

    monitor-exit v13

    throw v12

    .line 135
    .restart local v11       #url:Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 137
    .local v4, e:Ljava/io/IOException;
    const/4 v12, 0x0

    :try_start_d
    invoke-static {v12}, Lcom/ja/analytics/net/HttpUtils;->setEventNetworkStatus(I)V

    .line 143
    new-instance v12, Ljava/lang/StringBuilder;

    sget-object v14, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "conn.connect()"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 173
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #code:I
    :cond_8
    :try_start_e
    sget-object v12, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "conn.getResponseCode():= "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-object v12, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "The http request:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v12, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "The url:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    .line 184
    .end local v2           #code:I
    :goto_7
    if-eqz p4, :cond_9

    .line 185
    const/4 v12, 0x0

    :try_start_f
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v12}, Lcom/ja/analytics/framework/EventLogSend;->setSendFlag(Ljava/lang/Boolean;)V

    .line 186
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 187
    .restart local v5       #jo:Lorg/json/JSONObject;
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    .line 188
    .restart local v10       #str:Ljava/lang/String;
    const-string v12, "jsonarray"

    invoke-virtual {v5, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v5}, Lcom/ja/analytics/net/HttpCallBackListener;->onError(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 193
    .end local v5           #jo:Lorg/json/JSONObject;
    .end local v10           #str:Ljava/lang/String;
    :cond_9
    :try_start_10
    sget-object v12, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    const-string v14, "doHttp  finally!"

    invoke-static {v12, v14}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 194
    if-eqz v6, :cond_a

    .line 196
    :try_start_11
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    .line 200
    :cond_a
    :goto_8
    if-eqz v3, :cond_4

    .line 202
    :try_start_12
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 203
    const-wide/16 v14, 0x3e8

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V

    .line 204
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    goto/16 :goto_3

    .line 205
    :catch_1
    move-exception v12

    goto/16 :goto_3

    .line 178
    :catch_2
    move-exception v4

    .line 181
    .restart local v4       #e:Ljava/io/IOException;
    :try_start_13
    sget-object v12, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    const-string v14, "conn.getResponseCode() exception!"

    invoke-static {v12, v14}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_7

    .line 197
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #code:I
    :catch_3
    move-exception v12

    goto/16 :goto_2

    .end local v2           #code:I
    .end local v11           #url:Ljava/net/URL;
    :catch_4
    move-exception v14

    goto/16 :goto_5

    .restart local v11       #url:Ljava/net/URL;
    :catch_5
    move-exception v12

    goto :goto_8

    .line 205
    .end local v11           #url:Ljava/net/URL;
    :catch_6
    move-exception v14

    goto/16 :goto_6

    .line 192
    .end local v6           #outStream:Ljava/io/OutputStream;
    .restart local v7       #outStream:Ljava/io/OutputStream;
    .restart local v11       #url:Ljava/net/URL;
    :catchall_2
    move-exception v12

    move-object v6, v7

    .end local v7           #outStream:Ljava/io/OutputStream;
    .restart local v6       #outStream:Ljava/io/OutputStream;
    goto/16 :goto_4

    .line 205
    .restart local v2       #code:I
    :catch_7
    move-exception v12

    goto/16 :goto_3
.end method

.method public static declared-synchronized doHttpOnlineConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/ja/analytics/net/HttpCallBackListener;)Lorg/json/JSONObject;
    .locals 19
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
    .line 350
    const-class v15, Lcom/ja/analytics/net/HttpUtils;

    monitor-enter v15

    const/4 v3, 0x0

    .line 351
    .local v3, conn:Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    .line 352
    .local v7, outStream:Ljava/io/OutputStream;
    move-object/from16 v9, p2

    .line 355
    .local v9, reallyUrl:Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 356
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 357
    .local v5, jo:Lorg/json/JSONObject;
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v12

    .line 358
    .local v12, str:Ljava/lang/String;
    const-string v14, "jsonarray"

    invoke-virtual {v5, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    move-object/from16 v0, p4

    invoke-interface {v0, v9, v5}, Lcom/ja/analytics/net/HttpCallBackListener;->onStart(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 362
    .end local v5           #jo:Lorg/json/JSONObject;
    .end local v12           #str:Ljava/lang/String;
    :cond_0
    new-instance v13, Ljava/net/URL;

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 363
    .local v13, url:Ljava/net/URL;
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/ja/analytics/utils/NetUtils;->openConncetion(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 364
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 365
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 366
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 367
    const-string v14, "Content-type"

    const-string v16, "application/x-javascript;charset=UTF-8"

    move-object/from16 v0, v16

    invoke-virtual {v3, v14, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const/16 v14, 0x7530

    invoke-virtual {v3, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 370
    const/16 v14, 0x7530

    invoke-virtual {v3, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 372
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_4

    .line 375
    sget-object v14, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ": before: conn.connect()"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    :try_start_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 382
    :goto_1
    :try_start_2
    sget-object v14, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ": after: conn.connect()"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lez v14, :cond_1

    .line 384
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 385
    .end local v7           #outStream:Ljava/io/OutputStream;
    .local v8, outStream:Ljava/io/OutputStream;
    :try_start_3
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v16, "UTF-8"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/io/OutputStream;->write([B)V

    .line 386
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v7, v8

    .line 389
    .end local v8           #outStream:Ljava/io/OutputStream;
    .restart local v7       #outStream:Ljava/io/OutputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 391
    .local v2, code:I
    const/16 v14, 0xc8

    if-ne v2, v14, :cond_7

    .line 392
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    const-string v16, "UTF-8"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/ja/analytics/net/HttpUtils;->readAsString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 394
    .local v10, result:Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 413
    .local v6, jsonObject:Lorg/json/JSONObject;
    :try_start_5
    sget-object v14, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    const-string v16, "doHttpOnlineConfig  finally!"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 414
    if-eqz v7, :cond_2

    .line 416
    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 420
    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    .line 422
    :try_start_7
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 423
    const-wide/16 v16, 0x3e8

    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    .line 424
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 429
    .end local v2           #code:I
    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .end local v10           #result:Ljava/lang/String;
    :cond_3
    :goto_3
    monitor-exit v15

    return-object v6

    .line 372
    :cond_4
    :try_start_8
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 373
    .local v11, s:Ljava/lang/String;
    sget-object v16, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 412
    .end local v11           #s:Ljava/lang/String;
    .end local v13           #url:Ljava/net/URL;
    :catchall_0
    move-exception v14

    .line 413
    :goto_4
    :try_start_9
    sget-object v16, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    const-string v17, "doHttpOnlineConfig  finally!"

    invoke-static/range {v16 .. v17}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 414
    if-eqz v7, :cond_5

    .line 416
    :try_start_a
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 420
    :cond_5
    :goto_5
    if-eqz v3, :cond_6

    .line 422
    :try_start_b
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 423
    const-wide/16 v16, 0x3e8

    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    .line 424
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 428
    :cond_6
    :goto_6
    :try_start_c
    throw v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 350
    :catchall_1
    move-exception v14

    monitor-exit v15

    throw v14

    .line 378
    .restart local v13       #url:Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 380
    .local v4, e:Ljava/io/IOException;
    :try_start_d
    new-instance v14, Ljava/lang/StringBuilder;

    sget-object v16, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "conn.connect()"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 398
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #code:I
    :cond_7
    :try_start_e
    sget-object v14, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "conn.getResponseCode():= "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    sget-object v14, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "The http request:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    sget-object v14, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "The url:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1

    .line 405
    .end local v2           #code:I
    :goto_7
    if-eqz p4, :cond_8

    if-eqz p3, :cond_8

    .line 406
    :try_start_f
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 407
    .restart local v5       #jo:Lorg/json/JSONObject;
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v12

    .line 408
    .restart local v12       #str:Ljava/lang/String;
    const-string v14, "jsonarray"

    invoke-virtual {v5, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v5}, Lcom/ja/analytics/net/HttpCallBackListener;->onError(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 413
    .end local v5           #jo:Lorg/json/JSONObject;
    .end local v12           #str:Ljava/lang/String;
    :cond_8
    :try_start_10
    sget-object v14, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    const-string v16, "doHttpOnlineConfig  finally!"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 414
    if-eqz v7, :cond_9

    .line 416
    :try_start_11
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    .line 420
    :cond_9
    :goto_8
    if-eqz v3, :cond_a

    .line 422
    :try_start_12
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 423
    const-wide/16 v16, 0x3e8

    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    .line 424
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    .line 429
    :cond_a
    :goto_9
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 402
    :catch_1
    move-exception v4

    .line 403
    .restart local v4       #e:Ljava/io/IOException;
    :try_start_13
    sget-object v14, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    const-string v16, "conn.getResponseCode() exception!!"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_7

    .line 417
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #code:I
    .restart local v6       #jsonObject:Lorg/json/JSONObject;
    .restart local v10       #result:Ljava/lang/String;
    :catch_2
    move-exception v14

    goto/16 :goto_2

    .end local v2           #code:I
    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .end local v10           #result:Ljava/lang/String;
    .end local v13           #url:Ljava/net/URL;
    :catch_3
    move-exception v16

    goto/16 :goto_5

    .restart local v13       #url:Ljava/net/URL;
    :catch_4
    move-exception v14

    goto :goto_8

    .line 425
    :catch_5
    move-exception v14

    goto :goto_9

    .end local v13           #url:Ljava/net/URL;
    :catch_6
    move-exception v16

    goto/16 :goto_6

    .line 412
    .end local v7           #outStream:Ljava/io/OutputStream;
    .restart local v8       #outStream:Ljava/io/OutputStream;
    .restart local v13       #url:Ljava/net/URL;
    :catchall_2
    move-exception v14

    move-object v7, v8

    .end local v8           #outStream:Ljava/io/OutputStream;
    .restart local v7       #outStream:Ljava/io/OutputStream;
    goto/16 :goto_4

    .line 425
    .restart local v2       #code:I
    .restart local v6       #jsonObject:Lorg/json/JSONObject;
    .restart local v10       #result:Ljava/lang/String;
    :catch_7
    move-exception v14

    goto/16 :goto_3
.end method

.method public static declared-synchronized doHttpRealTimeData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/ja/analytics/net/HttpCallBackListener;)Lorg/json/JSONObject;
    .locals 19
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
    .line 444
    const-class v15, Lcom/ja/analytics/net/HttpUtils;

    monitor-enter v15

    const/4 v3, 0x0

    .line 445
    .local v3, conn:Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    .line 446
    .local v7, outStream:Ljava/io/OutputStream;
    move-object/from16 v9, p2

    .line 449
    .local v9, reallyUrl:Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 450
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 451
    .local v5, jo:Lorg/json/JSONObject;
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v12

    .line 452
    .local v12, str:Ljava/lang/String;
    const-string v14, "jsonarray"

    invoke-virtual {v5, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 453
    move-object/from16 v0, p4

    invoke-interface {v0, v9, v5}, Lcom/ja/analytics/net/HttpCallBackListener;->onStart(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 456
    .end local v5           #jo:Lorg/json/JSONObject;
    .end local v12           #str:Ljava/lang/String;
    :cond_0
    new-instance v13, Ljava/net/URL;

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 457
    .local v13, url:Ljava/net/URL;
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/ja/analytics/utils/NetUtils;->openConncetion(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 458
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 459
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 460
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 461
    const-string v14, "Content-type"

    const-string v16, "application/x-javascript;charset=UTF-8"

    move-object/from16 v0, v16

    invoke-virtual {v3, v14, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/16 v14, 0x7530

    invoke-virtual {v3, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 464
    const/16 v14, 0x7530

    invoke-virtual {v3, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 466
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_4

    .line 469
    sget-object v14, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ": before: conn.connect()"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    :try_start_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 476
    :goto_1
    :try_start_2
    sget-object v14, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ": after: conn.connect()"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lez v14, :cond_1

    .line 478
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 479
    .end local v7           #outStream:Ljava/io/OutputStream;
    .local v8, outStream:Ljava/io/OutputStream;
    :try_start_3
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v16, "UTF-8"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/io/OutputStream;->write([B)V

    .line 480
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v7, v8

    .line 483
    .end local v8           #outStream:Ljava/io/OutputStream;
    .restart local v7       #outStream:Ljava/io/OutputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 485
    .local v2, code:I
    const/16 v14, 0xc8

    if-ne v2, v14, :cond_7

    .line 486
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    const-string v16, "UTF-8"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/ja/analytics/net/HttpUtils;->readAsString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 488
    .local v10, result:Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 507
    .local v6, jsonObject:Lorg/json/JSONObject;
    :try_start_5
    sget-object v14, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    const-string v16, "doHttpOnlineConfig  finally!"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 508
    if-eqz v7, :cond_2

    .line 510
    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 514
    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    .line 516
    :try_start_7
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 517
    const-wide/16 v16, 0x3e8

    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    .line 518
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 523
    .end local v2           #code:I
    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .end local v10           #result:Ljava/lang/String;
    :cond_3
    :goto_3
    monitor-exit v15

    return-object v6

    .line 466
    :cond_4
    :try_start_8
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 467
    .local v11, s:Ljava/lang/String;
    sget-object v16, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 506
    .end local v11           #s:Ljava/lang/String;
    .end local v13           #url:Ljava/net/URL;
    :catchall_0
    move-exception v14

    .line 507
    :goto_4
    :try_start_9
    sget-object v16, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    const-string v17, "doHttpOnlineConfig  finally!"

    invoke-static/range {v16 .. v17}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 508
    if-eqz v7, :cond_5

    .line 510
    :try_start_a
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 514
    :cond_5
    :goto_5
    if-eqz v3, :cond_6

    .line 516
    :try_start_b
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 517
    const-wide/16 v16, 0x3e8

    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    .line 518
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 522
    :cond_6
    :goto_6
    :try_start_c
    throw v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 444
    :catchall_1
    move-exception v14

    monitor-exit v15

    throw v14

    .line 472
    .restart local v13       #url:Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 474
    .local v4, e:Ljava/io/IOException;
    :try_start_d
    new-instance v14, Ljava/lang/StringBuilder;

    sget-object v16, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "conn.connect()"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 492
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #code:I
    :cond_7
    :try_start_e
    sget-object v14, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "conn.getResponseCode():= "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    sget-object v14, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "The http request:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    sget-object v14, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "The url:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1

    .line 499
    .end local v2           #code:I
    :goto_7
    if-eqz p4, :cond_8

    if-eqz p3, :cond_8

    .line 500
    :try_start_f
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 501
    .restart local v5       #jo:Lorg/json/JSONObject;
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v12

    .line 502
    .restart local v12       #str:Ljava/lang/String;
    const-string v14, "jsonarray"

    invoke-virtual {v5, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 503
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v5}, Lcom/ja/analytics/net/HttpCallBackListener;->onError(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 507
    .end local v5           #jo:Lorg/json/JSONObject;
    .end local v12           #str:Ljava/lang/String;
    :cond_8
    :try_start_10
    sget-object v14, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    const-string v16, "doHttpOnlineConfig  finally!"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 508
    if-eqz v7, :cond_9

    .line 510
    :try_start_11
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    .line 514
    :cond_9
    :goto_8
    if-eqz v3, :cond_a

    .line 516
    :try_start_12
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 517
    const-wide/16 v16, 0x3e8

    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    .line 518
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    .line 523
    :cond_a
    :goto_9
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 496
    :catch_1
    move-exception v4

    .line 497
    .restart local v4       #e:Ljava/io/IOException;
    :try_start_13
    sget-object v14, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    const-string v16, "conn.getResponseCode() exception!!"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_7

    .line 511
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #code:I
    .restart local v6       #jsonObject:Lorg/json/JSONObject;
    .restart local v10       #result:Ljava/lang/String;
    :catch_2
    move-exception v14

    goto/16 :goto_2

    .end local v2           #code:I
    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .end local v10           #result:Ljava/lang/String;
    .end local v13           #url:Ljava/net/URL;
    :catch_3
    move-exception v16

    goto/16 :goto_5

    .restart local v13       #url:Ljava/net/URL;
    :catch_4
    move-exception v14

    goto :goto_8

    .line 519
    :catch_5
    move-exception v14

    goto :goto_9

    .end local v13           #url:Ljava/net/URL;
    :catch_6
    move-exception v16

    goto/16 :goto_6

    .line 506
    .end local v7           #outStream:Ljava/io/OutputStream;
    .restart local v8       #outStream:Ljava/io/OutputStream;
    .restart local v13       #url:Ljava/net/URL;
    :catchall_2
    move-exception v14

    move-object v7, v8

    .end local v8           #outStream:Ljava/io/OutputStream;
    .restart local v7       #outStream:Ljava/io/OutputStream;
    goto/16 :goto_4

    .line 519
    .restart local v2       #code:I
    .restart local v6       #jsonObject:Lorg/json/JSONObject;
    .restart local v10       #result:Ljava/lang/String;
    :catch_7
    move-exception v14

    goto/16 :goto_3
.end method

.method public static getConfiguration(Landroid/content/Context;)Z
    .locals 16
    .parameter "context"

    .prologue
    .line 598
    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "{\"appkey\":\""

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/ja/analytics/logevent/EventLog;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\",\"accesskey\":\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p0 .. p0}, Lcom/ja/analytics/logevent/EventLog;->getAccessKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\"}"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 599
    .local v5, jsonRequest:Ljava/lang/String;
    const-string v12, "http://jma.man.jcloud.com/maengine/jmasdkservice/sdkdata/boot/configuration"

    .line 600
    .local v12, url:Ljava/lang/String;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 601
    .local v2, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v12}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 602
    .local v3, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const-string v13, "Content-Type"

    const-string v14, "application/json"

    invoke-virtual {v3, v13, v14}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    new-instance v9, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v9, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 605
    .local v9, se:Lorg/apache/http/entity/StringEntity;
    invoke-virtual {v3, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 606
    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 607
    .local v8, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_4

    .line 609
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v10

    .line 610
    .local v10, str:Ljava/lang/String;
    const-string v13, "MobJaAgent"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Response from online config data result: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v13

    if-eqz v13, :cond_0

    .line 614
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 615
    .local v4, json:Lorg/json/JSONObject;
    const-string v13, "isvalid"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcom/ja/analytics/constant/Constants;->ISAPPKEY_VALIDE:Z

    .line 616
    const-string v13, "sendlog"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 617
    .local v7, obj:Ljava/lang/Object;
    instance-of v13, v7, Ljava/lang/String;

    if-eqz v13, :cond_1

    .line 619
    const/4 v13, 0x0

    sput-boolean v13, Lcom/ja/analytics/constant/Constants;->SEND_STRATEGY:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 651
    .end local v2           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v4           #json:Lorg/json/JSONObject;
    .end local v5           #jsonRequest:Ljava/lang/String;
    .end local v7           #obj:Ljava/lang/Object;
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    .end local v9           #se:Lorg/apache/http/entity/StringEntity;
    .end local v10           #str:Ljava/lang/String;
    .end local v12           #url:Ljava/lang/String;
    :cond_0
    :goto_0
    sget-boolean v13, Lcom/ja/analytics/constant/Constants;->SEND_STRATEGY:Z

    return v13

    .line 621
    .restart local v2       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v3       #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v4       #json:Lorg/json/JSONObject;
    .restart local v5       #jsonRequest:Ljava/lang/String;
    .restart local v7       #obj:Ljava/lang/Object;
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    .restart local v9       #se:Lorg/apache/http/entity/StringEntity;
    .restart local v10       #str:Ljava/lang/String;
    .restart local v12       #url:Ljava/lang/String;
    :cond_1
    :try_start_2
    instance-of v13, v7, Lorg/json/JSONObject;

    if-eqz v13, :cond_0

    .line 624
    move-object v0, v7

    check-cast v0, Lorg/json/JSONObject;

    move-object v6, v0

    .line 625
    .local v6, log:Lorg/json/JSONObject;
    const-string v13, "time"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 627
    .local v11, time:Ljava/lang/Integer;
    const-string v13, "numsend"

    const-string v14, "send"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_2

    .line 628
    const/4 v13, 0x1

    sput-boolean v13, Lcom/ja/analytics/constant/Constants;->SEND_STRATEGY:Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 640
    .end local v4           #json:Lorg/json/JSONObject;
    .end local v6           #log:Lorg/json/JSONObject;
    .end local v7           #obj:Ljava/lang/Object;
    .end local v11           #time:Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 642
    .local v1, e:Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 648
    .end local v1           #e:Lorg/json/JSONException;
    .end local v2           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v5           #jsonRequest:Ljava/lang/String;
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    .end local v9           #se:Lorg/apache/http/entity/StringEntity;
    .end local v10           #str:Ljava/lang/String;
    .end local v12           #url:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 649
    .local v1, e:Ljava/lang/Exception;
    sget-object v13, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "get online configuration failed:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 630
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v3       #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v4       #json:Lorg/json/JSONObject;
    .restart local v5       #jsonRequest:Ljava/lang/String;
    .restart local v6       #log:Lorg/json/JSONObject;
    .restart local v7       #obj:Ljava/lang/Object;
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    .restart local v9       #se:Lorg/apache/http/entity/StringEntity;
    .restart local v10       #str:Ljava/lang/String;
    .restart local v11       #time:Ljava/lang/Integer;
    .restart local v12       #url:Ljava/lang/String;
    :cond_2
    :try_start_4
    const-string v13, "timesend"

    const-string v14, "send"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lez v13, :cond_3

    .line 632
    const/4 v13, 0x0

    sput-boolean v13, Lcom/ja/analytics/constant/Constants;->SEND_STRATEGY:Z

    .line 633
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    mul-int/lit16 v13, v13, 0x3e8

    sput v13, Lcom/ja/analytics/constant/Constants;->SEND_INTERVAL:I

    goto :goto_0

    .line 636
    :cond_3
    const/4 v13, 0x0

    sput-boolean v13, Lcom/ja/analytics/constant/Constants;->SEND_STRATEGY:Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 646
    .end local v4           #json:Lorg/json/JSONObject;
    .end local v6           #log:Lorg/json/JSONObject;
    .end local v7           #obj:Ljava/lang/Object;
    .end local v10           #str:Ljava/lang/String;
    .end local v11           #time:Ljava/lang/Integer;
    :cond_4
    :try_start_5
    const-string v13, "MobJaAgent"

    const-string v14, "Request to real time data fail!!"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0
.end method

.method public static declared-synchronized getCrashNetworkStatus()I
    .locals 2

    .prologue
    .line 326
    const-class v0, Lcom/ja/analytics/net/HttpUtils;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/ja/analytics/net/HttpUtils;->mCrashNetworkStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getEventNetworkStatus()I
    .locals 2

    .prologue
    .line 329
    const-class v0, Lcom/ja/analytics/net/HttpUtils;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/ja/analytics/net/HttpUtils;->mEventNetworkStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized postCrash(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;Lcom/ja/analytics/net/HttpCallBackListener;)V
    .locals 5
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
    .line 73
    const-class v2, Lcom/ja/analytics/net/HttpUtils;

    monitor-enter v2

    :try_start_0
    const-string v1, "POST"

    invoke-static {p0, v1, p1, p2, p3}, Lcom/ja/analytics/net/HttpUtils;->doHttpCrash(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/ja/analytics/net/HttpCallBackListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    monitor-exit v2

    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sending crash log faild:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v1, "POST"

    invoke-static {p0, v1, p1, p2, p3}, Lcom/ja/analytics/net/HttpUtils;->doHttpCrash(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/ja/analytics/net/HttpCallBackListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized postEvent(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ja/analytics/net/HttpCallBackListener;)V
    .locals 5
    .parameter "context"
    .parameter "urlStr"
    .parameter "json"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    const-class v2, Lcom/ja/analytics/net/HttpUtils;

    monitor-enter v2

    :try_start_0
    const-string v1, "POST"

    invoke-static {p0, v1, p1, p2, p3}, Lcom/ja/analytics/net/HttpUtils;->doHttpEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ja/analytics/net/HttpCallBackListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    monitor-exit v2

    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sending event log faild:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v1, "POST"

    invoke-static {p0, v1, p1, p2, p3}, Lcom/ja/analytics/net/HttpUtils;->doHttpEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ja/analytics/net/HttpCallBackListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 82
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static readAsBytes(Ljava/io/InputStream;)[B
    .locals 5
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 550
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 551
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v1, v4, [B

    .line 552
    .local v1, buf:[B
    const/4 v3, -0x1

    .line 553
    .local v3, len:I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 556
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 557
    .local v2, data:[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 558
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 559
    return-object v2

    .line 554
    .end local v2           #data:[B
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static readAsString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "is"
    .parameter "encode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    invoke-static {p0}, Lcom/ja/analytics/net/HttpUtils;->readAsBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 535
    .local v0, data:[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 536
    .local v1, result:Ljava/lang/String;
    const-string v2, "\\r"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 537
    const-string v2, "\\n"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 538
    return-object v1
.end method

.method public static sendSessionData(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    .line 564
    :try_start_0
    invoke-static {p0}, Lcom/ja/analytics/utils/SessionStatic;->sendLastSessionTime(Landroid/content/Context;)V

    .line 565
    invoke-static {p0}, Lcom/ja/analytics/utils/SessionStatic;->startSessionTime(Landroid/content/Context;)V

    .line 568
    invoke-static {p0}, Lcom/ja/analytics/logevent/EventLog;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 569
    .local v3, key:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 571
    sget-object v8, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    const-string v9, "\u6ca1\u6709\u83b7\u53d6\u5230appkey/appkey\u65e0\u6548,\u653e\u5f03\u5f53\u524d\u64cd\u4f5c"

    invoke-static {v8, v9}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_0
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    const-string v8, "http://jma.man.jcloud.com/maengine/jmadata/RealTimeAnalysis"

    invoke-direct {v5, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 574
    .local v5, request:Lorg/apache/http/client/methods/HttpPost;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v4, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "sesiontimes"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ja/analytics/logevent/EventLog;->getSessionCount()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "appkey"

    invoke-direct {v8, v9, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "version"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/ja/analytics/utils/ManifestPackageUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "channel"

    invoke-static {p0}, Lcom/ja/analytics/logevent/EventLog;->getAppChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "deviceid"

    invoke-static {p0}, Lcom/ja/analytics/utils/DevicesUtils;->getDeviceId2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v8, "UTF-8"

    invoke-direct {v1, v4, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 582
    .local v1, entity:Lorg/apache/http/HttpEntity;
    invoke-virtual {v5, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 583
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 584
    .local v2, httpClient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v2, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 585
    .local v6, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_1

    .line 586
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v7

    .line 587
    .local v7, str:Ljava/lang/String;
    const-string v8, "MobJaAgent"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Request to real time data result: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    .end local v2           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v5           #request:Lorg/apache/http/client/methods/HttpPost;
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #str:Ljava/lang/String;
    :goto_0
    return-void

    .line 589
    .restart local v1       #entity:Lorg/apache/http/HttpEntity;
    .restart local v2       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v3       #key:Ljava/lang/String;
    .restart local v4       #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v5       #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v6       #response:Lorg/apache/http/HttpResponse;
    :cond_1
    const-string v8, "MobJaAgent"

    const-string v9, "Request to real time data fail!!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 591
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    .end local v2           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v5           #request:Lorg/apache/http/client/methods/HttpPost;
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 592
    .local v0, e:Ljava/lang/Exception;
    sget-object v8, Lcom/ja/analytics/net/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "sending startup time failed:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static declared-synchronized setCrashNetworkStatus(I)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 335
    const-class v0, Lcom/ja/analytics/net/HttpUtils;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/ja/analytics/net/HttpUtils;->mCrashNetworkStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    monitor-exit v0

    return-void

    .line 335
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setEventNetworkStatus(I)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 332
    const-class v0, Lcom/ja/analytics/net/HttpUtils;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/ja/analytics/net/HttpUtils;->mEventNetworkStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit v0

    return-void

    .line 332
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
