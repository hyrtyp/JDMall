.class Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$4;
.super Ljava/lang/Object;
.source "RandomListDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$4;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 126
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$4;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->lotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;
    invoke-static {v2}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->access$8(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)Lcom/jd/lottery/lib/data/Constants$LotteryType;

    move-result-object v2

    sget-object v3, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DoubleColor:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v2, v3, :cond_2

    .line 128
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$4;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->mLotteriesSource:Ljava/util/List;
    invoke-static {v2}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->access$5(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_1

    .line 136
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$4;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    invoke-virtual {v2}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/jd/lottery/lib/activity/LotteryActivity;

    iget-object v2, v2, Lcom/jd/lottery/lib/activity/LotteryActivity;->countInCart:Landroid/widget/TextView;

    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v3

    sget v4, Lcom/jd/lottery/lib/formatter/Formatter;->SSQ:I

    invoke-virtual {v3, v4}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getLotterys(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .end local v0           #i:I
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$4;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    invoke-virtual {v2}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->dismiss()V

    .line 151
    return-void

    .line 129
    .restart local v0       #i:I
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v1, lists:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$4;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->mLotteriesSource:Ljava/util/List;
    invoke-static {v2}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->access$5(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$4;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->mLotteriesSource:Ljava/util/List;
    invoke-static {v2}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->access$5(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v2

    sget v3, Lcom/jd/lottery/lib/formatter/Formatter;->SSQ:I

    invoke-virtual {v2, v3, v4, v1}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->addLottery(IILjava/util/List;)V

    .line 128
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 137
    .end local v0           #i:I
    .end local v1           #lists:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    :cond_2
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$4;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->lotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;
    invoke-static {v2}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->access$8(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)Lcom/jd/lottery/lib/data/Constants$LotteryType;

    move-result-object v2

    sget-object v3, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DaLeTou:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v2, v3, :cond_0

    .line 139
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$4;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->mLotteriesSource:Ljava/util/List;
    invoke-static {v2}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->access$5(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0       #i:I
    :goto_2
    if-gez v0, :cond_3

    .line 147
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$4;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    invoke-virtual {v2}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/jd/lottery/lib/activity/LotteryActivity;

    iget-object v2, v2, Lcom/jd/lottery/lib/activity/LotteryActivity;->countInCart:Landroid/widget/TextView;

    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v3

    sget v4, Lcom/jd/lottery/lib/formatter/Formatter;->DLT:I

    invoke-virtual {v3, v4}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getLotterys(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 140
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .restart local v1       #lists:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$4;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->mLotteriesSource:Ljava/util/List;
    invoke-static {v2}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->access$5(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$4;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->mLotteriesSource:Ljava/util/List;
    invoke-static {v2}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->access$5(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v2

    sget v3, Lcom/jd/lottery/lib/formatter/Formatter;->DLT:I

    invoke-virtual {v2, v3, v4, v1}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->addLottery(IILjava/util/List;)V

    .line 139
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method
