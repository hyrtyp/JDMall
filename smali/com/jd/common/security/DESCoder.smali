.class public abstract Lcom/jd/common/security/DESCoder;
.super Lcom/jd/common/security/Coder;
.source "DESCoder.java"


# static fields
.field public static final ALGORITHM:Ljava/lang/String; = "TripleDES"

.field private static final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/jd/common/security/DESCoder;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/jd/common/security/DESCoder;->log:Lorg/apache/commons/logging/Log;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/jd/common/security/Coder;-><init>()V

    return-void
.end method

.method public static decrypt([BLjava/lang/String;)[B
    .locals 3
    .parameter "data"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p1}, Lcom/jd/common/security/DESCoder;->decryptBASE64(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/jd/common/security/DESCoder;->toKey([B)Ljava/security/Key;

    move-result-object v1

    .line 87
    .local v1, k:Ljava/security/Key;
    const-string v2, "TripleDES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 88
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 90
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    return-object v2
.end method

.method public static encrypt([BLjava/lang/String;)[B
    .locals 3
    .parameter "data"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p1}, Lcom/jd/common/security/DESCoder;->decryptBASE64(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/jd/common/security/DESCoder;->toKey([B)Ljava/security/Key;

    move-result-object v1

    .line 103
    .local v1, k:Ljava/security/Key;
    const-string v2, "TripleDES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 104
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 106
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    return-object v2
.end method

.method public static initKey()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jd/common/security/DESCoder;->initKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "seed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v2, 0x0

    .line 129
    .local v2, secureRandom:Ljava/security/SecureRandom;
    if-eqz p0, :cond_0

    .line 130
    new-instance v2, Ljava/security/SecureRandom;

    .end local v2           #secureRandom:Ljava/security/SecureRandom;
    invoke-static {p0}, Lcom/jd/common/security/DESCoder;->decryptBASE64(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SecureRandom;-><init>([B)V

    .line 135
    .restart local v2       #secureRandom:Ljava/security/SecureRandom;
    :goto_0
    const-string v3, "TripleDES"

    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 136
    .local v0, kg:Ljavax/crypto/KeyGenerator;
    invoke-virtual {v0, v2}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 138
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 140
    .local v1, secretKey:Ljavax/crypto/SecretKey;
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lcom/jd/common/security/DESCoder;->encryptBASE64([B)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 132
    .end local v0           #kg:Ljavax/crypto/KeyGenerator;
    .end local v1           #secretKey:Ljavax/crypto/SecretKey;
    :cond_0
    new-instance v2, Ljava/security/SecureRandom;

    .end local v2           #secureRandom:Ljava/security/SecureRandom;
    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .restart local v2       #secureRandom:Ljava/security/SecureRandom;
    goto :goto_0
.end method

.method private static toKey([B)Ljava/security/Key;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "TripleDES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 73
    .local v0, secretKey:Ljavax/crypto/SecretKey;
    return-object v0
.end method
