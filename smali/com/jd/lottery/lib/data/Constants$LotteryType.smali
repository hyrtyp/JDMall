.class public final enum Lcom/jd/lottery/lib/data/Constants$LotteryType;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/lottery/lib/data/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LotteryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jd/lottery/lib/data/Constants$LotteryType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DaLeTou:Lcom/jd/lottery/lib/data/Constants$LotteryType;

.field public static final enum DoubleColor:Lcom/jd/lottery/lib/data/Constants$LotteryType;

.field private static final synthetic ENUM$VALUES:[Lcom/jd/lottery/lib/data/Constants$LotteryType;

.field public static final enum Fucai3D:Lcom/jd/lottery/lib/data/Constants$LotteryType;

.field public static final enum NewShiCai:Lcom/jd/lottery/lib/data/Constants$LotteryType;

.field public static final enum PaiLieSan:Lcom/jd/lottery/lib/data/Constants$LotteryType;

.field public static final enum PaiLieWu:Lcom/jd/lottery/lib/data/Constants$LotteryType;

.field public static final enum QiXingCai:Lcom/jd/lottery/lib/data/Constants$LotteryType;


# instance fields
.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 70
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$LotteryType;

    const-string v1, "DoubleColor"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/jd/lottery/lib/data/Constants$LotteryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DoubleColor:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    .line 71
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$LotteryType;

    const-string v1, "DaLeTou"

    invoke-direct {v0, v1, v4, v6}, Lcom/jd/lottery/lib/data/Constants$LotteryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DaLeTou:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    .line 72
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$LotteryType;

    const-string v1, "QiXingCai"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v5, v2}, Lcom/jd/lottery/lib/data/Constants$LotteryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$LotteryType;->QiXingCai:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    .line 73
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$LotteryType;

    const-string v1, "NewShiCai"

    const/4 v2, 0x3

    const/16 v3, 0x3ea

    invoke-direct {v0, v1, v2, v3}, Lcom/jd/lottery/lib/data/Constants$LotteryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$LotteryType;->NewShiCai:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    .line 74
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$LotteryType;

    const-string v1, "Fucai3D"

    invoke-direct {v0, v1, v6, v5}, Lcom/jd/lottery/lib/data/Constants$LotteryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$LotteryType;->Fucai3D:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    .line 75
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$LotteryType;

    const-string v1, "PaiLieSan"

    invoke-direct {v0, v1, v7, v7}, Lcom/jd/lottery/lib/data/Constants$LotteryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$LotteryType;->PaiLieSan:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    .line 76
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$LotteryType;

    const-string v1, "PaiLieWu"

    invoke-direct {v0, v1, v8, v8}, Lcom/jd/lottery/lib/data/Constants$LotteryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$LotteryType;->PaiLieWu:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    .line 69
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/jd/lottery/lib/data/Constants$LotteryType;

    const/4 v1, 0x0

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DoubleColor:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DaLeTou:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$LotteryType;->QiXingCai:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$LotteryType;->NewShiCai:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$LotteryType;->Fucai3D:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$LotteryType;->PaiLieSan:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$LotteryType;->PaiLieWu:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$LotteryType;->ENUM$VALUES:[Lcom/jd/lottery/lib/data/Constants$LotteryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "id"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    iput p3, p0, Lcom/jd/lottery/lib/data/Constants$LotteryType;->id:I

    .line 83
    return-void
.end method

.method public static getCount()I
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->values()[Lcom/jd/lottery/lib/data/Constants$LotteryType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public static getTypeByValue(I)Lcom/jd/lottery/lib/data/Constants$LotteryType;
    .locals 3
    .parameter "value"

    .prologue
    .line 94
    invoke-static {}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->values()[Lcom/jd/lottery/lib/data/Constants$LotteryType;

    move-result-object v1

    .line 95
    .local v1, types:[Lcom/jd/lottery/lib/data/Constants$LotteryType;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 100
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 96
    :cond_0
    aget-object v2, v1, v0

    iget v2, v2, Lcom/jd/lottery/lib/data/Constants$LotteryType;->id:I

    if-ne p0, v2, :cond_1

    .line 97
    aget-object v2, v1, v0

    goto :goto_1

    .line 95
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jd/lottery/lib/data/Constants$LotteryType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/jd/lottery/lib/data/Constants$LotteryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/data/Constants$LotteryType;

    return-object v0
.end method

.method public static values()[Lcom/jd/lottery/lib/data/Constants$LotteryType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/jd/lottery/lib/data/Constants$LotteryType;->ENUM$VALUES:[Lcom/jd/lottery/lib/data/Constants$LotteryType;

    array-length v1, v0

    new-array v2, v1, [Lcom/jd/lottery/lib/data/Constants$LotteryType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/jd/lottery/lib/data/Constants$LotteryType;->id:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
