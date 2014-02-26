.class public Lcom/jd/droidlib/util/crypto/Crypter;
.super Ljava/lang/Object;
.source "Crypter.java"


# static fields
.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"


# instance fields
.field private final seed:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "seed"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jd/droidlib/util/crypto/Crypter;->seed:[B

    .line 31
    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuffer;B)V
    .locals 3
    .parameter "sb"
    .parameter "b"

    .prologue
    .line 103
    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 104
    return-void
.end method

.method private static decrypt([B[B)[B
    .locals 4
    .parameter "raw"
    .parameter "encrypted"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 67
    .local v2, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 68
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 69
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 70
    .local v1, decrypted:[B
    return-object v1
.end method

.method private static encrypt([B[B)[B
    .locals 4
    .parameter "raw"
    .parameter "clear"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 58
    .local v2, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 59
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 60
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 61
    .local v1, encrypted:[B
    return-object v1
.end method

.method public static fromHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "hex"

    .prologue
    .line 78
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/jd/droidlib/util/crypto/Crypter;->toByte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private static getRawKey([B)[B
    .locals 5
    .parameter "seed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 48
    .local v0, kgen:Ljavax/crypto/KeyGenerator;
    const-string v4, "SHA1PRNG"

    invoke-static {v4}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    .line 49
    .local v3, sr:Ljava/security/SecureRandom;
    invoke-virtual {v3, p0}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 50
    const/16 v4, 0x80

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 51
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 52
    .local v2, skey:Ljavax/crypto/SecretKey;
    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 53
    .local v1, raw:[B
    return-object v1
.end method

.method public static toByte(Ljava/lang/String;)[B
    .locals 5
    .parameter "hexString"

    .prologue
    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 83
    .local v1, len:I
    new-array v2, v1, [B

    .line 84
    .local v2, result:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 87
    return-object v2

    .line 85
    :cond_0
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 86
    const/16 v4, 0x10

    .line 85
    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    .line 86
    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    .line 85
    aput-byte v3, v2, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static toHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "txt"

    .prologue
    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/jd/droidlib/util/crypto/Crypter;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 3
    .parameter "buf"

    .prologue
    .line 91
    if-nez p0, :cond_0

    .line 92
    const-string v2, ""

    .line 97
    :goto_0
    return-object v2

    .line 93
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 94
    .local v1, result:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 95
    :cond_1
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/jd/droidlib/util/crypto/Crypter;->appendHex(Ljava/lang/StringBuffer;B)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "encrypted"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v3, p0, Lcom/jd/droidlib/util/crypto/Crypter;->seed:[B

    invoke-static {v3}, Lcom/jd/droidlib/util/crypto/Crypter;->getRawKey([B)[B

    move-result-object v1

    .line 41
    .local v1, rawKey:[B
    invoke-static {p1}, Lcom/jd/droidlib/util/crypto/Crypter;->toByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 42
    .local v0, enc:[B
    invoke-static {v1, v0}, Lcom/jd/droidlib/util/crypto/Crypter;->decrypt([B[B)[B

    move-result-object v2

    .line 43
    .local v2, result:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    return-object v3
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "cleartext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v2, p0, Lcom/jd/droidlib/util/crypto/Crypter;->seed:[B

    invoke-static {v2}, Lcom/jd/droidlib/util/crypto/Crypter;->getRawKey([B)[B

    move-result-object v0

    .line 35
    .local v0, rawKey:[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jd/droidlib/util/crypto/Crypter;->encrypt([B[B)[B

    move-result-object v1

    .line 36
    .local v1, result:[B
    invoke-static {v1}, Lcom/jd/droidlib/util/crypto/Crypter;->toHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
