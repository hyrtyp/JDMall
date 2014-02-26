.class public final enum Lcom/ja/sdk/framework/SendStrategyEnum;
.super Ljava/lang/Enum;
.source "SendStrategyEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ja/sdk/framework/SendStrategyEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/ja/sdk/framework/SendStrategyEnum;

.field public static final enum IMMEDIATELY:Lcom/ja/sdk/framework/SendStrategyEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/ja/sdk/framework/SendStrategyEnum;

    const-string v1, "IMMEDIATELY"

    invoke-direct {v0, v1, v2}, Lcom/ja/sdk/framework/SendStrategyEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ja/sdk/framework/SendStrategyEnum;->IMMEDIATELY:Lcom/ja/sdk/framework/SendStrategyEnum;

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/ja/sdk/framework/SendStrategyEnum;

    sget-object v1, Lcom/ja/sdk/framework/SendStrategyEnum;->IMMEDIATELY:Lcom/ja/sdk/framework/SendStrategyEnum;

    aput-object v1, v0, v2

    sput-object v0, Lcom/ja/sdk/framework/SendStrategyEnum;->ENUM$VALUES:[Lcom/ja/sdk/framework/SendStrategyEnum;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ja/sdk/framework/SendStrategyEnum;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/ja/sdk/framework/SendStrategyEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ja/sdk/framework/SendStrategyEnum;

    return-object v0
.end method

.method public static values()[Lcom/ja/sdk/framework/SendStrategyEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ja/sdk/framework/SendStrategyEnum;->ENUM$VALUES:[Lcom/ja/sdk/framework/SendStrategyEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/ja/sdk/framework/SendStrategyEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
