.class Lcom/jd/lottery/lib/formatter/LotteryBasket$TimeAndNumberPair;
.super Ljava/lang/Object;
.source "LotteryBasket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/lottery/lib/formatter/LotteryBasket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeAndNumberPair"
.end annotation


# instance fields
.field public mCheck:Z

.field public mNumber:I

.field public mTime:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0
    .parameter "time"
    .parameter "number"
    .parameter "check"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/jd/lottery/lib/formatter/LotteryBasket$TimeAndNumberPair;->mTime:I

    .line 55
    iput p2, p0, Lcom/jd/lottery/lib/formatter/LotteryBasket$TimeAndNumberPair;->mNumber:I

    .line 56
    iput-boolean p3, p0, Lcom/jd/lottery/lib/formatter/LotteryBasket$TimeAndNumberPair;->mCheck:Z

    .line 57
    return-void
.end method
