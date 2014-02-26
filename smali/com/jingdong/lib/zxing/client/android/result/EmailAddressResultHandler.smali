.class public final Lcom/jingdong/lib/zxing/client/android/result/EmailAddressResultHandler;
.super Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;
.source "EmailAddressResultHandler.java"


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

    sput-object v0, Lcom/jingdong/lib/zxing/client/android/result/EmailAddressResultHandler;->buttons:[I

    .line 32
    return-void

    .line 31
    nop

    :array_0
    .array-data 0x4
        0x7dt 0x5t 0x7t 0x7ft
        0x76t 0x5t 0x7t 0x7ft
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
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/result/EmailAddressResultHandler;->buttons:[I

    array-length v0, v0

    return v0
.end method

.method public getButtonText(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 45
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/result/EmailAddressResultHandler;->buttons:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDisplayTitle()I
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f0705db

    return v0
.end method

.method public handleButtonPress(I)V
    .locals 6
    .parameter "index"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/result/EmailAddressResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    .line 51
    .local v1, emailResult:Lcom/google/zxing/client/result/EmailAddressParsedResult;
    packed-switch p1, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 53
    :pswitch_0
    invoke-virtual {v1}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getMailtoURI()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {v1}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getSubject()Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-virtual {v1}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getBody()Ljava/lang/String;

    move-result-object v5

    .line 53
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/jingdong/lib/zxing/client/android/result/EmailAddressResultHandler;->sendEmailFromUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :pswitch_1
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    .line 59
    .local v0, addresses:[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 60
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/jingdong/lib/zxing/client/android/result/EmailAddressResultHandler;->addEmailOnlyContact([Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
