.class public Lcom/jingdong/common/utils/Md5Encrypt;
.super Ljava/lang/Object;
.source "Md5Encrypt.java"


# static fields
.field private static final DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jingdong/common/utils/Md5Encrypt;->DIGITS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeHex([B)[C
    .locals 7
    .parameter "data"

    .prologue
    .line 38
    array-length v3, p0

    .line 40
    .local v3, l:I
    shl-int/lit8 v5, v3, 0x1

    new-array v4, v5, [C

    .line 42
    .local v4, out:[C
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, 0x0

    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .local v2, j:I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 47
    return-object v4

    .line 43
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .restart local v1       #j:I
    sget-object v5, Lcom/jingdong/common/utils/Md5Encrypt;->DIGITS:[C

    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v5, v5, v6

    aput-char v5, v4, v2

    .line 44
    add-int/lit8 v2, v1, 0x1

    .end local v1           #j:I
    .restart local v2       #j:I
    sget-object v5, Lcom/jingdong/common/utils/Md5Encrypt;->DIGITS:[C

    aget-byte v6, p0, v0

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v4, v1

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "text"

    .prologue
    .line 12
    const/4 v3, 0x0

    .line 15
    .local v3, msgDigest:Ljava/security/MessageDigest;
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 21
    :try_start_1
    const-string v4, "utf-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 31
    .local v0, bytes:[B
    new-instance v2, Ljava/lang/String;

    invoke-static {v0}, Lcom/jingdong/common/utils/Md5Encrypt;->encodeHex([B)[C

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([C)V

    .line 33
    .local v2, md5Str:Ljava/lang/String;
    return-object v2

    .line 16
    .end local v0           #bytes:[B
    .end local v2           #md5Str:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 17
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "System doesn\'t support MD5 algorithm."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 23
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 25
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "System doesn\'t support your  EncodingException."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
