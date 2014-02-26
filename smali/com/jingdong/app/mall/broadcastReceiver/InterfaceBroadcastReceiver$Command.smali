.class public Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;
.super Ljava/lang/Object;
.source "InterfaceBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Command"
.end annotation


# instance fields
.field private moduleId:I

.field private outBundle:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "moduleId"
    .parameter "outBundle"

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->moduleId:I

    .line 239
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->outBundle:Landroid/os/Bundle;

    .line 299
    iput p1, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->moduleId:I

    .line 300
    iput-object p2, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->outBundle:Landroid/os/Bundle;

    .line 301
    return-void
.end method

.method synthetic constructor <init>(ILandroid/os/Bundle;Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 298
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;-><init>(ILandroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;)V
    .locals 14
    .parameter "data"

    .prologue
    const/4 v13, 0x1

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v11, 0x0

    iput v11, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->moduleId:I

    .line 239
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iput-object v11, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->outBundle:Landroid/os/Bundle;

    .line 305
    const/4 v6, 0x0

    .line 306
    .local v6, inputType:Ljava/lang/String;
    const/4 v2, 0x0

    .line 307
    .local v2, inputKeyword:Ljava/lang/String;
    const/4 v7, 0x0

    .line 308
    .local v7, inputUnionId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 309
    .local v4, inputSubunionId:Ljava/lang/String;
    const/4 v5, 0x0

    .line 311
    .local v5, inputToken:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, host:Ljava/lang/String;
    const-string v11, "params"

    invoke-virtual {p1, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, inputParams:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 315
    :try_start_0
    new-instance v8, Lcom/jingdong/common/utils/JSONObjectProxy;

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V

    .line 316
    .local v8, jsonObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v11, "type"

    invoke-virtual {v8, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 317
    const-string v11, "keyword"

    invoke-virtual {v8, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 318
    const-string v11, "unionId"

    invoke-virtual {v8, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 319
    const-string v11, "subunionId"

    invoke-virtual {v8, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 320
    const-string v11, "tokenKey"

    invoke-virtual {v8, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 336
    .end local v8           #jsonObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :goto_0
    if-eqz v7, :cond_0

    .line 337
    iget-object v11, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->outBundle:Landroid/os/Bundle;

    const-string v12, "unionId"

    invoke-virtual {v11, v12, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_0
    if-eqz v4, :cond_1

    .line 340
    iget-object v11, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->outBundle:Landroid/os/Bundle;

    const-string v12, "subunionId"

    invoke-virtual {v11, v12, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 344
    const/4 v11, 0x5

    iput v11, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->moduleId:I

    .line 345
    iget-object v11, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->outBundle:Landroid/os/Bundle;

    const-string v12, "tokenKey"

    invoke-virtual {v11, v12, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :goto_1
    iget v11, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->moduleId:I

    if-eqz v11, :cond_2

    .line 380
    sput-object v6, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->type:Ljava/lang/String;

    .line 381
    sput-object v2, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->keyword:Ljava/lang/String;

    .line 382
    sput-object v7, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->unionId:Ljava/lang/String;

    .line 383
    sput-object v4, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->subunionId:Ljava/lang/String;

    .line 384
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->function:Ljava/lang/String;

    .line 385
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    sput-object v11, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->timestamp:Ljava/util/Date;

    .line 388
    :cond_2
    :goto_2
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 325
    .end local v0           #e:Lorg/json/JSONException;
    :cond_3
    const-string v11, "type"

    invoke-virtual {p1, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 326
    const-string v11, "keyword"

    invoke-virtual {p1, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    const-string v11, "unionId"

    invoke-virtual {p1, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 328
    const-string v11, "subunionId"

    invoke-virtual {p1, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 329
    const-string v11, "tokenKey"

    invoke-virtual {p1, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 346
    :cond_4
    const-string v11, "1"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 347
    iput v13, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->moduleId:I

    goto :goto_1

    .line 349
    :cond_5
    const-string v11, "2"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 350
    const-wide/16 v9, 0x0

    .line 352
    .local v9, productId:J
    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v9

    .line 356
    const/4 v11, 0x4

    iput v11, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->moduleId:I

    .line 359
    iget-object v11, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->outBundle:Landroid/os/Bundle;

    const-string v12, "id"

    invoke-virtual {v11, v12, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 353
    :catch_1
    move-exception v0

    .line 354
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_2

    .line 361
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v9           #productId:J
    :cond_6
    const-string v11, "3"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 362
    const/4 v11, 0x3

    iput v11, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->moduleId:I

    .line 365
    iget-object v11, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->outBundle:Landroid/os/Bundle;

    const-string v12, "keyword"

    invoke-virtual {v11, v12, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 367
    :cond_7
    const-string v11, "7"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 368
    const/4 v11, 0x7

    iput v11, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->moduleId:I

    goto/16 :goto_1

    .line 369
    :cond_8
    const-string v11, "8"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 370
    const/16 v11, 0x8

    iput v11, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->moduleId:I

    goto/16 :goto_1

    .line 371
    :cond_9
    const-string v11, "9"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 372
    const/16 v11, 0x9

    iput v11, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->moduleId:I

    goto/16 :goto_1

    .line 374
    :cond_a
    iput v13, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->moduleId:I

    goto/16 :goto_1
.end method

.method public static createCommand(Landroid/content/Intent;)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;
    .locals 13
    .parameter "intent"

    .prologue
    const/4 v12, 0x1

    .line 247
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 253
    .local v2, data:Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 254
    const-string v8, "virtual"

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 255
    const-string v8, "params"

    invoke-virtual {v2, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->handlerVirtualData(Ljava/lang/String;)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;
    invoke-static {v8}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->access$0(Ljava/lang/String;)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;

    move-result-object v1

    .line 295
    :cond_0
    :goto_0
    return-object v1

    .line 257
    :cond_1
    new-instance v1, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;

    invoke-direct {v1, v2}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;-><init>(Landroid/net/Uri;)V

    goto :goto_0

    .line 262
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 263
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_8

    .line 264
    const-string v8, "moduleId"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 268
    .local v4, moduleId:I
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 269
    .local v6, outBundle:Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 283
    if-eqz v4, :cond_7

    .line 284
    new-instance v1, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;

    invoke-direct {v1, v4, v6}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;-><init>(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 269
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 270
    .local v3, key:Ljava/lang/String;
    const-string v9, "param_"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 271
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 272
    .local v5, object:Ljava/lang/Object;
    instance-of v9, v5, Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 273
    const-string v9, "_"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 274
    .local v7, split:[Ljava/lang/String;
    aget-object v9, v7, v12

    check-cast v5, Ljava/lang/String;

    .end local v5           #object:Ljava/lang/Object;
    invoke-virtual {v6, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 275
    .end local v7           #split:[Ljava/lang/String;
    .restart local v5       #object:Ljava/lang/Object;
    :cond_5
    instance-of v9, v5, Ljava/lang/Integer;

    if-eqz v9, :cond_6

    .line 276
    const-string v9, "_"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v12

    check-cast v5, Ljava/lang/Integer;

    .end local v5           #object:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 277
    .restart local v5       #object:Ljava/lang/Object;
    :cond_6
    instance-of v9, v5, Ljava/lang/Long;

    if-eqz v9, :cond_3

    .line 278
    const-string v9, "_"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v12

    check-cast v5, Ljava/lang/Long;

    .end local v5           #object:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v6, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 288
    .end local v3           #key:Ljava/lang/String;
    :cond_7
    const-string v8, "command"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;

    .line 289
    .local v1, command:Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;
    if-nez v1, :cond_0

    .line 295
    .end local v1           #command:Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;
    .end local v4           #moduleId:I
    .end local v6           #outBundle:Landroid/os/Bundle;
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public static outBundleToBundle(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 6
    .parameter "outBundle"
    .parameter "bundle"

    .prologue
    .line 406
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 416
    return-void

    .line 406
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 407
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 408
    .local v1, object:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "param_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v1, Ljava/lang/String;

    .end local v1           #object:Ljava/lang/Object;
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 410
    .restart local v1       #object:Ljava/lang/Object;
    :cond_2
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "param_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v1, Ljava/lang/Integer;

    .end local v1           #object:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 412
    .restart local v1       #object:Ljava/lang/Object;
    :cond_3
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "param_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v1, Ljava/lang/Long;

    .end local v1           #object:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 399
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 400
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "moduleId"

    iget v2, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->moduleId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 401
    iget-object v1, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->outBundle:Landroid/os/Bundle;

    invoke-static {v1, v0}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->outBundleToBundle(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 402
    return-object v0
.end method

.method public getModuleId()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->moduleId:I

    return v0
.end method

.method public getOutBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->outBundle:Landroid/os/Bundle;

    return-object v0
.end method
