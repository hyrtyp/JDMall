.class public Lcom/drew/imaging/PhotographicConversions;
.super Ljava/lang/Object;
.source "PhotographicConversions.java"


# static fields
.field public static final ROOT_TWO:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lcom/drew/imaging/PhotographicConversions;->ROOT_TWO:D

    .line 20
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static apertureToFStop(D)D
    .locals 4
    .parameter "aperture"

    .prologue
    .line 34
    sget-wide v2, Lcom/drew/imaging/PhotographicConversions;->ROOT_TWO:D

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 35
    .local v0, fStop:D
    return-wide v0
.end method

.method public static shutterSpeedToExposureTime(D)D
    .locals 4
    .parameter "shutterSpeed"

    .prologue
    .line 49
    const-wide/high16 v0, 0x3ff0

    const-wide/high16 v2, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v0, v0

    return-wide v0
.end method
