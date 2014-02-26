.class Lcom/jd/lottery/lib/activity/LotteryActivity$8;
.super Ljava/lang/Object;
.source "LotteryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/activity/LotteryActivity;->initBallSelectorPanelTab()V
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
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$8;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$8;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mBallSelectorViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$10(Lcom/jd/lottery/lib/activity/LotteryActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 599
    return-void
.end method
