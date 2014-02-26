.class public Lcom/jingdong/common/secure/DesUtil;
.super Ljava/lang/Object;
.source "DesUtil.java"


# static fields
.field private static final DES:Ljava/lang/String; = "DES"

.field private static final PADDING:Ljava/lang/String; = "DES/ECB/PKCS5Padding"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesTo16HexString([B)Ljava/lang/String;
    .locals 6
    .parameter "src"

    .prologue
    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .local v2, stringBuilder:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    array-length v4, p0

    if-gtz v4, :cond_1

    .line 221
    :cond_0
    const-string v4, ""

    .line 231
    :goto_0
    return-object v4

    .line 223
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p0

    if-lt v1, v4, :cond_2

    .line 231
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 224
    :cond_2
    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    .line 225
    .local v3, v:I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, hv:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    .line 227
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static final decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "data"
    .parameter "key"

    .prologue
    .line 139
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/common/secure/Base64;->decode([B)[B

    move-result-object v2

    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 139
    invoke-static {v2, v3}, Lcom/jingdong/common/secure/DesUtil;->decrypt([B[B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-object v1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Exception -->DesUtil "

    const-string v2, "Exception -->DesUtil"

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "data"
    .parameter "key"
    .parameter "charset"

    .prologue
    .line 168
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/common/secure/Base64;->decode([B)[B

    move-result-object v2

    .line 170
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 168
    invoke-static {v2, v3}, Lcom/jingdong/common/secure/DesUtil;->decrypt([B[B)[B

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-object v1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Exception -->DesUtil "

    const-string v2, "Exception -->DesUtil"

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static decrypt([B[B)[B
    .locals 6
    .parameter "src"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 97
    .local v4, sr:Ljava/security/SecureRandom;
    new-instance v1, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v1, p1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 103
    .local v1, dks:Ljavax/crypto/spec/DESKeySpec;
    const-string v5, "DES"

    invoke-static {v5}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 105
    .local v2, keyFactory:Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v2, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 109
    .local v3, securekey:Ljavax/crypto/SecretKey;
    const-string v5, "DES/ECB/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 113
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 119
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    return-object v5
.end method

.method public static final encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "code"
    .parameter "key"

    .prologue
    .line 197
    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jingdong/common/secure/DesUtil;->encrypt([B[B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/jingdong/common/secure/Base64;->encodeBytes([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 203
    :goto_0
    return-object v1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Exception -->DesUtil "

    const-string v2, "Exception -->DesUtil"

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 203
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static encrypt([B[B)[B
    .locals 6
    .parameter "src"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 48
    .local v4, sr:Ljava/security/SecureRandom;
    new-instance v1, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v1, p1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 54
    .local v1, dks:Ljavax/crypto/spec/DESKeySpec;
    const-string v5, "DES"

    invoke-static {v5}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 56
    .local v2, keyFactory:Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v2, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 60
    .local v3, securekey:Ljavax/crypto/SecretKey;
    const-string v5, "DES/ECB/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 64
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 70
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    return-object v5
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .parameter "args"

    .prologue
    .line 209
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "zkg3mzuPDWK7Y5lm+AEEDZP9il67Zf+BH6xeA7tmedn7evkOJi4i51SLzlyRjSldT9hRsBRQoc4y6yuAUc3KmtLMYy1rZbP/m8VJrcu6fKOuuoc68SpJkH6hRRLmC2do5XiIuCpLX0jBMOVw8uykvmVN7XIbLGXdQy4KrYPSx+2r/cd7DbB9iERC3zN5KEc+xzRxk7WoJNS4OEHovMjjsWr2wz4BXN3kAje053LLOljR4YErFUid+zAYSK9NpRIIW4RZDTX4MNEzWMBryueDO3+xGXSPvib7IOvKnVEtZKes7XDMNpIE5uQ4jvGvBWtYNxDLD1S/i6weLlEWDdojccst2G+mJMaafUNtBvhUSQlq7e61F3WHkkEgdRkEfli3RirXnVraSpdyE5Ok2YEPbW0o1o+3bDYwbNFxsb76p3iLhklOnlfZRu2b5OplNx7qImEa+DPtYNCRQV19EIgSMm8lwXzPArP6r7O7l5H7c1Be8Nk8nRT2QK66hzrxKkmQ0vZnVA1Bt6RPYwr1VAKY8z6Gw0PqkrtQF8QQBAdN3WlqlgWQEYpi3IMom1xLWEVeA31VeA/OcuQr2ajog75hi+apAYd7pW9KCiGzg7UIXJbuA9l3Bd1Jqs3b4LWIn/xYjJzZ/MdG3owxDh8VamudzQlVHFoS47IPZJUgrUcLtXvlaPsa7fDGafZnBafQ3IwH52WtLv9Whob0/2uO28OJEHTiR3jOFtexo32LMehNz95s36qrPmVukmxOSbJrJMpmxbZlJ1EbT36lxY2t2QqImAZVXLtwQv44kNEIPfO02k2huTldx4yor+JXc66Rkcq67OmiRhwAdZIvbkFxAeDdwGLbIgUEKgEcl5s0C4RMhtI="

    const-string v2, "LJc4ZEnVXvtuese1RWsIs1Tml55wDvJU"

    const-string v3, "utf-8"

    invoke-static {v1, v2, v3}, Lcom/jingdong/common/secure/DesUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 210
    return-void
.end method
