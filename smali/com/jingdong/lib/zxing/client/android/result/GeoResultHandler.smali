.class public final Lcom/jingdong/lib/zxing/client/android/result/GeoResultHandler;
.super Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;
.source "GeoResultHandler.java"


# static fields
.field private static final buttons:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jingdong/lib/zxing/client/android/result/GeoResultHandler;->buttons:[I

    .line 32
    return-void

    .line 31
    nop

    :array_0
    .array-data 0x4
        0x8bt 0x5t 0x7t 0x7ft
        0x7et 0x5t 0x7t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0
    .parameter "activity"
    .parameter "result"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getButtonCount()I
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/result/GeoResultHandler;->buttons:[I

    array-length v0, v0

    return v0
.end method

.method public getButtonText(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 45
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/result/GeoResultHandler;->buttons:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDisplayTitle()I
    .locals 1

    .prologue
    .line 63
    const v0, 0x7f0705dc

    return v0
.end method

.method public handleButtonPress(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/result/GeoResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/client/result/GeoParsedResult;

    .line 51
    .local v0, geoResult:Lcom/google/zxing/client/result/GeoParsedResult;
    packed-switch p1, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 53
    :pswitch_0
    invoke-virtual {v0}, Lcom/google/zxing/client/result/GeoParsedResult;->getGeoURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/lib/zxing/client/android/result/GeoResultHandler;->openMap(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :pswitch_1
    invoke-virtual {v0}, Lcom/google/zxing/client/result/GeoParsedResult;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/zxing/client/result/GeoParsedResult;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/jingdong/lib/zxing/client/android/result/GeoResultHandler;->getDirections(DD)V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
