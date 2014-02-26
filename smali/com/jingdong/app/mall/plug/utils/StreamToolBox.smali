.class public Lcom/jingdong/app/mall/plug/utils/StreamToolBox;
.super Ljava/lang/Object;
.source "StreamToolBox.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adLogToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "str_log"
    .parameter "stringPath"

    .prologue
    .line 165
    const/4 v1, 0x0

    .line 167
    .local v1, fw:Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v1           #fw:Ljava/io/FileWriter;
    .local v2, fw:Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 173
    if-eqz v2, :cond_2

    .line 174
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v1, v2

    .line 180
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v3

    .line 173
    :goto_1
    if-eqz v1, :cond_0

    .line 174
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 176
    :catch_1
    move-exception v0

    .line 177
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 173
    :goto_2
    if-eqz v1, :cond_1

    .line 174
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 179
    :cond_1
    :goto_3
    throw v3

    .line 176
    :catch_2
    move-exception v0

    .line 177
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 176
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :catch_3
    move-exception v0

    .line 177
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    move-object v1, v2

    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    goto :goto_0

    .line 171
    .end local v1           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    goto :goto_2

    .line 169
    .end local v1           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    goto :goto_1
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 226
    .local v0, bin:Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 228
    .local v1, bout:Ljava/io/BufferedOutputStream;
    const/16 v4, 0x1000

    new-array v2, v4, [B

    .line 231
    .local v2, buffer:[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    .line 232
    .local v3, doneLength:I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 236
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 237
    return-void

    .line 234
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static extractGZipStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 156
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v0}, Lcom/jingdong/app/mall/plug/utils/StreamToolBox;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 157
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static flushInputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;
    .locals 8
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 242
    .local v2, bin:Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 243
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 244
    .local v3, bout:Ljava/io/BufferedOutputStream;
    const/16 v7, 0x1000

    new-array v4, v7, [B

    .line 246
    .local v4, buffer:[B
    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    .line 247
    .local v5, doneLength:I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_0

    .line 251
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 252
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 257
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bin:Ljava/io/BufferedInputStream;
    .end local v3           #bout:Ljava/io/BufferedOutputStream;
    .end local v4           #buffer:[B
    .end local v5           #doneLength:I
    :goto_1
    return-object v0

    .line 249
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #bin:Ljava/io/BufferedInputStream;
    .restart local v3       #bout:Ljava/io/BufferedOutputStream;
    .restart local v4       #buffer:[B
    .restart local v5       #doneLength:I
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bin:Ljava/io/BufferedInputStream;
    .end local v3           #bout:Ljava/io/BufferedOutputStream;
    .end local v4           #buffer:[B
    .end local v5           #doneLength:I
    :catch_0
    move-exception v6

    .line 255
    .local v6, error:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 257
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getByteArray(Ljava/io/InputStream;)[B
    .locals 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 31
    .local v1, bin:Ljava/io/BufferedInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 33
    .local v2, bout:Ljava/io/BufferedOutputStream;
    const/16 v5, 0x1000

    new-array v3, v5, [B

    .line 35
    .local v3, buffer:[B
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    .line 36
    .local v4, doneLength:I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 40
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 41
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    .line 38
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static getByteArrayInputStream([B)Ljava/io/ByteArrayInputStream;
    .locals 1
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static getBytes(Ljava/lang/Object;)[B
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 265
    if-eqz p0, :cond_0

    .line 266
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 267
    .local v0, bout:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 268
    .local v3, out:Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 269
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 270
    .local v1, bytes:[B
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v0           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v1           #bytes:[B
    .end local v3           #out:Ljava/io/ObjectOutputStream;
    :goto_0
    return-object v1

    .line 274
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    move-object v1, v4

    .line 275
    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    move-object v1, v4

    .line 277
    goto :goto_0
.end method

.method public static getObject([B)Ljava/lang/Object;
    .locals 5
    .parameter "bytes"

    .prologue
    const/4 v4, 0x0

    .line 282
    if-nez p0, :cond_0

    move-object v3, v4

    .line 303
    :goto_0
    return-object v3

    .line 285
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 288
    .local v0, bin:Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 289
    .local v2, in:Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 290
    .local v3, obj:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 292
    .end local v2           #in:Ljava/io/ObjectInputStream;
    .end local v3           #obj:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 294
    .local v1, e:Ljava/io/StreamCorruptedException;
    invoke-virtual {v1}, Ljava/io/StreamCorruptedException;->printStackTrace()V

    .end local v1           #e:Ljava/io/StreamCorruptedException;
    :goto_1
    move-object v3, v4

    .line 303
    goto :goto_0

    .line 295
    :catch_1
    move-exception v1

    .line 297
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 298
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 300
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static declared-synchronized getOutputStreamFromString(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 3
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    const-class v2, Lcom/jingdong/app/mall/plug/utils/StreamToolBox;

    monitor-enter v2

    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 62
    .local v0, os:Ljava/io/OutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit v2

    return-object v0

    .line 61
    .end local v0           #os:Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static loadLinesFromFile(Ljava/lang/String;)Ljava/util/Vector;
    .locals 5
    .parameter "filePathName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 71
    .local v2, lines:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 72
    invoke-static {p0}, Lcom/jingdong/app/mall/plug/utils/StreamToolBox;->loadStreamFromFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 71
    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 73
    .local v0, brErr:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 74
    .local v1, line:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 80
    return-object v2

    .line 77
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static declared-synchronized loadStreamFromFile(Ljava/io/File;)Ljava/io/InputStream;
    .locals 2
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    const-class v1, Lcom/jingdong/app/mall/plug/utils/StreamToolBox;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized loadStreamFromFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "filePathName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    const-class v1, Lcom/jingdong/app/mall/plug/utils/StreamToolBox;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static loadStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "filePathName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jingdong/app/mall/plug/utils/StreamToolBox;->loadStringFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static loadStringFromGZIPStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/jingdong/app/mall/plug/utils/StreamToolBox;->loadStringFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static loadStringFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 119
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/jingdong/app/mall/plug/utils/StreamToolBox;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 120
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 121
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static loadStringFromStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "in"
    .parameter "encode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 126
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/jingdong/app/mall/plug/utils/StreamToolBox;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 127
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 128
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static loadStringLinesFromStream(Ljava/io/InputStream;)Ljava/util/Vector;
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 135
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 136
    .local v1, lines:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, row:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 140
    return-object v1

    .line 137
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static saveGZipStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "in"
    .parameter "fileNamePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1}, Lcom/jingdong/app/mall/plug/utils/StreamToolBox;->saveStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)Z

    .line 146
    return-void
.end method

.method public static declared-synchronized saveStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 3
    .parameter "in"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    const-class v2, Lcom/jingdong/app/mall/plug/utils/StreamToolBox;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 216
    :goto_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 217
    .local v0, fos:Ljava/io/FileOutputStream;
    invoke-static {p0, v0}, Lcom/jingdong/app/mall/plug/utils/StreamToolBox;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 218
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v0           #fos:Ljava/io/FileOutputStream;
    :goto_1
    monitor-exit v2

    return-void

    .line 213
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v1

    goto :goto_1

    .line 210
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized saveStreamToFile([BLjava/io/File;)V
    .locals 3
    .parameter "byteArray"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    const-class v2, Lcom/jingdong/app/mall/plug/utils/StreamToolBox;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 100
    :goto_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 101
    .local v0, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 102
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v0           #fos:Ljava/io/FileOutputStream;
    :goto_1
    monitor-exit v2

    return-void

    .line 97
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    goto :goto_1

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized saveStreamToFile([BLjava/lang/String;)V
    .locals 2
    .parameter "byteArray"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const-class v1, Lcom/jingdong/app/mall/plug/utils/StreamToolBox;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/jingdong/app/mall/plug/utils/StreamToolBox;->saveStreamToFile([BLjava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit v1

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized saveStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 6
    .parameter "in"
    .parameter "fileNamePath"

    .prologue
    .line 183
    const-class v4, Lcom/jingdong/app/mall/plug/utils/StreamToolBox;

    monitor-enter v4

    const/4 v2, 0x0

    .line 185
    .local v2, isSaveOk:Z
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 192
    :goto_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 193
    .local v1, fos:Ljava/io/FileOutputStream;
    invoke-static {p0, v1}, Lcom/jingdong/app/mall/plug/utils/StreamToolBox;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 194
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    const/4 v2, 0x1

    .line 200
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 205
    .end local v0           #f:Ljava/io/File;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :goto_1
    monitor-exit v4

    return v2

    .line 189
    .restart local v0       #f:Ljava/io/File;
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 196
    .end local v0           #f:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 200
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 201
    :catch_1
    move-exception v3

    goto :goto_1

    .line 198
    :catchall_0
    move-exception v3

    .line 200
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 204
    :goto_2
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 183
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 201
    :catch_2
    move-exception v5

    goto :goto_2

    .restart local v0       #f:Ljava/io/File;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method public static declared-synchronized saveStringToFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .parameter "string"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    const-class v1, Lcom/jingdong/app/mall/plug/utils/StreamToolBox;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/jingdong/app/mall/plug/utils/StreamToolBox;->saveStreamToFile([BLjava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit v1

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static saveStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "str"
    .parameter "fileNamePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1}, Lcom/jingdong/app/mall/plug/utils/StreamToolBox;->saveStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)Z

    .line 162
    return-void
.end method
