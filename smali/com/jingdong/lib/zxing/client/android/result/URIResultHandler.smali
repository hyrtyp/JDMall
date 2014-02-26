.class public final Lcom/jingdong/lib/zxing/client/android/result/URIResultHandler;
.super Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;
.source "URIResultHandler.java"


# static fields
.field private static final SECURE_PROTOCOLS:[Ljava/lang/String;

.field private static final buttons:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "otpauth:"

    aput-object v2, v0, v1

    sput-object v0, Lcom/jingdong/lib/zxing/client/android/result/URIResultHandler;->SECURE_PROTOCOLS:[Ljava/lang/String;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jingdong/lib/zxing/client/android/result/URIResultHandler;->buttons:[I

    .line 41
    return-void

    .line 39
    nop

    :array_0
    .array-data 0x4
        0x82t 0x5t 0x7t 0x7ft
        0x87t 0x5t 0x7t 0x7ft
        0x88t 0x5t 0x7t 0x7ft
        0x84t 0x5t 0x7t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0
    .parameter "activity"
    .parameter "result"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    .line 45
    return-void
.end method


# virtual methods
.method public areContentsSecure()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/result/URIResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/client/result/URIParsedResult;

    .line 89
    .local v2, uriResult:Lcom/google/zxing/client/result/URIParsedResult;
    invoke-virtual {v2}, Lcom/google/zxing/client/result/URIParsedResult;->getURI()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, uri:Ljava/lang/String;
    sget-object v5, Lcom/jingdong/lib/zxing/client/android/result/URIResultHandler;->SECURE_PROTOCOLS:[Ljava/lang/String;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-lt v4, v6, :cond_0

    .line 95
    :goto_1
    return v3

    .line 90
    :cond_0
    aget-object v0, v5, v4

    .line 91
    .local v0, secure:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 92
    const/4 v3, 0x1

    goto :goto_1

    .line 90
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getButtonCount()I
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/result/URIResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/client/result/URIParsedResult;

    .line 50
    invoke-virtual {v0}, Lcom/google/zxing/client/result/URIParsedResult;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/jingdong/lib/zxing/client/android/LocaleManager;->isBookSearchUrl(Ljava/lang/String;)Z

    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/result/URIResultHandler;->buttons:[I

    array-length v0, v0

    .line 53
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/result/URIResultHandler;->buttons:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getButtonText(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 58
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/result/URIResultHandler;->buttons:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDisplayTitle()I
    .locals 1

    .prologue
    .line 83
    const v0, 0x7f0705e2

    return v0
.end method

.method public handleButtonPress(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/result/URIResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/client/result/URIParsedResult;

    .line 64
    .local v1, uriResult:Lcom/google/zxing/client/result/URIParsedResult;
    invoke-virtual {v1}, Lcom/google/zxing/client/result/URIParsedResult;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, uri:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 67
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/jingdong/lib/zxing/client/android/result/URIResultHandler;->openURL(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/jingdong/lib/zxing/client/android/result/URIResultHandler;->shareByEmail(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/jingdong/lib/zxing/client/android/result/URIResultHandler;->shareBySMS(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/jingdong/lib/zxing/client/android/result/URIResultHandler;->searchBookContents(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
