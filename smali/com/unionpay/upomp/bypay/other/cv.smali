.class public Lcom/unionpay/upomp/bypay/other/cv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/unionpay/upomp/bypay/activity/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/unionpay/upomp/bypay/activity/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/cv;->a:Lcom/unionpay/upomp/bypay/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 11

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "id"

    const-string v5, "et_username_login"

    invoke-static {v2, v3, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/cv;->a:Lcom/unionpay/upomp/bypay/activity/LoginActivity;

    invoke-static {v0, v6}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a(Lcom/unionpay/upomp/bypay/activity/LoginActivity;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "id"

    const-string v5, "et_userpass_login"

    invoke-static {v2, v3, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/cv;->a:Lcom/unionpay/upomp/bypay/activity/LoginActivity;

    invoke-static {v0, v4}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a(Lcom/unionpay/upomp/bypay/activity/LoginActivity;I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/cv;->a:Lcom/unionpay/upomp/bypay/activity/LoginActivity;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/cv;->a:Lcom/unionpay/upomp/bypay/activity/LoginActivity;

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "id"

    const-string v5, "et_userpass_login"

    invoke-static {v2, v3, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "id"

    const-string v5, "et_userpass_login"

    invoke-static {v2, v3, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a()Landroid/widget/EditText;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/unionpay/upomp/bypay/other/cv;->a:Lcom/unionpay/upomp/bypay/activity/LoginActivity;

    invoke-virtual {v7}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v9, "string"

    const-string v10, "upomp_bypay_utils_inputpsw_hint"

    invoke-static {v8, v9, v10}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/content/Context;Landroid/view/View;IIZLandroid/widget/EditText;Landroid/widget/Button;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "id"

    const-string v5, "btn_getpass"

    invoke-static {v2, v3, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->f:Ljava/lang/Boolean;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/GetpassActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/cv;->a:Lcom/unionpay/upomp/bypay/activity/LoginActivity;

    invoke-static {v0, v4}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a(Lcom/unionpay/upomp/bypay/activity/LoginActivity;I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "et_webvalidcode_login"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/cv;->a:Lcom/unionpay/upomp/bypay/activity/LoginActivity;

    invoke-static {v0, v7}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a(Lcom/unionpay/upomp/bypay/activity/LoginActivity;I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "iv_webvalidcode_login"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/cv;->a:Lcom/unionpay/upomp/bypay/activity/LoginActivity;

    invoke-static {v0, v7}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a(Lcom/unionpay/upomp/bypay/activity/LoginActivity;I)V

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a()Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/cv;->a:Lcom/unionpay/upomp/bypay/activity/LoginActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto/16 :goto_0
.end method
