.class Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$1;
.super Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;
.source "ConfirmOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    .line 182
    invoke-direct {p0}, Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 6
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 186
    const-string v1, "@@@@@@@@@@@%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    const-string v1, "error"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    .line 188
    .local v0, error:Lcom/jd/lottery/lib/data/Constants$API_ERROR;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->UNDEFINED:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    if-eq v0, v1, :cond_0

    .line 189
    sget-object v1, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->SUCCESS:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    if-eq v0, v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->getErrMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 213
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    const-string v1, "data"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jd/lottery/lib/model/UserInfoEntity;

    #setter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    invoke-static {v2, v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;Lcom/jd/lottery/lib/model/UserInfoEntity;)V

    .line 196
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$1(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/model/UserInfoEntity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$1(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/model/UserInfoEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jd/lottery/lib/model/UserInfoEntity;->fullname:Ljava/lang/String;

    invoke-static {v1}, Lcom/jd/lottery/lib/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$1(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/model/UserInfoEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jd/lottery/lib/model/UserInfoEntity;->idcardnumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/jd/lottery/lib/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$1(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/model/UserInfoEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jd/lottery/lib/model/UserInfoEntity;->mobile:Ljava/lang/String;

    invoke-static {v1}, Lcom/jd/lottery/lib/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_info_content:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$2(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 201
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_info_no:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$3(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 204
    :cond_2
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_info_content:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$2(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 205
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_info_no:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$3(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_info_name:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$4(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    invoke-static {v2}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$1(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/model/UserInfoEntity;

    move-result-object v2

    iget-object v2, v2, Lcom/jd/lottery/lib/model/UserInfoEntity;->fullname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_info_idcard:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$5(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;

    move-result-object v1

    .line 209
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    invoke-static {v2}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$1(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/model/UserInfoEntity;

    move-result-object v2

    iget-object v2, v2, Lcom/jd/lottery/lib/model/UserInfoEntity;->idcardnumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/StringUtils;->idCardNumber2Safe4Show(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_info_mobile:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$6(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;

    move-result-object v1

    .line 212
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    invoke-static {v2}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$1(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/model/UserInfoEntity;

    move-result-object v2

    iget-object v2, v2, Lcom/jd/lottery/lib/model/UserInfoEntity;->mobile:Ljava/lang/String;

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/StringUtils;->phoneNum2Safe4Show(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
