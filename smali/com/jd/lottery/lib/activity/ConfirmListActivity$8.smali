.class Lcom/jd/lottery/lib/activity/ConfirmListActivity$8;
.super Ljava/lang/Object;
.source "ConfirmListActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 284
    if-nez p2, :cond_0

    .line 285
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTimes:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$9(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTimes:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$9(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTimes:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$9(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Lcom/jd/lottery/lib/utils/UiUtils;->setSelectionToTheEnd(Landroid/widget/EditText;)V

    .line 288
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #calls: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->displayTotalMoney()V
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$2(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

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

    .line 291
    .local v0, value:I
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTimes:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$9(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$8;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mTimes:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$9(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Lcom/jd/lottery/lib/utils/UiUtils;->setSelectionToTheEnd(Landroid/widget/EditText;)V

    goto :goto_0
.end method
