.class public final Lcom/jd/common/compress/QuickLZ;
.super Ljava/lang/Object;
.source "QuickLZ.java"


# static fields
.field private static final CWORD_LEN:I = 0x4

.field private static final DEFAULT_HEADERLEN:I = 0x9

.field private static final HASH_VALUES:I = 0x1000

.field private static final MINOFFSET:I = 0x2

.field private static final UNCOMPRESSED_END:I = 0x4

.field private static final UNCONDITIONAL_MATCHLEN:I = 0x6


# instance fields
.field public final QLZ_COMPRESSION_LEVEL:I

.field public final QLZ_MEMORY_SAFE:I

.field public final QLZ_STREAMING_BUFFER:I

.field public final QLZ_VERSION_MAJOR:I

.field public final QLZ_VERSION_MINOR:I

.field public final QLZ_VERSION_REVISION:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v1, p0, Lcom/jd/common/compress/QuickLZ;->QLZ_COMPRESSION_LEVEL:I

    .line 20
    iput v0, p0, Lcom/jd/common/compress/QuickLZ;->QLZ_STREAMING_BUFFER:I

    .line 21
    iput v0, p0, Lcom/jd/common/compress/QuickLZ;->QLZ_MEMORY_SAFE:I

    .line 23
    iput v1, p0, Lcom/jd/common/compress/QuickLZ;->QLZ_VERSION_MAJOR:I

    .line 24
    const/4 v0, 0x4

    iput v0, p0, Lcom/jd/common/compress/QuickLZ;->QLZ_VERSION_MINOR:I

    .line 25
    iput v1, p0, Lcom/jd/common/compress/QuickLZ;->QLZ_VERSION_REVISION:I

    .line 16
    return-void
.end method

