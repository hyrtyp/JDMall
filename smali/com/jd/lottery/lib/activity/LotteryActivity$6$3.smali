.class Lcom/jd/lottery/lib/activity/LotteryActivity$6$3;
.super Ljava/lang/Object;
.source "LotteryActivity.java"

# interfaces
.implements Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$ActionClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/activity/LotteryActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jd/lottery/lib/activity/LotteryActivity$6;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/activity/LotteryActivity$6;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6$3;->this$1:Lcom/jd/lottery/lib/activity/LotteryActivity$6;

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeftClicked()V
    .locals 4

    .prologue
    .line 462
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6$3;->this$1:Lcom/jd/lottery/lib/activity/LotteryActivity$6;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->access$0(Lcom/jd/lottery/lib/activity/LotteryActivity$6;)Lcom/jd/lottery/lib/activity/LotteryActivity;

    move-result-object v0

    .line 463
    sget v1, Lcom/jd/lottery/lib/formatter/Formatter;->DLT:I

    .line 464
    const/4 v2, 0x0

    .line 465
    iget-object v3, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$6$3;->this$1:Lcom/jd/lottery/lib/activity/LotteryActivity$6;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity$6;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;
    invoke-static {v3}, Lcom/jd/lottery/lib/activity/LotteryActivity$6;->access$0(Lcom/jd/lottery/lib/activity/LotteryActivity$6;)Lcom/jd/lottery/lib/activity/LotteryActivity;

    move-result-object v3

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mIssueEntity:Lcom/jd/lottery/lib/model/LotteryEntity;
    invoke-static {v3}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$9(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/model/LotteryEntity;

    move-result-object v3

    .line 461
    invoke-static {v0, v1, v2, v3}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->launch(Landroid/app/Activity;IILcom/jd/lottery/lib/model/IssueEntity;)V

    .line 466
    return-void
.end method

.method public onRightClicked()V
    .locals 0

    .prologue
    .line 457
    return-void
.end method
