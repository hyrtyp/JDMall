.class public Lcom/unionpay/upomp/bypay/other/fz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;


# direct methods
.method public constructor <init>(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/fz;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 11

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "spnr_bank_vc_pay_valuecard"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/fz;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0, v4}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->c(Lcom/unionpay/upomp/bypay/activity/PayItActivity;I)V

    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "et_card_id_content_vc_pay_valuecard"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/fz;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    iget-boolean v0, v0, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/fz;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_2
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/fz;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->c(Lcom/unionpay/upomp/bypay/activity/PayItActivity;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "btn_card_pass_content_vc_pay_valuecard"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/fz;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0, v5}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->c(Lcom/unionpay/upomp/bypay/activity/PayItActivity;I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/fz;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->e()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "id"

    const-string v5, "btn_card_pass_content_vc_pay_valuecard"

    invoke-static {v2, v3, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "id"

    const-string v5, "btn_card_pass_content_vc_pay_valuecard"

    invoke-static {v2, v3, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x6

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->g()Landroid/widget/EditText;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/unionpay/upomp/bypay/other/fz;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v7}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v9, "string"

    const-string v10, "upomp_bypay_utils_valuecardpsw_hint"

    invoke-static {v8, v9, v10}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/content/Context;Landroid/view/View;IIZLandroid/widget/EditText;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "et_webvalidcode_content_pay_valuecard"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/fz;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0, v6}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->c(Lcom/unionpay/upomp/bypay/activity/PayItActivity;I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "iv_webvalidcode_content_pay_valuecard"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/fz;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0, v6}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->c(Lcom/unionpay/upomp/bypay/activity/PayItActivity;I)V

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->d()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->d()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->d()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->d()Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->g()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->g()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/fz;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->g()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto/16 :goto_0
.end method
