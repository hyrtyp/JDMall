.class public Lcom/jingdong/cloud/msg/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static D:Z

.field public static E:Z

.field public static I:Z

.field public static final IS_TEST:Z

.field public static final LOG_FILE:Ljava/lang/String;

.field public static V:Z

.field public static W:Z

.field public static accessFile:Ljava/io/RandomAccessFile;

.field private static printLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 18
    const-string v2, "printLog"

    const-string v4, "true"

    invoke-static {v2, v4}, Lcom/jingdong/cloud/msg/configuration/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/jingdong/cloud/msg/util/Log;->printLog:Z

    .line 20
    sget-boolean v2, Lcom/jingdong/cloud/msg/util/Log;->printLog:Z

    if-eqz v2, :cond_2

    .line 21
    const-string v2, "debugLog"

    const-string v4, "false"

    invoke-static {v2, v4}, Lcom/jingdong/cloud/msg/configuration/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    sput-boolean v2, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    .line 22
    sget-boolean v2, Lcom/jingdong/cloud/msg/util/Log;->printLog:Z

    if-eqz v2, :cond_3

    .line 23
    const-string v2, "viewLog"

    const-string v4, "false"

    invoke-static {v2, v4}, Lcom/jingdong/cloud/msg/configuration/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_1
    sput-boolean v2, Lcom/jingdong/cloud/msg/util/Log;->V:Z

    .line 24
    sget-boolean v2, Lcom/jingdong/cloud/msg/util/Log;->printLog:Z

    if-eqz v2, :cond_4

    .line 25
    const-string v2, "infoLog"

    const-string v4, "false"

    invoke-static {v2, v4}, Lcom/jingdong/cloud/msg/configuration/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_2
    sput-boolean v2, Lcom/jingdong/cloud/msg/util/Log;->I:Z

    .line 26
    sget-boolean v2, Lcom/jingdong/cloud/msg/util/Log;->printLog:Z

    if-eqz v2, :cond_5

    .line 27
    const-string v2, "warnLog"

    const-string v4, "false"

    invoke-static {v2, v4}, Lcom/jingdong/cloud/msg/configuration/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_3
    sput-boolean v2, Lcom/jingdong/cloud/msg/util/Log;->W:Z

    .line 28
    sget-boolean v2, Lcom/jingdong/cloud/msg/util/Log;->printLog:Z

    if-eqz v2, :cond_6

    .line 29
    const-string v2, "errorLog"

    const-string v4, "false"

    invoke-static {v2, v4}, Lcom/jingdong/cloud/msg/configuration/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_4
    sput-boolean v2, Lcom/jingdong/cloud/msg/util/Log;->E:Z

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/jmp_log.txt"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/jingdong/cloud/msg/util/Log;->LOG_FILE:Ljava/lang/String;

    .line 35
    sget-boolean v2, Lcom/jingdong/cloud/msg/util/Log;->printLog:Z

    if-eqz v2, :cond_0

    .line 36
    const-string v2, "testmode"

    const-string v3, "false"

    invoke-static {v2, v3}, Lcom/jingdong/cloud/msg/configuration/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    :cond_0
    sput-boolean v3, Lcom/jingdong/cloud/msg/util/Log;->IS_TEST:Z

    .line 40
    const/4 v2, 0x0

    sput-object v2, Lcom/jingdong/cloud/msg/util/Log;->accessFile:Ljava/io/RandomAccessFile;

    .line 43
    sget-boolean v2, Lcom/jingdong/cloud/msg/util/Log;->IS_TEST:Z

    if-eqz v2, :cond_1

    .line 44
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/jingdong/cloud/msg/util/Log;->LOG_FILE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 47
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_1
    :goto_5
    return-void

    .end local v1           #file:Ljava/io/File;
    :cond_2
    move v2, v3

    .line 21
    goto/16 :goto_0

    :cond_3
    move v2, v3

    .line 23
    goto/16 :goto_1

    :cond_4
    move v2, v3

    .line 25
    goto :goto_2

    :cond_5
    move v2, v3

    .line 27
    goto :goto_3

    :cond_6
    move v2, v3

    .line 29
    goto :goto_4

    .line 48
    .restart local v1       #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/io/IOException;
    sget-boolean v2, Lcom/jingdong/cloud/msg/util/Log;->E:Z

    if-eqz v2, :cond_1

    .line 50
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 58
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->printLog:Z

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/cloud/msg/util/Log;->saveLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 66
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->printLog:Z

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/cloud/msg/util/Log;->saveLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 130
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->printLog:Z

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/cloud/msg/util/Log;->saveLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 138
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->printLog:Z

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/cloud/msg/util/Log;->saveLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 90
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->printLog:Z

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/cloud/msg/util/Log;->saveLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 98
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->printLog:Z

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/cloud/msg/util/Log;->saveLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static saveLog(Ljava/lang/String;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 146
    sget-boolean v5, Lcom/jingdong/cloud/msg/util/Log;->IS_TEST:Z

    if-eqz v5, :cond_1

    .line 148
    :try_start_0
    sget-object v5, Lcom/jingdong/cloud/msg/util/Log;->accessFile:Ljava/io/RandomAccessFile;

    if-nez v5, :cond_0

    .line 149
    new-instance v5, Ljava/io/RandomAccessFile;

    sget-object v6, Lcom/jingdong/cloud/msg/util/Log;->LOG_FILE:Ljava/lang/String;

    const-string v7, "rw"

    invoke-direct {v5, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/jingdong/cloud/msg/util/Log;->accessFile:Ljava/io/RandomAccessFile;

    .line 151
    :cond_0
    sget-object v5, Lcom/jingdong/cloud/msg/util/Log;->accessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    .line 153
    .local v1, fileLength:J
    sget-object v5, Lcom/jingdong/cloud/msg/util/Log;->accessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 155
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 157
    .local v3, nowTime:Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 158
    const-string v5, "yyyy MM dd HH mm ss"

    .line 157
    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 161
    .local v4, time:Ljava/text/SimpleDateFormat;
    sget-object v5, Lcom/jingdong/cloud/msg/util/Log;->accessFile:Ljava/io/RandomAccessFile;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 162
    sget-object v5, Lcom/jingdong/cloud/msg/util/Log;->accessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, p0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 163
    sget-object v5, Lcom/jingdong/cloud/msg/util/Log;->accessFile:Ljava/io/RandomAccessFile;

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    .end local v1           #fileLength:J
    .end local v3           #nowTime:Ljava/util/Date;
    .end local v4           #time:Ljava/text/SimpleDateFormat;
    :cond_1
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 166
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 167
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 74
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->printLog:Z

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/cloud/msg/util/Log;->saveLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 82
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->printLog:Z

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/cloud/msg/util/Log;->saveLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 106
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->printLog:Z

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/cloud/msg/util/Log;->saveLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 122
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->printLog:Z

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/cloud/msg/util/Log;->saveLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "tr"

    .prologue
    .line 114
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->printLog:Z

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/cloud/msg/util/Log;->saveLog(Ljava/lang/String;)V

    goto :goto_0
.end method
