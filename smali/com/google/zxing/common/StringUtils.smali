.class public final Lcom/google/zxing/common/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final ASSUME_SHIFT_JIS:Z = false

.field private static final EUC_JP:Ljava/lang/String; = "EUC_JP"

.field public static final GB2312:Ljava/lang/String; = "GB2312"

.field private static final GBK:Ljava/lang/String; = "GB2312"

.field private static final ISO88591:Ljava/lang/String; = "ISO8859_1"

.field private static final PLATFORM_DEFAULT_ENCODING:Ljava/lang/String; = null

.field public static final SHIFT_JIS:Ljava/lang/String; = "SJIS"

.field private static final UTF8:Ljava/lang/String; = "UTF8"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    .line 39
    const-string v0, "SJIS"

    sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EUC_JP"

    sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessEncoding([BLjava/util/Map;)Ljava/lang/String;
    .locals 25
    .parameter "bytes"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, hints:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-eqz p1, :cond_0

    .line 54
    sget-object v23, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 55
    .local v6, characterSet:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 229
    .end local v6           #characterSet:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 61
    :cond_0
    move-object/from16 v0, p0

    array-length v9, v0

    .line 62
    .local v9, length:I
    const/4 v3, 0x1

    .line 63
    .local v3, canBeISO88591:Z
    const/4 v4, 0x1

    .line 64
    .local v4, canBeShiftJIS:Z
    const/4 v5, 0x1

    .line 65
    .local v5, canBeUTF8:Z
    const/4 v2, 0x1

    .line 66
    .local v2, canBeGBK:Z
    const/16 v19, 0x0

    .line 68
    .local v19, utf8BytesLeft:I
    const/16 v16, 0x0

    .line 69
    .local v16, utf2BytesChars:I
    const/16 v17, 0x0

    .line 70
    .local v17, utf3BytesChars:I
    const/16 v18, 0x0

    .line 71
    .local v18, utf4BytesChars:I
    const/4 v10, 0x0

    .line 73
    .local v10, sjisBytesLeft:I
    const/4 v13, 0x0

    .line 75
    .local v13, sjisKatakanaChars:I
    const/4 v12, 0x0

    .line 76
    .local v12, sjisCurKatakanaWordLength:I
    const/4 v11, 0x0

    .line 77
    .local v11, sjisCurDoubleBytesWordLength:I
    const/4 v15, 0x0

    .line 78
    .local v15, sjisMaxKatakanaWordLength:I
    const/4 v14, 0x0

    .line 81
    .local v14, sjisMaxDoubleBytesWordLength:I
    const/4 v8, 0x0

    .line 83
    .local v8, isoHighOther:I
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_7

    const/16 v23, 0x0

    aget-byte v23, p0, v23

    const/16 v24, -0x11

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    const/16 v23, 0x1

    aget-byte v23, p0, v23

    const/16 v24, -0x45

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    const/16 v23, 0x2

    aget-byte v23, p0, v23

    const/16 v24, -0x41

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    const/16 v20, 0x1

    .line 88
    .local v20, utf8bom:Z
    :goto_1
    const/4 v7, 0x0

    .line 89
    .local v7, i:I
    :goto_2
    if-ge v7, v9, :cond_16

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    if-eqz v5, :cond_16

    .line 92
    :cond_1
    aget-byte v23, p0, v7

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 95
    .local v21, value:I
    const/16 v23, 0x7f

    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_2

    .line 97
    const/16 v23, 0xb0

    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_2

    const/16 v23, 0xf7

    move/from16 v0, v21

    move/from16 v1, v23

    if-gt v0, v1, :cond_2

    .line 99
    add-int/lit8 v23, v7, 0x1

    aget-byte v23, p0, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    .line 100
    .local v22, value2:I
    const/16 v23, 0xa0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_2

    const/16 v23, 0xf7

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_2

    .line 102
    const/4 v2, 0x1

    .line 108
    .end local v22           #value2:I
    :cond_2
    if-eqz v5, :cond_3

    .line 109
    if-lez v19, :cond_9

    .line 110
    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    if-nez v23, :cond_8

    .line 111
    const/4 v5, 0x0

    .line 142
    :cond_3
    :goto_3
    if-eqz v3, :cond_4

    .line 143
    const/16 v23, 0x7f

    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_e

    const/16 v23, 0xa0

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_e

    .line 144
    const/4 v3, 0x0

    .line 157
    :cond_4
    :goto_4
    if-eqz v4, :cond_6

    .line 158
    if-lez v10, :cond_11

    .line 159
    const/16 v23, 0x40

    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_5

    const/16 v23, 0x7f

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    const/16 v23, 0xfc

    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_10

    .line 160
    :cond_5
    const/4 v4, 0x0

    .line 90
    :cond_6
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 83
    .end local v7           #i:I
    .end local v20           #utf8bom:Z
    .end local v21           #value:I
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 113
    .restart local v7       #i:I
    .restart local v20       #utf8bom:Z
    .restart local v21       #value:I
    :cond_8
    add-int/lit8 v19, v19, -0x1

    goto :goto_3

    .line 115
    :cond_9
    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 116
    and-int/lit8 v23, v21, 0x40

    if-nez v23, :cond_a

    .line 117
    const/4 v5, 0x0

    goto :goto_3

    .line 119
    :cond_a
    add-int/lit8 v19, v19, 0x1

    .line 120
    and-int/lit8 v23, v21, 0x20

    if-nez v23, :cond_b

    .line 121
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 123
    :cond_b
    add-int/lit8 v19, v19, 0x1

    .line 124
    and-int/lit8 v23, v21, 0x10

    if-nez v23, :cond_c

    .line 125
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 127
    :cond_c
    add-int/lit8 v19, v19, 0x1

    .line 128
    and-int/lit8 v23, v21, 0x8

    if-nez v23, :cond_d

    .line 129
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 131
    :cond_d
    const/4 v5, 0x0

    goto :goto_3

    .line 145
    :cond_e
    const/16 v23, 0x9f

    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_4

    .line 146
    const/16 v23, 0xc0

    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_f

    const/16 v23, 0xd7

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    const/16 v23, 0xf7

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 147
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 162
    :cond_10
    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    .line 164
    :cond_11
    const/16 v23, 0x80

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_12

    const/16 v23, 0xa0

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_12

    const/16 v23, 0xef

    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_13

    .line 165
    :cond_12
    const/4 v4, 0x0

    goto :goto_5

    .line 166
    :cond_13
    const/16 v23, 0xa0

    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_14

    const/16 v23, 0xe0

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_14

    .line 167
    add-int/lit8 v13, v13, 0x1

    .line 168
    const/4 v11, 0x0

    .line 169
    add-int/lit8 v12, v12, 0x1

    .line 170
    if-le v12, v15, :cond_6

    .line 171
    move v15, v12

    goto/16 :goto_5

    .line 173
    :cond_14
    const/16 v23, 0x7f

    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_15

    .line 174
    add-int/lit8 v10, v10, 0x1

    .line 176
    const/4 v12, 0x0

    .line 177
    add-int/lit8 v11, v11, 0x1

    .line 178
    if-le v11, v14, :cond_6

    .line 179
    move v14, v11

    goto/16 :goto_5

    .line 183
    :cond_15
    const/4 v12, 0x0

    .line 184
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 189
    .end local v21           #value:I
    :cond_16
    if-eqz v5, :cond_17

    if-lez v19, :cond_17

    .line 190
    const/4 v5, 0x0

    .line 192
    :cond_17
    if-eqz v4, :cond_18

    if-lez v10, :cond_18

    .line 193
    const/4 v4, 0x0

    .line 197
    :cond_18
    if-eqz v5, :cond_1a

    if-nez v20, :cond_19

    add-int v23, v16, v17

    add-int v23, v23, v18

    if-lez v23, :cond_1a

    .line 198
    :cond_19
    const-string v6, "UTF8"

    goto/16 :goto_0

    .line 201
    :cond_1a
    if-eqz v4, :cond_1c

    sget-boolean v23, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    if-nez v23, :cond_1b

    const/16 v23, 0x3

    move/from16 v0, v23

    if-ge v15, v0, :cond_1b

    const/16 v23, 0x3

    move/from16 v0, v23

    if-lt v14, v0, :cond_1c

    .line 202
    :cond_1b
    const-string v6, "SJIS"

    goto/16 :goto_0

    .line 205
    :cond_1c
    if-eqz v2, :cond_1d

    .line 206
    const-string v6, "GB2312"

    goto/16 :goto_0

    .line 213
    :cond_1d
    if-eqz v3, :cond_21

    if-eqz v4, :cond_21

    .line 214
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v15, v0, :cond_1e

    const/16 v23, 0x2

    move/from16 v0, v23

    if-eq v13, v0, :cond_1f

    :cond_1e
    mul-int/lit8 v23, v8, 0xa

    move/from16 v0, v23

    if-lt v0, v9, :cond_20

    :cond_1f
    const-string v23, "SJIS"

    :goto_6
    move-object/from16 v6, v23

    goto/16 :goto_0

    :cond_20
    const-string v23, "ISO8859_1"

    goto :goto_6

    .line 219
    :cond_21
    if-eqz v3, :cond_22

    .line 220
    const-string v6, "ISO8859_1"

    goto/16 :goto_0

    .line 222
    :cond_22
    if-eqz v4, :cond_23

    .line 223
    const-string v6, "SJIS"

    goto/16 :goto_0

    .line 225
    :cond_23
    if-eqz v5, :cond_24

    .line 226
    const-string v6, "UTF8"

    goto/16 :goto_0

    .line 229
    :cond_24
    sget-object v6, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    goto/16 :goto_0
.end method
