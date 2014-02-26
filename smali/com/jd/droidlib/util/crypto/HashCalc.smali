.class public Lcom/jd/droidlib/util/crypto/HashCalc;
.super Ljava/lang/Object;
.source "HashCalc.java"


# static fields
.field public static final MD5:Ljava/lang/String; = "MD5"

.field public static final SHA1:Ljava/lang/String; = "SHA-1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "str"
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 52
    const-string v5, "utf-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 53
    .local v1, bytes:[B
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 54
    .local v4, md:Ljava/security/MessageDigest;
    invoke-virtual {v4, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 55
    .local v2, digest:[B
    new-instance v0, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v0, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 56
    .local v0, bigInt:Ljava/math/BigInteger;
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, hash:Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x20

    if-lt v5, v6, :cond_0

    .line 60
    return-object v3

    .line 58
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 34
    :try_start_0
    const-string v1, "MD5"

    invoke-static {p0, v1}, Lcom/jd/droidlib/util/crypto/HashCalc;->getHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 37
    :goto_0
    return-object v1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/Object;)V

    .line 37
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 43
    :try_start_0
    const-string v1, "SHA-1"

    invoke-static {p0, v1}, Lcom/jd/droidlib/util/crypto/HashCalc;->getHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 46
    :goto_0
    return-object v1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/Object;)V

    .line 46
    const/4 v1, 0x0

    goto :goto_0
.end method
