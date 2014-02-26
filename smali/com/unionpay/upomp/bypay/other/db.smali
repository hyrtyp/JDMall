.class public Lcom/unionpay/upomp/bypay/other/db;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/unionpay/upomp/bypay/activity/EditpassActivity;


# direct methods
.method public constructor <init>(Lcom/unionpay/upomp/bypay/activity/EditpassActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/db;->a:Lcom/unionpay/upomp/bypay/activity/EditpassActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 11

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "btn_userpass_old_editpass"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/db;->a:Lcom/unionpay/upomp/bypay/activity/EditpassActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a(Lcom/unionpay/upomp/bypay/activity/EditpassActivity;I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/db;->a:Lcom/unionpay/upomp/bypay/activity/EditpassActivity;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/db;->a:Lcom/unionpay/upomp/bypay/activity/EditpassActivity;

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "id"

    const-string v4, "btn_userpass_old_editpass"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "id"

    const-string v4, "btn_userpass_old_editpass"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a()Landroid/widget/Button;

    move-result-object v6

    iget-object v7, p0, Lcom/unionpay/upomp/bypay/other/db;->a:Lcom/unionpay/upomp/bypay/activity/EditpassActivity;

    invoke-virtual {v7}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v9, "string"

    const-string v10, "upomp_bypay_editpassactivity_inputoldpsw_hint"

    invoke-static {v8, v9, v10}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/content/Context;Landroid/view/View;IIZLandroid/widget/EditText;Landroid/widget/Button;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "btn_userpass_new_editpass"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/db;->a:Lcom/unionpay/upomp/bypay/activity/EditpassActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a(Lcom/unionpay/upomp/bypay/activity/EditpassActivity;I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/db;->a:Lcom/unionpay/upomp/bypay/activity/EditpassActivity;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/db;->a:Lcom/unionpay/upomp/bypay/activity/EditpassActivity;

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "id"

    const-string v4, "btn_userpass_new_editpass"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "id"

    const-string v4, "btn_userpass_new_editpass"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->b()Landroid/widget/Button;

    move-result-object v6

    iget-object v7, p0, Lcom/unionpay/upomp/bypay/other/db;->a:Lcom/unionpay/upomp/bypay/activity/EditpassActivity;

    invoke-virtual {v7}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v9, "string"

    const-string v10, "upomp_bypay_utils_inputnewpsw_hint"

    invoke-static {v8, v9, v10}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/content/Context;Landroid/view/View;IIZLandroid/widget/EditText;Landroid/widget/Button;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "btn_userpass_re_editpass"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/db;->a:Lcom/unionpay/upomp/bypay/activity/EditpassActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a(Lcom/unionpay/upomp/bypay/activity/EditpassActivity;I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/db;->a:Lcom/unionpay/upomp/bypay/activity/EditpassActivity;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/db;->a:Lcom/unionpay/upomp/bypay/activity/EditpassActivity;

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "id"

    const-string v4, "btn_userpass_re_editpass"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "id"

    const-string v4, "btn_userpass_re_editpass"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc

    const/4 v4, 0x1

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a()Landroid/widget/EditText;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/unionpay/upomp/bypay/other/db;->a:Lcom/unionpay/upomp/bypay/activity/EditpassActivity;

    invoke-virtual {v7}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v9, "string"

    const-string v10, "upomp_bypay_utils_inputenternewpsw_hint"

    invoke-static {v8, v9, v10}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/content/Context;Landroid/view/View;IIZLandroid/widget/EditText;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "et_validcode_editpass"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/db;->a:Lcom/unionpay/upomp/bypay/activity/EditpassActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a(Lcom/unionpay/upomp/bypay/activity/EditpassActivity;I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "btn_validcode_editpass"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/db;->a:Lcom/unionpay/upomp/bypay/activity/EditpassActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a(Lcom/unionpay/upomp/bypay/activity/EditpassActivity;I)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->h:Ljava/lang/Boolean;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->R:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->n(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/db;->a:Lcom/unionpay/upomp/bypay/activity/EditpassActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a(Lcom/unionpay/upomp/bypay/activity/EditpassActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "60"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/ct;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/db;->a:Lcom/unionpay/upomp/bypay/activity/EditpassActivity;

    invoke-static {v1}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a(Lcom/unionpay/upomp/bypay/activity/EditpassActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/other/ct;->b(Landroid/widget/Button;)V

    new-instance v0, Lcom/unionpay/upomp/bypay/other/em;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/db;->a:Lcom/unionpay/upomp/bypay/activity/EditpassActivity;

    invoke-direct {v0, v1}, Lcom/unionpay/upomp/bypay/other/em;-><init>(Lcom/unionpay/upomp/bypay/activity/EditpassActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/other/em;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/db;->a:Lcom/unionpay/upomp/bypay/activity/EditpassActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a(Lcom/unionpay/upomp/bypay/activity/EditpassActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/db;->a:Lcom/unionpay/upomp/bypay/activity/EditpassActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a(Lcom/unionpay/upomp/bypay/activity/EditpassActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/db;->a:Lcom/unionpay/upomp/bypay/activity/EditpassActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/db;->a:Lcom/unionpay/upomp/bypay/activity/EditpassActivity;

    invoke-static {v1}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a(Lcom/unionpay/upomp/bypay/activity/EditpassActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->h:Ljava/lang/Boolean;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/db;->a:Lcom/unionpay/upomp/bypay/activity/EditpassActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/db;->a:Lcom/unionpay/upomp/bypay/activity/EditpassActivity;

    invoke-static {v1}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a(Lcom/unionpay/upomp/bypay/activity/EditpassActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/db;->a:Lcom/unionpay/upomp/bypay/activity/EditpassActivity;

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_please"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/unionpay/upomp/bypay/other/eh;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/db;->a:Lcom/unionpay/upomp/bypay/activity/EditpassActivity;

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_sendMac"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
