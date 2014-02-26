.class public Lcom/jd/lottery/lib/utils/IDCard;
.super Ljava/lang/Object;
.source "IDCard.java"


# static fields
.field private static _areaCode:[Ljava/lang/String;

.field private static areaCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static dateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _codeError:Ljava/lang/String;

.field private ai:[I

.field final vi:[I

.field final wi:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    const/16 v6, 0x1e

    const/16 v5, 0x1f

    .line 14
    const/16 v2, 0x23

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "11"

    aput-object v3, v2, v1

    const/4 v3, 0x1

    const-string v4, "12"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "13"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "14"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "15"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "21"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "22"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 15
    const-string v4, "23"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "31"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "32"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "33"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "34"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "35"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "36"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "37"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "41"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "42"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "43"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "44"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    .line 16
    const-string v4, "45"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "46"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "50"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "51"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "52"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "53"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "54"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "61"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "62"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "63"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "64"

    aput-object v4, v2, v3

    const-string v3, "65"

    aput-object v3, v2, v6

    const-string v3, "71"

    aput-object v3, v2, v5

    const/16 v3, 0x20

    const-string v4, "81"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "82"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "91"

    aput-object v4, v2, v3

    .line 14
    sput-object v2, Lcom/jd/lottery/lib/utils/IDCard;->_areaCode:[Ljava/lang/String;

    .line 20
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/jd/lottery/lib/utils/IDCard;->dateMap:Ljava/util/HashMap;

    .line 21
    sget-object v2, Lcom/jd/lottery/lib/utils/IDCard;->dateMap:Ljava/util/HashMap;

    const-string v3, "01"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v2, Lcom/jd/lottery/lib/utils/IDCard;->dateMap:Ljava/util/HashMap;

    const-string v3, "02"

    invoke-virtual {v2, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v2, Lcom/jd/lottery/lib/utils/IDCard;->dateMap:Ljava/util/HashMap;

    const-string v3, "03"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v2, Lcom/jd/lottery/lib/utils/IDCard;->dateMap:Ljava/util/HashMap;

    const-string v3, "04"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v2, Lcom/jd/lottery/lib/utils/IDCard;->dateMap:Ljava/util/HashMap;

    const-string v3, "05"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v2, Lcom/jd/lottery/lib/utils/IDCard;->dateMap:Ljava/util/HashMap;

    const-string v3, "06"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v2, Lcom/jd/lottery/lib/utils/IDCard;->dateMap:Ljava/util/HashMap;

    const-string v3, "07"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v2, Lcom/jd/lottery/lib/utils/IDCard;->dateMap:Ljava/util/HashMap;

    const-string v3, "08"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v2, Lcom/jd/lottery/lib/utils/IDCard;->dateMap:Ljava/util/HashMap;

    const-string v3, "09"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v2, Lcom/jd/lottery/lib/utils/IDCard;->dateMap:Ljava/util/HashMap;

    const-string v3, "10"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v2, Lcom/jd/lottery/lib/utils/IDCard;->dateMap:Ljava/util/HashMap;

    const-string v3, "11"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v2, Lcom/jd/lottery/lib/utils/IDCard;->dateMap:Ljava/util/HashMap;

    const-string v3, "12"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/jd/lottery/lib/utils/IDCard;->areaCodeMap:Ljava/util/HashMap;

    .line 34
    sget-object v2, Lcom/jd/lottery/lib/utils/IDCard;->_areaCode:[Ljava/lang/String;

    array-length v3, v2

    .local v0, code:Ljava/lang/String;
    :goto_0
    if-lt v1, v3, :cond_0

    .line 37
    return-void

    .line 34
    :cond_0
    aget-object v0, v2, v1

    .line 35
    sget-object v4, Lcom/jd/lottery/lib/utils/IDCard;->areaCodeMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/jd/lottery/lib/utils/IDCard;->wi:[I

    .line 12
    const/16 v0, 0xb

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0x58

    aput v1, v0, v3

    const/16 v1, 0x9

    aput v1, v0, v4

    const/16 v1, 0x8

    aput v1, v0, v5

    const/4 v1, 0x7

    aput v1, v0, v6

    aput v7, v0, v7

    const/4 v1, 0x7

    aput v6, v0, v1

    const/16 v1, 0x8

    aput v5, v0, v1

    const/16 v1, 0x9

    aput v4, v0, v1

    const/16 v1, 0xa

    aput v3, v0, v1

    iput-object v0, p0, Lcom/jd/lottery/lib/utils/IDCard;->vi:[I

    .line 13
    const/16 v0, 0x12

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jd/lottery/lib/utils/IDCard;->ai:[I

    .line 5
    return-void

    .line 10
    :array_0
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public containsAllNumber(Ljava/lang/String;)Z
    .locals 6
    .parameter "code"

    .prologue
    const/16 v5, 0xf

    const/4 v3, 0x0

    .line 106
    const-string v2, ""

    .line 107
    .local v2, str:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 108
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 112
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 113
    .local v0, ch:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v0

    if-lt v1, v4, :cond_2

    .line 119
    const/4 v3, 0x1

    :goto_2
    return v3

    .line 109
    .end local v0           #ch:[C
    .end local v1           #i:I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_0

    .line 110
    const/16 v4, 0x11

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 114
    .restart local v0       #ch:[C
    .restart local v1       #i:I
    :cond_2
    aget-char v4, v0, v1

    const/16 v5, 0x30

    if-lt v4, v5, :cond_3

    aget-char v4, v0, v1

    const/16 v5, 0x39

    if-le v4, v5, :cond_4

    .line 115
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u9519\u8bef\uff1a\u8f93\u5165\u7684\u8eab\u4efd\u8bc1\u53f7\u7b2c"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u4f4d\u5305\u542b\u5b57\u6bcd"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jd/lottery/lib/utils/IDCard;->_codeError:Ljava/lang/String;

    goto :goto_2

    .line 113
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getCodeError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/jd/lottery/lib/utils/IDCard;->_codeError:Ljava/lang/String;

    return-object v0
.end method

.method public getVerify(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "eightcardid"

    .prologue
    const/16 v6, 0x11

    .line 181
    const/4 v2, 0x0

    .line 183
    .local v2, remaining:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_0

    .line 184
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 187
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 188
    const/4 v3, 0x0

    .line 189
    .local v3, sum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v6, :cond_2

    .line 194
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v6, :cond_3

    .line 197
    rem-int/lit8 v2, v3, 0xb

    .line 200
    .end local v0           #i:I
    .end local v3           #sum:I
    :cond_1
    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    const-string v4, "X"

    :goto_2
    return-object v4

    .line 190
    .restart local v0       #i:I
    .restart local v3       #sum:I
    :cond_2
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, k:Ljava/lang/String;
    iget-object v4, p0, Lcom/jd/lottery/lib/utils/IDCard;->ai:[I

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v0

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v1           #k:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/jd/lottery/lib/utils/IDCard;->wi:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/jd/lottery/lib/utils/IDCard;->ai:[I

    aget v5, v5, v0

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 200
    .end local v0           #i:I
    .end local v3           #sum:I
    :cond_4
    iget-object v4, p0, Lcom/jd/lottery/lib/utils/IDCard;->vi:[I

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method public uptoeighteen(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "fifteencardid"

    .prologue
    const/4 v3, 0x6

    .line 205
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, eightcardid:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "19"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xf

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jd/lottery/lib/utils/IDCard;->getVerify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    return-object v0
.end method

.method public verify(Ljava/lang/String;)Z
    .locals 4
    .parameter "idcard"

    .prologue
    const/4 v1, 0x0

    .line 128
    const-string v2, ""

    iput-object v2, p0, Lcom/jd/lottery/lib/utils/IDCard;->_codeError:Ljava/lang/String;

    .line 130
    invoke-virtual {p0, p1}, Lcom/jd/lottery/lib/utils/IDCard;->verifyLength(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v1

    .line 134
    :cond_1
    invoke-virtual {p0, p1}, Lcom/jd/lottery/lib/utils/IDCard;->containsAllNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    const-string v0, ""

    .line 140
    .local v0, eifhteencard:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_2

    .line 141
    invoke-virtual {p0, p1}, Lcom/jd/lottery/lib/utils/IDCard;->uptoeighteen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_1
    invoke-virtual {p0, v0}, Lcom/jd/lottery/lib/utils/IDCard;->verifyAreaCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    invoke-virtual {p0, v0}, Lcom/jd/lottery/lib/utils/IDCard;->verifyBirthdayCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    invoke-virtual {p0, v0}, Lcom/jd/lottery/lib/utils/IDCard;->verifyMOD(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    const/4 v1, 0x1

    goto :goto_0

    .line 143
    :cond_2
    move-object v0, p1

    goto :goto_1
.end method

.method public verifyAreaCode(Ljava/lang/String;)Z
    .locals 4
    .parameter "code"

    .prologue
    const/4 v1, 0x0

    .line 52
    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, areaCode:Ljava/lang/String;
    sget-object v2, Lcom/jd/lottery/lib/utils/IDCard;->areaCodeMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    const/4 v1, 0x1

    .line 58
    :goto_0
    return v1

    .line 57
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9519\u8bef\uff1a\u8f93\u5165\u7684\u8eab\u4efd\u8bc1\u53f7\u7684\u5730\u533a\u7801(1-2\u4f4d)["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]\u4e0d\u7b26\u5408\u4e2d\u56fd\u884c\u653f\u533a\u5212\u5206\u4ee3\u7801\u89c4\u5b9a(GB/T2260-1999)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jd/lottery/lib/utils/IDCard;->_codeError:Ljava/lang/String;

    goto :goto_0
.end method

.method public verifyBirthdayCode(Ljava/lang/String;)Z
    .locals 12
    .parameter "code"

    .prologue
    const/16 v11, 0xc

    const/16 v10, 0xa

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 65
    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, month:Ljava/lang/String;
    const/16 v8, 0x12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_0

    move v2, v6

    .line 67
    .local v2, isEighteenCode:Z
    :goto_0
    sget-object v8, Lcom/jd/lottery/lib/utils/IDCard;->dateMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 68
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v6, "\u9519\u8bef\uff1a\u8f93\u5165\u7684\u8eab\u4efd\u8bc1\u53f7"

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    const-string v6, "(11-12\u4f4d)"

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\u4e0d\u5b58\u5728["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "]\u6708\u4efd,\u4e0d\u7b26\u5408\u8981\u6c42(GB/T7408)"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/jd/lottery/lib/utils/IDCard;->_codeError:Ljava/lang/String;

    .line 101
    :goto_2
    return v7

    .end local v2           #isEighteenCode:Z
    :cond_0
    move v2, v7

    .line 66
    goto :goto_0

    .line 68
    .restart local v2       #isEighteenCode:Z
    :cond_1
    const-string v6, "(9-10\u4f4d)"

    goto :goto_1

    .line 72
    :cond_2
    const/16 v8, 0xe

    invoke-virtual {p1, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, dayCode:Ljava/lang/String;
    sget-object v8, Lcom/jd/lottery/lib/utils/IDCard;->dateMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 74
    .local v0, day:Ljava/lang/Integer;
    const/4 v8, 0x6

    invoke-virtual {p1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, yearCode:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 78
    .local v4, year:Ljava/lang/Integer;
    if-eqz v0, :cond_5

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-gt v8, v9, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v8, v6, :cond_d

    .line 80
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v6, "\u9519\u8bef\uff1a\u8f93\u5165\u7684\u8eab\u4efd\u8bc1\u53f7"

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_4

    const-string v6, "(13-14\u4f4d)"

    :goto_3
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "]\u53f7\u4e0d\u7b26\u5408\u5c0f\u67081-30\u5929\u5927\u67081-31\u5929\u7684\u89c4\u5b9a(GB/T7408)"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/jd/lottery/lib/utils/IDCard;->_codeError:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v6, "(11-13\u4f4d)"

    goto :goto_3

    .line 87
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    rem-int/lit8 v8, v8, 0x4

    if-nez v8, :cond_6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    rem-int/lit8 v8, v8, 0x64

    if-nez v8, :cond_7

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    rem-int/lit16 v8, v8, 0x190

    if-nez v8, :cond_a

    .line 88
    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x1d

    if-gt v8, v9, :cond_8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v8, v6, :cond_d

    .line 89
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v6, "\u9519\u8bef\uff1a\u8f93\u5165\u7684\u8eab\u4efd\u8bc1\u53f7"

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_9

    const-string v6, "(13-14\u4f4d)"

    :goto_4
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "]\u53f7\u5728"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\u95f0\u5e74\u7684\u60c5\u51b5\u4e0b\u672a\u7b26\u54081-29\u53f7\u7684\u89c4\u5b9a(GB/T7408)"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/jd/lottery/lib/utils/IDCard;->_codeError:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    const-string v6, "(11-13\u4f4d)"

    goto :goto_4

    .line 95
    :cond_a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x1c

    if-gt v8, v9, :cond_b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v8, v6, :cond_d

    .line 96
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v6, "\u9519\u8bef\uff1a\u8f93\u5165\u7684\u8eab\u4efd\u8bc1\u53f7"

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_c

    const-string v6, "(13-14\u4f4d)"

    :goto_5
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "]\u53f7\u5728"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\u5e73\u5e74\u7684\u60c5\u51b5\u4e0b\u672a\u7b26\u54081-28\u53f7\u7684\u89c4\u5b9a(GB/T7408)"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/jd/lottery/lib/utils/IDCard;->_codeError:Ljava/lang/String;

    goto/16 :goto_2

    :cond_c
    const-string v6, "(11-13\u4f4d)"

    goto :goto_5

    :cond_d
    move v7, v6

    .line 101
    goto/16 :goto_2
.end method

.method public verifyLength(Ljava/lang/String;)Z
    .locals 2
    .parameter "code"

    .prologue
    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 42
    .local v0, length:I
    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    .line 43
    :cond_0
    const/4 v1, 0x1

    .line 46
    :goto_0
    return v1

    .line 45
    :cond_1
    const-string v1, "\u9519\u8bef\uff1a\u8f93\u5165\u7684\u8eab\u4efd\u8bc1\u53f7\u4e0d\u662f15\u4f4d\u548c18\u4f4d\u7684"

    iput-object v1, p0, Lcom/jd/lottery/lib/utils/IDCard;->_codeError:Ljava/lang/String;

    .line 46
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public verifyMOD(Ljava/lang/String;)Z
    .locals 4
    .parameter "code"

    .prologue
    .line 162
    const/16 v2, 0x11

    const/16 v3, 0x12

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, verify:Ljava/lang/String;
    const-string v2, "x"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    const-string v2, "x"

    const-string v3, "X"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 165
    const-string v0, "X"

    .line 167
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jd/lottery/lib/utils/IDCard;->getVerify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, verifyIndex:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    const/4 v2, 0x1

    .line 176
    :goto_0
    return v2

    .line 175
    :cond_1
    const-string v2, "\u9519\u8bef\uff1a\u8f93\u5165\u7684\u8eab\u4efd\u8bc1\u53f7\u6700\u672b\u5c3e\u7684\u6570\u5b57\u9a8c\u8bc1\u7801\u9519\u8bef"

    iput-object v2, p0, Lcom/jd/lottery/lib/utils/IDCard;->_codeError:Ljava/lang/String;

    .line 176
    const/4 v2, 0x0

    goto :goto_0
.end method
