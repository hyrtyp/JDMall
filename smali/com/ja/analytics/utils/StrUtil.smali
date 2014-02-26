.class public Lcom/ja/analytics/utils/StrUtil;
.super Ljava/lang/Object;
.source "StrUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accessKeyValidation(Ljava/lang/String;)Z
    .locals 1
    .parameter "accessKey"

    .prologue
    .line 36
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static channelValidation(Ljava/lang/String;)Z
    .locals 4
    .parameter "channel"

    .prologue
    .line 14
    if-eqz p0, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16
    :cond_0
    const/4 v3, 0x0

    .line 21
    :goto_0
    return v3

    .line 18
    :cond_1
    const-string v2, "^[A-Za-z0-9\\s_]{1,20}+$"

    .line 19
    .local v2, regex1:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 20
    .local v1, p1:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 21
    .local v0, m1:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    goto :goto_0
.end method

.method public static compress([B)[B
    .locals 12
    .parameter "buffer"

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 55
    .local v4, gzip:Ljava/util/zip/GZIPOutputStream;
    const/4 v6, 0x0

    .line 59
    .local v6, inputStream:Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 60
    .end local v0           #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .local v1, arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 61
    .end local v4           #gzip:Ljava/util/zip/GZIPOutputStream;
    .local v5, gzip:Ljava/util/zip/GZIPOutputStream;
    :try_start_2
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 62
    .end local v6           #inputStream:Ljava/io/ByteArrayInputStream;
    .local v7, inputStream:Ljava/io/ByteArrayInputStream;
    :try_start_3
    array-length v10, p0

    new-array v2, v10, [B

    .line 63
    .local v2, buf:[B
    const/4 v8, 0x0

    .line 64
    .local v8, len:I
    :goto_0
    invoke-virtual {v7, v2}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_3

    .line 68
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 70
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v9

    .line 77
    .local v9, result:[B
    if-eqz v5, :cond_0

    .line 79
    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 81
    :cond_0
    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 85
    :cond_1
    if-eqz v7, :cond_2

    .line 87
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :cond_2
    :goto_1
    move-object v6, v7

    .end local v7           #inputStream:Ljava/io/ByteArrayInputStream;
    .restart local v6       #inputStream:Ljava/io/ByteArrayInputStream;
    move-object v4, v5

    .end local v5           #gzip:Ljava/util/zip/GZIPOutputStream;
    .restart local v4       #gzip:Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .line 74
    .end local v1           #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .end local v2           #buf:[B
    .end local v8           #len:I
    .end local v9           #result:[B
    .restart local v0       #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    :goto_2
    return-object v9

    .line 65
    .end local v0           #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .end local v4           #gzip:Ljava/util/zip/GZIPOutputStream;
    .end local v6           #inputStream:Ljava/io/ByteArrayInputStream;
    .restart local v1       #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #buf:[B
    .restart local v5       #gzip:Ljava/util/zip/GZIPOutputStream;
    .restart local v7       #inputStream:Ljava/io/ByteArrayInputStream;
    .restart local v8       #len:I
    :cond_3
    const/4 v10, 0x0

    :try_start_5
    invoke-virtual {v5, v2, v10, v8}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 73
    .end local v2           #buf:[B
    .end local v8           #len:I
    :catch_0
    move-exception v3

    move-object v6, v7

    .end local v7           #inputStream:Ljava/io/ByteArrayInputStream;
    .restart local v6       #inputStream:Ljava/io/ByteArrayInputStream;
    move-object v4, v5

    .end local v5           #gzip:Ljava/util/zip/GZIPOutputStream;
    .restart local v4       #gzip:Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .line 77
    .end local v1           #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .local v3, e:Ljava/lang/Exception;
    :goto_3
    if-eqz v4, :cond_4

    .line 79
    :try_start_6
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 81
    :cond_4
    if-eqz v0, :cond_5

    .line 83
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 85
    :cond_5
    if-eqz v6, :cond_6

    .line 87
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 74
    :cond_6
    :goto_4
    const/4 v9, 0x0

    goto :goto_2

    .line 75
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 77
    :goto_5
    if-eqz v4, :cond_7

    .line 79
    :try_start_7
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 81
    :cond_7
    if-eqz v0, :cond_8

    .line 83
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 85
    :cond_8
    if-eqz v6, :cond_9

    .line 87
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 94
    :cond_9
    :goto_6
    throw v10

    .line 89
    :catch_1
    move-exception v11

    goto :goto_6

    .line 75
    .end local v0           #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v10

    move-object v0, v1

    .end local v1           #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .end local v0           #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .end local v4           #gzip:Ljava/util/zip/GZIPOutputStream;
    .restart local v1       #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #gzip:Ljava/util/zip/GZIPOutputStream;
    :catchall_2
    move-exception v10

    move-object v4, v5

    .end local v5           #gzip:Ljava/util/zip/GZIPOutputStream;
    .restart local v4       #gzip:Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1           #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .end local v0           #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .end local v4           #gzip:Ljava/util/zip/GZIPOutputStream;
    .end local v6           #inputStream:Ljava/io/ByteArrayInputStream;
    .restart local v1       #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #gzip:Ljava/util/zip/GZIPOutputStream;
    .restart local v7       #inputStream:Ljava/io/ByteArrayInputStream;
    :catchall_3
    move-exception v10

    move-object v6, v7

    .end local v7           #inputStream:Ljava/io/ByteArrayInputStream;
    .restart local v6       #inputStream:Ljava/io/ByteArrayInputStream;
    move-object v4, v5

    .end local v5           #gzip:Ljava/util/zip/GZIPOutputStream;
    .restart local v4       #gzip:Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1           #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 89
    .restart local v3       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v10

    goto :goto_4

    .line 73
    .end local v3           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v3

    goto :goto_3

    .end local v0           #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1           #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local v0           #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .end local v4           #gzip:Ljava/util/zip/GZIPOutputStream;
    .restart local v1       #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #gzip:Ljava/util/zip/GZIPOutputStream;
    :catch_5
    move-exception v3

    move-object v4, v5

    .end local v5           #gzip:Ljava/util/zip/GZIPOutputStream;
    .restart local v4       #gzip:Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1           #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 89
    .end local v0           #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .end local v4           #gzip:Ljava/util/zip/GZIPOutputStream;
    .end local v6           #inputStream:Ljava/io/ByteArrayInputStream;
    .restart local v1       #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #buf:[B
    .restart local v5       #gzip:Ljava/util/zip/GZIPOutputStream;
    .restart local v7       #inputStream:Ljava/io/ByteArrayInputStream;
    .restart local v8       #len:I
    .restart local v9       #result:[B
    :catch_6
    move-exception v10

    goto :goto_1
.end method

.method public static keyValidation(Ljava/lang/String;)Z
    .locals 4
    .parameter "channel"

    .prologue
    .line 25
    if-eqz p0, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 27
    :cond_0
    const/4 v3, 0x0

    .line 32
    :goto_0
    return v3

    .line 29
    :cond_1
    const-string v2, "^[\\d]{1,20}+$"

    .line 30
    .local v2, regex1:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 31
    .local v1, p1:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 32
    .local v0, m1:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    goto :goto_0
.end method

.method public static strValidation(Ljava/lang/String;I)Z
    .locals 7
    .parameter "channel"
    .parameter "length"

    .prologue
    .line 44
    const-string v4, "^[A-Za-z0-9]{1,20}+$"

    .line 45
    .local v4, regex1:Ljava/lang/String;
    const-string v5, "^[-,0-9]+$"

    .line 46
    .local v5, regex2:Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 47
    .local v2, p1:Ljava/util/regex/Pattern;
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 48
    .local v3, p2:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 49
    .local v0, m1:Ljava/util/regex/Matcher;
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 50
    .local v1, m2:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public byte2Char([B)Ljava/lang/String;
    .locals 3
    .parameter "bytes"

    .prologue
    .line 98
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 99
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 101
    :cond_0
    aget-byte v2, p1, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
