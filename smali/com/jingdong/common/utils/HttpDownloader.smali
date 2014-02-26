.class public Lcom/jingdong/common/utils/HttpDownloader;
.super Ljava/lang/Object;
.source "HttpDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/utils/HttpDownloader$DownloadListener;
    }
.end annotation


# static fields
.field private static cookies:Ljava/lang/String;

.field private static cookiesFlag:Z


# instance fields
.field private final CONNECTION_TIME_OUT:I

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/common/utils/HttpDownloader;->url:Ljava/net/URL;

    .line 19
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/jingdong/common/utils/HttpDownloader;->CONNECTION_TIME_OUT:I

    .line 16
    return-void
.end method

.method public static getCookies()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/jingdong/common/utils/HttpDownloader;->cookies:Ljava/lang/String;

    return-object v0
.end method

.method public static isCookiesFlag()Z
    .locals 1

    .prologue
    .line 149
    sget-boolean v0, Lcom/jingdong/common/utils/HttpDownloader;->cookiesFlag:Z

    return v0
.end method

.method public static setCookies(Ljava/lang/String;)V
    .locals 0
    .parameter "cookies"

    .prologue
    .line 26
    sput-object p0, Lcom/jingdong/common/utils/HttpDownloader;->cookies:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static setCookiesFlag(Z)V
    .locals 0
    .parameter "cookiesFlag"

    .prologue
    .line 145
    sput-boolean p0, Lcom/jingdong/common/utils/HttpDownloader;->cookiesFlag:Z

    .line 146
    return-void
.end method


