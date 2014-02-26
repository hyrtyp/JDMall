.class Lcom/jd/lottery/lib/activity/LotteryActivity$10;
.super Ljava/lang/Object;
.source "LotteryActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/activity/LotteryActivity;->initBallSelectorPanelViewPager(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$10;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 661
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 657
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$10;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #calls: Lcom/jd/lottery/lib/activity/LotteryActivity;->updateTab(I)V
    invoke-static {v0, p1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$11(Lcom/jd/lottery/lib/activity/LotteryActivity;I)V

    .line 653
    return-void
.end method
