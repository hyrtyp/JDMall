.class public Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;
.super Lcom/jd/lottery/lib/activity/BaseActivity;
.source "EditPersonalInfoActivity.java"


# static fields
.field private static final USER_INFO:Ljava/lang/String; = "user_info"


# instance fields
.field edit_info_idcard:Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field edit_info_mobile:Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field edit_info_name:Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;

.field private mUserInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectBundleExtra;
        key = "user_info"
    .end annotation
.end field

.field private modify_persional_btn_cancle:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private modify_persional_btn_ok:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/jd/lottery/lib/activity/BaseActivity;-><init>()V

    .line 138
    new-instance v0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$1;-><init>(Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;)V

    iput-object v0, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->mReceiver:Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->modify_persional_btn_ok:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;)Lcom/jd/lottery/lib/model/UserInfoEntity;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->mUserInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;)Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->mReceiver:Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;

    return-object v0
.end method

.method private static getStartIntent(Landroid/app/Activity;Lcom/jd/lottery/lib/model/UserInfoEntity;)Landroid/content/Intent;
    .locals 2
    .parameter "activity"
    .parameter "userInfoEntity"

    .prologue
    .line 187
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 188
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 189
    const-string v1, "user_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 190
    return-object v0
.end method

.method public static launch(Landroid/app/Activity;Lcom/jd/lottery/lib/model/UserInfoEntity;)V
    .locals 1
    .parameter "activity"
    .parameter "userInfoEntity"

    .prologue
    .line 175
    invoke-static {p0, p1}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->getStartIntent(Landroid/app/Activity;Lcom/jd/lottery/lib/model/UserInfoEntity;)Landroid/content/Intent;

    move-result-object v0

    .line 176
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 177
    return-void
.end method

.method public static launchForResult(Landroid/app/Activity;Lcom/jd/lottery/lib/model/UserInfoEntity;I)V
    .locals 1
    .parameter "activity"
    .parameter "userInfoEntity"
    .parameter "resultCode"

    .prologue
    .line 181
    invoke-static {p0, p1}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->getStartIntent(Landroid/app/Activity;Lcom/jd/lottery/lib/model/UserInfoEntity;)Landroid/content/Intent;

    move-result-object v0

    .line 182
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 183
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/jd/lottery/lib/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 52
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 53
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    sget v1, Lcom/jd/lottery/lib/R$string;->loading:I

    invoke-virtual {p0, v1}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 56
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->mUserInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->edit_info_name:Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;

    iget-object v1, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->mUserInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;

    iget-object v1, v1, Lcom/jd/lottery/lib/model/UserInfoEntity;->fullname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->edit_info_mobile:Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;

    iget-object v1, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->mUserInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;

    iget-object v1, v1, Lcom/jd/lottery/lib/model/UserInfoEntity;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->modify_persional_btn_cancle:Landroid/widget/TextView;

    .line 63
    new-instance v1, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$2;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$2;-><init>(Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->modify_persional_btn_ok:Landroid/widget/TextView;

    new-instance v1, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity$3;-><init>(Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 171
    invoke-super {p0}, Lcom/jd/lottery/lib/activity/BaseActivity;->onPause()V

    .line 172
    return-void
.end method

.method public onPreInject()V
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/jd/lottery/lib/R$layout;->activity_edit_personal_info:I

    invoke-virtual {p0, v0}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->setContentView(I)V

    .line 45
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Lcom/jd/lottery/lib/activity/BaseActivity;->onResume()V

    .line 167
    return-void
.end method
