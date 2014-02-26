.class public Lcom/jingdong/common/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# instance fields
.field private final FILESIZE:I

.field private SDPATH:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v0, 0x400

    iput v0, p0, Lcom/jingdong/common/utils/FileUtils;->FILESIZE:I

    .line 22
    return-void
.end method


# virtual methods
.method public createFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 33
    return-object v0
.end method

.method public createSDDir(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "dirName"

    .prologue
    .line 42
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jingdong/common/utils/FileUtils;->SDPATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 44
    return-object v0
.end method

.method public deleFile(Ljava/lang/String;)V
    .locals 3
    .parameter "fileName"

    .prologue
    .line 63
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jingdong/common/utils/FileUtils;->SDPATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 67
    :cond_0
    return-void
.end method

.method public getSDPATH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/jingdong/common/utils/FileUtils;->SDPATH:Ljava/lang/String;

    return-object v0
.end method

.method public isFileExist(Ljava/lang/String;)Z
    .locals 3
    .parameter "fileName"

    .prologue
    .line 53
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jingdong/common/utils/FileUtils;->SDPATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public writeFromInput(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;
    .locals 10
    .parameter "path"
    .parameter "fileName"
    .parameter "input"

    .prologue
    .line 77
    const/4 v3, 0x0

    .line 78
    .local v3, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 81
    .local v5, output:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 82
    .end local v3           #file:Ljava/io/File;
    .local v4, file:Ljava/io/File;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 83
    invoke-virtual {v4}, Ljava/io/File;->deleteOnExit()V

    .line 85
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 87
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 88
    .end local v5           #output:Ljava/io/FileOutputStream;
    .local v6, output:Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    :try_start_2
    new-array v0, v8, [B

    .line 89
    .local v0, buffer:[B
    const/4 v7, 0x0

    .line 90
    .local v7, readLength:I
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 91
    .local v1, bufferedInputStream:Ljava/io/BufferedInputStream;
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 94
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 101
    if-eqz v6, :cond_4

    .line 102
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v5, v6

    .end local v6           #output:Ljava/io/FileOutputStream;
    .restart local v5       #output:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 110
    .end local v0           #buffer:[B
    .end local v1           #bufferedInputStream:Ljava/io/BufferedInputStream;
    .end local v4           #file:Ljava/io/File;
    .end local v7           #readLength:I
    .restart local v3       #file:Ljava/io/File;
    :cond_1
    :goto_1
    return-object v3

    .line 92
    .end local v3           #file:Ljava/io/File;
    .end local v5           #output:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #bufferedInputStream:Ljava/io/BufferedInputStream;
    .restart local v4       #file:Ljava/io/File;
    .restart local v6       #output:Ljava/io/FileOutputStream;
    .restart local v7       #readLength:I
    :cond_2
    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v6, v0, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 96
    .end local v0           #buffer:[B
    .end local v1           #bufferedInputStream:Ljava/io/BufferedInputStream;
    .end local v7           #readLength:I
    :catch_0
    move-exception v2

    move-object v5, v6

    .end local v6           #output:Ljava/io/FileOutputStream;
    .restart local v5       #output:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 97
    .end local v4           #file:Ljava/io/File;
    .local v2, e:Ljava/lang/Exception;
    .restart local v3       #file:Ljava/io/File;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 101
    if-eqz v5, :cond_1

    .line 102
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 105
    :catch_1
    move-exception v2

    .line 106
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 99
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 101
    :goto_3
    if-eqz v5, :cond_3

    .line 102
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 108
    :cond_3
    :goto_4
    throw v8

    .line 105
    :catch_2
    move-exception v2

    .line 106
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 105
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #file:Ljava/io/File;
    .end local v5           #output:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #bufferedInputStream:Ljava/io/BufferedInputStream;
    .restart local v4       #file:Ljava/io/File;
    .restart local v6       #output:Ljava/io/FileOutputStream;
    .restart local v7       #readLength:I
    :catch_3
    move-exception v2

    .line 106
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2           #e:Ljava/io/IOException;
    :cond_4
    move-object v5, v6

    .end local v6           #output:Ljava/io/FileOutputStream;
    .restart local v5       #output:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    goto :goto_1

    .line 99
    .end local v0           #buffer:[B
    .end local v1           #bufferedInputStream:Ljava/io/BufferedInputStream;
    .end local v3           #file:Ljava/io/File;
    .end local v7           #readLength:I
    .restart local v4       #file:Ljava/io/File;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    goto :goto_3

    .end local v3           #file:Ljava/io/File;
    .end local v5           #output:Ljava/io/FileOutputStream;
    .restart local v4       #file:Ljava/io/File;
    .restart local v6       #output:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6           #output:Ljava/io/FileOutputStream;
    .restart local v5       #output:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    goto :goto_3

    .line 96
    :catch_4
    move-exception v2

    goto :goto_2

    .end local v3           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    goto :goto_2
.end method
