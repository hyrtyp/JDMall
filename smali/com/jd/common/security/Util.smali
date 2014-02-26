.class Lcom/jd/common/security/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    .line 8
    return-void

    .line 66
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

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byte2int([B)[I
    .locals 8
    .parameter "ba"

    .prologue
    .line 51
    array-length v5, p0

    .line 52
    .local v5, length:I
    div-int/lit8 v6, v5, 0x4

    new-array v2, v6, [I

    .line 53
    .local v2, ia:[I
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    div-int/lit8 v6, v5, 0x4

    if-lt v3, v6, :cond_0

    .line 59
    return-object v2

    .line 54
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .local v4, j:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    .line 55
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    aget-byte v7, p0, v1

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    .line 56
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    aget-byte v7, p0, v0

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    .line 57
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    aget-byte v7, p0, v1

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 54
    aput v6, v2, v3

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_0
.end method

.method public static byte2short([B)[S
    .locals 8
    .parameter "ba"

    .prologue
    .line 26
    array-length v4, p0

    .line 27
    .local v4, length:I
    div-int/lit8 v6, v4, 0x2

    new-array v5, v6, [S

    .line 28
    .local v5, sa:[S
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    div-int/lit8 v6, v4, 0x2

    if-lt v2, v6, :cond_0

    .line 32
    return-object v5

    .line 29
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .local v3, j:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    .line 30
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    aget-byte v7, p0, v1

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-short v6, v6

    .line 29
    aput-short v6, v5, v2

    move v2, v3

    .end local v3           #j:I
    .restart local v2       #j:I
    goto :goto_0
.end method

.method public static hex2byte(Ljava/lang/String;)[B
    .locals 8
    .parameter "hex"

    .prologue
    .line 251
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 252
    .local v5, len:I
    add-int/lit8 v6, v5, 0x1

    div-int/lit8 v6, v6, 0x2

    new-array v0, v6, [B

    .line 254
    .local v0, buf:[B
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v3, 0x0

    .line 255
    .local v3, j:I
    rem-int/lit8 v6, v5, 0x2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 256
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .local v4, j:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/jd/common/security/Util;->hexDigit(C)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    .line 258
    :goto_0
    if-lt v2, v5, :cond_0

    .line 262
    return-object v0

    .line 259
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/jd/common/security/Util;->hexDigit(C)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    .line 260
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/jd/common/security/Util;->hexDigit(C)I

    move-result v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    .line 259
    aput-byte v6, v0, v4

    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    goto :goto_0

    .end local v2           #i:I
    .end local v4           #j:I
    .restart local v1       #i:I
    .restart local v3       #j:I
    :cond_1
    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0
.end method

.method public static hexDigit(C)I
    .locals 1
    .parameter "ch"

    .prologue
    .line 293
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 294
    add-int/lit8 v0, p0, -0x30

    .line 300
    :goto_0
    return v0

    .line 295
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 296
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 297
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 298
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 300
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static int2byte([I)[B
    .locals 8
    .parameter "ia"

    .prologue
    .line 37
    array-length v6, p0

    .line 38
    .local v6, length:I
    mul-int/lit8 v7, v6, 0x4

    new-array v0, v7, [B

    .line 39
    .local v0, ba:[B
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v3, 0x0

    .local v3, j:I
    move v4, v3

    .end local v3           #j:I
    .local v4, j:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 46
    return-object v0

    .line 40
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aget v5, p0, v2

    .line 41
    .local v5, k:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    ushr-int/lit8 v7, v5, 0x18

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v4

    .line 42
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    ushr-int/lit8 v7, v5, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v3

    .line 43
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    ushr-int/lit8 v7, v5, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v4

    .line 44
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v3

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0
.end method

.method public static isHex(Ljava/lang/String;)Z
    .locals 5
    .parameter "hex"

    .prologue
    .line 273
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 274
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    move v2, v1

    .line 277
    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 282
    const/4 v4, 0x1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    :goto_1
    return v4

    .line 278
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 279
    .local v0, ch:C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_1

    const/16 v4, 0x39

    if-le v0, v4, :cond_4

    :cond_1
    const/16 v4, 0x41

    if-lt v0, v4, :cond_2

    const/16 v4, 0x46

    if-le v0, v4, :cond_4

    .line 280
    :cond_2
    const/16 v4, 0x61

    if-lt v0, v4, :cond_3

    const/16 v4, 0x66

    if-le v0, v4, :cond_4

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .parameter "args"

    .prologue
    .line 304
    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/jd/common/security/Util;->toHEX1([B)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, s:Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "s = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 306
    return-void

    .line 304
    nop

    :array_0
    .array-data 0x1
        0xat
        0xbt
        0xct
        0xdt
    .end array-data
.end method

.method public static short2byte([S)[B
    .locals 8
    .parameter "sa"

    .prologue
    .line 14
    array-length v6, p0

    .line 15
    .local v6, length:I
    mul-int/lit8 v7, v6, 0x2

    new-array v0, v7, [B

    .line 16
    .local v0, ba:[B
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v3, 0x0

    .local v3, j:I
    move v4, v3

    .end local v3           #j:I
    .local v4, j:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 21
    return-object v0

    .line 17
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aget-short v5, p0, v2

    .line 18
    .local v5, k:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    ushr-int/lit8 v7, v5, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v4

    .line 19
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v3

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0
.end method

.method public static toHEX([B)Ljava/lang/String;
    .locals 9
    .parameter "ba"

    .prologue
    .line 79
    array-length v6, p0

    .line 80
    .local v6, length:I
    mul-int/lit8 v7, v6, 0x3

    new-array v0, v7, [C

    .line 81
    .local v0, buf:[C
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v3, 0x0

    .local v3, j:I
    move v4, v3

    .end local v3           #j:I
    .local v4, j:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 87
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([C)V

    return-object v7

    .line 82
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aget-byte v5, p0, v2

    .line 83
    .local v5, k:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v4

    .line 84
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    and-int/lit8 v8, v5, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v3

    .line 85
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    const/16 v7, 0x20

    aput-char v7, v0, v4

    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0
.end method

.method public static toHEX([I)Ljava/lang/String;
    .locals 10
    .parameter "ia"

    .prologue
    const/16 v9, 0x20

    .line 121
    array-length v6, p0

    .line 122
    .local v6, length:I
    mul-int/lit8 v7, v6, 0xa

    new-array v0, v7, [C

    .line 123
    .local v0, buf:[C
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v3, 0x0

    .local v3, j:I
    move v4, v3

    .end local v3           #j:I
    .local v4, j:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 136
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([C)V

    return-object v7

    .line 124
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aget v5, p0, v2

    .line 125
    .local v5, k:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v8, v5, 0x1c

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v4

    .line 126
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v8, v5, 0x18

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v3

    .line 127
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v8, v5, 0x14

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v4

    .line 128
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v8, v5, 0x10

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v3

    .line 129
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    aput-char v9, v0, v4

    .line 130
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v3

    .line 131
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v8, v5, 0x8

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v4

    .line 132
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v3

    .line 133
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    and-int/lit8 v8, v5, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v4

    .line 134
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    aput-char v9, v0, v3

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0
.end method

.method public static toHEX([S)Ljava/lang/String;
    .locals 9
    .parameter "ia"

    .prologue
    .line 99
    array-length v6, p0

    .line 100
    .local v6, length:I
    mul-int/lit8 v7, v6, 0x5

    new-array v0, v7, [C

    .line 101
    .local v0, buf:[C
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v3, 0x0

    .local v3, j:I
    move v4, v3

    .end local v3           #j:I
    .local v4, j:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 109
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([C)V

    return-object v7

    .line 102
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aget-short v5, p0, v2

    .line 103
    .local v5, k:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v4

    .line 104
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v8, v5, 0x8

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v3

    .line 105
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v4

    .line 106
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    and-int/lit8 v8, v5, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v3

    .line 107
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    const/16 v7, 0x20

    aput-char v7, v0, v4

    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0
.end method

.method public static toHEX1(B)Ljava/lang/String;
    .locals 5
    .parameter "b"

    .prologue
    .line 148
    const/4 v3, 0x2

    new-array v0, v3, [C

    .line 149
    .local v0, buf:[C
    const/4 v1, 0x0

    .line 150
    .local v1, j:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #j:I
    .local v2, j:I
    sget-object v3, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v4, p0, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v1

    .line 151
    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .restart local v1       #j:I
    sget-object v3, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    and-int/lit8 v4, p0, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 152
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method public static toHEX1(I)Ljava/lang/String;
    .locals 5
    .parameter "i"

    .prologue
    .line 204
    const/16 v3, 0x8

    new-array v0, v3, [C

    .line 205
    .local v0, buf:[C
    const/4 v1, 0x0

    .line 206
    .local v1, j:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #j:I
    .local v2, j:I
    sget-object v3, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v4, p0, 0x1c

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v1

    .line 207
    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .restart local v1       #j:I
    sget-object v3, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v4, p0, 0x18

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 208
    add-int/lit8 v2, v1, 0x1

    .end local v1           #j:I
    .restart local v2       #j:I
    sget-object v3, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v4, p0, 0x14

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v1

    .line 209
    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .restart local v1       #j:I
    sget-object v3, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v4, p0, 0x10

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 210
    add-int/lit8 v2, v1, 0x1

    .end local v1           #j:I
    .restart local v2       #j:I
    sget-object v3, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v4, p0, 0xc

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v1

    .line 211
    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .restart local v1       #j:I
    sget-object v3, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v4, p0, 0x8

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 212
    add-int/lit8 v2, v1, 0x1

    .end local v1           #j:I
    .restart local v2       #j:I
    sget-object v3, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v4, p0, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v1

    .line 213
    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .restart local v1       #j:I
    sget-object v3, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    and-int/lit8 v4, p0, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 214
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method public static toHEX1([B)Ljava/lang/String;
    .locals 9
    .parameter "ba"

    .prologue
    .line 164
    array-length v6, p0

    .line 165
    .local v6, length:I
    mul-int/lit8 v7, v6, 0x2

    new-array v0, v7, [C

    .line 166
    .local v0, buf:[C
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v3, 0x0

    .local v3, j:I
    move v4, v3

    .end local v3           #j:I
    .local v4, j:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 171
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([C)V

    return-object v7

    .line 167
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aget-byte v5, p0, v2

    .line 168
    .local v5, k:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v4

    .line 169
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    and-int/lit8 v8, v5, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v3

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0
.end method

.method public static toHEX1([I)Ljava/lang/String;
    .locals 9
    .parameter "ia"

    .prologue
    .line 226
    array-length v6, p0

    .line 227
    .local v6, length:I
    mul-int/lit8 v7, v6, 0x8

    new-array v0, v7, [C

    .line 228
    .local v0, buf:[C
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v3, 0x0

    .local v3, j:I
    move v4, v3

    .end local v3           #j:I
    .local v4, j:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 239
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([C)V

    return-object v7

    .line 229
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aget v5, p0, v2

    .line 230
    .local v5, k:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v8, v5, 0x1c

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v4

    .line 231
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v8, v5, 0x18

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v3

    .line 232
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v8, v5, 0x14

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v4

    .line 233
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v8, v5, 0x10

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v3

    .line 234
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v4

    .line 235
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v8, v5, 0x8

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v3

    .line 236
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v4

    .line 237
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    and-int/lit8 v8, v5, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v3

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0
.end method

.method public static toHEX1([S)Ljava/lang/String;
    .locals 9
    .parameter "ia"

    .prologue
    .line 183
    array-length v6, p0

    .line 184
    .local v6, length:I
    mul-int/lit8 v7, v6, 0x4

    new-array v0, v7, [C

    .line 185
    .local v0, buf:[C
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v3, 0x0

    .local v3, j:I
    move v4, v3

    .end local v3           #j:I
    .local v4, j:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 192
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([C)V

    return-object v7

    .line 186
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aget-short v5, p0, v2

    .line 187
    .local v5, k:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v4

    .line 188
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v8, v5, 0x8

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v3

    .line 189
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v4

    .line 190
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    sget-object v7, Lcom/jd/common/security/Util;->HEX_DIGITS:[C

    and-int/lit8 v8, v5, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v3

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0
.end method
