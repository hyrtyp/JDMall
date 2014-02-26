.class Lcom/jd/lottery/lib/activity/LotteryActivity$5;
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
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$5;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 332
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$5;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$2(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/data/Constants$LotteryType;

    move-result-object v0

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DoubleColor:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v0, v1, :cond_3

    .line 333
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$5;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mCurrentPager:I
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$4(Lcom/jd/lottery/lib/activity/LotteryActivity;)I

    move-result v0

    if-nez v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$5;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$5(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->addLottery()V

    .line 338
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$5;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    iget-object v0, v0, Lcom/jd/lottery/lib/activity/LotteryActivity;->countInCart:Landroid/widget/TextView;

    .line 339
    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v1

    sget v2, Lcom/jd/lottery/lib/formatter/Formatter;->SSQ:I

    invoke-virtual {v1, v2}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getLotterys(I)I

    move-result v1

    .line 338
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    :cond_1
    :goto_1
    return-void

    .line 335
    :cond_2
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$5;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mCurrentPager:I
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$4(Lcom/jd/lottery/lib/activity/LotteryActivity;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 336
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$5;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mFragmentDuplexPanel:Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$6(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->addLottery()V

    goto :goto_0

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$5;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mLotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$2(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/data/Constants$LotteryType;

    move-result-object v0

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DaLeTou:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v0, v1, :cond_1

    .line 341
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$5;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mCurrentPager:I
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$4(Lcom/jd/lottery/lib/activity/LotteryActivity;)I

    move-result v0

    if-nez v0, :cond_5

    .line 342
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$5;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mDaletouFragmentOptionalPanel:Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$7(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/DaletouOptionalPanelFragment;->addLottery()V

    .line 346
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$5;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    iget-object v0, v0, Lcom/jd/lottery/lib/activity/LotteryActivity;->countInCart:Landroid/widget/TextView;

    .line 347
    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v1

    sget v2, Lcom/jd/lottery/lib/formatter/Formatter;->DLT:I

    invoke-virtual {v1, v2}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getLotterys(I)I

    move-result v1

    .line 346
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 343
    :cond_5
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$5;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mCurrentPager:I
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$4(Lcom/jd/lottery/lib/activity/LotteryActivity;)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 344
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$5;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->mDaletouFragmentDuplexPanel:Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$8(Lcom/jd/lottery/lib/activity/LotteryActivity;)Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->addLottery()V

    goto :goto_2
.end method
