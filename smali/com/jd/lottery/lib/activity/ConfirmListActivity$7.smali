.class Lcom/jd/lottery/lib/activity/ConfirmListActivity$7;
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
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$7;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .parameter "s"

    .prologue
    const/16 v5, 0x32

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 249
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$7;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTimes:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$9(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$7;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTimes:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$9(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 251
    .local v0, value:I
    if-ge v0, v4, :cond_1

    .line 252
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$7;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTimes:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$9(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$7;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTimes:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$9(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Lcom/jd/lottery/lib/utils/UiUtils;->setSelectionToTheEnd(Landroid/widget/EditText;)V

    .line 266
    .end local v0           #value:I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$7;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #calls: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->displayTotalMoney()V
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$2(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)V

    .line 267
    return-void

    .line 254
    .restart local v0       #value:I
    :cond_1
    if-le v0, v5, :cond_2

    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$7;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mKind:I
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$1(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)I

    move-result v1

    sget v2, Lcom/jd/lottery/lib/formatter/Formatter;->DLT:I

    if-eq v1, v2, :cond_2

    .line 255
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$7;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTimes:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$9(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "50"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$7;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTimes:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$9(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Lcom/jd/lottery/lib/utils/UiUtils;->setSelectionToTheEnd(Landroid/widget/EditText;)V

    .line 258
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$7;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$7;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    sget v3, Lcom/jd/lottery/lib/R$string;->toast_lottery_max_multiple:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_2
    const/16 v1, 0x63

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$7;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mKind:I
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$1(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)I

    move-result v1

    sget v2, Lcom/jd/lottery/lib/formatter/Formatter;->DLT:I

    if-ne v1, v2, :cond_0

    .line 260
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$7;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTimes:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$9(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "99"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$7;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTimes:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$9(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Lcom/jd/lottery/lib/utils/UiUtils;->setSelectionToTheEnd(Landroid/widget/EditText;)V

    .line 263
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$7;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$7;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    sget v3, Lcom/jd/lottery/lib/R$string;->toast_lottery_max_multiple:I

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0x5a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 272
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 277
    return-void
.end method
