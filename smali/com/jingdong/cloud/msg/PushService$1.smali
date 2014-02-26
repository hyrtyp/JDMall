.class Lcom/jingdong/cloud/msg/PushService$1;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Lcom/jingdong/cloud/msg/PushSocket$ConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/cloud/msg/PushService;->connectServer(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/cloud/msg/PushService;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/jingdong/cloud/msg/PushService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/cloud/msg/PushService$1;->this$0:Lcom/jingdong/cloud/msg/PushService;

    iput-object p2, p0, Lcom/jingdong/cloud/msg/PushService$1;->val$context:Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectSuccess()V
    .locals 14

    .prologue
    .line 57
    iget-object v10, p0, Lcom/jingdong/cloud/msg/PushService$1;->this$0:Lcom/jingdong/cloud/msg/PushService;

    #getter for: Lcom/jingdong/cloud/msg/PushService;->regId:Ljava/lang/String;
    invoke-static {v10}, Lcom/jingdong/cloud/msg/PushService;->access$0(Lcom/jingdong/cloud/msg/PushService;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_0

    .line 58
    iget-object v10, p0, Lcom/jingdong/cloud/msg/PushService$1;->this$0:Lcom/jingdong/cloud/msg/PushService;

    iget-object v11, p0, Lcom/jingdong/cloud/msg/PushService$1;->val$context:Landroid/content/Context;

    const-string v12, "regid"

    const-string v13, ""

    invoke-static {v11, v12, v13}, Lcom/jingdong/cloud/msg/util/SharedPreferenceUtil;->getStringFromSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    #setter for: Lcom/jingdong/cloud/msg/PushService;->regId:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/jingdong/cloud/msg/PushService;->access$1(Lcom/jingdong/cloud/msg/PushService;Ljava/lang/String;)V

    .line 60
    :cond_0
    invoke-static {}, Lcom/jingdong/cloud/msg/PushService;->access$2()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "1################ regId = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/jingdong/cloud/msg/PushService$1;->this$0:Lcom/jingdong/cloud/msg/PushService;

    #getter for: Lcom/jingdong/cloud/msg/PushService;->regId:Ljava/lang/String;
    invoke-static {v12}, Lcom/jingdong/cloud/msg/PushService;->access$0(Lcom/jingdong/cloud/msg/PushService;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/jingdong/cloud/msg/PushService;->access$2()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "2################ context = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/jingdong/cloud/msg/PushService$1;->val$context:Landroid/content/Context;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/4 v6, 0x0

    .line 65
    .local v6, in:Ljava/io/InputStream;
    :try_start_0
    iget-object v10, p0, Lcom/jingdong/cloud/msg/PushService$1;->this$0:Lcom/jingdong/cloud/msg/PushService;

    iget-object v11, p0, Lcom/jingdong/cloud/msg/PushService$1;->val$context:Landroid/content/Context;

    #calls: Lcom/jingdong/cloud/msg/PushService;->loginOrRegister(Landroid/content/Context;)V
    invoke-static {v10, v11}, Lcom/jingdong/cloud/msg/PushService;->access$3(Lcom/jingdong/cloud/msg/PushService;Landroid/content/Context;)V

    .line 66
    invoke-static {}, Lcom/jingdong/cloud/msg/PushSocket;->getInstance()Ljava/net/Socket;

    move-result-object v9

    .line 67
    .local v9, socket:Ljava/net/Socket;
    if-eqz v9, :cond_3

    .line 68
    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 69
    sget-boolean v10, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v10, :cond_1

    .line 70
    invoke-static {}, Lcom/jingdong/cloud/msg/PushService;->access$2()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Prepare to read Json data from server: regId = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/jingdong/cloud/msg/PushService$1;->this$0:Lcom/jingdong/cloud/msg/PushService;

    #getter for: Lcom/jingdong/cloud/msg/PushService;->regId:Ljava/lang/String;
    invoke-static {v12}, Lcom/jingdong/cloud/msg/PushService;->access$0(Lcom/jingdong/cloud/msg/PushService;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_1
    invoke-static {}, Lcom/jingdong/cloud/msg/PushService;->access$2()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Log.LOG_FILE==== "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/jingdong/cloud/msg/util/Log;->LOG_FILE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v10, 0x4

    new-array v5, v10, [B

    .line 74
    .local v5, head:[B
    :cond_2
    :goto_0
    sget-boolean v10, Lcom/jingdong/cloud/msg/service/JDReceiveMsgService;->isNeedLive:Z

    if-eqz v10, :cond_3

    .line 75
    invoke-virtual {v9}, Ljava/net/Socket;->isClosed()Z

    move-result v10

    if-nez v10, :cond_3

    .line 76
    invoke-virtual {v6, v5}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_4

    .line 117
    .end local v5           #head:[B
    .end local v9           #socket:Ljava/net/Socket;
    :cond_3
    :goto_1
    return-void

    .line 77
    .restart local v5       #head:[B
    .restart local v9       #socket:Ljava/net/Socket;
    :cond_4
    invoke-static {v5}, Lcom/jingdong/cloud/msg/util/NumberUtil;->getIntArray([B)I

    move-result v2

    .line 78
    .local v2, contentLength:I
    new-array v1, v2, [B

    .line 79
    .local v1, buffer:[B
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 81
    .local v8, readLength:I
    if-eqz v1, :cond_2

    if-ne v8, v2, :cond_2

    .line 82
    new-instance v0, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-direct {v0, v1, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 83
    .local v0, buf:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 84
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 85
    .local v7, jsonObject:Lorg/json/JSONObject;
    iget-object v10, p0, Lcom/jingdong/cloud/msg/PushService$1;->this$0:Lcom/jingdong/cloud/msg/PushService;

    iget-object v11, p0, Lcom/jingdong/cloud/msg/PushService$1;->val$context:Landroid/content/Context;

    #calls: Lcom/jingdong/cloud/msg/PushService;->parseJson(Landroid/content/Context;Lorg/json/JSONObject;)V
    invoke-static {v10, v11, v7}, Lcom/jingdong/cloud/msg/PushService;->access$4(Lcom/jingdong/cloud/msg/PushService;Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 90
    .end local v0           #buf:Ljava/lang/String;
    .end local v1           #buffer:[B
    .end local v2           #contentLength:I
    .end local v5           #head:[B
    .end local v7           #jsonObject:Lorg/json/JSONObject;
    .end local v8           #readLength:I
    .end local v9           #socket:Ljava/net/Socket;
    :catch_0
    move-exception v3

    .line 91
    .local v3, e:Ljava/io/IOException;
    if-eqz v6, :cond_5

    .line 93
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    :cond_5
    :goto_2
    iget-object v10, p0, Lcom/jingdong/cloud/msg/PushService$1;->val$context:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/jingdong/cloud/msg/PushSocketProtocol;->openOrCloseHeartBeat(Landroid/content/Context;Z)V

    .line 100
    invoke-static {}, Lcom/jingdong/cloud/msg/PushSocket;->closeConnect()V

    .line 103
    iget-object v10, p0, Lcom/jingdong/cloud/msg/PushService$1;->this$0:Lcom/jingdong/cloud/msg/PushService;

    iget-object v11, p0, Lcom/jingdong/cloud/msg/PushService$1;->val$context:Landroid/content/Context;

    invoke-virtual {v10, v11}, Lcom/jingdong/cloud/msg/PushService;->connectServer(Landroid/content/Context;)V

    goto :goto_1

    .line 94
    :catch_1
    move-exception v4

    .line 95
    .local v4, e1:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 112
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #e1:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 113
    .local v3, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/jingdong/cloud/msg/PushService;->access$2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/jingdong/cloud/msg/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 114
    .end local v3           #e:Lorg/json/JSONException;
    :catch_3
    move-exception v3

    .line 115
    .local v3, e:Ljava/lang/Throwable;
    invoke-static {}, Lcom/jingdong/cloud/msg/PushService;->access$2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/jingdong/cloud/msg/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
