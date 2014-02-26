.class Lcom/jd/lottery/lib/activity/ConfirmListActivity$5;
.super Ljava/lang/Object;
.source "ConfirmListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/activity/ConfirmListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$5;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .parameter "arg0"

    .prologue
    const/16 v5, 0x1e

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 188
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$5;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mNumbers:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$7(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$5;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mNumbers:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$7(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 190
    .local v0, value:I
    if-ge v0, v6, :cond_2

    .line 191
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$5;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mNumbers:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$7(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$5;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mNumbers:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$7(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Lcom/jd/lottery/lib/utils/UiUtils;->setSelectionToTheEnd(Landroid/widget/EditText;)V

    .line 201
    :cond_0
    :goto_0
    if-le v0, v6, :cond_3

    .line 202
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$5;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheckBox:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$6(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 203
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$5;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheckBox:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$6(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/ImageView;

    move-result-object v1

    sget v2, Lcom/jd/lottery/lib/R$drawable;->touzhu_choice_icon:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$5;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheckText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$8(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, -0xcccccd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    .end local v0           #value:I
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$5;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #calls: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->displayTotalMoney()V
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$2(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)V

    .line 213
    return-void

    .line 193
    .restart local v0       #value:I
    :cond_2
    if-le v0, v5, :cond_0

    .line 194
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$5;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mNumbers:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$7(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$5;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mNumbers:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$7(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Lcom/jd/lottery/lib/utils/UiUtils;->setSelectionToTheEnd(Landroid/widget/EditText;)V

    .line 197
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$5;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 198
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$5;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    sget v3, Lcom/jd/lottery/lib/R$string;->toast_lottery_max_number_of_periods:I

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-static {v1, v2}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_3
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$5;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #setter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheck:Z
    invoke-static {v1, v7}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$5(Lcom/jd/lottery/lib/activity/ConfirmListActivity;Z)V

    .line 207
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$5;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheckBox:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$6(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 208
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$5;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheckBox:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$6(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/ImageView;

    move-result-object v1

    sget v2, Lcom/jd/lottery/lib/R$drawable;->touzhu_choice_disable:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$5;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheckText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$8(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, -0x5c5c5d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 218
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 223
    return-void
.end method
