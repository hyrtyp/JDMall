.class public final Lcom/ja/sdk/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMenifestPermission(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "aPermissionName"

    .prologue
    .line 270
    invoke-static {p0, p1}, Lcom/ja/sdk/utils/FileUtils;->isManifestPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You need the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " permission. Open AndroidManifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" />"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ja/sdk/utils/FileUtils;->showLogInfo(Ljava/lang/String;)V

    .line 272
    :cond_0
    return-void
.end method

.method public static deleteExternalStorageFile(Ljava/lang/String;)Z
    .locals 6
    .parameter "aFileName"

    .prologue
    const/4 v3, 0x0

    .line 140
    const-string v4, "SDKFile.deleteExternalStorageFile"

    invoke-static {v4, p0}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, s1:Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v3

    .line 144
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 145
    .local v0, file:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, file1:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_0
.end method

.method public static fileExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "aFileName"

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 129
    .local v0, flag:Z
    const-string v1, "SDKFile.fileExists"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return v0
.end method

.method public static isManifestPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "aPermission"

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 278
    .local v0, flag:Z
    :goto_0
    const-string v1, "checkMenifestPermission "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return v0

    .line 277
    .end local v0           #flag:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static readBinary(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 7
    .parameter "context"
    .parameter "aFileName"

    .prologue
    .line 90
    const/4 v0, 0x0

    check-cast v0, [B

    .line 91
    .local v0, abyte0:[B
    const/4 v2, 0x0

    .line 93
    .local v2, fileinputstream:Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 98
    :goto_0
    if-eqz v2, :cond_0

    .line 100
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    .line 101
    .local v3, i:I
    new-array v0, v3, [B

    .line 102
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    .end local v3           #i:I
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 110
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 117
    :cond_1
    :goto_2
    return-object v0

    .line 94
    :catch_0
    move-exception v1

    .line 96
    .local v1, e:Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileUtil"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SDKFile.readBinary, file not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 103
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 104
    .local v1, e:Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileUtil"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SDKFile.readBinary, read error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 112
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 114
    .local v4, ioexception:Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileUtil"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SDKFile.readBinary, close file error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static readExternalStorageFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "aFileName"

    .prologue
    .line 213
    const-string v10, "SDKFile.readExternalStorageFile"

    invoke-static {v10, p0}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    .line 215
    .local v7, s1:Ljava/lang/String;
    const-string v10, "mounted"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "mounted_ro"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 216
    const-string v8, ""

    .line 258
    :cond_0
    :goto_0
    return-object v8

    .line 217
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 218
    .local v2, file:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .local v3, file1:Ljava/io/File;
    const-string v8, ""

    .line 220
    .local v8, s2:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 222
    const/4 v4, 0x0

    .line 224
    .local v4, fileinputstream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v4           #fileinputstream:Ljava/io/FileInputStream;
    .local v5, fileinputstream:Ljava/io/FileInputStream;
    move-object v4, v5

    .line 231
    .end local v5           #fileinputstream:Ljava/io/FileInputStream;
    .restart local v4       #fileinputstream:Ljava/io/FileInputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v10

    new-array v0, v10, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 233
    .local v0, abyte0:[B
    :try_start_2
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 239
    :goto_2
    :try_start_3
    new-instance v9, Ljava/lang/String;

    const-string v10, "utf-8"

    invoke-direct {v9, v0, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v8           #s2:Ljava/lang/String;
    .local v9, s2:Ljava/lang/String;
    move-object v8, v9

    .line 251
    .end local v0           #abyte0:[B
    .end local v9           #s2:Ljava/lang/String;
    .restart local v8       #s2:Ljava/lang/String;
    :goto_3
    if-eqz v4, :cond_0

    .line 252
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v6

    .line 256
    .local v6, ioexception:Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FileUtil"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "SDKFile.readExternalStorageFile, file close"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v6}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 225
    .end local v6           #ioexception:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 227
    .local v1, e:Ljava/io/FileNotFoundException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FileUtil"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "SDKFile.readExternalStorageFile, file not found"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v1}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 234
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #abyte0:[B
    :catch_2
    move-exception v1

    .line 236
    .local v1, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 244
    .end local v0           #abyte0:[B
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 246
    .restart local v1       #e:Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FileUtil"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "SDKFile.readExternalStorageFile, io"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v1}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 240
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #abyte0:[B
    :catch_4
    move-exception v1

    .line 242
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    :try_start_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FileUtil"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "SDKFile.readExternalStorageFile, unsupport encoding"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v1}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3
.end method

.method public static readFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "aFileName"

    .prologue
    .line 71
    const-string v4, "FileUtil"

    invoke-static {v4, p1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v2, ""

    .line 75
    .local v2, s1:Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Lcom/ja/sdk/utils/FileUtils;->readBinary(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    .line 76
    .local v0, abyte0:[B
    if-eqz v0, :cond_0

    .line 77
    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #s1:Ljava/lang/String;
    .local v3, s1:Ljava/lang/String;
    move-object v2, v3

    .line 83
    .end local v0           #abyte0:[B
    .end local v3           #s1:Ljava/lang/String;
    .restart local v2       #s1:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 79
    :catch_0
    move-exception v1

    .line 81
    .local v1, exception:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileUtil"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SDKFile.readFile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static showLogInfo(Ljava/lang/String;)V
    .locals 3
    .parameter "aLoginformation"

    .prologue
    .line 285
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 286
    const-string v2, "FileUtil"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 285
    invoke-static {v0}, Lcom/ja/sdk/utils/LogUtil;->logD([Ljava/lang/Object;)I

    .line 288
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static writeExternalStorageFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .parameter "aFileName"
    .parameter "aData"
    .parameter "flag"

    .prologue
    .line 161
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, s2:Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    const/4 v3, 0x0

    .line 165
    .local v3, fileoutputstream:Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 166
    .local v1, file:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, file1:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 169
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 171
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    :cond_2
    :goto_1
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v3           #fileoutputstream:Ljava/io/FileOutputStream;
    .local v4, fileoutputstream:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 184
    .end local v4           #fileoutputstream:Ljava/io/FileOutputStream;
    .restart local v3       #fileoutputstream:Ljava/io/FileOutputStream;
    :goto_2
    :try_start_2
    const-string v7, "utf-8"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 194
    :goto_3
    if-eqz v3, :cond_0

    .line 195
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v5

    .line 199
    .local v5, ioexception:Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileUtil"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SDKFile.writeExternalStorageFile, file close"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 172
    .end local v5           #ioexception:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 174
    .local v0, e:Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileUtil"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SDKFile.writeExternalStorageFile, create error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 179
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 181
    .local v0, e:Ljava/io/FileNotFoundException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileUtil"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SDKFile.writeExternalStorageFile, not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 185
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 187
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileUtil"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SDKFile.writeExternalStorageFile, unsupport encoding"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 188
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_4
    move-exception v0

    .line 190
    .local v0, e:Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileUtil"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SDKFile.writeExternalStorageFile, io error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3
.end method

.method public static writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter "context"
    .parameter "aFileName"
    .parameter "s1"
    .parameter "mode"

    .prologue
    const/4 v3, 0x0

    .line 34
    const/4 v2, 0x0

    .line 36
    .local v2, fileoutputstream:Ljava/io/FileOutputStream;
    if-eqz p3, :cond_1

    const v4, 0x8000

    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 41
    :goto_1
    if-eqz v2, :cond_2

    .line 43
    :try_start_1
    const-string v3, "utf-8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 53
    :goto_2
    if-eqz v2, :cond_0

    .line 56
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 62
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v4, v3

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileUtil"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SDKFile.writeFile, FileNotFoundException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 44
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 46
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileUtil"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SDKFile.writeFile, unsupported encoding"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 47
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v0

    .line 49
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileUtil"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SDKFile.writeFile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 52
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    const-string v4, "FileUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SDKFile.writeFile fout is null:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 58
    :catch_3
    move-exception v1

    .line 60
    .local v1, exception:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileUtil"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SDKFile.writeFile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3
.end method
