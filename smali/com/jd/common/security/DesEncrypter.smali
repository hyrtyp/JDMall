.class public Lcom/jd/common/security/DesEncrypter;
.super Lcom/jd/common/security/Des;
.source "DesEncrypter.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "passPhrase"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/jd/common/security/Des;-><init>()V

    .line 25
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    sget-object v4, Lcom/jd/common/security/DesEncrypter;->salt:[B

    sget v5, Lcom/jd/common/security/DesEncrypter;->iterationCount:I

    invoke-direct {v1, v3, v4, v5}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BI)V

    .line 26
    .local v1, keySpec:Ljava/security/spec/KeySpec;
    const-string v3, "PBEWithMD5AndDES"

    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 27
    .local v0, key:Ljavax/crypto/SecretKey;
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    iput-object v3, p0, Lcom/jd/common/security/DesEncrypter;->cipher:Ljavax/crypto/Cipher;

    .line 31
    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    sget-object v3, Lcom/jd/common/security/DesEncrypter;->salt:[B

    sget v4, Lcom/jd/common/security/DesEncrypter;->iterationCount:I

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 34
    .local v2, paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    iget-object v3, p0, Lcom/jd/common/security/DesEncrypter;->cipher:Ljavax/crypto/Cipher;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 37
    return-void
.end method

.method public static cryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Lcom/jd/common/security/DesEncrypter;

    invoke-direct {v0, p1}, Lcom/jd/common/security/DesEncrypter;-><init>(Ljava/lang/String;)V

    .line 17
    .local v0, encrypter:Lcom/jd/common/security/DesEncrypter;
    invoke-virtual {v0, p0}, Lcom/jd/common/security/DesEncrypter;->encrypt(Ljava/lang/String;)Ljava/lang/String;

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
    .line 58
    const-string v1, "c2#sUjAKq3dGP7%Zjz-ydBPUvKoe_qI8"

    .line 59
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

    .line 61
    const-string v3, "hello world xxss"

    invoke-static {v3, v1}, Lcom/jd/common/security/DesEncrypter;->cryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
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

    .line 63
    invoke-static {v0, v1}, Lcom/jd/common/security/DesDecrypter;->decryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
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

    .line 67
    return-void
.end method


# virtual methods
.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 46
    .local v1, utf8:[B
    invoke-virtual {p0, v1}, Lcom/jd/common/security/DesEncrypter;->encrypt([B)[B

    move-result-object v0

    .line 48
    .local v0, enc:[B
    invoke-static {v0}, Lcom/jd/common/security/Base32;->encode([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public encrypt([B)[B
    .locals 1
    .parameter "utf8"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jd/common/security/DesEncrypter;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method
