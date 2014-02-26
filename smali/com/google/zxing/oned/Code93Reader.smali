.class public final Lcom/google/zxing/oned/Code93Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code93Reader.java"


# static fields
.field private static final ALPHABET:[C = null

.field private static final ALPHABET_STRING:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

.field private static final ASTERISK_ENCODING:I

.field private static final CHARACTER_ENCODINGS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    .line 46
    const/16 v0, 0x30

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    .line 54
    sget-object v0, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    const/16 v1, 0x2f

    aget v0, v0, v1

    sput v0, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    return-void

    .line 46
    :array_0
    .array-data 0x4
        0x14t 0x1t 0x0t 0x0t
        0x48t 0x1t 0x0t 0x0t
        0x44t 0x1t 0x0t 0x0t
        0x42t 0x1t 0x0t 0x0t
        0x28t 0x1t 0x0t 0x0t
        0x24t 0x1t 0x0t 0x0t
        0x22t 0x1t 0x0t 0x0t
        0x50t 0x1t 0x0t 0x0t
        0x12t 0x1t 0x0t 0x0t
        0xat 0x1t 0x0t 0x0t
        0xa8t 0x1t 0x0t 0x0t
        0xa4t 0x1t 0x0t 0x0t
        0xa2t 0x1t 0x0t 0x0t
        0x94t 0x1t 0x0t 0x0t
        0x92t 0x1t 0x0t 0x0t
        0x8at 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
        0x64t 0x1t 0x0t 0x0t
        0x62t 0x1t 0x0t 0x0t
        0x34t 0x1t 0x0t 0x0t
        0x1at 0x1t 0x0t 0x0t
        0x58t 0x1t 0x0t 0x0t
        0x4ct 0x1t 0x0t 0x0t
        0x46t 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x16t 0x1t 0x0t 0x0t
        0xb4t 0x1t 0x0t 0x0t
        0xb2t 0x1t 0x0t 0x0t
        0xact 0x1t 0x0t 0x0t
        0xa6t 0x1t 0x0t 0x0t
        0x96t 0x1t 0x0t 0x0t
        0x9at 0x1t 0x0t 0x0t
        0x6ct 0x1t 0x0t 0x0t
        0x66t 0x1t 0x0t 0x0t
        0x36t 0x1t 0x0t 0x0t
        0x3at 0x1t 0x0t 0x0t
        0x2et 0x1t 0x0t 0x0t
        0xd4t 0x1t 0x0t 0x0t
        0xd2t 0x1t 0x0t 0x0t
        0xcat 0x1t 0x0t 0x0t
        0x6et 0x1t 0x0t 0x0t
        0x76t 0x1t 0x0t 0x0t
        0xaet 0x1t 0x0t 0x0t
        0x26t 0x1t 0x0t 0x0t
        0xdat 0x1t 0x0t 0x0t
        0xd6t 0x1t 0x0t 0x0t
        0x32t 0x1t 0x0t 0x0t
        0x5et 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    return-void
.end method

.method private static checkChecksums(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 244
    .local v0, length:I
    add-int/lit8 v1, v0, -0x2

    const/16 v2, 0x14

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(Ljava/lang/CharSequence;II)V

    .line 245
    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0xf

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(Ljava/lang/CharSequence;II)V

    .line 246
    return-void
.end method

.method private static checkOneChecksum(Ljava/lang/CharSequence;II)V
    .locals 6
    .parameter "result"
    .parameter "checkPosition"
    .parameter "weightMax"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 250
    const/4 v2, 0x1

    .line 251
    .local v2, weight:I
    const/4 v1, 0x0

    .line 252
    .local v1, total:I
    add-int/lit8 v0, p1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 253
    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 254
    add-int/lit8 v2, v2, 0x1

    if-le v2, p2, :cond_0

    .line 255
    const/4 v2, 0x1

    .line 252
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 258
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    sget-object v4, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    rem-int/lit8 v5, v1, 0x2f

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_2

    .line 259
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v3

    throw v3

    .line 261
    :cond_2
    return-void
.end method

.method private static decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 9
    .parameter "encoded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5a

    const/16 v7, 0x41

    .line 184
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 185
    .local v4, length:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 186
    .local v1, decoded:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_8

    .line 187
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 188
    .local v0, c:C
    const/16 v6, 0x61

    if-lt v0, v6, :cond_7

    const/16 v6, 0x64

    if-gt v0, v6, :cond_7

    .line 189
    add-int/lit8 v6, v4, -0x1

    if-lt v3, v6, :cond_0

    .line 190
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 192
    :cond_0
    add-int/lit8 v6, v3, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 193
    .local v5, next:C
    const/4 v2, 0x0

    .line 194
    .local v2, decodedChar:C
    packed-switch v0, :pswitch_data_0

    .line 232
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    add-int/lit8 v3, v3, 0x1

    .line 186
    .end local v2           #decodedChar:C
    .end local v5           #next:C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    .restart local v2       #decodedChar:C
    .restart local v5       #next:C
    :pswitch_0
    if-lt v5, v7, :cond_1

    if-gt v5, v8, :cond_1

    .line 198
    add-int/lit8 v6, v5, 0x20

    int-to-char v2, v6

    goto :goto_1

    .line 200
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 205
    :pswitch_1
    if-lt v5, v7, :cond_2

    if-gt v5, v8, :cond_2

    .line 206
    add-int/lit8 v6, v5, -0x40

    int-to-char v2, v6

    goto :goto_1

    .line 208
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 213
    :pswitch_2
    if-lt v5, v7, :cond_3

    const/16 v6, 0x45

    if-gt v5, v6, :cond_3

    .line 214
    add-int/lit8 v6, v5, -0x26

    int-to-char v2, v6

    goto :goto_1

    .line 215
    :cond_3
    const/16 v6, 0x46

    if-lt v5, v6, :cond_4

    const/16 v6, 0x57

    if-gt v5, v6, :cond_4

    .line 216
    add-int/lit8 v6, v5, -0xb

    int-to-char v2, v6

    goto :goto_1

    .line 218
    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 223
    :pswitch_3
    if-lt v5, v7, :cond_5

    const/16 v6, 0x4f

    if-gt v5, v6, :cond_5

    .line 224
    add-int/lit8 v6, v5, -0x20

    int-to-char v2, v6

    goto :goto_1

    .line 225
    :cond_5
    if-ne v5, v8, :cond_6

    .line 226
    const/16 v2, 0x3a

    goto :goto_1

    .line 228
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 236
    .end local v2           #decodedChar:C
    .end local v5           #next:C
    :cond_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 239
    .end local v0           #c:C
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private static findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I
    .locals 13
    .parameter "row"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    .line 116
    .local v7, width:I
    invoke-virtual {p0, v9}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v6

    .line 118
    .local v6, rowOffset:I
    const/4 v0, 0x0

    .line 119
    .local v0, counterPosition:I
    const/4 v10, 0x6

    new-array v1, v10, [I

    .line 120
    .local v1, counters:[I
    move v5, v6

    .line 121
    .local v5, patternStart:I
    const/4 v3, 0x0

    .line 122
    .local v3, isWhite:Z
    array-length v4, v1

    .line 124
    .local v4, patternLength:I
    move v2, v6

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_4

    .line 125
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    xor-int/2addr v10, v3

    if-eqz v10, :cond_0

    .line 126
    aget v10, v1, v0

    add-int/lit8 v10, v10, 0x1

    aput v10, v1, v0

    .line 124
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_0
    add-int/lit8 v10, v4, -0x1

    if-ne v0, v10, :cond_2

    .line 129
    invoke-static {v1}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v10

    sget v11, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    if-ne v10, v11, :cond_1

    .line 130
    new-array v10, v12, [I

    aput v5, v10, v9

    aput v2, v10, v8

    return-object v10

    .line 132
    :cond_1
    aget v10, v1, v9

    aget v11, v1, v8

    add-int/2addr v10, v11

    add-int/2addr v5, v10

    .line 133
    add-int/lit8 v10, v4, -0x2

    invoke-static {v1, v12, v1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    add-int/lit8 v10, v4, -0x2

    aput v9, v1, v10

    .line 135
    add-int/lit8 v10, v4, -0x1

    aput v9, v1, v10

    .line 136
    add-int/lit8 v0, v0, -0x1

    .line 140
    :goto_2
    aput v8, v1, v0

    .line 141
    if-nez v3, :cond_3

    move v3, v8

    :goto_3
    goto :goto_1

    .line 138
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v3, v9

    .line 141
    goto :goto_3

    .line 144
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8
.end method

.method private static patternToChar(I)C
    .locals 2
    .parameter "pattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 176
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_0

    .line 177
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    aget-char v1, v1, v0

    return v1

    .line 175
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method private static toPattern([I)I
    .locals 13
    .parameter "counters"

    .prologue
    .line 148
    array-length v6, p0

    .line 149
    .local v6, max:I
    const/4 v10, 0x0

    .line 150
    .local v10, sum:I
    move-object v0, p0

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget v1, v0, v3

    .line 151
    .local v1, counter:I
    add-int/2addr v10, v1

    .line 150
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
    .end local v1           #counter:I
    :cond_0
    const/4 v7, 0x0

    .line 154
    .local v7, pattern:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v6, :cond_3

    .line 155
    aget v11, p0, v2

    shl-int/lit8 v11, v11, 0x8

    mul-int/lit8 v11, v11, 0x9

    div-int v8, v11, v10

    .line 156
    .local v8, scaledShifted:I
    shr-int/lit8 v9, v8, 0x8

    .line 157
    .local v9, scaledUnshifted:I
    and-int/lit16 v11, v8, 0xff

    const/16 v12, 0x7f

    if-le v11, v12, :cond_1

    .line 158
    add-int/lit8 v9, v9, 0x1

    .line 160
    :cond_1
    const/4 v11, 0x1

    if-lt v9, v11, :cond_2

    const/4 v11, 0x4

    if-le v9, v11, :cond_4

    .line 161
    :cond_2
    const/4 v7, -0x1

    .line 171
    .end local v7           #pattern:I
    .end local v8           #scaledShifted:I
    .end local v9           #scaledUnshifted:I
    :cond_3
    return v7

    .line 163
    .restart local v7       #pattern:I
    .restart local v8       #scaledShifted:I
    .restart local v9       #scaledUnshifted:I
    :cond_4
    and-int/lit8 v11, v2, 0x1

    if-nez v11, :cond_5

    .line 164
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    if-ge v4, v9, :cond_6

    .line 165
    shl-int/lit8 v11, v7, 0x1

    or-int/lit8 v7, v11, 0x1

    .line 164
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 168
    .end local v4           #j:I
    :cond_5
    shl-int/2addr v7, v9

    .line 154
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 26
    .parameter "rowNumber"
    .parameter "row"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 60
    .local p3, hints:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-static/range {p2 .. p2}, Lcom/google/zxing/oned/Code93Reader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v19

    .line 62
    .local v19, start:[I
    const/16 v20, 0x1

    aget v20, v19, v20

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v14

    .line 63
    .local v14, nextStart:I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    .line 65
    .local v9, end:I
    new-instance v16, Ljava/lang/StringBuilder;

    const/16 v20, 0x14

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 66
    .local v16, result:Ljava/lang/StringBuilder;
    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v7, v0, [I

    .line 70
    .local v7, counters:[I
    :cond_0
    move-object/from16 v0, p2

    invoke-static {v0, v14, v7}, Lcom/google/zxing/oned/Code93Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 71
    invoke-static {v7}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v15

    .line 72
    .local v15, pattern:I
    if-gez v15, :cond_1

    .line 73
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v20

    throw v20

    .line 75
    :cond_1
    invoke-static {v15}, Lcom/google/zxing/oned/Code93Reader;->patternToChar(I)C

    move-result v8

    .line 76
    .local v8, decodedChar:C
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    move v11, v14

    .line 78
    .local v11, lastStart:I
    move-object v5, v7

    .local v5, arr$:[I
    array-length v13, v5

    .local v13, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v13, :cond_2

    aget v6, v5, v10

    .line 79
    .local v6, counter:I
    add-int/2addr v14, v6

    .line 78
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 82
    .end local v6           #counter:I
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v14

    .line 83
    const/16 v20, 0x2a

    move/from16 v0, v20

    if-ne v8, v0, :cond_0

    .line 84
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 87
    if-eq v14, v9, :cond_3

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v20

    if-nez v20, :cond_4

    .line 88
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v20

    throw v20

    .line 91
    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 93
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v20

    throw v20

    .line 96
    :cond_5
    invoke-static/range {v16 .. v16}, Lcom/google/zxing/oned/Code93Reader;->checkChecksums(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 100
    invoke-static/range {v16 .. v16}, Lcom/google/zxing/oned/Code93Reader;->decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 102
    .local v17, resultString:Ljava/lang/String;
    const/16 v20, 0x1

    aget v20, v19, v20

    const/16 v21, 0x0

    aget v21, v19, v21

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v12, v20, v21

    .line 103
    .local v12, left:F
    add-int v20, v14, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v18, v20, v21

    .line 104
    .local v18, right:F
    new-instance v20, Lcom/google/zxing/Result;

    const/16 v21, 0x0

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v12, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v24, v22, v23

    const/16 v23, 0x1

    new-instance v24, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v24, v22, v23

    sget-object v23, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v20
.end method
