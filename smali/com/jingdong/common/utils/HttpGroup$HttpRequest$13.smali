.class Lcom/jingdong/common/utils/HttpGroup$HttpRequest$13;
.super Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;
.source "HttpGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->alertSignatureFailedDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field application:Lcom/jingdong/common/MyApplication;

.field final mainFrameActivity:Lcom/jingdong/common/frame/IMainActivity;

.field final synthetic this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$13;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 830
    invoke-direct {p0, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    .line 831
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$13;->application:Lcom/jingdong/common/MyApplication;

    .line 832
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$13;->application:Lcom/jingdong/common/MyApplication;

    invoke-virtual {v0}, Lcom/jingdong/common/MyApplication;->getMainFrameActivity()Lcom/jingdong/common/frame/IMainActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$13;->mainFrameActivity:Lcom/jingdong/common/frame/IMainActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 836
    packed-switch p2, :pswitch_data_0

    .line 841
    :goto_0
    return-void

    .line 838
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$13;->mainFrameActivity:Lcom/jingdong/common/frame/IMainActivity;

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$13;->actionOfficialWebsite(Lcom/jingdong/common/frame/IMainActivity;)V

    goto :goto_0

    .line 836
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 846
    const/4 v0, 0x1

    return v0
.end method
