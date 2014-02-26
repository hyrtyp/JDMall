.class Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;
.super Ljava/lang/Object;
.source "EditPersonalInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, 0x0

    .line 77
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    iget-object v5, v5, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->edit_info_name:Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;

    invoke-virtual {v5}, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, fullname:Ljava/lang/String;
    invoke-static {v0}, Lcom/jd/lottery/lib/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 80
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    sget v6, Lcom/jd/lottery/lib/R$string;->toast_fullname_is_empty:I

    invoke-static {v5, v6}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-static {v0}, Lcom/jd/lottery/lib/utils/StringUtils;->isFullName(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 84
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    sget v6, Lcom/jd/lottery/lib/R$string;->toast_fullname_is_error:I

    invoke-static {v5, v6}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    iget-object v5, v5, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->edit_info_idcard:Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;

    invoke-virtual {v5}, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, idcardnumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/jd/lottery/lib/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 90
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    sget v6, Lcom/jd/lottery/lib/R$string;->toast_idcard_is_empty:I

    invoke-static {v5, v6}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 93
    :cond_3
    new-instance v1, Lcom/jd/lottery/lib/utils/IDCard;

    invoke-direct {v1}, Lcom/jd/lottery/lib/utils/IDCard;-><init>()V

    .line 94
    .local v1, idCard:Lcom/jd/lottery/lib/utils/IDCard;
    invoke-virtual {v1, v2}, Lcom/jd/lottery/lib/utils/IDCard;->verify(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 95
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    sget v6, Lcom/jd/lottery/lib/R$string;->toast_idcard_is_error:I

    invoke-static {v5, v6}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 99
    :cond_4
    invoke-static {v2}, Lcom/jd/lottery/lib/utils/StringUtils;->isOlderThanAge18(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 100
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    sget v6, Lcom/jd/lottery/lib/R$string;->toast_idcard_isnot_older_than_18:I

    invoke-static {v5, v6}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 104
    :cond_5
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    iget-object v5, v5, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->edit_info_mobile:Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;

    invoke-virtual {v5}, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, mobile:Ljava/lang/String;
    invoke-static {v4}, Lcom/jd/lottery/lib/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 106
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    sget v6, Lcom/jd/lottery/lib/R$string;->toast_mobile_is_empty:I

    invoke-static {v5, v6}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 109
    :cond_6
    invoke-static {v4}, Lcom/jd/lottery/lib/utils/StringUtils;->validatePhone(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 110
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    sget v6, Lcom/jd/lottery/lib/R$string;->toast_mobile_is_error:I

    invoke-static {v5, v6}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 114
    :cond_7
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    #getter for: Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->modify_persional_btn_ok:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->access$0(Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setClickable(Z)V

    .line 116
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    #getter for: Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->mUserInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    invoke-static {v5}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->access$2(Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;)Lcom/jd/lottery/lib/model/UserInfoEntity;

    move-result-object v5

    iput-object v0, v5, Lcom/jd/lottery/lib/model/UserInfoEntity;->fullname:Ljava/lang/String;

    .line 117
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    #getter for: Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->mUserInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    invoke-static {v5}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->access$2(Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;)Lcom/jd/lottery/lib/model/UserInfoEntity;

    move-result-object v5

    iput-object v2, v5, Lcom/jd/lottery/lib/model/UserInfoEntity;->idcardnumber:Ljava/lang/String;

    .line 118
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    #getter for: Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->mUserInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    invoke-static {v5}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->access$2(Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;)Lcom/jd/lottery/lib/model/UserInfoEntity;

    move-result-object v5

    iput-object v4, v5, Lcom/jd/lottery/lib/model/UserInfoEntity;->mobile:Ljava/lang/String;

    .line 120
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    #getter for: Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->mUserInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    invoke-static {v5}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->access$2(Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;)Lcom/jd/lottery/lib/model/UserInfoEntity;

    move-result-object v5

    iget-object v5, v5, Lcom/jd/lottery/lib/model/UserInfoEntity;->usertype:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_8

    .line 121
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    .line 122
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "data"

    iget-object v8, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    #getter for: Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->mUserInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    invoke-static {v8}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->access$2(Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;)Lcom/jd/lottery/lib/model/UserInfoEntity;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v6

    .line 121
    invoke-virtual {v5, v9, v6}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->setResult(ILandroid/content/Intent;)V

    .line 123
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    invoke-virtual {v5}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/jd/lottery/lib/R$string;->toast_edit_personal_info_success:I

    invoke-static {v5, v6}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    .line 124
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    invoke-virtual {v5}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->finish()V

    goto/16 :goto_0

    .line 128
    :cond_8
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    iget-object v6, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    #getter for: Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->mUserInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    invoke-static {v6}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->access$2(Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;)Lcom/jd/lottery/lib/model/UserInfoEntity;

    move-result-object v6

    .line 129
    iget-object v7, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    #getter for: Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->mReceiver:Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;
    invoke-static {v7}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->access$3(Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;)Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;

    move-result-object v7

    .line 127
    invoke-static {v5, v6, v7}, Lcom/jd/lottery/lib/service/DataIntentService;->getUpdateUserInfoIntent(Landroid/content/Context;Lcom/jd/lottery/lib/model/UserInfoEntity;Landroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v3

    .line 130
    .local v3, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    invoke-virtual {v5, v3}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 131
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    #getter for: Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->access$1(Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 132
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;->this$0:Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    #getter for: Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->access$1(Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0
.end method
