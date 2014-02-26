.class public Lcom/jingdong/common/auth/BASE64Encoder;
.super Lcom/jingdong/common/auth/CharacterEncoder;
.source "BASE64Encoder.java"


# static fields
.field private static final pem_array:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 62
    sput-object v0, Lcom/jingdong/common/auth/BASE64Encoder;->pem_array:[C

    .line 74
    return-void

    .line 63
    :array_0
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
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
        0x2bt 0x0t
        0x2ft 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/jingdong/common/auth/CharacterEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected bytesPerAtom()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x3

    return v0
.end method

.method protected bytesPerLine()I
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x39

    return v0
.end method

.method protected encodeAtom(Ljava/io/OutputStream;[BII)V
    .locals 7
    .parameter "outStream"
    .parameter "data"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x3d

    .line 85
    const/4 v3, 0x1

    if-ne p4, v3, :cond_0

    .line 87
    aget-byte v0, p2, p3

    .line 88
    .local v0, a:B
    const/4 v1, 0x0

    .line 89
    .local v1, b:B
    const/4 v2, 0x0

    .line 90
    .local v2, c:B
    sget-object v3, Lcom/jingdong/common/auth/BASE64Encoder;->pem_array:[C

    ushr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-char v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 91
    sget-object v3, Lcom/jingdong/common/auth/BASE64Encoder;->pem_array:[C

    shl-int/lit8 v4, v0, 0x4

    and-int/lit8 v4, v4, 0x30

    add-int/lit8 v4, v4, 0x0

    aget-char v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 92
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    .line 93
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    .line 113
    :goto_0
    return-void

    .line 94
    .end local v0           #a:B
    .end local v1           #b:B
    .end local v2           #c:B
    :cond_0
    const/4 v3, 0x2

    if-ne p4, v3, :cond_1

    .line 96
    aget-byte v0, p2, p3

    .line 97
    .restart local v0       #a:B
    add-int/lit8 v3, p3, 0x1

    aget-byte v1, p2, v3

    .line 98
    .restart local v1       #b:B
    const/4 v2, 0x0

    .line 99
    .restart local v2       #c:B
    sget-object v3, Lcom/jingdong/common/auth/BASE64Encoder;->pem_array:[C

    ushr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-char v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 100
    sget-object v3, Lcom/jingdong/common/auth/BASE64Encoder;->pem_array:[C

    shl-int/lit8 v4, v0, 0x4

    and-int/lit8 v4, v4, 0x30

    ushr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0xf

    add-int/2addr v4, v5

    aget-char v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 101
    sget-object v3, Lcom/jingdong/common/auth/BASE64Encoder;->pem_array:[C

    shl-int/lit8 v4, v1, 0x2

    and-int/lit8 v4, v4, 0x3c

    add-int/lit8 v4, v4, 0x0

    aget-char v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 102
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 105
    .end local v0           #a:B
    .end local v1           #b:B
    .end local v2           #c:B
    :cond_1
    aget-byte v0, p2, p3

    .line 106
    .restart local v0       #a:B
    add-int/lit8 v3, p3, 0x1

    aget-byte v1, p2, v3

    .line 107
    .restart local v1       #b:B
    add-int/lit8 v3, p3, 0x2

    aget-byte v2, p2, v3

    .line 108
    .restart local v2       #c:B
    sget-object v3, Lcom/jingdong/common/auth/BASE64Encoder;->pem_array:[C

    ushr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-char v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 109
    sget-object v3, Lcom/jingdong/common/auth/BASE64Encoder;->pem_array:[C

    shl-int/lit8 v4, v0, 0x4

    and-int/lit8 v4, v4, 0x30

    ushr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0xf

    add-int/2addr v4, v5

    aget-char v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 110
    sget-object v3, Lcom/jingdong/common/auth/BASE64Encoder;->pem_array:[C

    shl-int/lit8 v4, v1, 0x2

    and-int/lit8 v4, v4, 0x3c

    ushr-int/lit8 v5, v2, 0x6

    and-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    aget-char v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 111
    sget-object v3, Lcom/jingdong/common/auth/BASE64Encoder;->pem_array:[C

    and-int/lit8 v4, v2, 0x3f

    aget-char v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method
