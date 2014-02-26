.class public final Lcom/jingdong/lib/zxing/client/android/result/WifiResultHandler;
.super Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;
.source "WifiResultHandler.java"


# instance fields
.field private final parent:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

.field private final taskExec:Lcom/jingdong/lib/zxing/client/android/executor/AsyncTaskExecInterface;


# direct methods
.method public constructor <init>(Lcom/jingdong/lib/zxing/client/android/CaptureActivity;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 1
    .parameter "activity"
    .parameter "result"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    .line 43
    iput-object p1, p0, Lcom/jingdong/lib/zxing/client/android/result/WifiResultHandler;->parent:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    .line 44
    new-instance v0, Lcom/jingdong/lib/zxing/client/android/executor/AsyncTaskExecManager;

    invoke-direct {v0}, Lcom/jingdong/lib/zxing/client/android/executor/AsyncTaskExecManager;-><init>()V

    invoke-virtual {v0}, Lcom/jingdong/lib/zxing/client/android/executor/AsyncTaskExecManager;->build()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/lib/zxing/client/android/executor/AsyncTaskExecInterface;

    iput-object v0, p0, Lcom/jingdong/lib/zxing/client/android/result/WifiResultHandler;->taskExec:Lcom/jingdong/lib/zxing/client/android/executor/AsyncTaskExecInterface;

    .line 45
    return-void
.end method


# virtual methods
.method public getButtonCount()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public getButtonText(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 56
    const v0, 0x7f07058e

    return v0
.end method

.method public getDisplayContents()Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 75
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/result/WifiResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/client/result/WifiParsedResult;

    .line 76
    .local v3, wifiResult:Lcom/google/zxing/client/result/WifiParsedResult;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x32

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 77
    .local v0, contents:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/jingdong/lib/zxing/client/android/result/WifiResultHandler;->parent:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    const v5, 0x7f0705e7

    invoke-virtual {v4, v5}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, wifiLabel:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/zxing/client/result/WifiParsedResult;->getSsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 80
    iget-object v4, p0, Lcom/jingdong/lib/zxing/client/android/result/WifiResultHandler;->parent:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    const v5, 0x7f0705e8

    invoke-virtual {v4, v5}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, typeLabel:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/zxing/client/result/WifiParsedResult;->getNetworkEncryption()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-static {v4, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getDisplayTitle()I
    .locals 1

    .prologue
    .line 88
    const v0, 0x7f0705e3

    return v0
.end method

.method public handleButtonPress(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/result/WifiResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/client/result/WifiParsedResult;

    .line 63
    .local v1, wifiResult:Lcom/google/zxing/client/result/WifiParsedResult;
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/result/WifiResultHandler;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 64
    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 65
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/result/WifiResultHandler;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0705e6

    .line 66
    const/4 v4, 0x1

    .line 65
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 70
    .end local v0           #wifiManager:Landroid/net/wifi/WifiManager;
    .end local v1           #wifiResult:Lcom/google/zxing/client/result/WifiParsedResult;
    :cond_0
    return-void
.end method
