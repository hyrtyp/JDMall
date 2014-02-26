.class public Lcom/jingdong/common/utils/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/utils/IOUtil$ProgressListener;
    }
.end annotation


# static fields
.field private static bufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x4000

    sput v0, Lcom/jingdong/common/utils/IOUtil;->bufferSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readAsBytes(Ljava/io/InputStream;Lcom/jingdong/common/utils/IOUtil$ProgressListener;)[B
    .locals 8
    .parameter "is"
    .parameter "progressListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, data:[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 48
    .local v4, os:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget v6, Lcom/jingdong/common/utils/IOUtil;->bufferSize:I

    new-array v0, v6, [B

    .line 49
    .local v0, buf:[B
    const/4 v3, 0x0

    .line 50
    .local v3, len:I
    const/4 v5, 0x0

    .line 51
    .local v5, progress:I
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2

    .line 58
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 63
    if-eqz v4, :cond_1

    .line 64
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 69
    :cond_1
    :goto_1
    return-object v1

    .line 52
    :cond_2
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v4, v0, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 53
    add-int/2addr v5, v3

    .line 54
    if-eqz p1, :cond_0

    .line 55
    invoke-interface {p1, v3, v5}, Lcom/jingdong/common/utils/IOUtil$ProgressListener;->notify(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 59
    .end local v0           #buf:[B
    .end local v3           #len:I
    .end local v5           #progress:I
    :catch_0
    move-exception v2

    .line 60
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 63
    if-eqz v4, :cond_3

    .line 64
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 68
    :cond_3
    :goto_2
    throw v6

    .line 66
    :catch_1
    move-exception v7

    goto :goto_2

    .restart local v0       #buf:[B
    .restart local v3       #len:I
    .restart local v5       #progress:I
    :catch_2
    move-exception v6

    goto :goto_1
.end method

.method public static readAsFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;Lcom/jingdong/common/utils/IOUtil$ProgressListener;Lcom/jingdong/common/utils/HttpGroup$StopController;)V
    .locals 6
    .parameter "is"
    .parameter "os"
    .parameter "progressListener"
    .parameter "stopController"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    :try_start_0
    sget v4, Lcom/jingdong/common/utils/IOUtil;->bufferSize:I

    new-array v0, v4, [B

    .line 82
    .local v0, buf:[B
    const/4 v2, 0x0

    .line 83
    .local v2, len:I
    const/4 v3, 0x0

    .line 84
    .local v3, progress:I
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    invoke-interface {p3}, Lcom/jingdong/common/utils/HttpGroup$StopController;->isStop()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    .line 95
    :cond_1
    if-eqz p1, :cond_2

    .line 96
    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 102
    :cond_2
    :goto_1
    return-void

    .line 85
    :cond_3
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {p1, v0, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 86
    add-int/2addr v3, v2

    .line 87
    if-eqz p2, :cond_0

    .line 88
    invoke-interface {p2, v2, v3}, Lcom/jingdong/common/utils/IOUtil$ProgressListener;->notify(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 91
    .end local v0           #buf:[B
    .end local v2           #len:I
    .end local v3           #progress:I
    :catch_0
    move-exception v1

    .line 92
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 95
    if-eqz p1, :cond_4

    .line 96
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 100
    :cond_4
    :goto_2
    throw v4

    .line 98
    :catch_1
    move-exception v5

    goto :goto_2

    .restart local v0       #buf:[B
    .restart local v2       #len:I
    .restart local v3       #progress:I
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method public static readAsString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "is"
    .parameter "encode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/jingdong/common/utils/IOUtil;->readAsString(Ljava/io/InputStream;Ljava/lang/String;Lcom/jingdong/common/utils/IOUtil$ProgressListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readAsString(Ljava/io/InputStream;Ljava/lang/String;Lcom/jingdong/common/utils/IOUtil$ProgressListener;)Ljava/lang/String;
    .locals 3
    .parameter "is"
    .parameter "encode"
    .parameter "progressListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    :try_start_0
    invoke-static {p0, p2}, Lcom/jingdong/common/utils/IOUtil;->readAsBytes(Ljava/io/InputStream;Lcom/jingdong/common/utils/IOUtil$ProgressListener;)[B

    move-result-object v0

    .line 30
    .local v0, data:[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v0           #data:[B
    :goto_0
    return-object v2

    .line 31
    :catch_0
    move-exception v1

    .line 35
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const/4 v2, 0x0

    goto :goto_0
.end method
