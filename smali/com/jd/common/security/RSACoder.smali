.class public abstract Lcom/jd/common/security/RSACoder;
.super Lcom/jd/common/security/Coder;
.source "RSACoder.java"


# static fields
.field public static final KEY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final PRIVATE_KEY:Ljava/lang/String; = "RSAPrivateKey"

.field private static final PUBLIC_KEY:Ljava/lang/String; = "RSAPublicKey"

.field public static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "MD5withRSA"

.field private static final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/jd/common/security/RSACoder;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/jd/common/security/RSACoder;->log:Lorg/apache/commons/logging/Log;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/jd/common/security/Coder;-><init>()V

    return-void
.end method

.method public static decryptByPrivateKey([BLjava/lang/String;)[B
    .locals 6
    .parameter "data"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {p1}, Lcom/jd/common/security/RSACoder;->decryptBASE64(Ljava/lang/String;)[B

    move-result-object v1

    .line 114
    .local v1, keyBytes:[B
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 115
    .local v3, pkcs8KeySpec:Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 116
    .local v2, keyFactory:Ljava/security/KeyFactory;
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v4

    .line 119
    .local v4, privateKey:Ljava/security/Key;
    invoke-virtual {v2}, Ljava/security/KeyFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 120
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 122
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    return-object v5
.end method

.method public static decryptByPublicKey([BLjava/lang/String;)[B
    .locals 6
    .parameter "data"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {p1}, Lcom/jd/common/security/RSACoder;->decryptBASE64(Ljava/lang/String;)[B

    move-result-object v1

    .line 140
    .local v1, keyBytes:[B
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v4, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 141
    .local v4, x509KeySpec:Ljava/security/spec/X509EncodedKeySpec;
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 142
    .local v2, keyFactory:Ljava/security/KeyFactory;
    invoke-virtual {v2, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    .line 145
    .local v3, publicKey:Ljava/security/Key;
    invoke-virtual {v2}, Ljava/security/KeyFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 146
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 148
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    return-object v5
.end method

.method public static encryptByPrivateKey([BLjava/lang/String;)[B
    .locals 6
    .parameter "data"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {p1}, Lcom/jd/common/security/RSACoder;->decryptBASE64(Ljava/lang/String;)[B

    move-result-object v1

    .line 192
    .local v1, keyBytes:[B
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 193
    .local v3, pkcs8KeySpec:Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 194
    .local v2, keyFactory:Ljava/security/KeyFactory;
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v4

    .line 197
    .local v4, privateKey:Ljava/security/Key;
    invoke-virtual {v2}, Ljava/security/KeyFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 198
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 200
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    return-object v5
.end method

.method public static encryptByPublicKey([BLjava/lang/String;)[B
    .locals 6
    .parameter "data"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {p1}, Lcom/jd/common/security/RSACoder;->decryptBASE64(Ljava/lang/String;)[B

    move-result-object v1

    .line 166
    .local v1, keyBytes:[B
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v4, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 167
    .local v4, x509KeySpec:Ljava/security/spec/X509EncodedKeySpec;
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 168
    .local v2, keyFactory:Ljava/security/KeyFactory;
    invoke-virtual {v2, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    .line 171
    .local v3, publicKey:Ljava/security/Key;
    invoke-virtual {v2}, Ljava/security/KeyFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 172
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 174
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    return-object v5
.end method

.method public static getPrivateKey(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 212
    .local p0, keyMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "RSAPrivateKey"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    .line 214
    .local v0, key:Ljava/security/Key;
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/jd/common/security/RSACoder;->encryptBASE64([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPublicKey(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 226
    .local p0, keyMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "RSAPublicKey"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    .line 228
    .local v0, key:Ljava/security/Key;
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/jd/common/security/RSACoder;->encryptBASE64([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static initKey()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 238
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v2

    .line 239
    .local v2, keyPairGen:Ljava/security/KeyPairGenerator;
    const/16 v5, 0x400

    invoke-virtual {v2, v5}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 241
    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    .line 244
    .local v1, keyPair:Ljava/security/KeyPair;
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v4

    check-cast v4, Ljava/security/interfaces/RSAPublicKey;

    .line 247
    .local v4, publicKey:Ljava/security/interfaces/RSAPublicKey;
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/RSAPrivateKey;

    .line 249
    .local v3, privateKey:Ljava/security/interfaces/RSAPrivateKey;
    new-instance v0, Ljava/util/HashMap;

    const/4 v5, 0x2

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 251
    .local v0, keyMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "RSAPublicKey"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v5, "RSAPrivateKey"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    return-object v0
.end method

.method public static sign([BLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "data"
    .parameter "privateKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {p1}, Lcom/jd/common/security/RSACoder;->decryptBASE64(Ljava/lang/String;)[B

    move-result-object v0

    .line 46
    .local v0, keyBytes:[B
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 49
    .local v2, pkcs8KeySpec:Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 52
    .local v1, keyFactory:Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 55
    .local v3, priKey:Ljava/security/PrivateKey;
    const-string v5, "MD5withRSA"

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    .line 56
    .local v4, signature:Ljava/security/Signature;
    invoke-virtual {v4, v3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 57
    invoke-virtual {v4, p0}, Ljava/security/Signature;->update([B)V

    .line 59
    invoke-virtual {v4}, Ljava/security/Signature;->sign()[B

    move-result-object v5

    invoke-static {v5}, Lcom/jd/common/security/RSACoder;->encryptBASE64([B)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static verify([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "data"
    .parameter "publicKey"
    .parameter "sign"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p1}, Lcom/jd/common/security/RSACoder;->decryptBASE64(Ljava/lang/String;)[B

    move-result-object v0

    .line 83
    .local v0, keyBytes:[B
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 86
    .local v2, keySpec:Ljava/security/spec/X509EncodedKeySpec;
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 89
    .local v1, keyFactory:Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    .line 91
    .local v3, pubKey:Ljava/security/PublicKey;
    const-string v5, "MD5withRSA"

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    .line 92
    .local v4, signature:Ljava/security/Signature;
    invoke-virtual {v4, v3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 93
    invoke-virtual {v4, p0}, Ljava/security/Signature;->update([B)V

    .line 96
    invoke-static {p2}, Lcom/jd/common/security/RSACoder;->decryptBASE64(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/Signature;->verify([B)Z

    move-result v5

    return v5
.end method
