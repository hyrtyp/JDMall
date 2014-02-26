.class public Lcom/unionpay/upomp/bypay/other/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;


# direct methods
.method public constructor <init>(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/aa;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 11

    const/4 v7, 0x1

    const/4 v3, 0x6

    const/4 v10, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v5, "et_card_id_content_add_card"

    invoke-static {v1, v2, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/aa;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    invoke-static {v0, v7}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/aa;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/aa;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/aa;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v5, "btn_card_pass_content_add_card"

    invoke-static {v1, v2, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/aa;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    invoke-static {v0, v6}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/aa;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->c()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v5, "id"

    const-string v6, "btn_card_pass_content_add_card"

    invoke-static {v2, v5, v6}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v5, "id"

    const-string v6, "btn_card_pass_content_add_card"

    invoke-static {v2, v5, v6}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a()Landroid/widget/EditText;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/unionpay/upomp/bypay/other/aa;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    invoke-virtual {v7}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v9, "string"

    const-string v10, "upomp_bypay_utils_cardpsw_hint"

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

    const-string v5, "btn_mm_add_card"

    invoke-static {v1, v2, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/aa;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    invoke-static {v0, v10}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;I)V

    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v5, "btn_yy_add_card"

    invoke-static {v1, v2, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/aa;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    invoke-static {v0, v10}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;I)V

    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v5, "et_cvn2_content_add_card"

    invoke-static {v1, v2, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/aa;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->d()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/aa;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/aa;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/aa;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "id"

    const-string v5, "et_cvn2_content_add_card"

    invoke-static {v2, v3, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "id"

    const-string v5, "et_cvn2_content_add_card"

    invoke-static {v2, v3, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a()Landroid/widget/EditText;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/unionpay/upomp/bypay/other/aa;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    invoke-virtual {v3}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v7, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v8, "string"

    const-string v9, "upomp_bypay_utils_cvn2_hint"

    invoke-static {v7, v8, v9}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move v3, v10

    invoke-static/range {v0 .. v7}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/content/Context;Landroid/view/View;IIZLandroid/widget/EditText;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v5, "tv_telnum_content_add_card"

    invoke-static {v1, v2, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/aa;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v5, "et_mobilevalidcode_add_card"

    invoke-static {v1, v2, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/aa;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    invoke-static {v0, v3}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;I)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v5, "btn_mobilevalidcode_add_card"

    invoke-static {v1, v2, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/aa;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    invoke-static {v0, v3}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;I)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->R:Ljava/lang/String;

    :cond_8
    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->n(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->e()Landroid/widget/Button;

    move-result-object v0

    const-string v1, "60"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/ct;

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->e()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/other/ct;->b(Landroid/widget/Button;)V

    new-instance v0, Lcom/unionpay/upomp/bypay/other/fn;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/aa;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    invoke-direct {v0, v1}, Lcom/unionpay/upomp/bypay/other/fn;-><init>(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;)V

    new-array v1, v4, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/other/fn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_9
    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->b()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->b()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/aa;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->b()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/aa;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->b()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/aa;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->getResources()Landroid/content/res/Resources;

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

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/aa;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->getResources()Landroid/content/res/Resources;

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
