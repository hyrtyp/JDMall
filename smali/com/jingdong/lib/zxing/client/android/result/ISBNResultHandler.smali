.class public final Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler;
.super Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;
.source "ISBNResultHandler.java"


# static fields
.field private static final buttons:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler;->buttons:[I

    .line 35
    return-void

    .line 33
    nop

    :array_0
    .array-data 0x4
        0x83t 0x5t 0x7t 0x7ft
        0x78t 0x5t 0x7t 0x7ft
        0x84t 0x5t 0x7t 0x7ft
        0x7at 0x5t 0x7t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V
    .locals 1
    .parameter "activity"
    .parameter "result"
    .parameter "rawResult"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V

    .line 40
    new-instance v0, Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler$1;

    invoke-direct {v0, p0}, Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler$1;-><init>(Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler;->showGoogleShopperButton(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getButtonCount()I
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler;->hasCustomProductSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler;->buttons:[I

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler;->buttons:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getButtonText(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 56
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler;->buttons:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDisplayTitle()I
    .locals 1

    .prologue
    .line 80
    const v0, 0x7f0705dd

    return v0
.end method

.method public handleButtonPress(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/client/result/ISBNParsedResult;

    .line 62
    .local v0, isbnResult:Lcom/google/zxing/client/result/ISBNParsedResult;
    packed-switch p1, :pswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 64
    :pswitch_0
    invoke-virtual {v0}, Lcom/google/zxing/client/result/ISBNParsedResult;->getISBN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler;->openProductSearch(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :pswitch_1
    invoke-virtual {v0}, Lcom/google/zxing/client/result/ISBNParsedResult;->getISBN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler;->openBookSearch(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :pswitch_2
    invoke-virtual {v0}, Lcom/google/zxing/client/result/ISBNParsedResult;->getISBN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler;->searchBookContents(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :pswitch_3
    invoke-virtual {v0}, Lcom/google/zxing/client/result/ISBNParsedResult;->getISBN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler;->fillInCustomSearchURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler;->openURL(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
