.class public final enum Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;
.super Ljava/lang/Enum;
.source "BallSelectorPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BallColer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLUE:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

.field private static final synthetic ENUM$VALUES:[Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

.field public static final enum RED:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    new-instance v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    const-string v1, "RED"

    invoke-direct {v0, v1, v2}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;->RED:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    new-instance v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    const-string v1, "BLUE"

    invoke-direct {v0, v1, v3}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;->BLUE:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    .line 143
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    sget-object v1, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;->RED:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;->BLUE:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    aput-object v1, v0, v3

    sput-object v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;->ENUM$VALUES:[Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    return-object v0
.end method

.method public static values()[Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;->ENUM$VALUES:[Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    array-length v1, v0

    new-array v2, v1, [Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
