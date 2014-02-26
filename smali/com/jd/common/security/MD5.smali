.class public Lcom/jd/common/security/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# static fields
.field static final PADDING:[B = null

.field static final S11:I = 0x7

.field static final S12:I = 0xc

.field static final S13:I = 0x11

.field static final S14:I = 0x16

.field static final S21:I = 0x5

.field static final S22:I = 0x9

.field static final S23:I = 0xe

.field static final S24:I = 0x14

.field static final S31:I = 0x4

.field static final S32:I = 0xb

.field static final S33:I = 0x10

.field static final S34:I = 0x17

.field static final S41:I = 0x6

.field static final S42:I = 0xa

.field static final S43:I = 0xf

.field static final S44:I = 0x15


# instance fields
.field private buffer:[B

.field private count:[J

.field private digest:[B

.field public digestHexStr:Ljava/lang/String;

.field private state:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/16 v0, 0x40

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    sput-object v0, Lcom/jd/common/security/MD5;->PADDING:[B

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/jd/common/security/MD5;->state:[J

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/jd/common/security/MD5;->count:[J

    .line 50
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jd/common/security/MD5;->buffer:[B

    .line 59
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jd/common/security/MD5;->digest:[B

    .line 78
    invoke-direct {p0}, Lcom/jd/common/security/MD5;->md5Init()V

    .line 80
    return-void
.end method

.method private Decode([J[BI)V
    .locals 7
    .parameter "output"
    .parameter "input"
    .parameter "len"

    .prologue
    .line 335
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-lt v1, p3, :cond_0

    .line 341
    return-void

    .line 336
    :cond_0
    aget-byte v2, p2, v1

    invoke-static {v2}, Lcom/jd/common/security/MD5;->b2iu(B)J

    move-result-wide v2

    .line 337
    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p2, v4

    invoke-static {v4}, Lcom/jd/common/security/MD5;->b2iu(B)J

    move-result-wide v4

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 338
    add-int/lit8 v4, v1, 0x2

    aget-byte v4, p2, v4

    invoke-static {v4}, Lcom/jd/common/security/MD5;->b2iu(B)J

    move-result-wide v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 339
    add-int/lit8 v4, v1, 0x3

    aget-byte v4, p2, v4

    invoke-static {v4}, Lcom/jd/common/security/MD5;->b2iu(B)J

    move-result-wide v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 336
    aput-wide v2, p1, v0

    .line 335
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_0
.end method

.method private Encode([B[JI)V
    .locals 8
    .parameter "output"
    .parameter "input"
    .parameter "len"

    .prologue
    const-wide/16 v6, 0xff

    .line 320
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-lt v1, p3, :cond_0

    .line 326
    return-void

    .line 321
    :cond_0
    aget-wide v2, p2, v0

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 322
    add-int/lit8 v2, v1, 0x1

    aget-wide v3, p2, v0

    const/16 v5, 0x8

    ushr-long/2addr v3, v5

    and-long/2addr v3, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 323
    add-int/lit8 v2, v1, 0x2

    aget-wide v3, p2, v0

    const/16 v5, 0x10

    ushr-long/2addr v3, v5

    and-long/2addr v3, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 324
    add-int/lit8 v2, v1, 0x3

    aget-wide v3, p2, v0

    const/16 v5, 0x18

    ushr-long/2addr v3, v5

    and-long/2addr v3, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 320
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_0
.end method

.method private F(JJJ)J
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 103
    and-long v0, p1, p3

    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    and-long/2addr v2, p5

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private FF(JJJJJJJ)J
    .locals 9
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "x"
    .parameter "s"
    .parameter "ac"

    .prologue
    .line 126
    move-object v2, p0

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/jd/common/security/MD5;->F(JJJ)J

    move-result-wide v2

    add-long v2, v2, p9

    add-long v2, v2, p13

    add-long/2addr p1, v2

    .line 127
    long-to-int v2, p1

    move-wide/from16 v0, p11

    long-to-int v3, v0

    shl-int/2addr v2, v3

    long-to-int v3, p1

    const-wide/16 v4, 0x20

    sub-long v4, v4, p11

    long-to-int v4, v4

    ushr-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-long p1, v2

    .line 128
    add-long/2addr p1, p3

    .line 129
    return-wide p1
.end method

.method private G(JJJ)J
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 107
    and-long v0, p1, p5

    const-wide/16 v2, -0x1

    xor-long/2addr v2, p5

    and-long/2addr v2, p3

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private GG(JJJJJJJ)J
    .locals 9
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "x"
    .parameter "s"
    .parameter "ac"

    .prologue
    .line 134
    move-object v2, p0

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/jd/common/security/MD5;->G(JJJ)J

    move-result-wide v2

    add-long v2, v2, p9

    add-long v2, v2, p13

    add-long/2addr p1, v2

    .line 135
    long-to-int v2, p1

    move-wide/from16 v0, p11

    long-to-int v3, v0

    shl-int/2addr v2, v3

    long-to-int v3, p1

    const-wide/16 v4, 0x20

    sub-long v4, v4, p11

    long-to-int v4, v4

    ushr-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-long p1, v2

    .line 136
    add-long/2addr p1, p3

    .line 137
    return-wide p1
.end method

.method private H(JJJ)J
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 111
    xor-long v0, p1, p3

    xor-long/2addr v0, p5

    return-wide v0
.end method

.method private HH(JJJJJJJ)J
    .locals 9
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "x"
    .parameter "s"
    .parameter "ac"

    .prologue
    .line 141
    move-object v2, p0

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/jd/common/security/MD5;->H(JJJ)J

    move-result-wide v2

    add-long v2, v2, p9

    add-long v2, v2, p13

    add-long/2addr p1, v2

    .line 142
    long-to-int v2, p1

    move-wide/from16 v0, p11

    long-to-int v3, v0

    shl-int/2addr v2, v3

    long-to-int v3, p1

    const-wide/16 v4, 0x20

    sub-long v4, v4, p11

    long-to-int v4, v4

    ushr-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-long p1, v2

    .line 143
    add-long/2addr p1, p3

    .line 144
    return-wide p1
.end method

.method private I(JJJ)J
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 115
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p5

    or-long/2addr v0, p1

    xor-long/2addr v0, p3

    return-wide v0
.end method

.method private II(JJJJJJJ)J
    .locals 9
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "x"
    .parameter "s"
    .parameter "ac"

    .prologue
    .line 148
    move-object v2, p0

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/jd/common/security/MD5;->I(JJJ)J

    move-result-wide v2

    add-long v2, v2, p9

    add-long v2, v2, p13

    add-long/2addr p1, v2

    .line 149
    long-to-int v2, p1

    move-wide/from16 v0, p11

    long-to-int v3, v0

    shl-int/2addr v2, v3

    long-to-int v3, p1

    const-wide/16 v4, 0x20

    sub-long v4, v4, p11

    long-to-int v4, v4

    ushr-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-long p1, v2

    .line 150
    add-long/2addr p1, p3

    .line 151
    return-wide p1
.end method

.method public static b2iu(B)J
    .locals 2
    .parameter "b"

    .prologue
    .line 348
    if-gez p0, :cond_0

    and-int/lit16 p0, p0, 0xff

    .end local p0
    :cond_0
    int-to-long v0, p0

    return-wide v0
.end method

.method public static byteHEX(B)Ljava/lang/String;
    .locals 5
    .parameter "ib"

    .prologue
    .line 356
    const/16 v3, 0x10

    new-array v0, v3, [C

    fill-array-data v0, :array_0

    .line 358
    .local v0, Digit:[C
    const/4 v3, 0x2

    new-array v1, v3, [C

    .line 359
    .local v1, ob:[C
    const/4 v3, 0x0

    ushr-int/lit8 v4, p0, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v0, v4

    aput-char v4, v1, v3

    .line 360
    const/4 v3, 0x1

    and-int/lit8 v4, p0, 0xf

    aget-char v4, v0, v4

    aput-char v4, v1, v3

    .line 361
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    .line 362
    .local v2, s:Ljava/lang/String;
    return-object v2

    .line 356
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
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .parameter "args"

    .prologue
    const/4 v4, 0x0

    .line 368
    new-instance v0, Lcom/jd/common/security/MD5;

    invoke-direct {v0}, Lcom/jd/common/security/MD5;-><init>()V

    .line 369
    .local v0, m:Lcom/jd/common/security/MD5;
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_0

    .line 371
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MD5 Test suite:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 372
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MD5(\"\"):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/jd/common/security/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MD5(\"a\"):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "a"

    invoke-virtual {v0, v3}, Lcom/jd/common/security/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MD5(\"abc\"):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "abc"

    invoke-virtual {v0, v3}, Lcom/jd/common/security/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 375
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MD5(\"message digest\"):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "message digest"

    invoke-virtual {v0, v3}, Lcom/jd/common/security/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 376
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MD5(\"abcdefghijklmnopqrstuvwxyz\"):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    const-string v3, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v0, v3}, Lcom/jd/common/security/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 376
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 378
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MD5(\"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\"):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

    invoke-virtual {v0, v3}, Lcom/jd/common/security/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 378
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 385
    :goto_0
    return-void

    .line 382
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MD5("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v4

    invoke-virtual {v0, v3}, Lcom/jd/common/security/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private md5Final()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 194
    new-array v0, v6, [B

    .line 198
    .local v0, bits:[B
    iget-object v3, p0, Lcom/jd/common/security/MD5;->count:[J

    invoke-direct {p0, v0, v3, v6}, Lcom/jd/common/security/MD5;->Encode([B[JI)V

    .line 201
    iget-object v3, p0, Lcom/jd/common/security/MD5;->count:[J

    const/4 v4, 0x0

    aget-wide v3, v3, v4

    const/4 v5, 0x3

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    and-int/lit8 v1, v3, 0x3f

    .line 202
    .local v1, index:I
    const/16 v3, 0x38

    if-ge v1, v3, :cond_0

    rsub-int/lit8 v2, v1, 0x38

    .line 203
    .local v2, padLen:I
    :goto_0
    sget-object v3, Lcom/jd/common/security/MD5;->PADDING:[B

    invoke-direct {p0, v3, v2}, Lcom/jd/common/security/MD5;->md5Update([BI)V

    .line 206
    invoke-direct {p0, v0, v6}, Lcom/jd/common/security/MD5;->md5Update([BI)V

    .line 209
    iget-object v3, p0, Lcom/jd/common/security/MD5;->digest:[B

    iget-object v4, p0, Lcom/jd/common/security/MD5;->state:[J

    const/16 v5, 0x10

    invoke-direct {p0, v3, v4, v5}, Lcom/jd/common/security/MD5;->Encode([B[JI)V

    .line 211
    return-void

    .line 202
    .end local v2           #padLen:I
    :cond_0
    rsub-int/lit8 v2, v1, 0x78

    goto :goto_0
.end method

.method private md5Init()V
    .locals 5

    .prologue
    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    iget-object v0, p0, Lcom/jd/common/security/MD5;->count:[J

    aput-wide v1, v0, v3

    .line 88
    iget-object v0, p0, Lcom/jd/common/security/MD5;->count:[J

    aput-wide v1, v0, v4

    .line 91
    iget-object v0, p0, Lcom/jd/common/security/MD5;->state:[J

    const-wide/32 v1, 0x67452301

    aput-wide v1, v0, v3

    .line 92
    iget-object v0, p0, Lcom/jd/common/security/MD5;->state:[J

    const-wide v1, 0xefcdab89L

    aput-wide v1, v0, v4

    .line 93
    iget-object v0, p0, Lcom/jd/common/security/MD5;->state:[J

    const/4 v1, 0x2

    const-wide v2, 0x98badcfeL

    aput-wide v2, v0, v1

    .line 94
    iget-object v0, p0, Lcom/jd/common/security/MD5;->state:[J

    const/4 v1, 0x3

    const-wide/32 v2, 0x10325476

    aput-wide v2, v0, v1

    .line 96
    return-void
.end method

.method private md5Memcpy([B[BIII)V
    .locals 3
    .parameter "output"
    .parameter "input"
    .parameter "outpos"
    .parameter "inpos"
    .parameter "len"

    .prologue
    .line 222
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p5, :cond_0

    .line 224
    return-void

    .line 223
    :cond_0
    add-int v1, p3, v0

    add-int v2, p4, v0

    aget-byte v2, p2, v2

    aput-byte v2, p1, v1

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private md5Transform([B)V
    .locals 28
    .parameter "block"

    .prologue
    .line 230
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jd/common/security/MD5;->state:[J

    const/4 v12, 0x0

    aget-wide v4, v3, v12

    .local v4, a:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jd/common/security/MD5;->state:[J

    const/4 v12, 0x1

    aget-wide v6, v3, v12

    .local v6, b:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jd/common/security/MD5;->state:[J

    const/4 v12, 0x2

    aget-wide v8, v3, v12

    .local v8, c:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jd/common/security/MD5;->state:[J

    const/4 v12, 0x3

    aget-wide v10, v3, v12

    .line 231
    .local v10, d:J
    const/16 v3, 0x10

    new-array v0, v3, [J

    move-object/from16 v27, v0

    .line 233
    .local v27, x:[J
    const/16 v3, 0x40

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/jd/common/security/MD5;->Decode([J[BI)V

    .line 236
    const/4 v3, 0x0

    aget-wide v12, v27, v3

    const-wide/16 v14, 0x7

    const-wide v16, 0xd76aa478L

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/jd/common/security/MD5;->FF(JJJJJJJ)J

    move-result-wide v4

    .line 237
    const/4 v3, 0x1

    aget-wide v21, v27, v3

    const-wide/16 v23, 0xc

    const-wide v25, 0xe8c7b756L

    move-object/from16 v12, p0

    move-wide v13, v10

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->FF(JJJJJJJ)J

    move-result-wide v10

    .line 238
    const/4 v3, 0x2

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x11

    const-wide/32 v25, 0x242070db

    move-object/from16 v12, p0

    move-wide v13, v8

    move-wide v15, v10

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->FF(JJJJJJJ)J

    move-result-wide v8

    .line 239
    const/4 v3, 0x3

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x16

    const-wide v25, 0xc1bdceeeL

    move-object/from16 v12, p0

    move-wide v13, v6

    move-wide v15, v8

    move-wide/from16 v17, v10

    move-wide/from16 v19, v4

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->FF(JJJJJJJ)J

    move-result-wide v6

    .line 240
    const/4 v3, 0x4

    aget-wide v12, v27, v3

    const-wide/16 v14, 0x7

    const-wide v16, 0xf57c0fafL

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/jd/common/security/MD5;->FF(JJJJJJJ)J

    move-result-wide v4

    .line 241
    const/4 v3, 0x5

    aget-wide v21, v27, v3

    const-wide/16 v23, 0xc

    const-wide/32 v25, 0x4787c62a

    move-object/from16 v12, p0

    move-wide v13, v10

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->FF(JJJJJJJ)J

    move-result-wide v10

    .line 242
    const/4 v3, 0x6

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x11

    const-wide v25, 0xa8304613L

    move-object/from16 v12, p0

    move-wide v13, v8

    move-wide v15, v10

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->FF(JJJJJJJ)J

    move-result-wide v8

    .line 243
    const/4 v3, 0x7

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x16

    const-wide v25, 0xfd469501L

    move-object/from16 v12, p0

    move-wide v13, v6

    move-wide v15, v8

    move-wide/from16 v17, v10

    move-wide/from16 v19, v4

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->FF(JJJJJJJ)J

    move-result-wide v6

    .line 244
    const/16 v3, 0x8

    aget-wide v12, v27, v3

    const-wide/16 v14, 0x7

    const-wide/32 v16, 0x698098d8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/jd/common/security/MD5;->FF(JJJJJJJ)J

    move-result-wide v4

    .line 245
    const/16 v3, 0x9

    aget-wide v21, v27, v3

    const-wide/16 v23, 0xc

    const-wide v25, 0x8b44f7afL

    move-object/from16 v12, p0

    move-wide v13, v10

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->FF(JJJJJJJ)J

    move-result-wide v10

    .line 246
    const/16 v3, 0xa

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x11

    const-wide v25, 0xffff5bb1L

    move-object/from16 v12, p0

    move-wide v13, v8

    move-wide v15, v10

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->FF(JJJJJJJ)J

    move-result-wide v8

    .line 247
    const/16 v3, 0xb

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x16

    const-wide v25, 0x895cd7beL

    move-object/from16 v12, p0

    move-wide v13, v6

    move-wide v15, v8

    move-wide/from16 v17, v10

    move-wide/from16 v19, v4

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->FF(JJJJJJJ)J

    move-result-wide v6

    .line 248
    const/16 v3, 0xc

    aget-wide v12, v27, v3

    const-wide/16 v14, 0x7

    const-wide/32 v16, 0x6b901122

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/jd/common/security/MD5;->FF(JJJJJJJ)J

    move-result-wide v4

    .line 249
    const/16 v3, 0xd

    aget-wide v21, v27, v3

    const-wide/16 v23, 0xc

    const-wide v25, 0xfd987193L

    move-object/from16 v12, p0

    move-wide v13, v10

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->FF(JJJJJJJ)J

    move-result-wide v10

    .line 250
    const/16 v3, 0xe

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x11

    const-wide v25, 0xa679438eL

    move-object/from16 v12, p0

    move-wide v13, v8

    move-wide v15, v10

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->FF(JJJJJJJ)J

    move-result-wide v8

    .line 251
    const/16 v3, 0xf

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x16

    const-wide/32 v25, 0x49b40821

    move-object/from16 v12, p0

    move-wide v13, v6

    move-wide v15, v8

    move-wide/from16 v17, v10

    move-wide/from16 v19, v4

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->FF(JJJJJJJ)J

    move-result-wide v6

    .line 254
    const/4 v3, 0x1

    aget-wide v12, v27, v3

    const-wide/16 v14, 0x5

    const-wide v16, 0xf61e2562L

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/jd/common/security/MD5;->GG(JJJJJJJ)J

    move-result-wide v4

    .line 255
    const/4 v3, 0x6

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x9

    const-wide v25, 0xc040b340L

    move-object/from16 v12, p0

    move-wide v13, v10

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->GG(JJJJJJJ)J

    move-result-wide v10

    .line 256
    const/16 v3, 0xb

    aget-wide v21, v27, v3

    const-wide/16 v23, 0xe

    const-wide/32 v25, 0x265e5a51

    move-object/from16 v12, p0

    move-wide v13, v8

    move-wide v15, v10

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->GG(JJJJJJJ)J

    move-result-wide v8

    .line 257
    const/4 v3, 0x0

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x14

    const-wide v25, 0xe9b6c7aaL

    move-object/from16 v12, p0

    move-wide v13, v6

    move-wide v15, v8

    move-wide/from16 v17, v10

    move-wide/from16 v19, v4

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->GG(JJJJJJJ)J

    move-result-wide v6

    .line 258
    const/4 v3, 0x5

    aget-wide v12, v27, v3

    const-wide/16 v14, 0x5

    const-wide v16, 0xd62f105dL

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/jd/common/security/MD5;->GG(JJJJJJJ)J

    move-result-wide v4

    .line 259
    const/16 v3, 0xa

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x9

    const-wide/32 v25, 0x2441453

    move-object/from16 v12, p0

    move-wide v13, v10

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->GG(JJJJJJJ)J

    move-result-wide v10

    .line 260
    const/16 v3, 0xf

    aget-wide v21, v27, v3

    const-wide/16 v23, 0xe

    const-wide v25, 0xd8a1e681L

    move-object/from16 v12, p0

    move-wide v13, v8

    move-wide v15, v10

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->GG(JJJJJJJ)J

    move-result-wide v8

    .line 261
    const/4 v3, 0x4

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x14

    const-wide v25, 0xe7d3fbc8L

    move-object/from16 v12, p0

    move-wide v13, v6

    move-wide v15, v8

    move-wide/from16 v17, v10

    move-wide/from16 v19, v4

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->GG(JJJJJJJ)J

    move-result-wide v6

    .line 262
    const/16 v3, 0x9

    aget-wide v12, v27, v3

    const-wide/16 v14, 0x5

    const-wide/32 v16, 0x21e1cde6

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/jd/common/security/MD5;->GG(JJJJJJJ)J

    move-result-wide v4

    .line 263
    const/16 v3, 0xe

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x9

    const-wide v25, 0xc33707d6L

    move-object/from16 v12, p0

    move-wide v13, v10

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->GG(JJJJJJJ)J

    move-result-wide v10

    .line 264
    const/4 v3, 0x3

    aget-wide v21, v27, v3

    const-wide/16 v23, 0xe

    const-wide v25, 0xf4d50d87L

    move-object/from16 v12, p0

    move-wide v13, v8

    move-wide v15, v10

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->GG(JJJJJJJ)J

    move-result-wide v8

    .line 265
    const/16 v3, 0x8

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x14

    const-wide/32 v25, 0x455a14ed

    move-object/from16 v12, p0

    move-wide v13, v6

    move-wide v15, v8

    move-wide/from16 v17, v10

    move-wide/from16 v19, v4

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->GG(JJJJJJJ)J

    move-result-wide v6

    .line 266
    const/16 v3, 0xd

    aget-wide v12, v27, v3

    const-wide/16 v14, 0x5

    const-wide v16, 0xa9e3e905L

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/jd/common/security/MD5;->GG(JJJJJJJ)J

    move-result-wide v4

    .line 267
    const/4 v3, 0x2

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x9

    const-wide v25, 0xfcefa3f8L

    move-object/from16 v12, p0

    move-wide v13, v10

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->GG(JJJJJJJ)J

    move-result-wide v10

    .line 268
    const/4 v3, 0x7

    aget-wide v21, v27, v3

    const-wide/16 v23, 0xe

    const-wide/32 v25, 0x676f02d9

    move-object/from16 v12, p0

    move-wide v13, v8

    move-wide v15, v10

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->GG(JJJJJJJ)J

    move-result-wide v8

    .line 269
    const/16 v3, 0xc

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x14

    const-wide v25, 0x8d2a4c8aL

    move-object/from16 v12, p0

    move-wide v13, v6

    move-wide v15, v8

    move-wide/from16 v17, v10

    move-wide/from16 v19, v4

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->GG(JJJJJJJ)J

    move-result-wide v6

    .line 272
    const/4 v3, 0x5

    aget-wide v12, v27, v3

    const-wide/16 v14, 0x4

    const-wide v16, 0xfffa3942L

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/jd/common/security/MD5;->HH(JJJJJJJ)J

    move-result-wide v4

    .line 273
    const/16 v3, 0x8

    aget-wide v21, v27, v3

    const-wide/16 v23, 0xb

    const-wide v25, 0x8771f681L

    move-object/from16 v12, p0

    move-wide v13, v10

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->HH(JJJJJJJ)J

    move-result-wide v10

    .line 274
    const/16 v3, 0xb

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x10

    const-wide/32 v25, 0x6d9d6122

    move-object/from16 v12, p0

    move-wide v13, v8

    move-wide v15, v10

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->HH(JJJJJJJ)J

    move-result-wide v8

    .line 275
    const/16 v3, 0xe

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x17

    const-wide v25, 0xfde5380cL

    move-object/from16 v12, p0

    move-wide v13, v6

    move-wide v15, v8

    move-wide/from16 v17, v10

    move-wide/from16 v19, v4

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->HH(JJJJJJJ)J

    move-result-wide v6

    .line 276
    const/4 v3, 0x1

    aget-wide v12, v27, v3

    const-wide/16 v14, 0x4

    const-wide v16, 0xa4beea44L

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/jd/common/security/MD5;->HH(JJJJJJJ)J

    move-result-wide v4

    .line 277
    const/4 v3, 0x4

    aget-wide v21, v27, v3

    const-wide/16 v23, 0xb

    const-wide/32 v25, 0x4bdecfa9

    move-object/from16 v12, p0

    move-wide v13, v10

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->HH(JJJJJJJ)J

    move-result-wide v10

    .line 278
    const/4 v3, 0x7

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x10

    const-wide v25, 0xf6bb4b60L

    move-object/from16 v12, p0

    move-wide v13, v8

    move-wide v15, v10

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->HH(JJJJJJJ)J

    move-result-wide v8

    .line 279
    const/16 v3, 0xa

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x17

    const-wide v25, 0xbebfbc70L

    move-object/from16 v12, p0

    move-wide v13, v6

    move-wide v15, v8

    move-wide/from16 v17, v10

    move-wide/from16 v19, v4

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->HH(JJJJJJJ)J

    move-result-wide v6

    .line 280
    const/16 v3, 0xd

    aget-wide v12, v27, v3

    const-wide/16 v14, 0x4

    const-wide/32 v16, 0x289b7ec6

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/jd/common/security/MD5;->HH(JJJJJJJ)J

    move-result-wide v4

    .line 281
    const/4 v3, 0x0

    aget-wide v21, v27, v3

    const-wide/16 v23, 0xb

    const-wide v25, 0xeaa127faL

    move-object/from16 v12, p0

    move-wide v13, v10

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->HH(JJJJJJJ)J

    move-result-wide v10

    .line 282
    const/4 v3, 0x3

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x10

    const-wide v25, 0xd4ef3085L

    move-object/from16 v12, p0

    move-wide v13, v8

    move-wide v15, v10

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->HH(JJJJJJJ)J

    move-result-wide v8

    .line 283
    const/4 v3, 0x6

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x17

    const-wide/32 v25, 0x4881d05

    move-object/from16 v12, p0

    move-wide v13, v6

    move-wide v15, v8

    move-wide/from16 v17, v10

    move-wide/from16 v19, v4

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->HH(JJJJJJJ)J

    move-result-wide v6

    .line 284
    const/16 v3, 0x9

    aget-wide v12, v27, v3

    const-wide/16 v14, 0x4

    const-wide v16, 0xd9d4d039L

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/jd/common/security/MD5;->HH(JJJJJJJ)J

    move-result-wide v4

    .line 285
    const/16 v3, 0xc

    aget-wide v21, v27, v3

    const-wide/16 v23, 0xb

    const-wide v25, 0xe6db99e5L

    move-object/from16 v12, p0

    move-wide v13, v10

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->HH(JJJJJJJ)J

    move-result-wide v10

    .line 286
    const/16 v3, 0xf

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x10

    const-wide/32 v25, 0x1fa27cf8

    move-object/from16 v12, p0

    move-wide v13, v8

    move-wide v15, v10

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->HH(JJJJJJJ)J

    move-result-wide v8

    .line 287
    const/4 v3, 0x2

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x17

    const-wide v25, 0xc4ac5665L

    move-object/from16 v12, p0

    move-wide v13, v6

    move-wide v15, v8

    move-wide/from16 v17, v10

    move-wide/from16 v19, v4

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->HH(JJJJJJJ)J

    move-result-wide v6

    .line 290
    const/4 v3, 0x0

    aget-wide v12, v27, v3

    const-wide/16 v14, 0x6

    const-wide v16, 0xf4292244L

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/jd/common/security/MD5;->II(JJJJJJJ)J

    move-result-wide v4

    .line 291
    const/4 v3, 0x7

    aget-wide v21, v27, v3

    const-wide/16 v23, 0xa

    const-wide/32 v25, 0x432aff97

    move-object/from16 v12, p0

    move-wide v13, v10

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->II(JJJJJJJ)J

    move-result-wide v10

    .line 292
    const/16 v3, 0xe

    aget-wide v21, v27, v3

    const-wide/16 v23, 0xf

    const-wide v25, 0xab9423a7L

    move-object/from16 v12, p0

    move-wide v13, v8

    move-wide v15, v10

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->II(JJJJJJJ)J

    move-result-wide v8

    .line 293
    const/4 v3, 0x5

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x15

    const-wide v25, 0xfc93a039L

    move-object/from16 v12, p0

    move-wide v13, v6

    move-wide v15, v8

    move-wide/from16 v17, v10

    move-wide/from16 v19, v4

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->II(JJJJJJJ)J

    move-result-wide v6

    .line 294
    const/16 v3, 0xc

    aget-wide v12, v27, v3

    const-wide/16 v14, 0x6

    const-wide/32 v16, 0x655b59c3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/jd/common/security/MD5;->II(JJJJJJJ)J

    move-result-wide v4

    .line 295
    const/4 v3, 0x3

    aget-wide v21, v27, v3

    const-wide/16 v23, 0xa

    const-wide v25, 0x8f0ccc92L

    move-object/from16 v12, p0

    move-wide v13, v10

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->II(JJJJJJJ)J

    move-result-wide v10

    .line 296
    const/16 v3, 0xa

    aget-wide v21, v27, v3

    const-wide/16 v23, 0xf

    const-wide v25, 0xffeff47dL

    move-object/from16 v12, p0

    move-wide v13, v8

    move-wide v15, v10

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->II(JJJJJJJ)J

    move-result-wide v8

    .line 297
    const/4 v3, 0x1

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x15

    const-wide v25, 0x85845dd1L

    move-object/from16 v12, p0

    move-wide v13, v6

    move-wide v15, v8

    move-wide/from16 v17, v10

    move-wide/from16 v19, v4

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->II(JJJJJJJ)J

    move-result-wide v6

    .line 298
    const/16 v3, 0x8

    aget-wide v12, v27, v3

    const-wide/16 v14, 0x6

    const-wide/32 v16, 0x6fa87e4f

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/jd/common/security/MD5;->II(JJJJJJJ)J

    move-result-wide v4

    .line 299
    const/16 v3, 0xf

    aget-wide v21, v27, v3

    const-wide/16 v23, 0xa

    const-wide v25, 0xfe2ce6e0L

    move-object/from16 v12, p0

    move-wide v13, v10

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->II(JJJJJJJ)J

    move-result-wide v10

    .line 300
    const/4 v3, 0x6

    aget-wide v21, v27, v3

    const-wide/16 v23, 0xf

    const-wide v25, 0xa3014314L

    move-object/from16 v12, p0

    move-wide v13, v8

    move-wide v15, v10

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->II(JJJJJJJ)J

    move-result-wide v8

    .line 301
    const/16 v3, 0xd

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x15

    const-wide/32 v25, 0x4e0811a1

    move-object/from16 v12, p0

    move-wide v13, v6

    move-wide v15, v8

    move-wide/from16 v17, v10

    move-wide/from16 v19, v4

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->II(JJJJJJJ)J

    move-result-wide v6

    .line 302
    const/4 v3, 0x4

    aget-wide v12, v27, v3

    const-wide/16 v14, 0x6

    const-wide v16, 0xf7537e82L

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/jd/common/security/MD5;->II(JJJJJJJ)J

    move-result-wide v4

    .line 303
    const/16 v3, 0xb

    aget-wide v21, v27, v3

    const-wide/16 v23, 0xa

    const-wide v25, 0xbd3af235L

    move-object/from16 v12, p0

    move-wide v13, v10

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->II(JJJJJJJ)J

    move-result-wide v10

    .line 304
    const/4 v3, 0x2

    aget-wide v21, v27, v3

    const-wide/16 v23, 0xf

    const-wide/32 v25, 0x2ad7d2bb

    move-object/from16 v12, p0

    move-wide v13, v8

    move-wide v15, v10

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->II(JJJJJJJ)J

    move-result-wide v8

    .line 305
    const/16 v3, 0x9

    aget-wide v21, v27, v3

    const-wide/16 v23, 0x15

    const-wide v25, 0xeb86d391L

    move-object/from16 v12, p0

    move-wide v13, v6

    move-wide v15, v8

    move-wide/from16 v17, v10

    move-wide/from16 v19, v4

    invoke-direct/range {v12 .. v26}, Lcom/jd/common/security/MD5;->II(JJJJJJJ)J

    move-result-wide v6

    .line 307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jd/common/security/MD5;->state:[J

    const/4 v12, 0x0

    aget-wide v13, v3, v12

    add-long/2addr v13, v4

    aput-wide v13, v3, v12

    .line 308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jd/common/security/MD5;->state:[J

    const/4 v12, 0x1

    aget-wide v13, v3, v12

    add-long/2addr v13, v6

    aput-wide v13, v3, v12

    .line 309
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jd/common/security/MD5;->state:[J

    const/4 v12, 0x2

    aget-wide v13, v3, v12

    add-long/2addr v13, v8

    aput-wide v13, v3, v12

    .line 310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jd/common/security/MD5;->state:[J

    const/4 v12, 0x3

    aget-wide v13, v3, v12

    add-long/2addr v13, v10

    aput-wide v13, v3, v12

    .line 312
    return-void
.end method

.method private md5Update([BI)V
    .locals 18
    .parameter "inbuf"
    .parameter "inputLen"

    .prologue
    .line 160
    const/16 v1, 0x40

    new-array v8, v1, [B

    .line 161
    .local v8, block:[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jd/common/security/MD5;->count:[J

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    const/4 v3, 0x3

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    and-int/lit8 v4, v1, 0x3f

    .line 163
    .local v4, index:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jd/common/security/MD5;->count:[J

    const/4 v2, 0x0

    aget-wide v9, v1, v2

    shl-int/lit8 v3, p2, 0x3

    int-to-long v12, v3

    add-long/2addr v9, v12

    aput-wide v9, v1, v2

    shl-int/lit8 v1, p2, 0x3

    int-to-long v1, v1

    cmp-long v1, v9, v1

    if-gez v1, :cond_0

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jd/common/security/MD5;->count:[J

    const/4 v2, 0x1

    aget-wide v9, v1, v2

    const-wide/16 v12, 0x1

    add-long/2addr v9, v12

    aput-wide v9, v1, v2

    .line 165
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jd/common/security/MD5;->count:[J

    const/4 v2, 0x1

    aget-wide v9, v1, v2

    ushr-int/lit8 v3, p2, 0x1d

    int-to-long v12, v3

    add-long/2addr v9, v12

    aput-wide v9, v1, v2

    .line 167
    rsub-int/lit8 v6, v4, 0x40

    .line 170
    .local v6, partLen:I
    move/from16 v0, p2

    if-lt v0, v6, :cond_2

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jd/common/security/MD5;->buffer:[B

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/jd/common/security/MD5;->md5Memcpy([B[BIII)V

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jd/common/security/MD5;->buffer:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/jd/common/security/MD5;->md5Transform([B)V

    .line 174
    move v11, v6

    .local v11, i:I
    :goto_0
    add-int/lit8 v1, v11, 0x3f

    move/from16 v0, p2

    if-lt v1, v0, :cond_1

    .line 179
    const/4 v4, 0x0

    .line 186
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jd/common/security/MD5;->buffer:[B

    sub-int v17, p2, v11

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move v15, v4

    move/from16 v16, v11

    invoke-direct/range {v12 .. v17}, Lcom/jd/common/security/MD5;->md5Memcpy([B[BIII)V

    .line 188
    return-void

    .line 176
    :cond_1
    const/4 v10, 0x0

    const/16 v12, 0x40

    move-object/from16 v7, p0

    move-object/from16 v9, p1

    invoke-direct/range {v7 .. v12}, Lcom/jd/common/security/MD5;->md5Memcpy([B[BIII)V

    .line 177
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/jd/common/security/MD5;->md5Transform([B)V

    .line 174
    add-int/lit8 v11, v11, 0x40

    goto :goto_0

    .line 183
    .end local v11           #i:I
    :cond_2
    const/4 v11, 0x0

    .restart local v11       #i:I
    goto :goto_1
.end method


# virtual methods
.method public getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "inbuf"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/jd/common/security/MD5;->md5Init()V

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/jd/common/security/MD5;->md5Update([BI)V

    .line 68
    invoke-direct {p0}, Lcom/jd/common/security/MD5;->md5Final()V

    .line 69
    const-string v1, ""

    iput-object v1, p0, Lcom/jd/common/security/MD5;->digestHexStr:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/jd/common/security/MD5;->digestHexStr:Ljava/lang/String;

    return-object v1

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/jd/common/security/MD5;->digestHexStr:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jd/common/security/MD5;->digest:[B

    aget-byte v1, v1, v0

    invoke-static {v1}, Lcom/jd/common/security/MD5;->byteHEX(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jd/common/security/MD5;->digestHexStr:Ljava/lang/String;

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
