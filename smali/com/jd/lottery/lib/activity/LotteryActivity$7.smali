.class Lcom/jd/lottery/lib/activity/LotteryActivity$7;
.super Ljava/lang/Object;
.source "LotteryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$7;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 521
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$7;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$2(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/data/Constants$LotteryType;

    move-result-object v0

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DoubleColor:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v0, v1, :cond_2

    .line 522
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$7;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mCurrentPager:I
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$4(Lcom/jd/lottery/lib/activity/LotteryActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$7;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$5(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->clean()V

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$7;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mCurrentPager:I
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$4(Lcom/jd/lottery/lib/activity/LotteryActivity;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 525
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$7;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmentDuplexPanel:Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$6(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->clean()V

    goto :goto_0

    .line 527
    :cond_2
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$7;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$2(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/data/Constants$LotteryType;

    move-result-object v0

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DaLeTou:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v0, v1, :cond_0

    .line 528
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$7;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mCurrentPager:I
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$4(Lcom/jd/lottery/lib/activity/LotteryActivity;)I

    move-result v0

    if-nez v0, :cond_3

    .line 529
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$7;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mDaletouFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$7(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->clean()V

    goto :goto_0

    .line 530
    :cond_3
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$7;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mCurrentPager:I
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$4(Lcom/jd/lottery/lib/activity/LotteryActivity;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 531
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$7;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mDaletouFragmentDuplexPanel:Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$8(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->clean()V

    goto :goto_0
.end method
