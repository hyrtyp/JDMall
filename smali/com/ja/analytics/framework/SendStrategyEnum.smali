.class public final enum Lcom/ja/analytics/framework/SendStrategyEnum;
.super Ljava/lang/Enum;
.source "SendStrategyEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ja/analytics/framework/SendStrategyEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/ja/analytics/framework/SendStrategyEnum;

.field public static final enum IMMEDIATELY:Lcom/ja/analytics/framework/SendStrategyEnum;

.field public static final enum INTERVAL:Lcom/ja/analytics/framework/SendStrategyEnum;

.field public static final enum LAUNCH:Lcom/ja/analytics/framework/SendStrategyEnum;

.field public static final enum UNKOWN:Lcom/ja/analytics/framework/SendStrategyEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/ja/analytics/framework/SendStrategyEnum;

    const-string v1, "IMMEDIATELY"

    invoke-direct {v0, v1, v2}, Lcom/ja/analytics/framework/SendStrategyEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ja/analytics/framework/SendStrategyEnum;->IMMEDIATELY:Lcom/ja/analytics/framework/SendStrategyEnum;

    .line 5
    new-instance v0, Lcom/ja/analytics/framework/SendStrategyEnum;

    const-string v1, "LAUNCH"

    invoke-direct {v0, v1, v3}, Lcom/ja/analytics/framework/SendStrategyEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ja/analytics/framework/SendStrategyEnum;->LAUNCH:Lcom/ja/analytics/framework/SendStrategyEnum;

    .line 6
    new-instance v0, Lcom/ja/analytics/framework/SendStrategyEnum;

    const-string v1, "INTERVAL"

    invoke-direct {v0, v1, v4}, Lcom/ja/analytics/framework/SendStrategyEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ja/analytics/framework/SendStrategyEnum;->INTERVAL:Lcom/ja/analytics/framework/SendStrategyEnum;

    .line 7
    new-instance v0, Lcom/ja/analytics/framework/SendStrategyEnum;

    const-string v1, "UNKOWN"

    invoke-direct {v0, v1, v5}, Lcom/ja/analytics/framework/SendStrategyEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ja/analytics/framework/SendStrategyEnum;->UNKOWN:Lcom/ja/analytics/framework/SendStrategyEnum;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ja/analytics/framework/SendStrategyEnum;

    sget-object v1, Lcom/ja/analytics/framework/SendStrategyEnum;->IMMEDIATELY:Lcom/ja/analytics/framework/SendStrategyEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ja/analytics/framework/SendStrategyEnum;->LAUNCH:Lcom/ja/analytics/framework/SendStrategyEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ja/analytics/framework/SendStrategyEnum;->INTERVAL:Lcom/ja/analytics/framework/SendStrategyEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ja/analytics/framework/SendStrategyEnum;->UNKOWN:Lcom/ja/analytics/framework/SendStrategyEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ja/analytics/framework/SendStrategyEnum;->ENUM$VALUES:[Lcom/ja/analytics/framework/SendStrategyEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ja/analytics/framework/SendStrategyEnum;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/ja/analytics/framework/SendStrategyEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ja/analytics/framework/SendStrategyEnum;

    return-object v0
.end method

.method public static values()[Lcom/ja/analytics/framework/SendStrategyEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ja/analytics/framework/SendStrategyEnum;->ENUM$VALUES:[Lcom/ja/analytics/framework/SendStrategyEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/ja/analytics/framework/SendStrategyEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
