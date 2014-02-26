.class public Lcom/jingdong/common/auth/BASE64Decoder;
.super Lcom/jingdong/common/auth/CharacterDecoder;
.source "BASE64Decoder.java"


# static fields
.field private static final pem_array:[C

.field private static final pem_convert_array:[B


# instance fields
.field decode_buffer:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 78
    const/16 v1, 0x40

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/jingdong/common/auth/BASE64Decoder;->pem_array:[C

    .line 91
    const/16 v1, 0x100

    new-array v1, v1, [B

    sput-object v1, Lcom/jingdong/common/auth/BASE64Decoder;->pem_convert_array:[B

    .line 95
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/jingdong/common/auth/BASE64Decoder;->pem_array:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 98
    :goto_1
    const/16 v1, 0xff

    if-lt v0, v1, :cond_1

    .line 101
    return-void

    .line 96
    :cond_0
    sget-object v1, Lcom/jingdong/common/auth/BASE64Decoder;->pem_convert_array:[B

    sget-object v2, Lcom/jingdong/common/auth/BASE64Decoder;->pem_array:[C

    aget-char v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_1
    sget-object v1, Lcom/jingdong/common/auth/BASE64Decoder;->pem_convert_array:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
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
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/jingdong/common/auth/CharacterDecoder;-><init>()V

    .line 102
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jingdong/common/auth/BASE64Decoder;->decode_buffer:[B

    .line 62
    return-void
.end method


# virtual methods
.method protected bytesPerAtom()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x4

    return v0
.end method

.method protected bytesPerLine()I
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x48

    return v0
.end method

.method protected decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    .locals 12
    .parameter "inStream"
    .parameter "outStream"
    .parameter "rem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 111
    const/4 v0, -0x1

    .local v0, a:B
    const/4 v1, -0x1

    .local v1, b:B
    const/4 v2, -0x1

    .local v2, c:B
    const/4 v3, -0x1

    .line 113
    .local v3, d:B
    if-ge p3, v7, :cond_0

    .line 114
    new-instance v5, Lcom/jingdong/common/auth/CEFormatException;

    const-string v6, "BASE64Decoder: Not enough bytes for an atom."

    invoke-direct {v5, v6}, Lcom/jingdong/common/auth/CEFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 117
    :cond_0
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v4

    .line 118
    .local v4, i:I
    if-ne v4, v9, :cond_1

    .line 119
    new-instance v5, Lcom/jingdong/common/auth/CEStreamExhausted;

    invoke-direct {v5}, Lcom/jingdong/common/auth/CEStreamExhausted;-><init>()V

    throw v5

    .line 121
    :cond_1
    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    .line 122
    iget-object v5, p0, Lcom/jingdong/common/auth/BASE64Decoder;->decode_buffer:[B

    int-to-byte v6, v4

    aput-byte v6, v5, v10

    .line 124
    iget-object v5, p0, Lcom/jingdong/common/auth/BASE64Decoder;->decode_buffer:[B

    add-int/lit8 v6, p3, -0x1

    invoke-virtual {p0, p1, v5, v11, v6}, Lcom/jingdong/common/auth/BASE64Decoder;->readFully(Ljava/io/InputStream;[BII)I

    move-result v4

    .line 125
    if-ne v4, v9, :cond_2

    .line 126
    new-instance v5, Lcom/jingdong/common/auth/CEStreamExhausted;

    invoke-direct {v5}, Lcom/jingdong/common/auth/CEStreamExhausted;-><init>()V

    throw v5

    .line 129
    :cond_2
    if-le p3, v8, :cond_3

    iget-object v5, p0, Lcom/jingdong/common/auth/BASE64Decoder;->decode_buffer:[B

    aget-byte v5, v5, v8

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_3

    .line 130
    const/4 p3, 0x3

    .line 132
    :cond_3
    if-le p3, v7, :cond_4

    iget-object v5, p0, Lcom/jingdong/common/auth/BASE64Decoder;->decode_buffer:[B

    aget-byte v5, v5, v7

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_4

    .line 133
    const/4 p3, 0x2

    .line 135
    :cond_4
    packed-switch p3, :pswitch_data_0

    .line 148
    :goto_0
    packed-switch p3, :pswitch_data_1

    .line 162
    :goto_1
    return-void

    .line 137
    :pswitch_0
    sget-object v5, Lcom/jingdong/common/auth/BASE64Decoder;->pem_convert_array:[B

    iget-object v6, p0, Lcom/jingdong/common/auth/BASE64Decoder;->decode_buffer:[B

    aget-byte v6, v6, v8

    and-int/lit16 v6, v6, 0xff

    aget-byte v3, v5, v6

    .line 140
    :pswitch_1
    sget-object v5, Lcom/jingdong/common/auth/BASE64Decoder;->pem_convert_array:[B

    iget-object v6, p0, Lcom/jingdong/common/auth/BASE64Decoder;->decode_buffer:[B

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    aget-byte v2, v5, v6

    .line 143
    :pswitch_2
    sget-object v5, Lcom/jingdong/common/auth/BASE64Decoder;->pem_convert_array:[B

    iget-object v6, p0, Lcom/jingdong/common/auth/BASE64Decoder;->decode_buffer:[B

    aget-byte v6, v6, v11

    and-int/lit16 v6, v6, 0xff

    aget-byte v1, v5, v6

    .line 144
    sget-object v5, Lcom/jingdong/common/auth/BASE64Decoder;->pem_convert_array:[B

    iget-object v6, p0, Lcom/jingdong/common/auth/BASE64Decoder;->decode_buffer:[B

    aget-byte v6, v6, v10

    and-int/lit16 v6, v6, 0xff

    aget-byte v0, v5, v6

    goto :goto_0

    .line 150
    :pswitch_3
    shl-int/lit8 v5, v0, 0x2

    and-int/lit16 v5, v5, 0xfc

    ushr-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0x3

    or-int/2addr v5, v6

    int-to-byte v5, v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 153
    :pswitch_4
    shl-int/lit8 v5, v0, 0x2

    and-int/lit16 v5, v5, 0xfc

    ushr-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0x3

    or-int/2addr v5, v6

    int-to-byte v5, v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    .line 154
    shl-int/lit8 v5, v1, 0x4

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v6, v2, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 157
    :pswitch_5
    shl-int/lit8 v5, v0, 0x2

    and-int/lit16 v5, v5, 0xfc

    ushr-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0x3

    or-int/2addr v5, v6

    int-to-byte v5, v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    .line 158
    shl-int/lit8 v5, v1, 0x4

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v6, v2, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    .line 159
    shl-int/lit8 v5, v2, 0x6

    and-int/lit16 v5, v5, 0xc0

    and-int/lit8 v6, v3, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 148
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
