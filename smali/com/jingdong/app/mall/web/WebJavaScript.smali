.class public final Lcom/jingdong/app/mall/web/WebJavaScript;
.super Ljava/lang/Object;
.source "WebJavaScript.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WebJavaScript"


# instance fields
.field private webActivity:Lcom/jingdong/app/mall/utils/MyActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/utils/MyActivity;)V
    .locals 0
    .parameter "webActivity"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/jingdong/app/mall/web/WebJavaScript;->webActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/web/WebJavaScript;)Lcom/jingdong/app/mall/utils/MyActivity;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/jingdong/app/mall/web/WebJavaScript;->webActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    return-object v0
.end method


# virtual methods
.method public barcodeCallBack()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jingdong/app/mall/web/WebJavaScript;->webActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/web/WebJavaScript;->webActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-static {v0}, Lcom/jingdong/app/mall/utils/BarcodeUtil;->scanBarcode(Lcom/jingdong/app/mall/utils/MyActivity;)V

    goto :goto_0
.end method

.method public callContacts()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jingdong/app/mall/web/WebJavaScript;->webActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    if-nez v0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/web/WebJavaScript;->webActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-static {v0}, Lcom/jingdong/common/utils/ReadContactsUtil;->readContacts(Lcom/jingdong/common/frame/IMyActivity;)V

    goto :goto_0
.end method

.method public satisfactionCallBack(Z)V
    .locals 2
    .parameter "isSuccess"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/jingdong/app/mall/web/WebJavaScript;->webActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/jingdong/app/mall/web/WebJavaScript;->webActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v1, Lcom/jingdong/app/mall/web/WebJavaScript$2;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/web/WebJavaScript$2;-><init>(Lcom/jingdong/app/mall/web/WebJavaScript;Z)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 109
    :cond_0
    return-void
.end method

.method public takeCouponCallBack()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jingdong/app/mall/web/WebJavaScript;->webActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/jingdong/app/mall/web/WebJavaScript;->webActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v1, Lcom/jingdong/app/mall/web/WebJavaScript$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/web/WebJavaScript$1;-><init>(Lcom/jingdong/app/mall/web/WebJavaScript;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 84
    :cond_0
    return-void
.end method

.method public voiceCallBack()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jingdong/app/mall/web/WebJavaScript;->webActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/web/WebJavaScript;->webActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-static {v0}, Lcom/jingdong/common/utils/VoiceUtil;->showVoiceDialog(Lcom/jingdong/common/frame/IMyActivity;)V

    goto :goto_0
.end method