.method public static compress([B)[B
    .locals 29
    .parameter "source"

    .prologue
    .line 57
    const/16 v24, 0x0

    .line 58
    .local v24, src:I
    const/16 v17, 0x9

    .line 59
    .local v17, headerlen:I
    add-int/lit8 v11, v17, 0x4

    .line 60
    .local v11, dst:I
    const-wide v7, 0x80000000L

    .line 61
    .local v7, cword_val:J
    move/from16 v6, v17

    .line 62
    .local v6, cword_ptr:I
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    add-int/lit16 v0, v0, 0x190

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v10, v0, [B

    .line 63
    .local v10, destination:[B
    const/16 v25, 0x1000

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 64
    .local v16, hashtable:[I
    const/16 v25, 0x1000

    move/from16 v0, v25

    new-array v5, v0, [I

    .line 65
    .local v5, cachetable:[I
    const/16 v25, 0x1000

    move/from16 v0, v25

    new-array v15, v0, [B

    .line 67
    .local v15, hash_counter:[B
    const/4 v13, 0x0

    .line 68
    .local v13, fetch:I
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x6

    add-int/lit8 v25, v25, -0x4

    add-int/lit8 v18, v25, -0x1

    .line 69
    .local v18, last_matchstart:I
    const/16 v19, 0x0

    .line 71
    .local v19, lits:I
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v25, v0

    if-nez v25, :cond_0

    .line 72
    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v9, v0, [B

    .line 190
    :goto_0
    return-object v9

    .line 74
    :cond_0
    move/from16 v0, v24

    move/from16 v1, v18

    if-gt v0, v1, :cond_1

    .line 75
    const/16 v25, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/jd/common/compress/QuickLZ;->fastread([BII)J

    move-result-wide v25

    move-wide/from16 v0, v25

    long-to-int v13, v0

    .line 77
    :cond_1
    :goto_1
    move/from16 v0, v24

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 165
    :goto_2
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_c

    .line 180
    :goto_3
    const-wide/16 v25, 0x1

    and-long v25, v25, v7

    const-wide/16 v27, 0x1

    cmp-long v25, v25, v27

    if-nez v25, :cond_e

    .line 184
    const/16 v25, 0x1

    ushr-long v25, v7, v25

    const-wide v27, 0x80000000L

    or-long v25, v25, v27

    const/16 v27, 0x4

    move-wide/from16 v0, v25

    move/from16 v2, v27

    invoke-static {v10, v6, v0, v1, v2}, Lcom/jd/common/compress/QuickLZ;->fastwrite([BIJI)V

    .line 185
    const/16 v25, 0x0

    const/16 v26, 0x3

    aput-byte v26, v10, v25

    .line 186
    const/16 v25, 0x1

    int-to-long v0, v11

    move-wide/from16 v26, v0

    const/16 v28, 0x4

    move/from16 v0, v25

    move-wide/from16 v1, v26

    move/from16 v3, v28

    invoke-static {v10, v0, v1, v2, v3}, Lcom/jd/common/compress/QuickLZ;->fastwrite([BIJI)V

    .line 187
    const/16 v25, 0x5

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const/16 v28, 0x4

    move/from16 v0, v25

    move-wide/from16 v1, v26

    move/from16 v3, v28

    invoke-static {v10, v0, v1, v2, v3}, Lcom/jd/common/compress/QuickLZ;->fastwrite([BIJI)V

    .line 188
    new-array v9, v11, [B

    .line 189
    .local v9, d2:[B
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v10, v0, v9, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 79
    .end local v9           #d2:[B
    :cond_2
    const-wide/16 v25, 0x1

    and-long v25, v25, v7

    const-wide/16 v27, 0x1

    cmp-long v25, v25, v27

    if-nez v25, :cond_4

    .line 81
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v25, v0

    shr-int/lit8 v25, v25, 0x2

    mul-int/lit8 v25, v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_3

    shr-int/lit8 v25, v24, 0x5

    sub-int v25, v24, v25

    move/from16 v0, v25

    if-le v11, v0, :cond_3

    .line 83
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x9

    move/from16 v0, v25

    new-array v9, v0, [B

    .line 84
    .restart local v9       #d2:[B
    const/16 v25, 0x0

    const/16 v26, 0x2

    aput-byte v26, v9, v25

    .line 85
    const/16 v25, 0x1

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v26, v0

    add-int v26, v26, v17

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const/16 v28, 0x4

    move/from16 v0, v25

    move-wide/from16 v1, v26

    move/from16 v3, v28

    invoke-static {v9, v0, v1, v2, v3}, Lcom/jd/common/compress/QuickLZ;->fastwrite([BIJI)V

    .line 86
    const/16 v25, 0x5

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const/16 v28, 0x4

    move/from16 v0, v25

    move-wide/from16 v1, v26

    move/from16 v3, v28

    invoke-static {v9, v0, v1, v2, v3}, Lcom/jd/common/compress/QuickLZ;->fastwrite([BIJI)V

    .line 87
    const/16 v25, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v17

    move/from16 v3, v26

    invoke-static {v0, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 91
    .end local v9           #d2:[B
    :cond_3
    const/16 v25, 0x1

    ushr-long v25, v7, v25

    const-wide v27, 0x80000000L

    or-long v25, v25, v27

    const/16 v27, 0x4

    move-wide/from16 v0, v25

    move/from16 v2, v27

    invoke-static {v10, v6, v0, v1, v2}, Lcom/jd/common/compress/QuickLZ;->fastwrite([BIJI)V

    .line 92
    move v6, v11

    .line 93
    add-int/lit8 v11, v11, 0x4

    .line 94
    const-wide v7, 0x80000000L

    .line 97
    :cond_4
    ushr-int/lit8 v25, v13, 0xc

    xor-int v25, v25, v13

    move/from16 v0, v25

    and-int/lit16 v14, v0, 0xfff

    .line 98
    .local v14, hash:I
    aget v21, v16, v14

    .line 99
    .local v21, o:I
    aget v25, v5, v14

    xor-int v4, v25, v13

    .line 101
    .local v4, cache:I
    aput v13, v5, v14

    .line 102
    aput v24, v16, v14

    .line 104
    if-nez v4, :cond_b

    aget-byte v25, v15, v14

    if-eqz v25, :cond_b

    sub-int v25, v24, v21

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_5

    add-int/lit8 v25, v21, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    const/16 v25, 0x3

    move/from16 v0, v19

    move/from16 v1, v25

    if-lt v0, v1, :cond_b

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_b

    aget-byte v25, p0, v24

    add-int/lit8 v26, v24, -0x3

    aget-byte v26, p0, v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    aget-byte v25, p0, v24

    add-int/lit8 v26, v24, -0x2

    aget-byte v26, p0, v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    aget-byte v25, p0, v24

    add-int/lit8 v26, v24, -0x1

    aget-byte v26, p0, v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    aget-byte v25, p0, v24

    add-int/lit8 v26, v24, 0x1

    aget-byte v26, p0, v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    aget-byte v25, p0, v24

    add-int/lit8 v26, v24, 0x2

    aget-byte v26, p0, v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 106
    :cond_5
    const/16 v25, 0x1

    ushr-long v25, v7, v25

    const-wide v27, 0x80000000L

    or-long v7, v25, v27

    .line 107
    add-int/lit8 v25, v21, 0x3

    aget-byte v25, p0, v25

    add-int/lit8 v26, v24, 0x3

    aget-byte v26, p0, v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_6

    .line 109
    shl-int/lit8 v25, v14, 0x4

    or-int/lit8 v12, v25, 0x1

    .line 110
    .local v12, f:I
    add-int/lit8 v25, v11, 0x0

    ushr-int/lit8 v26, v12, 0x0

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v10, v25

    .line 111
    add-int/lit8 v25, v11, 0x1

    ushr-int/lit8 v26, v12, 0x8

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v10, v25

    .line 112
    add-int/lit8 v24, v24, 0x3

    .line 113
    add-int/lit8 v11, v11, 0x2

    .line 150
    :goto_4
    const/16 v19, 0x0

    .line 151
    const/16 v25, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/jd/common/compress/QuickLZ;->fastread([BII)J

    move-result-wide v25

    move-wide/from16 v0, v25

    long-to-int v13, v0

    goto/16 :goto_1

    .line 117
    .end local v12           #f:I
    :cond_6
    move/from16 v22, v24

    .line 118
    .local v22, old_src:I
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    sub-int v25, v25, v24

    add-int/lit8 v25, v25, 0x1

    add-int/lit8 v25, v25, -0x1

    const/16 v26, 0xff

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_8

    const/16 v23, 0xff

    .line 120
    .local v23, remaining:I
    :goto_5
    add-int/lit8 v24, v24, 0x4

    .line 121
    add-int v25, v21, v24

    sub-int v25, v25, v22

    aget-byte v25, p0, v25

    aget-byte v26, p0, v24

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 123
    add-int/lit8 v24, v24, 0x1

    .line 124
    add-int v25, v21, v24

    sub-int v25, v25, v22

    aget-byte v25, p0, v25

    aget-byte v26, p0, v24

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 126
    add-int/lit8 v24, v24, 0x1

    .line 127
    :goto_6
    sub-int v25, v24, v22

    add-int v25, v25, v21

    aget-byte v25, p0, v25

    aget-byte v26, p0, v24

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    sub-int v25, v24, v22

    move/from16 v0, v25

    move/from16 v1, v23

    if-lt v0, v1, :cond_9

    .line 132
    :cond_7
    sub-int v20, v24, v22

    .line 134
    .local v20, matchlen:I
    shl-int/lit8 v14, v14, 0x4

    .line 135
    const/16 v25, 0x12

    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    .line 137
    add-int/lit8 v25, v20, -0x2

    or-int v12, v14, v25

    .line 139
    .restart local v12       #f:I
    add-int/lit8 v25, v11, 0x0

    ushr-int/lit8 v26, v12, 0x0

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v10, v25

    .line 140
    add-int/lit8 v25, v11, 0x1

    ushr-int/lit8 v26, v12, 0x8

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v10, v25

    .line 141
    add-int/lit8 v11, v11, 0x2

    goto/16 :goto_4

    .line 118
    .end local v12           #f:I
    .end local v20           #matchlen:I
    .end local v23           #remaining:I
    :cond_8
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    sub-int v25, v25, v24

    add-int/lit8 v25, v25, 0x1

    add-int/lit8 v23, v25, -0x1

    goto :goto_5

    .line 128
    .restart local v23       #remaining:I
    :cond_9
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 145
    .restart local v20       #matchlen:I
    :cond_a
    shl-int/lit8 v25, v20, 0x10

    or-int v12, v14, v25

    .line 146
    .restart local v12       #f:I
    int-to-long v0, v12

    move-wide/from16 v25, v0

    const/16 v27, 0x3

    move-wide/from16 v0, v25

    move/from16 v2, v27

    invoke-static {v10, v11, v0, v1, v2}, Lcom/jd/common/compress/QuickLZ;->fastwrite([BIJI)V

    .line 147
    add-int/lit8 v11, v11, 0x3

    goto/16 :goto_4

    .line 155
    .end local v12           #f:I
    .end local v20           #matchlen:I
    .end local v22           #old_src:I
    .end local v23           #remaining:I
    :cond_b
    add-int/lit8 v19, v19, 0x1

    .line 156
    const/16 v25, 0x1

    aput-byte v25, v15, v14

    .line 157
    aget-byte v25, p0, v24

    aput-byte v25, v10, v11

    .line 158
    const/16 v25, 0x1

    ushr-long v7, v7, v25

    .line 159
    add-int/lit8 v24, v24, 0x1

    .line 160
    add-int/lit8 v11, v11, 0x1

    .line 161
    ushr-int/lit8 v25, v13, 0x8

    const v26, 0xffff

    and-int v25, v25, v26

    add-int/lit8 v26, v24, 0x2

    aget-byte v26, p0, v26

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x10

    or-int v13, v25, v26

    goto/16 :goto_1

    .line 167
    .end local v4           #cache:I
    .end local v14           #hash:I
    .end local v21           #o:I
    :cond_c
    const-wide/16 v25, 0x1

    and-long v25, v25, v7

    const-wide/16 v27, 0x1

    cmp-long v25, v25, v27

    if-nez v25, :cond_d

    .line 169
    const/16 v25, 0x1

    ushr-long v25, v7, v25

    const-wide v27, 0x80000000L

    or-long v25, v25, v27

    const/16 v27, 0x4

    move-wide/from16 v0, v25

    move/from16 v2, v27

    invoke-static {v10, v6, v0, v1, v2}, Lcom/jd/common/compress/QuickLZ;->fastwrite([BIJI)V

    .line 170
    move v6, v11

    .line 171
    add-int/lit8 v11, v11, 0x4

    .line 172
    const-wide v7, 0x80000000L

    .line 175
    :cond_d
    aget-byte v25, p0, v24

    aput-byte v25, v10, v11

    .line 176
    add-int/lit8 v24, v24, 0x1

    .line 177
    add-int/lit8 v11, v11, 0x1

    .line 178
    const/16 v25, 0x1

    ushr-long v7, v7, v25

    goto/16 :goto_2

    .line 182
    :cond_e
    const/16 v25, 0x1

    ushr-long v7, v7, v25

    goto/16 :goto_3
.end method

.method public static decompress([B)[B
    .locals 25
    .parameter "source"

    .prologue
    .line 245
    invoke-static/range {p0 .. p0}, Lcom/jd/common/compress/QuickLZ;->sizeDecompressed([B)J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v19, v0

    .line 247
    .local v19, size:I
    invoke-static/range {p0 .. p0}, Lcom/jd/common/compress/QuickLZ;->headerLen([B)I

    move-result v20

    .line 248
    .local v20, src:I
    const/4 v8, 0x0

    .line 249
    .local v8, dst:I
    const-wide/16 v4, 0x1

    .line 250
    .local v4, cword_val:J
    move/from16 v0, v19

    new-array v7, v0, [B

    .line 251
    .local v7, destination:[B
    const/16 v21, 0x1000

    move/from16 v0, v21

    new-array v13, v0, [I

    .line 252
    .local v13, hashtable:[I
    const/16 v21, 0x1000

    move/from16 v0, v21

    new-array v12, v0, [B

    .line 253
    .local v12, hash_counter:[B
    add-int/lit8 v21, v19, -0x6

    add-int/lit8 v21, v21, -0x4

    add-int/lit8 v16, v21, -0x1

    .line 254
    .local v16, last_matchstart:I
    const/4 v15, -0x1

    .line 256
    .local v15, last_hashed:I
    const/4 v9, 0x0

    .line 258
    .local v9, fetch:I
    const/16 v21, 0x0

    aget-byte v21, p0, v21

    and-int/lit8 v21, v21, 0x1

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 260
    move/from16 v0, v19

    new-array v6, v0, [B

    .line 261
    .local v6, d2:[B
    invoke-static/range {p0 .. p0}, Lcom/jd/common/compress/QuickLZ;->headerLen([B)I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v19

    invoke-static {v0, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    .end local v6           #d2:[B
    :goto_0
    return-object v6

    .line 267
    :cond_0
    :goto_1
    const-wide/16 v21, 0x1

    cmp-long v21, v4, v21

    if-nez v21, :cond_1

    .line 269
    const/16 v21, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/jd/common/compress/QuickLZ;->fastread([BII)J

    move-result-wide v4

    .line 270
    add-int/lit8 v20, v20, 0x4

    .line 271
    move/from16 v0, v16

    if-gt v8, v0, :cond_1

    .line 272
    const/16 v21, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/jd/common/compress/QuickLZ;->fastread([BII)J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-int v9, v0

    .line 275
    :cond_1
    const-wide/16 v21, 0x1

    and-long v21, v21, v4

    const-wide/16 v23, 0x1

    cmp-long v21, v21, v23

    if-nez v21, :cond_5

    .line 280
    const/16 v21, 0x1

    ushr-long v4, v4, v21

    .line 281
    ushr-int/lit8 v21, v9, 0x4

    move/from16 v0, v21

    and-int/lit16 v11, v0, 0xfff

    .line 282
    .local v11, hash:I
    aget v18, v13, v11

    .line 284
    .local v18, offset2:I
    and-int/lit8 v21, v9, 0xf

    if-eqz v21, :cond_2

    .line 286
    and-int/lit8 v21, v9, 0xf

    add-int/lit8 v17, v21, 0x2

    .line 287
    .local v17, matchlen:I
    add-int/lit8 v20, v20, 0x2

    .line 295
    :goto_2
    add-int/lit8 v21, v8, 0x0

    add-int/lit8 v22, v18, 0x0

    aget-byte v22, v7, v22

    aput-byte v22, v7, v21

    .line 296
    add-int/lit8 v21, v8, 0x1

    add-int/lit8 v22, v18, 0x1

    aget-byte v22, v7, v22

    aput-byte v22, v7, v21

    .line 297
    add-int/lit8 v21, v8, 0x2

    add-int/lit8 v22, v18, 0x2

    aget-byte v22, v7, v22

    aput-byte v22, v7, v21

    .line 299
    const/4 v14, 0x3

    .local v14, i:I
    :goto_3
    move/from16 v0, v17

    if-lt v14, v0, :cond_3

    .line 303
    add-int v8, v8, v17

    .line 305
    add-int/lit8 v21, v15, 0x1

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v7, v0, v1}, Lcom/jd/common/compress/QuickLZ;->fastread([BII)J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-int v9, v0

    .line 306
    :goto_4
    sub-int v21, v8, v17

    move/from16 v0, v21

    if-lt v15, v0, :cond_4

    .line 314
    add-int/lit8 v15, v8, -0x1

    .line 315
    const/16 v21, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/jd/common/compress/QuickLZ;->fastread([BII)J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-int v9, v0

    goto/16 :goto_1

    .line 291
    .end local v14           #i:I
    .end local v17           #matchlen:I
    :cond_2
    add-int/lit8 v21, v20, 0x2

    aget-byte v21, p0, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 292
    .restart local v17       #matchlen:I
    add-int/lit8 v20, v20, 0x3

    goto :goto_2

    .line 301
    .restart local v14       #i:I
    :cond_3
    add-int v21, v8, v14

    add-int v22, v18, v14

    aget-byte v22, v7, v22

    aput-byte v22, v7, v21

    .line 299
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 308
    :cond_4
    add-int/lit8 v15, v15, 0x1

    .line 309
    ushr-int/lit8 v21, v9, 0xc

    xor-int v21, v21, v9

    move/from16 v0, v21

    and-int/lit16 v11, v0, 0xfff

    .line 310
    aput v15, v13, v11

    .line 311
    const/16 v21, 0x1

    aput-byte v21, v12, v11

    .line 312
    ushr-int/lit8 v21, v9, 0x8

    const v22, 0xffff

    and-int v21, v21, v22

    add-int/lit8 v22, v15, 0x3

    aget-byte v22, v7, v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    shl-int/lit8 v22, v22, 0x10

    or-int v9, v21, v22

    goto :goto_4

    .line 319
    .end local v11           #hash:I
    .end local v14           #i:I
    .end local v17           #matchlen:I
    .end local v18           #offset2:I
    :cond_5
    move/from16 v0, v16

    if-gt v8, v0, :cond_9

    .line 321
    aget-byte v21, p0, v20

    aput-byte v21, v7, v8

    .line 322
    add-int/lit8 v8, v8, 0x1

    .line 323
    add-int/lit8 v20, v20, 0x1

    .line 324
    const/16 v21, 0x1

    ushr-long v4, v4, v21

    .line 326
    :goto_5
    add-int/lit8 v21, v8, -0x3

    move/from16 v0, v21

    if-lt v15, v0, :cond_6

    .line 334
    shr-int/lit8 v21, v9, 0x8

    const v22, 0xffff

    and-int v21, v21, v22

    add-int/lit8 v22, v20, 0x2

    aget-byte v22, p0, v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    shl-int/lit8 v22, v22, 0x10

    or-int v9, v21, v22

    goto/16 :goto_1

    .line 328
    :cond_6
    add-int/lit8 v15, v15, 0x1

    .line 329
    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-static {v7, v15, v0}, Lcom/jd/common/compress/QuickLZ;->fastread([BII)J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-int v10, v0

    .line 330
    .local v10, fetch2:I
    ushr-int/lit8 v21, v10, 0xc

    xor-int v21, v21, v10

    move/from16 v0, v21

    and-int/lit16 v11, v0, 0xfff

    .line 331
    .restart local v11       #hash:I
    aput v15, v13, v11

    .line 332
    const/16 v21, 0x1

    aput-byte v21, v12, v11

    goto :goto_5

    .line 340
    .end local v10           #fetch2:I
    .end local v11           #hash:I
    :cond_7
    const-wide/16 v21, 0x1

    cmp-long v21, v4, v21

    if-nez v21, :cond_8

    .line 342
    add-int/lit8 v20, v20, 0x4

    .line 343
    const-wide v4, 0x80000000L

    .line 346
    :cond_8
    aget-byte v21, p0, v20

    aput-byte v21, v7, v8

    .line 347
    add-int/lit8 v8, v8, 0x1

    .line 348
    add-int/lit8 v20, v20, 0x1

    .line 349
    const/16 v21, 0x1

    ushr-long v4, v4, v21

    .line 338
    :cond_9
    add-int/lit8 v21, v19, -0x1

    move/from16 v0, v21

    if-le v8, v0, :cond_7

    move-object v6, v7

    .line 351
    goto/16 :goto_0
.end method

.method static fastread([BII)J
    .locals 9
    .parameter "a"
    .parameter "i"
    .parameter "numbytes"

    .prologue
    const/16 v8, 0x10

    const/16 v7, 0x8

    const/4 v6, 0x0

    const-wide/16 v4, 0xff

    .line 195
    const-wide/16 v0, 0x0

    .line 196
    .local v0, l:J
    packed-switch p2, :pswitch_data_0

    .line 218
    :goto_0
    return-wide v0

    .line 199
    :pswitch_0
    add-int/lit8 v2, p1, 0x0

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 200
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    shl-long/2addr v2, v7

    or-long/2addr v0, v2

    .line 201
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    .line 202
    goto :goto_0

    .line 205
    :pswitch_1
    add-int/lit8 v2, p1, 0x0

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 206
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    shl-long/2addr v2, v7

    or-long/2addr v0, v2

    .line 207
    goto :goto_0

    .line 209
    :pswitch_2
    add-int/lit8 v2, p1, 0x0

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 210
    goto :goto_0

    .line 212
    :pswitch_3
    add-int/lit8 v2, p1, 0x0

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 213
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    shl-long/2addr v2, v7

    or-long/2addr v0, v2

    .line 214
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    .line 215
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static fastwrite([BIJI)V
    .locals 4
    .parameter "a"
    .parameter "i"
    .parameter "value"
    .parameter "numbytes"

    .prologue
    const/16 v3, 0x10

    const/16 v1, 0x8

    .line 223
    packed-switch p4, :pswitch_data_0

    .line 241
    :goto_0
    return-void

    .line 226
    :pswitch_0
    long-to-int v0, p2

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 227
    add-int/lit8 v0, p1, 0x1

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 228
    add-int/lit8 v0, p1, 0x2

    ushr-long v1, p2, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    goto :goto_0

    .line 231
    :pswitch_1
    long-to-int v0, p2

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 232
    add-int/lit8 v0, p1, 0x1

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    goto :goto_0

    .line 235
    :pswitch_2
    long-to-int v0, p2

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 236
    add-int/lit8 v0, p1, 0x1

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 237
    add-int/lit8 v0, p1, 0x2

    ushr-long v1, p2, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 238
    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x18

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static headerLen([B)I
    .locals 2
    .parameter "source"

    .prologue
    .line 36
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x9

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static sizeCompressed([B)J
    .locals 3
    .parameter "source"

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-static {p0}, Lcom/jd/common/compress/QuickLZ;->headerLen([B)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 50
    const/4 v0, 0x4

    invoke-static {p0, v2, v0}, Lcom/jd/common/compress/QuickLZ;->fastread([BII)J

    move-result-wide v0

    .line 52
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0, v2, v2}, Lcom/jd/common/compress/QuickLZ;->fastread([BII)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static sizeDecompressed([B)J
    .locals 2
    .parameter "source"

    .prologue
    .line 41
    invoke-static {p0}, Lcom/jd/common/compress/QuickLZ;->headerLen([B)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 42
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/jd/common/compress/QuickLZ;->fastread([BII)J

    move-result-wide v0

    .line 44
    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/jd/common/compress/QuickLZ;->fastread([BII)J

    move-result-wide v0

    goto :goto_0
.end method
