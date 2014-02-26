.class public Lcom/jingdong/app/mall/utils/BarcodeUtil;
.super Ljava/lang/Object;
.source "BarcodeUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BarcodeUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleBarcodeResult(Landroid/content/Context;Landroid/content/Intent;Landroid/webkit/WebView;)V
    .locals 4
    .parameter "context"
    .parameter "intent"
    .parameter "web"

    .prologue
    .line 54
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    new-instance v0, Lcom/jingdong/common/entity/BarcodeRecord;

    invoke-direct {v0}, Lcom/jingdong/common/entity/BarcodeRecord;-><init>()V

    .line 58
    .local v0, barcodeRecord1:Lcom/jingdong/common/entity/BarcodeRecord;
    const-string v2, "SCAN_RESULT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jingdong/common/entity/BarcodeRecord;->setContent(Ljava/lang/String;)V

    .line 59
    const-string v2, "SCAN_RESULT_FORMAT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jingdong/common/entity/BarcodeRecord;->setFormat(Ljava/lang/String;)V

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:scanCallBack(\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jingdong/common/entity/BarcodeRecord;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, url:Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static scanBarcode(Lcom/jingdong/app/mall/utils/MyActivity;)V
    .locals 3
    .parameter "myActivity"

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 36
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.jingdong.lib.zxing.client.android.SCAN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v1, "SCAN_FORMATS"

    const-string v2, "EAN_13,EAN_8,QR_CODE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const/16 v1, 0x4d3

    invoke-virtual {p0, v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
