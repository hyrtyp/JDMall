.class public final Lcom/jd/lottery/lib/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field public static final DOT:Ljava/lang/String; = ","

.field public static final DOUBLE_SPACE:Ljava/lang/String; = "  "

.field private static final EMAIL_PATTERN:Ljava/lang/String; = "^[\\w-]+(\\.[\\w-]+)*@[\\w-]+(\\.[\\w-]+)+"

.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final JD_FULLNAME_PATTERN:Ljava/lang/String; = "^([\u4e00-\u9fa5]|[a-zA-Z]){2,10}$"

.field private static final JD_ID_CARD_NO_PATTERN:Ljava/lang/String; = "(^\\d{15})|(^\\d{17}([0-9]|X))$"

.field private static final JD_MOBILE_PATTERN:Ljava/lang/String; = "^(?:13|18|15)\\d{9}$"

.field public static final LINE_BREAKS:Ljava/lang/String; = "\r\n"

.field private static final PHONE_PATTERN:Ljava/lang/String; = "^((13[0-9])|(15[^4,\\D])|(18[0,2,5-9]))\\d{8}$"

.field private static final USERNAME_PATTERN:Ljava/lang/String; = "^[_a-zA-Z0-9]{1}[_a-zA-Z0-9@.]{5,63}$"

.field public static final WHITE_SPACES:Ljava/lang/String; = " \r\n\t\u3000\u00a0\u2007\u202f"

.field private static final cellNumberPattern:Ljava/util/regex/Pattern;

.field private static final characterReferencePattern:Ljava/util/regex/Pattern;

.field private static final dbSpecPattern:Ljava/util/regex/Pattern;

.field private static final emailPattern:Ljava/util/regex/Pattern;

