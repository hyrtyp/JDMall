.class public Lcom/jd/lottery/lib/utils/Encrypt;
.super Ljava/lang/Object;
.source "Encrypt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static desEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "msg"
    .parameter "key"

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, p1}, Lcom/jd/common/security/DESCoder;->encrypt([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/jd/common/security/DESCoder;->encryptBASE64([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 63
    :goto_0
    return-object v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SecurityVerifyUtils desEncrypt error!"

    invoke-static {v1, v0}, Lcom/jd/droidlib/util/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static initKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 74
    :try_start_0
    invoke-static {p0}, Lcom/jd/common/security/DESCoder;->initKey(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 78
    :goto_0
    return-object v1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SecurityVerifyUtils initKey error!"

    invoke-static {v1, v0}, Lcom/jd/droidlib/util/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static verifyAndDecrypter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "digest"
    .parameter "msg"
    .parameter "key"

    .prologue
    .line 26
    invoke-static {p0}, Lcom/jd/lottery/lib/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lcom/jd/lottery/lib/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 27
    invoke-static {p2}, Lcom/jd/lottery/lib/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 28
    new-instance v2, Lcom/jd/common/security/MD5;

    invoke-direct {v2}, Lcom/jd/common/security/MD5;-><init>()V

    .line 30
    .local v2, md5:Lcom/jd/common/security/MD5;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jd/common/security/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, code:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    :try_start_0
    invoke-static {p1}, Lcom/jd/lottery/lib/utils/Des3;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 44
    .end local v0           #code:Ljava/lang/String;
    .end local v2           #md5:Lcom/jd/common/security/MD5;
    :goto_0
    return-object v3

    .line 39
    .restart local v0       #code:Ljava/lang/String;
    .restart local v2       #md5:Lcom/jd/common/security/MD5;
    :catch_0
    move-exception v1

    .line 40
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SecurityVerifyUtils verifyAndDecrypter error!"

    invoke-static {v3, v1}, Lcom/jd/droidlib/util/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .end local v0           #code:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #md5:Lcom/jd/common/security/MD5;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
