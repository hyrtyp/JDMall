.class Lcom/jd/lottery/lib/activity/ConfirmListActivity$4;
.super Ljava/lang/Object;
.source "ConfirmListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$4;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 174
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$4;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$4;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheck:Z
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$4(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    #setter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheck:Z
    invoke-static {v1, v0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$5(Lcom/jd/lottery/lib/activity/ConfirmListActivity;Z)V

    .line 175
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$4;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheck:Z
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$4(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$4;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheckBox:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$6(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/jd/lottery/lib/R$drawable;->touzhu_choice_icon_hl:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    :goto_1
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$4;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mCheckBox:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$6(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/jd/lottery/lib/R$drawable;->touzhu_choice_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
