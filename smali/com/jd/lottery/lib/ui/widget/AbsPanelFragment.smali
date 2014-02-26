.class public abstract Lcom/jd/lottery/lib/ui/widget/AbsPanelFragment;
.super Landroid/support/v4/app/Fragment;
.source "AbsPanelFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addLottery()V
.end method

.method public abstract clean()V
.end method

.method public abstract getSelectedBalls()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getTotalMoney()J
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract isLegalLottery()Z
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 19
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 35
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 30
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 39
    return-void
.end method

.method public procssBallClickedEvent(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;I)V
    .locals 4
    .parameter "ballSelectorPanel"
    .parameter "position"

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/AbsPanelFragment;->getTotalMoney()J

    move-result-wide v0

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 46
    invoke-virtual {p1, p2}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->isSelected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p1, p2}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->negationItem(I)V

    .line 48
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/AbsPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/jd/lottery/lib/R$string;->toast_not_exceed_2w:I

    invoke-static {v0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/AbsPanelFragment;->updateBetBasicInfo()V

    .line 53
    return-void
.end method

.method public abstract selSelectedBalls(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract updateBetBasicInfo()V
.end method