# virtual methods
.method public downFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jingdong/common/utils/HttpDownloader$DownloadListener;)I
    .locals 5
    .parameter "urlStr"
    .parameter "path"
    .parameter "fileName"
    .parameter "lister"

    .prologue
    const/4 v4, -0x1

    .line 89
    const/4 v2, 0x0

    .line 91
    .local v2, inputStream:Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Lcom/jingdong/common/utils/FileUtils;

    invoke-direct {v1}, Lcom/jingdong/common/utils/FileUtils;-><init>()V

    .line 92
    .local v1, fileUtils:Lcom/jingdong/common/utils/FileUtils;
    invoke-virtual {p0, p1}, Lcom/jingdong/common/utils/HttpDownloader;->getInputStreamFromURL(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 93
    if-nez v2, :cond_1

    .line 107
    if-eqz v2, :cond_0

    .line 108
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    .end local v1           #fileUtils:Lcom/jingdong/common/utils/FileUtils;
    :cond_0
    :goto_0
    return v4

    .line 111
    .restart local v1       #fileUtils:Lcom/jingdong/common/utils/FileUtils;
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 96
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    :try_start_2
    invoke-virtual {v1, p2, p3, v2}, Lcom/jingdong/common/utils/FileUtils;->writeFromInput(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 99
    .local v3, resultFile:Ljava/io/File;
    if-nez v3, :cond_3

    .line 107
    if-eqz v2, :cond_0

    .line 108
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 111
    :catch_1
    move-exception v0

    .line 112
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 102
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fileUtils:Lcom/jingdong/common/utils/FileUtils;
    .end local v3           #resultFile:Ljava/io/File;
    :catch_2
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    if-eqz v2, :cond_0

    .line 108
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 111
    :catch_3
    move-exception v0

    .line 112
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 105
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 107
    if-eqz v2, :cond_2

    .line 108
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 114
    :cond_2
    :goto_1
    throw v4

    .line 111
    :catch_4
    move-exception v0

    .line 112
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 107
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #fileUtils:Lcom/jingdong/common/utils/FileUtils;
    .restart local v3       #resultFile:Ljava/io/File;
    :cond_3
    if-eqz v2, :cond_4

    .line 108
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 115
    :cond_4
    :goto_2
    const/4 v4, 0x0

    invoke-interface {p4, v4}, Lcom/jingdong/common/utils/HttpDownloader$DownloadListener;->onDownloadEnd(Ljava/lang/Object;)V

    .line 116
    const/4 v4, 0x0

    goto :goto_0

    .line 111
    :catch_5
    move-exception v0

    .line 112
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public download(Ljava/lang/String;Lcom/jingdong/common/utils/HttpDownloader$DownloadListener;)I
    .locals 12
    .parameter "urlStr"
    .parameter "listener"

    .prologue
    .line 39
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    .local v7, sb:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 41
    .local v4, line:Ljava/lang/String;
    const/4 v0, 0x0

    .line 42
    .local v0, buffer:Ljava/io/BufferedReader;
    const/4 v6, -0x1

    .line 44
    .local v6, returnCode:I
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/jingdong/common/utils/HttpDownloader;->url:Ljava/net/URL;

    .line 45
    iget-object v9, p0, Lcom/jingdong/common/utils/HttpDownloader;->url:Ljava/net/URL;

    .line 46
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    .line 45
    check-cast v8, Ljava/net/HttpURLConnection;

    .line 47
    .local v8, urlConn:Ljava/net/HttpURLConnection;
    sget-boolean v9, Lcom/jingdong/common/utils/HttpDownloader;->cookiesFlag:Z

    if-eqz v9, :cond_0

    .line 48
    const-string v9, "Cookie"

    sget-object v10, Lcom/jingdong/common/utils/HttpDownloader;->cookies:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    .line 51
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 50
    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 52
    .end local v0           #buffer:Ljava/io/BufferedReader;
    .local v1, buffer:Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    if-nez v4, :cond_2

    .line 60
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 61
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, responseStr:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 63
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    .local v3, jsonObj:Lorg/json/JSONObject;
    const-string v9, "0"

    const-string v10, "code"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 65
    invoke-interface {p2, v3}, Lcom/jingdong/common/utils/HttpDownloader$DownloadListener;->onDownloadEnd(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 66
    const/4 v6, 0x0

    move-object v0, v1

    .line 77
    .end local v1           #buffer:Ljava/io/BufferedReader;
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    .end local v5           #responseStr:Ljava/lang/String;
    .end local v8           #urlConn:Ljava/net/HttpURLConnection;
    .restart local v0       #buffer:Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return v6

    .line 53
    .end local v0           #buffer:Ljava/io/BufferedReader;
    .restart local v1       #buffer:Ljava/io/BufferedReader;
    .restart local v8       #urlConn:Ljava/net/HttpURLConnection;
    :cond_2
    :try_start_3
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 57
    .end local v1           #buffer:Ljava/io/BufferedReader;
    .end local v8           #urlConn:Ljava/net/HttpURLConnection;
    .restart local v0       #buffer:Ljava/io/BufferedReader;
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    const/4 v6, -0x1

    .line 60
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 61
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 62
    .restart local v5       #responseStr:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 63
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    .restart local v3       #jsonObj:Lorg/json/JSONObject;
    const-string v9, "0"

    const-string v10, "code"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 65
    invoke-interface {p2, v3}, Lcom/jingdong/common/utils/HttpDownloader$DownloadListener;->onDownloadEnd(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 66
    const/4 v6, 0x0

    .line 69
    goto :goto_1

    .line 70
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    :cond_3
    const/4 v6, -0x1

    goto :goto_1

    .line 73
    .end local v5           #responseStr:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 74
    const/4 v6, -0x1

    goto :goto_1

    .line 58
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 60
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 61
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 62
    .restart local v5       #responseStr:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 63
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    .restart local v3       #jsonObj:Lorg/json/JSONObject;
    const-string v10, "0"

    const-string v11, "code"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 65
    invoke-interface {p2, v3}, Lcom/jingdong/common/utils/HttpDownloader$DownloadListener;->onDownloadEnd(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 66
    const/4 v6, 0x0

    .line 76
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    .end local v5           #responseStr:Ljava/lang/String;
    :cond_4
    :goto_4
    throw v9

    .line 70
    .restart local v5       #responseStr:Ljava/lang/String;
    :cond_5
    const/4 v6, -0x1

    goto :goto_4

    .line 73
    .end local v5           #responseStr:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 74
    .restart local v2       #e:Ljava/lang/Exception;
    const/4 v6, -0x1

    goto :goto_4

    .line 70
    .end local v0           #buffer:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #buffer:Ljava/io/BufferedReader;
    .restart local v5       #responseStr:Ljava/lang/String;
    .restart local v8       #urlConn:Ljava/net/HttpURLConnection;
    :cond_6
    const/4 v6, -0x1

    move-object v0, v1

    .line 73
    .end local v1           #buffer:Ljava/io/BufferedReader;
    .restart local v0       #buffer:Ljava/io/BufferedReader;
    goto :goto_1

    .end local v0           #buffer:Ljava/io/BufferedReader;
    .end local v5           #responseStr:Ljava/lang/String;
    .restart local v1       #buffer:Ljava/io/BufferedReader;
    :catch_3
    move-exception v2

    .line 74
    .restart local v2       #e:Ljava/lang/Exception;
    const/4 v6, -0x1

    move-object v0, v1

    .end local v1           #buffer:Ljava/io/BufferedReader;
    .restart local v0       #buffer:Ljava/io/BufferedReader;
    goto :goto_1

    .line 58
    .end local v0           #buffer:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #buffer:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1           #buffer:Ljava/io/BufferedReader;
    .restart local v0       #buffer:Ljava/io/BufferedReader;
    goto :goto_3

    .line 56
    .end local v8           #urlConn:Ljava/net/HttpURLConnection;
    :catch_4
    move-exception v2

    goto :goto_2

    .end local v0           #buffer:Ljava/io/BufferedReader;
    .restart local v1       #buffer:Ljava/io/BufferedReader;
    .restart local v3       #jsonObj:Lorg/json/JSONObject;
    .restart local v5       #responseStr:Ljava/lang/String;
    .restart local v8       #urlConn:Ljava/net/HttpURLConnection;
    :cond_7
    move-object v0, v1

    .end local v1           #buffer:Ljava/io/BufferedReader;
    .restart local v0       #buffer:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public getInputStreamFromURL(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .parameter "urlStr"

    .prologue
    .line 126
    const/4 v3, 0x0

    .line 127
    .local v3, urlConn:Ljava/net/HttpURLConnection;
    const/4 v2, 0x0

    .line 129
    .local v2, inputStream:Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/jingdong/common/utils/HttpDownloader;->url:Ljava/net/URL;

    .line 130
    iget-object v4, p0, Lcom/jingdong/common/utils/HttpDownloader;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 131
    const/16 v4, 0x3a98

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 132
    const/16 v4, 0x3a98

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 133
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 141
    :goto_0
    return-object v2

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, e:Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 137
    .end local v1           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 138
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
