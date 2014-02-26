.class Lcom/jd/lottery/lib/activity/LotteryActivity$4;
.super Ljava/lang/Object;
.source "LotteryActivity.java"

# interfaces
.implements Lcom/jd/lottery/lib/ui/widget/StuanTitle$TitleClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/activity/LotteryActivity;->init(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/activity/LotteryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$4;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeftClicked()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$4;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->finish()V

    .line 295
    return-void
.end method

.method public onRightClicked()V
    .locals 3

    .prologue
    .line 301
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$4;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$2(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/data/Constants$LotteryType;

    move-result-object v1

    invoke-static {v1}, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;->newInstance(Lcom/jd/lottery/lib/data/Constants$LotteryType;)Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;

    move-result-object v0

    .line 302
    .local v0, rulesDialogFragment:Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$4;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "rules"

    invoke-virtual {v0, v1, v2}, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 304
    return-void
.end method
