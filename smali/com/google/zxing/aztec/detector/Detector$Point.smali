.class final Lcom/google/zxing/aztec/detector/Detector$Point;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/aztec/detector/Detector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Point"
.end annotation


# instance fields
.field public final x:I

.field public final y:I


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    iput p1, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 612
    iput p2, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 613
    return-void
.end method

.method synthetic constructor <init>(IILcom/google/zxing/aztec/detector/Detector$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 602
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    return-void
.end method


# virtual methods
.method public toResultPoint()Lcom/google/zxing/ResultPoint;
    .locals 3

    .prologue
    .line 607
    new-instance v0, Lcom/google/zxing/ResultPoint;

    iget v1, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v0
.end method
