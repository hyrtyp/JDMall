.class Lcom/jingdong/common/utils/ApplicationUpgradeHelper$1;
.super Ljava/lang/Object;
.source "ApplicationUpgradeHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/ApplicationUpgradeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 57
    packed-switch p2, :pswitch_data_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 62
    :pswitch_0
    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$0()Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v0

    invoke-interface {v0}, Lcom/jingdong/common/frame/IMyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v0

    #calls: Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->download(Lcom/jingdong/common/utils/HttpGroup;)V
    invoke-static {v0}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$1(Lcom/jingdong/common/utils/HttpGroup;)V

    .line 63
    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$2()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 64
    #calls: Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->updateUI()V
    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$3()V

    goto :goto_0

    .line 70
    :pswitch_1
    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$4()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 71
    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$5()Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$5()Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->stop()V

    .line 74
    :cond_1
    invoke-static {}, Lcom/jingdong/common/MyApplication;->exitAll()V

    goto :goto_0

    .line 76
    :cond_2
    invoke-static {v1}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$6(Z)V

    .line 77
    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$5()Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$5()Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->stop()V

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
