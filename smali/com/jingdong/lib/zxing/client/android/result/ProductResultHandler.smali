.class public final Lcom/jingdong/lib/zxing/client/android/result/ProductResultHandler;
.super Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;
.source "ProductResultHandler.java"


# static fields
.field private static final buttons:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jingdong/lib/zxing/client/android/result/ProductResultHandler;->buttons:[I

    .line 34
    return-void

    .line 33
    nop

    :array_0
    .array-data 0x4
        0x83t 0x5t 0x7t 0x7ft
        0x8dt 0x5t 0x7t 0x7ft
        0x7at 0x5t 0x7t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V
    .locals 1
    .parameter "activity"
    .parameter "result"
    .parameter "rawResult"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V

    .line 39
    new-instance v0, Lcom/jingdong/lib/zxing/client/android/result/ProductResultHandler$1;

    invoke-direct {v0, p0}, Lcom/jingdong/lib/zxing/client/android/result/ProductResultHandler$1;-><init>(Lcom/jingdong/lib/zxing/client/android/result/ProductResultHandler;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/lib/zxing/client/android/result/ProductResultHandler;->showGoogleShopperButton(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getButtonCount()I
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/result/ProductResultHandler;->hasCustomProductSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jingdong/lib/zxing/client/android/result/ProductResultHandler;->buttons:[I

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/result/ProductResultHandler;->buttons:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getButtonText(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 55
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/result/ProductResultHandler;->buttons:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDisplayTitle()I
    .locals 1

    .prologue
    .line 77
    const v0, 0x7f0705de

    return v0
.end method

.method public handleButtonPress(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/result/ProductResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/client/result/ProductParsedResult;

    .line 61
    .local v0, productResult:Lcom/google/zxing/client/result/ProductParsedResult;
    packed-switch p1, :pswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 63
    :pswitch_0
    invoke-virtual {v0}, Lcom/google/zxing/client/result/ProductParsedResult;->getNormalizedProductID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/lib/zxing/client/android/result/ProductResultHandler;->openProductSearch(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :pswitch_1
    invoke-virtual {v0}, Lcom/google/zxing/client/result/ProductParsedResult;->getNormalizedProductID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/lib/zxing/client/android/result/ProductResultHandler;->webSearch(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :pswitch_2
    invoke-virtual {v0}, Lcom/google/zxing/client/result/ProductParsedResult;->getNormalizedProductID()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {p0, v1}, Lcom/jingdong/lib/zxing/client/android/result/ProductResultHandler;->fillInCustomSearchURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/lib/zxing/client/android/result/ProductResultHandler;->openURL(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
