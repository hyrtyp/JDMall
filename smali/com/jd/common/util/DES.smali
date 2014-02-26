.class public Lcom/jd/common/util/DES;
.super Ljava/lang/Object;
.source "DES.java"


# instance fields
.field private c:Ljavax/crypto/Cipher;

.field private deskey:Ljavax/crypto/SecretKey;

.field iv:Ljavax/crypto/spec/IvParameterSpec;

.field private final salt:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v1, "3#6q0/bj"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jd/common/util/DES;->salt:[B

    .line 42
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 43
    iget-object v2, p0, Lcom/jd/common/util/DES;->salt:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v1, p0, Lcom/jd/common/util/DES;->iv:Ljavax/crypto/spec/IvParameterSpec;

    .line 35
    :try_start_0
    const-string v1, "3#6q0/bj"

    invoke-virtual {p0, v1}, Lcom/jd/common/util/DES;->init(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, e:Ljava/security/NoSuchProviderException;
    invoke-virtual {v0}, Ljava/security/NoSuchProviderException;->printStackTrace()V

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .parameter "args"

    .prologue
    .line 110
    new-instance v0, Lcom/jd/common/util/DES;

    invoke-direct {v0}, Lcom/jd/common/util/DES;-><init>()V

    .line 113
    .local v0, des:Lcom/jd/common/util/DES;
    :try_start_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "venderorderinfo"

    invoke-virtual {v0, v3}, Lcom/jd/common/util/DES;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 116
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 117
    .local v1, e:Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public createEncryptor(Ljava/lang/String;)[B
    .locals 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/jd/common/util/DES;->c:Ljavax/crypto/Cipher;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 97
    :goto_0
    return-object v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, ex:Ljavax/crypto/BadPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    .line 97
    .end local v0           #ex:Ljavax/crypto/BadPaddingException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 94
    :catch_1
    move-exception v0

    .line 95
    .local v0, ex:Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_1
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "wid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 101
    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 102
    .local v0, c:Ljava/util/Calendar;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%03d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, s:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/jd/common/util/DES;->createEncryptor(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jd/common/util/DES;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public init(Ljava/lang/String;)V
    .locals 8
    .parameter "strKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 50
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 52
    .local v0, desKeySpec:Ljavax/crypto/spec/DESKeySpec;
    const-string v4, "DES"

    invoke-static {v4}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 53
    .local v2, keyFactory:Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v2, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 54
    .local v3, secretKey:Ljavax/crypto/SecretKey;
    iput-object v3, p0, Lcom/jd/common/util/DES;->deskey:Ljavax/crypto/SecretKey;

    .line 55
    const-string v4, "DES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    iput-object v4, p0, Lcom/jd/common/util/DES;->c:Ljavax/crypto/Cipher;

    .line 56
    iget-object v4, p0, Lcom/jd/common/util/DES;->c:Ljavax/crypto/Cipher;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/jd/common/util/DES;->deskey:Ljavax/crypto/SecretKey;

    iget-object v7, p0, Lcom/jd/common/util/DES;->iv:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v4, v5, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v0           #desKeySpec:Ljavax/crypto/spec/DESKeySpec;
    .end local v2           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .end local v3           #secretKey:Ljavax/crypto/SecretKey;
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public toHexString([B)Ljava/lang/String;
    .locals 5
    .parameter "b"

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    .local v0, hexString:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p1

    if-lt v1, v3, :cond_0

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 65
    :cond_0
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, plainText:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
