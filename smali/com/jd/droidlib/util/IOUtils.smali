.class public Lcom/jd/droidlib/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)V
    .locals 9
    .parameter "fileFrom"
    .parameter "fileTo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 106
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 109
    :cond_0
    const/4 v1, 0x0

    .line 110
    .local v1, src:Ljava/nio/channels/FileChannel;
    const/4 v0, 0x0

    .line 112
    .local v0, dst:Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 113
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 114
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    new-array v2, v8, [Ljava/io/Closeable;

    .line 116
    aput-object v1, v2, v6

    aput-object v0, v2, v7

    invoke-static {v2}, Lcom/jd/droidlib/util/IOUtils;->silentlyClose([Ljava/io/Closeable;)V

    .line 119
    return-void

    .line 115
    :catchall_0
    move-exception v2

    new-array v3, v8, [Ljava/io/Closeable;

    .line 116
    aput-object v1, v3, v6

    aput-object v0, v3, v7

    invoke-static {v3}, Lcom/jd/droidlib/util/IOUtils;->silentlyClose([Ljava/io/Closeable;)V

    .line 117
    throw v2
.end method

.method public static varargs getFileList(Ljava/io/File;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .parameter "dir"
    .parameter "fileExtensions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 81
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v4, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 83
    .local v2, fileList:[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 84
    array-length v8, v2

    move v7, v6

    :goto_0
    if-lt v7, v8, :cond_1

    .line 102
    :cond_0
    return-object v4

    .line 84
    :cond_1
    aget-object v1, v2, v7

    .line 85
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 86
    array-length v5, p1

    if-nez v5, :cond_3

    .line 87
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_2
    :goto_1
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, fileName:Ljava/lang/String;
    array-length v9, p1

    move v5, v6

    :goto_2
    if-ge v5, v9, :cond_2

    aget-object v0, p1, v5

    .line 91
    .local v0, ext:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 92
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 90
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 98
    .end local v0           #ext:Ljava/lang/String;
    .end local v3           #fileName:Ljava/lang/String;
    :cond_5
    invoke-static {v1, p1}, Lcom/jd/droidlib/util/IOUtils;->getFileList(Ljava/io/File;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public static readToByteArray(Ljava/io/InputStream;)[B
    .locals 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 71
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x2000

    new-array v1, v3, [B

    .line 73
    .local v1, buffer:[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, len:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 74
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static readToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p0}, Lcom/jd/droidlib/util/IOUtils;->readToByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 66
    .local v0, data:[B
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public static varargs silentlyClose([Ljava/io/Closeable;)V
    .locals 4
    .parameter "closeables"

    .prologue
    .line 53
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 62
    return-void

    .line 53
    :cond_0
    aget-object v0, p0, v2

    .line 55
    .local v0, cl:Ljava/io/Closeable;
    if-eqz v0, :cond_1

    .line 56
    :try_start_0
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static urlDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 46
    :try_start_0
    const-string v1, "utf-8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "failed to decode"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 38
    :try_start_0
    const-string v1, "utf-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "failed to encode"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
