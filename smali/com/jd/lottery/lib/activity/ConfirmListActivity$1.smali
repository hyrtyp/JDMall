.class Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;
.super Ljava/lang/Object;
.source "ConfirmListActivity.java"

# interfaces
.implements Lcom/jd/lottery/lib/ui/widget/StuanTitle$TitleClickListener;


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
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;)Lcom/jd/lottery/lib/activity/ConfirmListActivity;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    return-object v0
.end method


# virtual methods
.method public onLeftClicked()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public onRightClicked()V
    .locals 4

    .prologue
    .line 106
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mAdapter:Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$0(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/jd/lottery/lib/R$string;->alert_dialog_title_warning:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    invoke-virtual {v2}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/jd/lottery/lib/R$string;->alert_dialog_msg_clean_basket:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {v1, v2}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;

    move-result-object v0

    .line 114
    .local v0, alertDialogFragment:Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;
    new-instance v1, Lcom/jd/lottery/lib/activity/ConfirmListActivity$1$1;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity$1$1;-><init>(Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->setOnActionClickListener(Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$ActionClickListener;)V

    .line 133
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 134
    const-string v2, "ClearLotterys"

    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
