.class public final Lcom/jingdong/lib/zxing/client/android/result/TextResultHandler;
.super Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;
.source "TextResultHandler.java"


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

    sput-object v0, Lcom/jingdong/lib/zxing/client/android/result/TextResultHandler;->buttons:[I

    .line 35
    return-void

    .line 33
    nop

    :array_0
    .array-data 0x4
        0x8dt 0x5t 0x7t 0x7ft
        0x87t 0x5t 0x7t 0x7ft
        0x88t 0x5t 0x7t 0x7ft
        0x7at 0x5t 0x7t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V
    .locals 0
    .parameter "activity"
    .parameter "result"
    .parameter "rawResult"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getButtonCount()I
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/result/TextResultHandler;->hasCustomProductSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jingdong/lib/zxing/client/android/result/TextResultHandler;->buttons:[I

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/result/TextResultHandler;->buttons:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getButtonText(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 49
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/result/TextResultHandler;->buttons:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDisplayTitle()I
    .locals 1

    .prologue
    .line 73
    const v0, 0x7f0705e1

    return v0
.end method

.method public handleButtonPress(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/result/TextResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, text:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 57
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/jingdong/lib/zxing/client/android/result/TextResultHandler;->webSearch(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/jingdong/lib/zxing/client/android/result/TextResultHandler;->shareByEmail(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/jingdong/lib/zxing/client/android/result/TextResultHandler;->shareBySMS(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/jingdong/lib/zxing/client/android/result/TextResultHandler;->fillInCustomSearchURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/lib/zxing/client/android/result/TextResultHandler;->openURL(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
