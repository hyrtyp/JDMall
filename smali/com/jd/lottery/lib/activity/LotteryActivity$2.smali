.class Lcom/jd/lottery/lib/activity/LotteryActivity$2;
.super Ljava/lang/Object;
.source "LotteryActivity.java"

# interfaces
.implements Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$ActionClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/activity/LotteryActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
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
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$2;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeftClicked()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public onRightClicked()V
    .locals 2

    .prologue
    .line 235
    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$2;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$2(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/data/Constants$LotteryType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->getValue()I

    move-result v1

    .line 235
    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->clear(I)V

    .line 237
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$2;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->finish()V

    .line 238
    return-void
.end method
