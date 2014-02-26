.class public Lcom/jd/lottery/lib/utils/Des3;
.super Ljava/lang/Object;
.source "Des3.java"


# static fields
.field private static final encoding:Ljava/lang/String; = "utf-8"

.field private static final iv:Ljava/lang/String; = "01234567"

.field private static final secretKey:Ljava/lang/String; = "LLz7aFEIAjf+OKuKoq3EXtlDFhkQgOMx"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "encryptText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v2, 0x0

    .line 54
    .local v2, deskey:Ljava/security/Key;
    new-instance v5, Ljavax/crypto/spec/DESedeKeySpec;

    const-string v6, "LLz7aFEIAjf+OKuKoq3EXtlDFhkQgOMx"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    .line 55
    .local v5, spec:Ljavax/crypto/spec/DESedeKeySpec;
    const-string v6, "desede"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v4

    .line 56
    .local v4, keyfactory:Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v4, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 57
    const-string v6, "desede/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 58
    .local v0, cipher:Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    const-string v6, "01234567"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 59
    .local v3, ips:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 61
    invoke-static {p0}, Lcom/jd/lottery/lib/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 63
    .local v1, decryptData:[B
    new-instance v6, Ljava/lang/String;

    const-string v7, "utf-8"

    invoke-direct {v6, v1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v6
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "plainText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    const/4 v1, 0x0

    .line 34
    .local v1, deskey:Ljava/security/Key;
    new-instance v5, Ljavax/crypto/spec/DESedeKeySpec;

    const-string v6, "LLz7aFEIAjf+OKuKoq3EXtlDFhkQgOMx"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    .line 35
    .local v5, spec:Ljavax/crypto/spec/DESedeKeySpec;
    const-string v6, "desede"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v4

    .line 36
    .local v4, keyfactory:Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v4, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 38
    const-string v6, "desede/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 39
    .local v0, cipher:Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    const-string v6, "01234567"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 40
    .local v3, ips:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 41
    const-string v6, "utf-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 42
    .local v2, encryptData:[B
    invoke-static {v2}, Lcom/jd/lottery/lib/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
