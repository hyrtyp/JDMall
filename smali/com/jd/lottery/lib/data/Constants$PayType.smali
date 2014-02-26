.class public final enum Lcom/jd/lottery/lib/data/Constants$PayType;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/lottery/lib/data/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jd/lottery/lib/data/Constants$PayType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Balance:Lcom/jd/lottery/lib/data/Constants$PayType;

.field public static final enum Beans:Lcom/jd/lottery/lib/data/Constants$PayType;

.field public static final enum Coupon:Lcom/jd/lottery/lib/data/Constants$PayType;

.field private static final synthetic ENUM$VALUES:[Lcom/jd/lottery/lib/data/Constants$PayType;

.field public static final enum PayOnline:Lcom/jd/lottery/lib/data/Constants$PayType;

.field public static final enum Score:Lcom/jd/lottery/lib/data/Constants$PayType;


# instance fields
.field private id:I

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 43
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$PayType;

    const-string v1, "Balance"

    const-string v2, "\u4f59\u989d\u652f\u4ed8"

    invoke-direct {v0, v1, v8, v4, v2}, Lcom/jd/lottery/lib/data/Constants$PayType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$PayType;->Balance:Lcom/jd/lottery/lib/data/Constants$PayType;

    .line 44
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$PayType;

    const-string v1, "PayOnline"

    const-string v2, "\u5728\u7ebf\u652f\u4ed8"

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/jd/lottery/lib/data/Constants$PayType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$PayType;->PayOnline:Lcom/jd/lottery/lib/data/Constants$PayType;

    .line 45
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$PayType;

    const-string v1, "Score"

    const-string v2, "\u79ef\u5206\u652f\u4ed8"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/jd/lottery/lib/data/Constants$PayType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$PayType;->Score:Lcom/jd/lottery/lib/data/Constants$PayType;

    .line 46
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$PayType;

    const-string v1, "Coupon"

    const-string v2, "\u4f18\u60e0\u5238\u652f\u4ed8"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/jd/lottery/lib/data/Constants$PayType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$PayType;->Coupon:Lcom/jd/lottery/lib/data/Constants$PayType;

    .line 47
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$PayType;

    const-string v1, "Beans"

    const/4 v2, 0x6

    const-string v3, "\u4eac\u8c46\u652f\u4ed8"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/jd/lottery/lib/data/Constants$PayType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$PayType;->Beans:Lcom/jd/lottery/lib/data/Constants$PayType;

    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/jd/lottery/lib/data/Constants$PayType;

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$PayType;->Balance:Lcom/jd/lottery/lib/data/Constants$PayType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$PayType;->PayOnline:Lcom/jd/lottery/lib/data/Constants$PayType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$PayType;->Score:Lcom/jd/lottery/lib/data/Constants$PayType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$PayType;->Coupon:Lcom/jd/lottery/lib/data/Constants$PayType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$PayType;->Beans:Lcom/jd/lottery/lib/data/Constants$PayType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$PayType;->ENUM$VALUES:[Lcom/jd/lottery/lib/data/Constants$PayType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "id"
    .parameter "name"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput p3, p0, Lcom/jd/lottery/lib/data/Constants$PayType;->id:I

    .line 54
    iput-object p4, p0, Lcom/jd/lottery/lib/data/Constants$PayType;->name:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jd/lottery/lib/data/Constants$PayType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/jd/lottery/lib/data/Constants$PayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/data/Constants$PayType;

    return-object v0
.end method

.method public static values()[Lcom/jd/lottery/lib/data/Constants$PayType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/jd/lottery/lib/data/Constants$PayType;->ENUM$VALUES:[Lcom/jd/lottery/lib/data/Constants$PayType;

    array-length v1, v0

    new-array v2, v1, [Lcom/jd/lottery/lib/data/Constants$PayType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jd/lottery/lib/data/Constants$PayType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/jd/lottery/lib/data/Constants$PayType;->id:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/jd/lottery/lib/data/Constants$PayType;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
