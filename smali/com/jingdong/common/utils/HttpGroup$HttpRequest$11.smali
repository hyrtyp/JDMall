.class Lcom/jingdong/common/utils/HttpGroup$HttpRequest$11;
.super Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;
.source "HttpGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->alertErrorDialog(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$11;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 675
    invoke-direct {p0, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 679
    packed-switch p2, :pswitch_data_0

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 681
    :pswitch_0
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$11;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v2, v2, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getAlertErrorDialogType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 682
    invoke-virtual {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$11;->actionCancel()V

    .line 683
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$11;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #getter for: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->this$0:Lcom/jingdong/common/utils/HttpGroup;
    invoke-static {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$14(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    iget-object v2, v2, Lcom/jingdong/common/utils/HttpGroup;->httpGroupSetting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->getMyActivity()Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v1

    .line 684
    .local v1, myActivity:Lcom/jingdong/common/frame/IMyActivity;
    if-eqz v1, :cond_0

    .line 685
    const/4 v0, 0x0

    .line 686
    .local v0, intent:Landroid/content/Intent;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_1

    .line 688
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 693
    .restart local v0       #intent:Landroid/content/Intent;
    :goto_1
    invoke-interface {v1, v0}, Lcom/jingdong/common/frame/IMyActivity;->startActivityNoException(Landroid/content/Intent;)V

    goto :goto_0

    .line 690
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 696
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #myActivity:Lcom/jingdong/common/frame/IMyActivity;
    :cond_2
    invoke-virtual {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$11;->actionRetry()V

    goto :goto_0

    .line 700
    :pswitch_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$11;->actionCancel()V

    .line 701
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$11;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v2, v2, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getAlertErrorDialogType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 702
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$11;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #getter for: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->this$0:Lcom/jingdong/common/utils/HttpGroup;
    invoke-static {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$14(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    iget-object v2, v2, Lcom/jingdong/common/utils/HttpGroup;->httpGroupSetting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->getMyActivity()Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v1

    .line 703
    .restart local v1       #myActivity:Lcom/jingdong/common/frame/IMyActivity;
    if-eqz v1, :cond_0

    .line 704
    new-instance v2, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$11$1;

    invoke-direct {v2, p0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$11$1;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest$11;Lcom/jingdong/common/frame/IMyActivity;)V

    .line 710
    const/16 v3, 0x32

    .line 704
    invoke-interface {v1, v2, v3}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 679
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
