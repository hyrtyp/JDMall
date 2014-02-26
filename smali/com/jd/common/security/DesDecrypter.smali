.class public Lcom/jd/common/security/DesDecrypter;
.super Lcom/jd/common/security/Des;
.source "DesDecrypter.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "passPhrase"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/jd/common/security/Des;-><init>()V

    .line 31
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    sget-object v4, Lcom/jd/common/security/DesDecrypter;->salt:[B

    sget v5, Lcom/jd/common/security/DesDecrypter;->iterationCount:I

    invoke-direct {v1, v3, v4, v5}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BI)V

    .line 32
    .local v1, keySpec:Ljava/security/spec/KeySpec;
    const-string v3, "PBEWithMD5AndDES"

    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 33
    .local v0, key:Ljavax/crypto/SecretKey;
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    iput-object v3, p0, Lcom/jd/common/security/DesDecrypter;->cipher:Ljavax/crypto/Cipher;

    .line 35
    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    sget-object v3, Lcom/jd/common/security/DesDecrypter;->salt:[B

    sget v4, Lcom/jd/common/security/DesDecrypter;->iterationCount:I

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 37
    .local v2, paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    iget-object v3, p0, Lcom/jd/common/security/DesDecrypter;->cipher:Ljavax/crypto/Cipher;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 39
    return-void
.end method

.method public static decryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcom/jd/common/security/DesDecrypter;

    invoke-direct {v0, p1}, Lcom/jd/common/security/DesDecrypter;-><init>(Ljava/lang/String;)V

    .line 25
    .local v0, encrypter:Lcom/jd/common/security/DesDecrypter;
    invoke-virtual {v0, p0}, Lcom/jd/common/security/DesDecrypter;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    const-string v1, "ck|jhtr%oxo)ajlos\\qz=i_g,ge*g|j["

    .line 60
    .local v1, key:Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "key = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    const-string v3, "hello world xxss"

    invoke-static {v3, v1}, Lcom/jd/common/security/DesEncrypter;->cryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, encrypted:Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "encrypted = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    invoke-static {v0, v1}, Lcom/jd/common/security/DesDecrypter;->decryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, plain:Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "plain = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    return-void
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p1}, Lcom/jd/common/security/Base32;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 46
    .local v0, dec:[B
    invoke-virtual {p0, v0}, Lcom/jd/common/security/DesDecrypter;->decrypt([B)[B

    move-result-object v1

    .line 49
    .local v1, utf8:[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method public decrypt([B)[B
    .locals 1
    .parameter "dec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jd/common/security/DesDecrypter;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method
