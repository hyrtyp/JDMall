.class public Lcom/jingdong/app/mall/plug/utils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static convertCodeAndGetText(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .parameter "str_filepath"
    .parameter "new_str_filepath"

    .prologue
    const/4 v13, -0x2

    const/4 v12, -0x1

    .line 386
    const/4 v7, 0x0

    .line 387
    .local v7, isOk:Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    .local v1, file:Ljava/io/File;
    const/4 v4, 0x0

    .line 392
    .local v4, fw:Ljava/io/FileWriter;
    :try_start_0
    new-instance v5, Ljava/io/FileWriter;

    const/4 v10, 0x1

    invoke-direct {v5, p1, v10}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 398
    .end local v4           #fw:Ljava/io/FileWriter;
    .local v5, fw:Ljava/io/FileWriter;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 399
    .local v3, fis:Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 400
    .local v6, in:Ljava/io/BufferedInputStream;
    const/4 v10, 0x4

    invoke-virtual {v6, v10}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 401
    const/4 v10, 0x3

    new-array v2, v10, [B

    .line 402
    .local v2, first3bytes:[B
    invoke-virtual {v6, v2}, Ljava/io/BufferedInputStream;->read([B)I

    .line 403
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->reset()V

    .line 404
    const/4 v10, 0x0

    aget-byte v10, v2, v10

    const/16 v11, -0x11

    if-ne v10, v11, :cond_1

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    const/16 v11, -0x45

    if-ne v10, v11, :cond_1

    const/4 v10, 0x2

    aget-byte v10, v2, v10

    const/16 v11, -0x41

    if-ne v10, v11, :cond_1

    .line 406
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    const-string v11, "utf-8"

    invoke-direct {v10, v6, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 421
    .local v8, reader:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 422
    .local v9, str:Ljava/lang/String;
    :goto_1
    if-nez v9, :cond_5

    .line 426
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 427
    const/4 v7, 0x1

    .line 435
    if-eqz v5, :cond_7

    .line 436
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v4, v5

    .line 442
    .end local v2           #first3bytes:[B
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #fw:Ljava/io/FileWriter;
    .end local v6           #in:Ljava/io/BufferedInputStream;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .end local v9           #str:Ljava/lang/String;
    .restart local v4       #fw:Ljava/io/FileWriter;
    :cond_0
    :goto_2
    return v7

    .line 408
    .end local v4           #fw:Ljava/io/FileWriter;
    .restart local v2       #first3bytes:[B
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #fw:Ljava/io/FileWriter;
    .restart local v6       #in:Ljava/io/BufferedInputStream;
    :cond_1
    const/4 v10, 0x0

    :try_start_3
    aget-byte v10, v2, v10

    if-ne v10, v12, :cond_2

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    if-ne v10, v13, :cond_2

    .line 410
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    const-string v11, "unicode"

    invoke-direct {v10, v6, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 411
    .restart local v8       #reader:Ljava/io/BufferedReader;
    goto :goto_0

    .end local v8           #reader:Ljava/io/BufferedReader;
    :cond_2
    const/4 v10, 0x0

    aget-byte v10, v2, v10

    if-ne v10, v13, :cond_3

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    if-ne v10, v12, :cond_3

    .line 413
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    const-string v11, "utf-16be"

    invoke-direct {v10, v6, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 414
    .restart local v8       #reader:Ljava/io/BufferedReader;
    goto :goto_0

    .end local v8           #reader:Ljava/io/BufferedReader;
    :cond_3
    const/4 v10, 0x0

    aget-byte v10, v2, v10

    if-ne v10, v12, :cond_4

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    if-ne v10, v12, :cond_4

    .line 416
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    const-string v11, "utf-16le"

    invoke-direct {v10, v6, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 417
    .restart local v8       #reader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 419
    .end local v8           #reader:Ljava/io/BufferedReader;
    :cond_4
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    const-string v11, "GBK"

    invoke-direct {v10, v6, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v8       #reader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 423
    .restart local v9       #str:Ljava/lang/String;
    :cond_5
    invoke-virtual {v5, v9}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v9

    goto :goto_1

    .line 428
    .end local v2           #first3bytes:[B
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #fw:Ljava/io/FileWriter;
    .end local v6           #in:Ljava/io/BufferedInputStream;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .end local v9           #str:Ljava/lang/String;
    .restart local v4       #fw:Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 430
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 435
    if-eqz v4, :cond_0

    .line 436
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 438
    :catch_1
    move-exception v0

    .line 439
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 431
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 432
    .restart local v0       #e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 435
    if-eqz v4, :cond_0

    .line 436
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 438
    :catch_3
    move-exception v0

    .line 439
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 433
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 435
    :goto_5
    if-eqz v4, :cond_6

    .line 436
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 441
    :cond_6
    :goto_6
    throw v10

    .line 438
    :catch_4
    move-exception v0

    .line 439
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 438
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #fw:Ljava/io/FileWriter;
    .restart local v2       #first3bytes:[B
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #fw:Ljava/io/FileWriter;
    .restart local v6       #in:Ljava/io/BufferedInputStream;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    .restart local v9       #str:Ljava/lang/String;
    :catch_5
    move-exception v0

    .line 439
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0           #e:Ljava/io/IOException;
    :cond_7
    move-object v4, v5

    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v4       #fw:Ljava/io/FileWriter;
    goto/16 :goto_2

    .line 433
    .end local v2           #first3bytes:[B
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #fw:Ljava/io/FileWriter;
    .end local v6           #in:Ljava/io/BufferedInputStream;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .end local v9           #str:Ljava/lang/String;
    .restart local v5       #fw:Ljava/io/FileWriter;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v4       #fw:Ljava/io/FileWriter;
    goto :goto_5

    .line 431
    .end local v4           #fw:Ljava/io/FileWriter;
    .restart local v5       #fw:Ljava/io/FileWriter;
    :catch_6
    move-exception v0

    move-object v4, v5

    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v4       #fw:Ljava/io/FileWriter;
    goto :goto_4

    .line 428
    .end local v4           #fw:Ljava/io/FileWriter;
    .restart local v5       #fw:Ljava/io/FileWriter;
    :catch_7
    move-exception v0

    move-object v4, v5

    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v4       #fw:Ljava/io/FileWriter;
    goto :goto_3
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "oldPath"
    .parameter "newPath"

    .prologue
    .line 231
    const/4 v2, 0x0

    .line 232
    .local v2, bytesum:I
    const/4 v1, 0x0

    .line 233
    .local v1, byteread:I
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v5, oldfile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 235
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 236
    .local v4, inStream:Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 237
    .local v3, fs:Ljava/io/FileOutputStream;
    const/16 v6, 0x5a4

    new-array v0, v6, [B

    .line 239
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_1

    .line 244
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 255
    .end local v0           #buffer:[B
    .end local v3           #fs:Ljava/io/FileOutputStream;
    .end local v4           #inStream:Ljava/io/InputStream;
    .end local v5           #oldfile:Ljava/io/File;
    :cond_0
    :goto_1
    return-void

    .line 240
    .restart local v0       #buffer:[B
    .restart local v3       #fs:Ljava/io/FileOutputStream;
    .restart local v4       #inStream:Ljava/io/InputStream;
    .restart local v5       #oldfile:Ljava/io/File;
    :cond_1
    add-int/2addr v2, v1

    .line 241
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v2}, Ljava/io/PrintStream;->println(I)V

    .line 242
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    .end local v0           #buffer:[B
    .end local v3           #fs:Ljava/io/FileOutputStream;
    .end local v4           #inStream:Ljava/io/InputStream;
    .end local v5           #oldfile:Ljava/io/File;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private static copyFile2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 449
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 450
    .local v2, in:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 451
    .local v4, out:Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 452
    .local v3, inFile:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 453
    .local v5, outFile:Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 454
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 455
    .local v1, i:I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    .line 458
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 459
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 464
    .end local v0           #buffer:[B
    .end local v1           #i:I
    .end local v2           #in:Ljava/io/File;
    .end local v3           #inFile:Ljava/io/FileInputStream;
    .end local v4           #out:Ljava/io/File;
    .end local v5           #outFile:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 456
    .restart local v0       #buffer:[B
    .restart local v1       #i:I
    .restart local v2       #in:Ljava/io/File;
    .restart local v3       #inFile:Ljava/io/FileInputStream;
    .restart local v4       #out:Ljava/io/File;
    .restart local v5       #outFile:Ljava/io/FileOutputStream;
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    .end local v0           #buffer:[B
    .end local v1           #i:I
    .end local v2           #in:Ljava/io/File;
    .end local v3           #inFile:Ljava/io/FileInputStream;
    .end local v4           #out:Ljava/io/File;
    .end local v5           #outFile:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public static copyFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "oldPath"
    .parameter "newPath"

    .prologue
    .line 269
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 270
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, a:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, file:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 273
    .local v7, temp:Ljava/io/File;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v2

    if-lt v3, v8, :cond_0

    .line 303
    .end local v0           #a:Ljava/io/File;
    .end local v2           #file:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v7           #temp:Ljava/io/File;
    :goto_1
    return-void

    .line 274
    .restart local v0       #a:Ljava/io/File;
    .restart local v2       #file:[Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v7       #temp:Ljava/io/File;
    :cond_0
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 275
    new-instance v7, Ljava/io/File;

    .end local v7           #temp:Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v2, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    .restart local v7       #temp:Ljava/io/File;
    :goto_2
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 281
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 282
    .local v4, input:Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 283
    .local v6, output:Ljava/io/FileOutputStream;
    const/16 v8, 0x1400

    new-array v1, v8, [B

    .line 285
    .local v1, b:[B
    :goto_3
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, len:I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_4

    .line 288
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 289
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 290
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 292
    .end local v1           #b:[B
    .end local v4           #input:Ljava/io/FileInputStream;
    .end local v5           #len:I
    .end local v6           #output:Ljava/io/FileOutputStream;
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 293
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v2, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/jingdong/app/mall/plug/utils/FileUtil;->copyFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 277
    :cond_3
    new-instance v7, Ljava/io/File;

    .end local v7           #temp:Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v7       #temp:Ljava/io/File;
    goto/16 :goto_2

    .line 286
    .restart local v1       #b:[B
    .restart local v4       #input:Ljava/io/FileInputStream;
    .restart local v5       #len:I
    .restart local v6       #output:Ljava/io/FileOutputStream;
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {v6, v1, v8, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 296
    .end local v0           #a:Ljava/io/File;
    .end local v1           #b:[B
    .end local v2           #file:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #input:Ljava/io/FileInputStream;
    .end local v5           #len:I
    .end local v6           #output:Ljava/io/FileOutputStream;
    .end local v7           #temp:Ljava/io/File;
    :catch_0
    move-exception v8

    goto/16 :goto_1
.end method

.method public static delAllFile(Ljava/lang/String;)V
    .locals 6
    .parameter "path"

    .prologue
    .line 194
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 217
    :cond_0
    return-void

    .line 198
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, tempList:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 203
    .local v2, temp:Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 204
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 205
    new-instance v2, Ljava/io/File;

    .end local v2           #temp:Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .restart local v2       #temp:Ljava/io/File;
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 210
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 212
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jingdong/app/mall/plug/utils/FileUtil;->delAllFile(Ljava/lang/String;)V

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jingdong/app/mall/plug/utils/FileUtil;->delFolder(Ljava/lang/String;)V

    .line 203
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_4
    new-instance v2, Ljava/io/File;

    .end local v2           #temp:Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2       #temp:Ljava/io/File;
    goto :goto_1
.end method

.method public static delFile(Ljava/lang/String;)V
    .locals 3
    .parameter "filePathAndName"

    .prologue
    .line 137
    move-object v0, p0

    .line 138
    .local v0, filePath:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, myDelFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v1           #myDelFile:Ljava/io/File;
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static delFolder(Ljava/lang/String;)V
    .locals 3
    .parameter "folderPath"

    .prologue
    .line 171
    :try_start_0
    invoke-static {p0}, Lcom/jingdong/app/mall/plug/utils/FileUtil;->delAllFile(Ljava/lang/String;)V

    .line 172
    move-object v0, p0

    .line 173
    .local v0, filePath:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v1, myFilePath:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v0           #filePath:Ljava/lang/String;
    .end local v1           #myFilePath:Ljava/io/File;
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static deleOldFile(Ljava/lang/String;I)V
    .locals 8
    .parameter "dirPtah"
    .parameter "fileNums"

    .prologue
    const/4 v6, 0x0

    .line 355
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 383
    :cond_0
    return-void

    .line 358
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 360
    .local v4, listFiles:[Ljava/io/File;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    array-length v7, v4

    move v5, v6

    :goto_0
    if-lt v5, v7, :cond_2

    .line 365
    new-instance v5, Lcom/jingdong/app/mall/plug/utils/FileUtil$1;

    invoke-direct {v5}, Lcom/jingdong/app/mall/plug/utils/FileUtil$1;-><init>()V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 377
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, p1, :cond_0

    .line 378
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 379
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 380
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 381
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 361
    .end local v0           #f:Ljava/io/File;
    :cond_2
    aget-object v2, v4, v5

    .line 362
    .local v2, file0:Ljava/io/File;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static getAvailableInternalMemorySize()J
    .locals 8

    .prologue
    .line 45
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 47
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 49
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 51
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 53
    .local v0, availableBlocks:J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method public static getFileSizes(Ljava/io/File;)J
    .locals 5
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    const-wide/16 v1, 0x0

    .line 59
    .local v1, s:J
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 61
    .local v0, fis:Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v3

    int-to-long v1, v3

    .line 66
    .end local v0           #fis:Ljava/io/FileInputStream;
    :goto_0
    return-wide v1

    .line 64
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isExist(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 325
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 326
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 346
    const-string v0, "test.txt"

    const-string v1, "fdsfdsfdsfs"

    invoke-static {v0, v1}, Lcom/jingdong/app/mall/plug/utils/FileUtil;->newFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public static moveFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "oldPath"
    .parameter "newPath"

    .prologue
    .line 314
    invoke-static {p0, p1}, Lcom/jingdong/app/mall/plug/utils/FileUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {p0}, Lcom/jingdong/app/mall/plug/utils/FileUtil;->delFile(Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public static moveFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "oldPath"
    .parameter "newPath"

    .prologue
    .line 338
    invoke-static {p0, p1}, Lcom/jingdong/app/mall/plug/utils/FileUtil;->copyFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static {p0}, Lcom/jingdong/app/mall/plug/utils/FileUtil;->delFolder(Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public static newFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "filePathAndName"
    .parameter "fileContent"

    .prologue
    .line 104
    move-object v0, p0

    .line 105
    .local v0, filePath:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v2, myFilePath:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 108
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 110
    :cond_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 111
    .local v3, resultFile:Ljava/io/FileWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 112
    .local v1, myFile:Ljava/io/PrintWriter;
    move-object v4, p1

    .line 113
    .local v4, strContent:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1           #myFile:Ljava/io/PrintWriter;
    .end local v2           #myFilePath:Ljava/io/File;
    .end local v3           #resultFile:Ljava/io/FileWriter;
    .end local v4           #strContent:Ljava/lang/String;
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static newFolder(Ljava/lang/String;)V
    .locals 3
    .parameter "folderPath"

    .prologue
    .line 77
    move-object v0, p0

    .line 78
    .local v0, filePath:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, myFilePath:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v1           #myFilePath:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v2

    goto :goto_0
.end method
