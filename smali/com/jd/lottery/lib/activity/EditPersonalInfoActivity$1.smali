.class Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$1;
.super Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;
.source "EditPersonalInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$1;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    .line 138
    invoke-direct {p0}, Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 5
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 142
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$1;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    #getter for: Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->modify_persional_btn_ok:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->access$0(Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 144
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$1;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    #getter for: Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->access$1(Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$1;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    #getter for: Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->access$1(Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 148
    :cond_0
    const-string v1, "data"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/model/UserInfoEntity;

    .line 149
    .local v0, infoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    if-nez v0, :cond_1

    .line 150
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$1;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/jd/lottery/lib/R$string;->toast_procerss_error:I

    invoke-static {v1, v2}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    .line 160
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$1;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    .line 154
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 153
    invoke-virtual {v1, v4, v2}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->setResult(ILandroid/content/Intent;)V

    .line 155
    const-string v1, "@@@@@@@@@@@%s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$1;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/jd/lottery/lib/R$string;->toast_edit_personal_info_success:I

    invoke-static {v1, v2}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    .line 157
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$1;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->finish()V

    goto :goto_0
.end method