.field private static hexChars:[C

.field private static final idCard15Pattern:Ljava/util/regex/Pattern;

.field private static final qqNumberPattern:Ljava/util/regex/Pattern;

.field private static final teleNumberPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "&#?[a-zA-Z0-9]{1,8};"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jd/lottery/lib/utils/StringUtils;->characterReferencePattern:Ljava/util/regex/Pattern;

    .line 33
    const-string v0, "(.*)\\{(\\d+),(\\d+)\\}(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jd/lottery/lib/utils/StringUtils;->dbSpecPattern:Ljava/util/regex/Pattern;

    .line 35
    const-string v0, "^[\\w]+[\\w\\.\\-\\+\\_]+@[\\w\\.\\-\\_]+\\.[\\w]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jd/lottery/lib/utils/StringUtils;->emailPattern:Ljava/util/regex/Pattern;

    .line 37
    const-string v0, "^[1-9][0-9]{4,10}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jd/lottery/lib/utils/StringUtils;->qqNumberPattern:Ljava/util/regex/Pattern;

    .line 39
    const-string v0, "^\\d{3}\\-\\d{8}|\\d{4}\\-\\d{7}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jd/lottery/lib/utils/StringUtils;->teleNumberPattern:Ljava/util/regex/Pattern;

    .line 41
    const-string v0, "^1[358]\\d{9}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jd/lottery/lib/utils/StringUtils;->cellNumberPattern:Ljava/util/regex/Pattern;

    .line 43
    const-string v0, "^[1-9]\\d{5}[1-9]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{4}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jd/lottery/lib/utils/StringUtils;->idCard15Pattern:Ljava/util/regex/Pattern;

    .line 243
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jd/lottery/lib/utils/StringUtils;->hexChars:[C

    .line 244
    return-void

    .line 243
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

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static addColorSpan(Ljava/lang/String;[Ljava/lang/String;I)Landroid/text/SpannableString;
    .locals 8
    .parameter "str"
    .parameter "strs"
    .parameter "color"

    .prologue
    .line 551
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 552
    .local v1, spanString:Landroid/text/SpannableString;
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 557
    return-object v1

    .line 552
    :cond_0
    aget-object v2, p1, v3

    .line 553
    .local v2, value:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 554
    .local v0, index:I
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v0

    .line 555
    const/16 v7, 0x12

    .line 554
    invoke-virtual {v1, v5, v0, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 552
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static addStrikeSpan(Ljava/lang/String;[Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 8
    .parameter "str"
    .parameter "strs"

    .prologue
    .line 540
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 541
    .local v1, spanString:Landroid/text/SpannableString;
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 546
    return-object v1

    .line 541
    :cond_0
    aget-object v2, p1, v3

    .line 542
    .local v2, value:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 543
    .local v0, index:I
    new-instance v5, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v5}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v0

    .line 544
    const/16 v7, 0x12

    .line 543
    invoke-virtual {v1, v5, v0, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 541
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 1
    .parameter "bytes"

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/jd/lottery/lib/utils/StringUtils;->bytesToHexString([BLjava/lang/Character;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToHexString([BLjava/lang/Character;)Ljava/lang/String;
    .locals 6
    .parameter "bytes"
    .parameter "delimiter"

    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v5, p0

    .line 260
    if-nez p1, :cond_0

    const/4 v4, 0x2

    :goto_0
    mul-int/2addr v4, v5

    .line 259
    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 262
    .local v0, hex:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p0

    if-lt v1, v4, :cond_1

    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 260
    .end local v0           #hex:Ljava/lang/StringBuffer;
    .end local v1           #i:I
    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    .line 263
    .restart local v0       #hex:Ljava/lang/StringBuffer;
    .restart local v1       #i:I
    :cond_1
    aget-byte v4, p0, v1

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v2, v4, 0xf

    .line 264
    .local v2, nibble1:I
    aget-byte v4, p0, v1

    and-int/lit8 v3, v4, 0xf

    .line 265
    .local v3, nibble2:I
    if-lez v1, :cond_2

    if-eqz p1, :cond_2

    .line 266
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 267
    :cond_2
    sget-object v4, Lcom/jd/lottery/lib/utils/StringUtils;->hexChars:[C

    aget-char v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 268
    sget-object v4, Lcom/jd/lottery/lib/utils/StringUtils;->hexChars:[C

    aget-char v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static containsCharRef(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 491
    sget-object v0, Lcom/jd/lottery/lib/utils/StringUtils;->characterReferencePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public static email2Safe4Show(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "input"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 168
    invoke-static {p0}, Lcom/jd/lottery/lib/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/jd/lottery/lib/utils/StringUtils;->makeSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/jd/lottery/lib/utils/StringUtils;->makeSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    :cond_0
    const-string v3, ""

    .line 198
    :goto_0
    return-object v3

    .line 172
    :cond_1
    const-string v3, "@"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, temp:[Ljava/lang/String;
    aget-object v3, v2, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 176
    .local v0, len:I
    packed-switch v0, :pswitch_data_0

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v2, v6

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 194
    aget-object v4, v2, v6

    aget-object v5, v2, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 193
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, str1:Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    .end local v1           #str1:Ljava/lang/String;
    :pswitch_0
    const-string v1, "*"

    .line 179
    .restart local v1       #str1:Ljava/lang/String;
    goto :goto_1

    .line 181
    .end local v1           #str1:Ljava/lang/String;
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v2, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    .restart local v1       #str1:Ljava/lang/String;
    goto :goto_1

    .line 184
    .end local v1           #str1:Ljava/lang/String;
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v2, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v6

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    .restart local v1       #str1:Ljava/lang/String;
    goto :goto_1

    .line 187
    .end local v1           #str1:Ljava/lang/String;
    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v2, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v6

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .restart local v1       #str1:Ljava/lang/String;
    goto/16 :goto_1

    .line 190
    .end local v1           #str1:Ljava/lang/String;
    :pswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v2, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v6

    const/4 v5, 0x5

    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    .restart local v1       #str1:Ljava/lang/String;
    goto/16 :goto_1

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 463
    if-ne p0, p1, :cond_0

    .line 464
    const/4 v0, 0x1

    .line 471
    :goto_0
    return v0

    .line 466
    :cond_0
    if-eqz p0, :cond_1

    .line 467
    if-eqz p1, :cond_1

    .line 468
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 471
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 475
    if-ne p0, p1, :cond_0

    .line 476
    const/4 v0, 0x1

    .line 483
    :goto_0
    return v0

    .line 478
    :cond_0
    if-eqz p0, :cond_1

    .line 479
    if-eqz p1, :cond_1

    .line 480
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 483
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static idCardNumber2Safe4Show(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "input"

    .prologue
    .line 227
    invoke-static {p0}, Lcom/jd/lottery/lib/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p0}, Lcom/jd/lottery/lib/utils/StringUtils;->makeSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xf

    if-ge v5, v6, :cond_1

    .line 228
    :cond_0
    const-string v5, ""

    .line 240
    :goto_0
    return-object v5

    .line 231
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 233
    .local v1, len:I
    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, str1:Ljava/lang/String;
    add-int/lit8 v5, v1, -0x4

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, str2:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 236
    .local v2, star:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    add-int/lit8 v5, v1, -0x8

    if-lt v0, v5, :cond_2

    .line 240
    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_2
    const-string v5, "*"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isCellNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 138
    sget-object v0, Lcom/jd/lottery/lib/utils/StringUtils;->cellNumberPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isEmail(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 126
    sget-object v0, Lcom/jd/lottery/lib/utils/StringUtils;->emailPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 411
    invoke-static {p0}, Lcom/jd/lottery/lib/utils/StringUtils;->makeSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmptyOrWhitespace(Ljava/lang/String;)Z
    .locals 3
    .parameter "s"

    .prologue
    .line 421
    invoke-static {p0}, Lcom/jd/lottery/lib/utils/StringUtils;->makeSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 422
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 427
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 423
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 424
    const/4 v2, 0x0

    goto :goto_1

    .line 422
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isFullName(Ljava/lang/String;)Z
    .locals 3
    .parameter "s"

    .prologue
    .line 58
    const-string v2, "^([\u4e00-\u9fa5]|[a-zA-Z]){2,10}$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 59
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 60
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method public static isIdCardNo(Ljava/lang/String;)Z
    .locals 8
    .parameter "idCardNo"

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 68
    const-string v4, "(^\\d{15})|(^\\d{17}([0-9]|X))$"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v2

    .line 77
    :cond_1
    const/16 v4, 0x23

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "11"

    aput-object v5, v4, v2

    const-string v5, "12"

    aput-object v5, v4, v3

    const-string v5, "13"

    aput-object v5, v4, v7

    const/4 v5, 0x3

    const-string v6, "14"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "15"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "21"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "22"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "23"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "31"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "32"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    .line 78
    const-string v6, "33"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "34"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "35"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "36"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string v6, "37"

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const-string v6, "41"

    aput-object v6, v4, v5

    const/16 v5, 0x10

    const-string v6, "42"

    aput-object v6, v4, v5

    const/16 v5, 0x11

    const-string v6, "43"

    aput-object v6, v4, v5

    const/16 v5, 0x12

    const-string v6, "44"

    aput-object v6, v4, v5

    const/16 v5, 0x13

    const-string v6, "45"

    aput-object v6, v4, v5

    const/16 v5, 0x14

    const-string v6, "46"

    aput-object v6, v4, v5

    const/16 v5, 0x15

    const-string v6, "50"

    aput-object v6, v4, v5

    const/16 v5, 0x16

    const-string v6, "51"

    aput-object v6, v4, v5

    const/16 v5, 0x17

    .line 79
    const-string v6, "52"

    aput-object v6, v4, v5

    const/16 v5, 0x18

    const-string v6, "53"

    aput-object v6, v4, v5

    const/16 v5, 0x19

    const-string v6, "54"

    aput-object v6, v4, v5

    const/16 v5, 0x1a

    const-string v6, "61"

    aput-object v6, v4, v5

    const/16 v5, 0x1b

    const-string v6, "62"

    aput-object v6, v4, v5

    const/16 v5, 0x1c

    const-string v6, "63"

    aput-object v6, v4, v5

    const/16 v5, 0x1d

    const-string v6, "64"

    aput-object v6, v4, v5

    const/16 v5, 0x1e

    const-string v6, "65"

    aput-object v6, v4, v5

    const/16 v5, 0x1f

    const-string v6, "71"

    aput-object v6, v4, v5

    const/16 v5, 0x20

    const-string v6, "81"

    aput-object v6, v4, v5

    const/16 v5, 0x21

    const-string v6, "82"

    aput-object v6, v4, v5

    const/16 v5, 0x22

    const-string v6, "91"

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 80
    .local v0, allCities:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, curCity:Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 87
    goto/16 :goto_0
.end method

.method public static isNotBlank(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 122
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 402
    invoke-static {p0}, Lcom/jd/lottery/lib/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isOlderThanAge18(Ljava/lang/String;)Z
    .locals 8
    .parameter "idCardNo"

    .prologue
    const/4 v7, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 92
    invoke-static {p0}, Lcom/jd/lottery/lib/utils/StringUtils;->isIdCardNo(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v4

    .line 96
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 97
    .local v2, len:I
    const/16 v6, 0x12

    if-ne v6, v2, :cond_2

    .line 98
    const/16 v6, 0xa

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 100
    .local v1, idCardYear:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 101
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 103
    .local v3, year:I
    add-int/lit8 v6, v1, 0x12

    if-ge v6, v3, :cond_0

    move v4, v5

    .line 104
    goto :goto_0

    .line 107
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v1           #idCardYear:I
    .end local v3           #year:I
    :cond_2
    const/16 v6, 0xf

    if-ne v6, v2, :cond_0

    .line 108
    const/16 v6, 0x8

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit16 v1, v6, 0x76c

    .line 110
    .restart local v1       #idCardYear:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 111
    .restart local v0       #calendar:Ljava/util/Calendar;
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 113
    .restart local v3       #year:I
    add-int/lit8 v6, v1, 0x12

    if-ge v6, v3, :cond_0

    move v4, v5

    .line 114
    goto :goto_0
.end method

.method public static isQQNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 130
    sget-object v0, Lcom/jd/lottery/lib/utils/StringUtils;->qqNumberPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isTeleNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 134
    sget-object v0, Lcom/jd/lottery/lib/utils/StringUtils;->teleNumberPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static lstrip(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 316
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, " \r\n\t\u3000\u00a0\u2007\u202f"

    invoke-static {p0, v0, v1, v2}, Lcom/jd/lottery/lib/utils/StringUtils;->megastrip(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeSafe(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "s"

    .prologue
    .line 436
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0
    :cond_0
    return-object p0
.end method

.method public static megastrip(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .parameter "left"
    .parameter "right"
    .parameter "what"

    .prologue
    .line 289
    if-nez p0, :cond_0

    .line 290
    const/4 v2, 0x0

    .line 305
    :goto_0
    return-object v2

    .line 293
    :cond_0
    const/4 v0, 0x0

    .line 294
    .local v0, limitLeft:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 296
    .local v1, limitRight:I
    :goto_1
    if-eqz p1, :cond_1

    if-gt v0, v1, :cond_1

    .line 297
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 296
    if-gez v2, :cond_3

    .line 300
    :cond_1
    :goto_2
    if-eqz p2, :cond_2

    if-lt v1, v0, :cond_2

    .line 301
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 300
    if-gez v2, :cond_4

    .line 305
    :cond_2
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 298
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 302
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method public static phoneNum2Safe4Show(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "input"

    .prologue
    const/16 v4, 0xb

    .line 210
    invoke-static {p0}, Lcom/jd/lottery/lib/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 211
    :cond_0
    const-string v2, ""

    .line 217
    :goto_0
    return-object v2

    .line 214
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, str1:Ljava/lang/String;
    const/4 v2, 0x7

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, str2:Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "****"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static rstrip(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 327
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, " \r\n\t\u3000\u00a0\u2007\u202f"

    invoke-static {p0, v0, v1, v2}, Lcom/jd/lottery/lib/utils/StringUtils;->megastrip(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "str"

    .prologue
    .line 531
    const-string v3, "\u3010"

    const-string v4, "["

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u3011"

    const-string v5, "]"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 532
    const-string v4, "\uff01"

    const-string v5, "!"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\uff1a"

    const-string v5, ":"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 533
    const-string v2, "[\u300e\u300f]"

    .line 534
    .local v2, regEx:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 535
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 536
    .local v0, m:Ljava/util/regex/Matcher;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    const/4 v1, 0x1

    .line 338
    const-string v0, " \r\n\t\u3000\u00a0\u2007\u202f"

    invoke-static {p0, v1, v1, v0}, Lcom/jd/lottery/lib/utils/StringUtils;->megastrip(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripNonDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "str"

    .prologue
    .line 375
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 376
    .local v1, result:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 381
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 376
    :cond_0
    aget-char v0, v3, v2

    .line 377
    .local v0, candidate:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 378
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 376
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static stripPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "prefix"

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stripPrefixIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "prefix"

    .prologue
    .line 356
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 357
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toDBC(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "input"

    .prologue
    .line 500
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 501
    .local v0, c:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 509
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 502
    :cond_0
    aget-char v2, v0, v1

    const/16 v3, 0x3000

    if-ne v2, v3, :cond_2

    .line 503
    const/16 v2, 0x20

    aput-char v2, v0, v1

    .line 501
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 506
    :cond_2
    aget-char v2, v0, v1

    const v3, 0xff00

    if-le v2, v3, :cond_1

    aget-char v2, v0, v1

    const v3, 0xff5f

    if-ge v2, v3, :cond_1

    .line 507
    aget-char v2, v0, v1

    const v3, 0xfee0

    sub-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    goto :goto_1
.end method

.method public static toNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 445
    invoke-static {p0}, Lcom/jd/lottery/lib/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .end local p0
    :cond_0
    return-object p0
.end method

.method public static toNullIfEmptyOrWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 455
    invoke-static {p0}, Lcom/jd/lottery/lib/utils/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .end local p0
    :cond_0
    return-object p0
.end method

.method public static toSBC(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "input"

    .prologue
    .line 518
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 519
    .local v0, c:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 527
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 520
    :cond_0
    aget-char v2, v0, v1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    .line 521
    const/16 v2, 0x3000

    aput-char v2, v0, v1

    .line 519
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    :cond_2
    aget-char v2, v0, v1

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_1

    .line 525
    aget-char v2, v0, v1

    const v3, 0xfee0

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    goto :goto_1
.end method

.method public static validateEmail(Ljava/lang/String;)Z
    .locals 3
    .parameter "email"

    .prologue
    .line 148
    const-string v2, "^[\\w-]+(\\.[\\w-]+)*@[\\w-]+(\\.[\\w-]+)+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 149
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 150
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method public static validatePhone(Ljava/lang/String;)Z
    .locals 3
    .parameter "phone"

    .prologue
    .line 154
    const-string v2, "^((13[0-9])|(15[^4,\\D])|(18[0,2,5-9]))\\d{8}$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 155
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 156
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method public static validateUserName(Ljava/lang/String;)Z
    .locals 3
    .parameter "username"

    .prologue
    .line 142
    const-string v2, "^[_a-zA-Z0-9]{1}[_a-zA-Z0-9@.]{5,63}$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 143
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 144
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method
