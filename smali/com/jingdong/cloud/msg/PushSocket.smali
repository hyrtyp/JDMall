.class public Lcom/jingdong/cloud/msg/PushSocket;
.super Ljava/lang/Object;
.source "PushSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/cloud/msg/PushSocket$ConnectListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static connectCount:I

.field private static socketClient:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/jingdong/cloud/msg/PushSocket;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/cloud/msg/PushSocket;->TAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/jingdong/cloud/msg/PushSocket;->connectCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static closeConnect()V
    .locals 3

    .prologue
    .line 97
    :try_start_0
    sget-object v1, Lcom/jingdong/cloud/msg/PushSocket;->socketClient:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lcom/jingdong/cloud/msg/PushSocket;->socketClient:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 99
    sget-object v1, Lcom/jingdong/cloud/msg/PushSocket;->TAG:Ljava/lang/String;

    const-string v2, "Connection closed."

    invoke-static {v1, v2}, Lcom/jingdong/cloud/msg/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .local v0, e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 101
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 102
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static connect(Landroid/content/Context;Lcom/jingdong/cloud/msg/PushSocket$ConnectListener;)V
    .locals 6
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    .line 28
    sget-object v1, Lcom/jingdong/cloud/msg/PushSocket;->socketClient:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 29
    sput-object v5, Lcom/jingdong/cloud/msg/PushSocket;->socketClient:Ljava/net/Socket;

    .line 31
    :cond_0
    :goto_0
    sget-object v1, Lcom/jingdong/cloud/msg/PushSocket;->socketClient:Ljava/net/Socket;

    if-eqz v1, :cond_2

    .line 72
    :cond_1
    :goto_1
    return-void

    .line 33
    :cond_2
    :try_start_0
    sget-boolean v1, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v1, :cond_3

    .line 34
    sget-object v1, Lcom/jingdong/cloud/msg/PushSocket;->TAG:Ljava/lang/String;

    const-string v2, "Target host: host = jmp1.jcloud.com"

    invoke-static {v1, v2}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_3
    invoke-static {p0}, Lcom/jingdong/cloud/msg/PushSocket;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 38
    sget-boolean v1, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v1, :cond_4

    .line 39
    sget-object v1, Lcom/jingdong/cloud/msg/PushSocket;->TAG:Ljava/lang/String;

    const-string v2, "isNetworkAvailable = false"

    invoke-static {v1, v2}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_4
    invoke-static {}, Lcom/jingdong/cloud/msg/PushSocket;->delayReConnect()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/jingdong/cloud/msg/PushSocket;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jingdong/cloud/msg/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 45
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_5
    :try_start_1
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    sput-object v1, Lcom/jingdong/cloud/msg/PushSocket;->socketClient:Ljava/net/Socket;

    .line 46
    sget-object v1, Lcom/jingdong/cloud/msg/PushSocket;->socketClient:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v3, "jmp1.jcloud.com"

    const/16 v4, 0x50

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v3, 0x2710

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 47
    sget-object v1, Lcom/jingdong/cloud/msg/PushSocket;->socketClient:Ljava/net/Socket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 49
    const/4 v1, 0x0

    sput v1, Lcom/jingdong/cloud/msg/PushSocket;->connectCount:I

    .line 50
    invoke-interface {p1}, Lcom/jingdong/cloud/msg/PushSocket$ConnectListener;->onConnectSuccess()V

    .line 51
    sget-boolean v1, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v1, :cond_1

    .line 52
    sget-object v1, Lcom/jingdong/cloud/msg/PushSocket;->TAG:Ljava/lang/String;

    const-string v2, "Connected."

    invoke-static {v1, v2}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 58
    :catch_1
    move-exception v0

    .line 61
    .local v0, e:Ljava/net/UnknownHostException;
    sget-object v1, Lcom/jingdong/cloud/msg/PushSocket;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jingdong/cloud/msg/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sput-object v5, Lcom/jingdong/cloud/msg/PushSocket;->socketClient:Ljava/net/Socket;

    .line 63
    invoke-static {}, Lcom/jingdong/cloud/msg/PushSocket;->delayReConnect()V

    goto :goto_0

    .line 65
    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_2
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/jingdong/cloud/msg/PushSocket;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jingdong/cloud/msg/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sput-object v5, Lcom/jingdong/cloud/msg/PushSocket;->socketClient:Ljava/net/Socket;

    .line 68
    invoke-static {}, Lcom/jingdong/cloud/msg/PushSocket;->delayReConnect()V

    goto :goto_0
.end method

.method private static delayReConnect()V
    .locals 4

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, delayTime:I
    sget v2, Lcom/jingdong/cloud/msg/PushSocket;->connectCount:I

    packed-switch v2, :pswitch_data_0

    .line 149
    :goto_0
    int-to-long v2, v0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_1
    return-void

    .line 113
    :pswitch_0
    const/16 v0, 0xbb8

    .line 114
    sget v2, Lcom/jingdong/cloud/msg/PushSocket;->connectCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/jingdong/cloud/msg/PushSocket;->connectCount:I

    goto :goto_0

    .line 117
    :pswitch_1
    const/16 v0, 0x2710

    .line 118
    sget v2, Lcom/jingdong/cloud/msg/PushSocket;->connectCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/jingdong/cloud/msg/PushSocket;->connectCount:I

    goto :goto_0

    .line 121
    :pswitch_2
    const v0, 0xea60

    .line 122
    sget v2, Lcom/jingdong/cloud/msg/PushSocket;->connectCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/jingdong/cloud/msg/PushSocket;->connectCount:I

    goto :goto_0

    .line 126
    :pswitch_3
    const v0, 0x2bf20

    .line 127
    sget v2, Lcom/jingdong/cloud/msg/PushSocket;->connectCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/jingdong/cloud/msg/PushSocket;->connectCount:I

    goto :goto_0

    .line 131
    :pswitch_4
    const v0, 0x493e0

    .line 132
    sget v2, Lcom/jingdong/cloud/msg/PushSocket;->connectCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/jingdong/cloud/msg/PushSocket;->connectCount:I

    goto :goto_0

    .line 136
    :pswitch_5
    const v0, 0x668a0

    .line 137
    sget v2, Lcom/jingdong/cloud/msg/PushSocket;->connectCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/jingdong/cloud/msg/PushSocket;->connectCount:I

    goto :goto_0

    .line 141
    :pswitch_6
    const v0, 0x927c0

    .line 142
    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static getInstance()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/jingdong/cloud/msg/PushSocket;->socketClient:Ljava/net/Socket;

    return-object v0
.end method

.method private static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 4
    .parameter "con"

    .prologue
    const/4 v2, 0x0

    .line 78
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 79
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v2

    .line 81
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 82
    .local v1, netinfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    const/4 v2, 0x1

    goto :goto_0
.end method
