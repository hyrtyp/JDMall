.class Lcom/jd/lottery/lib/activity/LotteryActivity$1;
.super Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;
.source "LotteryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/lottery/lib/activity/LotteryActivity;
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
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$1;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    .line 544
    invoke-direct {p0}, Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 548
    const-string v0, "@@@@@@@@@@@%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$1;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #calls: Lcom/jd/lottery/lib/activity/LotteryActivity;->updateCurrIssue()V
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$0(Lcom/jd/lottery/lib/activity/LotteryActivity;)V

    .line 552
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$1;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #calls: Lcom/jd/lottery/lib/activity/LotteryActivity;->updatePrevIssue()V
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$1(Lcom/jd/lottery/lib/activity/LotteryActivity;)V

    .line 554
    return-void
.end method
