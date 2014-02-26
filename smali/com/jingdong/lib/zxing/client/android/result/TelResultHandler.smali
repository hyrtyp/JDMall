.class public final Lcom/jingdong/lib/zxing/client/android/result/TelResultHandler;
.super Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;
.source "TelResultHandler.java"


# static fields
.field private static final buttons:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jingdong/lib/zxing/client/android/result/TelResultHandler;->buttons:[I

    .line 33
    return-void

    .line 32
    nop

    :array_0
    .array-data 0x4
        0x7bt 0x5t 0x7t 0x7ft
        0x76t 0x5t 0x7t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0
    .parameter "activity"
    .parameter "result"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getButtonCount()I
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/result/TelResultHandler;->buttons:[I

    array-length v0, v0

    return v0
.end method

.method public getButtonText(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 46
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/result/TelResultHandler;->buttons:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDisplayContents()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/result/TelResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, contents:Ljava/lang/String;
    const-string v1, "\r"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDisplayTitle()I
    .locals 1

    .prologue
    .line 81
    const v0, 0x7f0705e0

    return v0
.end method

.method public handleButtonPress(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/result/TelResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/client/result/TelParsedResult;

    .line 52
    .local v1, telResult:Lcom/google/zxing/client/result/TelParsedResult;
    packed-switch p1, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 54
    :pswitch_0
    invoke-virtual {v1}, Lcom/google/zxing/client/result/TelParsedResult;->getTelURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jingdong/lib/zxing/client/android/result/TelResultHandler;->dialPhoneFromUri(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/result/TelResultHandler;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 63
    :pswitch_1
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    .line 64
    .local v0, numbers:[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/google/zxing/client/result/TelParsedResult;->getNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 65
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/jingdong/lib/zxing/client/android/result/TelResultHandler;->addPhoneOnlyContact([Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
