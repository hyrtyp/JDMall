.class public Lcom/drew/lang/Rational;
.super Ljava/lang/Number;
.source "Rational.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final denominator:I

.field private maxSimplificationCalculations:I

.field private final numerator:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "numerator"
    .parameter "denominator"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/drew/lang/Rational;->maxSimplificationCalculations:I

    .line 64
    iput p1, p0, Lcom/drew/lang/Rational;->numerator:I

    .line 65
    iput p2, p0, Lcom/drew/lang/Rational;->denominator:I

    .line 66
    return-void
.end method

.method private tooComplexForSimplification()Z
    .locals 6

    .prologue
    .line 226
    iget v2, p0, Lcom/drew/lang/Rational;->denominator:I

    iget v3, p0, Lcom/drew/lang/Rational;->numerator:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4014

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4000

    add-double v0, v2, v4

    .line 227
    .local v0, maxPossibleCalculations:D
    iget v2, p0, Lcom/drew/lang/Rational;->maxSimplificationCalculations:I

    int-to-double v2, v2

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final byteValue()B
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public doubleValue()D
    .locals 4

    .prologue
    .line 77
    iget v0, p0, Lcom/drew/lang/Rational;->numerator:I

    int-to-double v0, v0

    iget v2, p0, Lcom/drew/lang/Rational;->denominator:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 239
    instance-of v2, p1, Lcom/drew/lang/Rational;

    if-nez v2, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 242
    check-cast v0, Lcom/drew/lang/Rational;

    .line 243
    .local v0, that:Lcom/drew/lang/Rational;
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lcom/drew/lang/Rational;->numerator:I

    int-to-float v0, v0

    iget v1, p0, Lcom/drew/lang/Rational;->denominator:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final getDenominator()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/drew/lang/Rational;->denominator:I

    return v0
.end method

.method public final getNumerator()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/drew/lang/Rational;->numerator:I

    return v0
.end method

.method public getReciprocal()Lcom/drew/lang/Rational;
    .locals 3

    .prologue
    .line 167
    new-instance v0, Lcom/drew/lang/Rational;

    iget v1, p0, Lcom/drew/lang/Rational;->denominator:I

    iget v2, p0, Lcom/drew/lang/Rational;->numerator:I

    invoke-direct {v0, v1, v2}, Lcom/drew/lang/Rational;-><init>(II)V

    return-object v0
.end method

.method public getSimplifiedInstance()Lcom/drew/lang/Rational;
    .locals 4

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/drew/lang/Rational;->tooComplexForSimplification()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 280
    .restart local p0
    :cond_1
    const/4 v0, 0x2

    .local v0, factor:I
    :goto_1
    iget v1, p0, Lcom/drew/lang/Rational;->denominator:I

    iget v2, p0, Lcom/drew/lang/Rational;->numerator:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 281
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_2

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    :cond_2
    rem-int/lit8 v1, v0, 0x5

    if-nez v1, :cond_4

    const/4 v1, 0x5

    if-le v0, v1, :cond_4

    .line 280
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 284
    :cond_4
    iget v1, p0, Lcom/drew/lang/Rational;->denominator:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_3

    iget v1, p0, Lcom/drew/lang/Rational;->numerator:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_3

    .line 286
    new-instance v1, Lcom/drew/lang/Rational;

    iget v2, p0, Lcom/drew/lang/Rational;->numerator:I

    div-int/2addr v2, v0

    iget v3, p0, Lcom/drew/lang/Rational;->denominator:I

    div-int/2addr v3, v0

    invoke-direct {v1, v2, v3}, Lcom/drew/lang/Rational;-><init>(II)V

    move-object p0, v1

    goto :goto_0
.end method

.method public final intValue()I
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public isInteger()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 175
    iget v1, p0, Lcom/drew/lang/Rational;->denominator:I

    if-eq v1, v0, :cond_1

    .line 176
    iget v1, p0, Lcom/drew/lang/Rational;->denominator:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/drew/lang/Rational;->numerator:I

    iget v2, p0, Lcom/drew/lang/Rational;->denominator:I

    rem-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 177
    :cond_0
    iget v1, p0, Lcom/drew/lang/Rational;->denominator:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/drew/lang/Rational;->numerator:I

    if-nez v1, :cond_2

    .line 181
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final longValue()J
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public final shortValue()S
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toSimpleString(Z)Ljava/lang/String;
    .locals 6
    .parameter "allowDecimal"

    .prologue
    const/4 v5, 0x1

    .line 199
    iget v3, p0, Lcom/drew/lang/Rational;->denominator:I

    if-nez v3, :cond_1

    iget v3, p0, Lcom/drew/lang/Rational;->numerator:I

    if-eqz v3, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    :cond_0
    :goto_0
    return-object v0

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->isInteger()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 203
    :cond_2
    iget v3, p0, Lcom/drew/lang/Rational;->numerator:I

    if-eq v3, v5, :cond_3

    iget v3, p0, Lcom/drew/lang/Rational;->denominator:I

    iget v4, p0, Lcom/drew/lang/Rational;->numerator:I

    rem-int/2addr v3, v4

    if-nez v3, :cond_3

    .line 205
    iget v3, p0, Lcom/drew/lang/Rational;->denominator:I

    iget v4, p0, Lcom/drew/lang/Rational;->numerator:I

    div-int v1, v3, v4

    .line 206
    .local v1, newDenominator:I
    new-instance v3, Lcom/drew/lang/Rational;

    invoke-direct {v3, v5, v1}, Lcom/drew/lang/Rational;-><init>(II)V

    invoke-virtual {v3, p1}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 208
    .end local v1           #newDenominator:I
    :cond_3
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->getSimplifiedInstance()Lcom/drew/lang/Rational;

    move-result-object v2

    .line 209
    .local v2, simplifiedInstance:Lcom/drew/lang/Rational;
    if-eqz p1, :cond_4

    .line 210
    invoke-virtual {v2}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, doubleString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    .line 215
    .end local v0           #doubleString:Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Lcom/drew/lang/Rational;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/drew/lang/Rational;->numerator:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/drew/lang/Rational;->denominator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
