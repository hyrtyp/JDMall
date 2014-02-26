.class public Lcom/jd/lottery/lib/utils/AesEncryptUtil;
.super Ljava/lang/Object;
.source "AesEncryptUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToString([B)Ljava/lang/String;
    .locals 4
    .parameter "result"

    .prologue
    .line 101
    const-string v1, ""

    .line 103
    .local v1, results:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #results:Ljava/lang/String;
    .local v2, results:Ljava/lang/String;
    move-object v1, v2

    .line 107
    .end local v2           #results:Ljava/lang/String;
    .restart local v1       #results:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static decrypt([BLjava/lang/String;)[B
    .locals 9
    .parameter "content"
    .parameter "password"

    .prologue
    .line 72
    :try_start_0
    const-string v8, "AES"

    invoke-static {v8}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v4

    .line 74
    .local v4, kgen:Ljavax/crypto/KeyGenerator;
    const-string v8, "SHA1PRNG"

    invoke-static {v8}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v7

    .line 75
    .local v7, secureRandom:Ljava/security/SecureRandom;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 77
    const/16 v8, 0x80

    invoke-virtual {v4, v8, v7}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 79
    invoke-virtual {v4}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 80
    .local v6, secretKey:Ljavax/crypto/SecretKey;
    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    .line 81
    .local v2, enCodeFormat:[B
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v3, v2, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 82
    .local v3, key:Ljavax/crypto/spec/SecretKeySpec;
    const-string v8, "AES"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 83
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 84
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v5

    .line 97
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v2           #enCodeFormat:[B
    .end local v3           #key:Ljavax/crypto/spec/SecretKeySpec;
    .end local v4           #kgen:Ljavax/crypto/KeyGenerator;
    .end local v6           #secretKey:Ljavax/crypto/SecretKey;
    .end local v7           #secureRandom:Ljava/security/SecureRandom;
    :goto_0
    return-object v5

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 97
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 88
    :catch_1
    move-exception v1

    .line 89
    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1

    .line 90
    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 91
    .local v1, e:Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1

    .line 92
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v1

    .line 93
    .local v1, e:Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_1

    .line 94
    .end local v1           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_4
    move-exception v1

    .line 95
    .local v1, e:Ljavax/crypto/BadPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 10
    .parameter "content"
    .parameter "password"

    .prologue
    .line 33
    :try_start_0
    const-string v9, "AES"

    invoke-static {v9}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v5

    .line 35
    .local v5, kgen:Ljavax/crypto/KeyGenerator;
    const-string v9, "SHA1PRNG"

    invoke-static {v9}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v8

    .line 36
    .local v8, secureRandom:Ljava/security/SecureRandom;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 37
    const/16 v9, 0x80

    invoke-virtual {v5, v9, v8}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 39
    invoke-virtual {v5}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 40
    .local v7, secretKey:Ljavax/crypto/SecretKey;
    invoke-interface {v7}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    .line 41
    .local v3, enCodeFormat:[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v9, "AES"

    invoke-direct {v4, v3, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 42
    .local v4, key:Ljavax/crypto/spec/SecretKeySpec;
    const-string v9, "AES"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 43
    .local v1, cipher:Ljavax/crypto/Cipher;
    const-string v9, "utf-8"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 44
    .local v0, byteContent:[B
    const/4 v9, 0x1

    invoke-virtual {v1, v9, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 45
    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v6

    .line 60
    .end local v0           #byteContent:[B
    .end local v1           #cipher:Ljavax/crypto/Cipher;
    .end local v3           #enCodeFormat:[B
    .end local v4           #key:Ljavax/crypto/spec/SecretKeySpec;
    .end local v5           #kgen:Ljavax/crypto/KeyGenerator;
    .end local v7           #secretKey:Ljavax/crypto/SecretKey;
    .end local v8           #secureRandom:Ljava/security/SecureRandom;
    :goto_0
    return-object v6

    .line 47
    :catch_0
    move-exception v2

    .line 48
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 60
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 49
    :catch_1
    move-exception v2

    .line 50
    .local v2, e:Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1

    .line 51
    .end local v2           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v2

    .line 52
    .local v2, e:Ljava/security/InvalidKeyException;
    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1

    .line 53
    .end local v2           #e:Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v2

    .line 54
    .local v2, e:Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_1

    .line 55
    .end local v2           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_4
    move-exception v2

    .line 56
    .local v2, e:Ljavax/crypto/BadPaddingException;
    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1

    .line 57
    .end local v2           #e:Ljavax/crypto/BadPaddingException;
    :catch_5
    move-exception v2

    .line 58
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public static parseByte2HexStr([B)Ljava/lang/String;
    .locals 5
    .parameter "buf"

    .prologue
    .line 136
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 137
    .local v2, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_0

    .line 144
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 138
    :cond_0
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, hex:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x30

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static parseHexStr2Byte(Ljava/lang/String;)[B
    .locals 7
    .parameter "hexStr"

    .prologue
    const/16 v6, 0x10

    .line 117
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 118
    const/4 v3, 0x0

    .line 126
    :cond_0
    return-object v3

    .line 119
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 120
    .local v3, result:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_0

    .line 121
    mul-int/lit8 v4, v1, 0x2

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 122
    .local v0, high:I
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 124
    .local v2, low:I
    mul-int/lit8 v4, v0, 0x10

    add-int/2addr v4, v2

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
