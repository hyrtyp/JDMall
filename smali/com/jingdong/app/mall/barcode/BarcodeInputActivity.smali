.class public Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "BarcodeInputActivity.java"


# instance fields
.field private cancelButton:Landroid/widget/Button;

.field private contentEdit:Landroid/widget/EditText;

.field private okButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;->submit()V

    return-void
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f0c0137

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;->contentEdit:Landroid/widget/EditText;

    .line 52
    const v0, 0x7f0c0138

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;->okButton:Landroid/widget/Button;

    .line 53
    const v0, 0x7f0c0139

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;->cancelButton:Landroid/widget/Button;

    .line 54
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;->okButton:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity$2;-><init>(Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;->cancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity$3;-><init>(Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method private submit()V
    .locals 4

    .prologue
    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;->contentEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, content:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const v2, 0x7f0701c8

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 94
    :goto_0
    return-void

    .line 86
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "SCAN_RESULT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v2, "SCAN_RESULT_FORMAT"

    const-string v3, "input"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v2, "com.jingdong.lib.zxing.client.android.SCAN"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    invoke-static {}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->closeScanApp()V

    .line 93
    invoke-virtual {p0}, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v1, 0x7f03002d

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;->setContentView(I)V

    .line 28
    invoke-direct {p0}, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;->findView()V

    .line 30
    invoke-direct {p0}, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;->init()V

    .line 33
    const v1, 0x7f0c007e

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 34
    .local v0, titleView:Landroid/widget/TextView;
    const-string v1, "\u8f93\u5165\u4e8c\u7ef4\u7801/\u6761\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 42
    new-instance v0, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity$1;-><init>(Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;)V

    .line 47
    const/16 v1, 0x64

    .line 42
    invoke-virtual {p0, v0, v1}, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;->post(Ljava/lang/Runnable;I)V

    .line 48
    return-void
.end method
