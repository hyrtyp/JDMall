.class Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment$1;
.super Ljava/lang/Object;
.source "DuplexPanelFragment.java"

# interfaces
.implements Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$SelectorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->setupViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectedChanged(ILjava/util/List;)V
    .locals 2
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, integers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelTuoma:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->access$0(Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->isSelected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelTuoma:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->access$0(Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->negationItem(I)V

    .line 76
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/jd/lottery/lib/R$string;->toast_ssq_duplex_not_execced_5_danma:I

    invoke-static {v0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    .line 78
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelDanma:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->access$1(Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->negationItem(I)V

    .line 87
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelDanma:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->access$1(Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelTuoma:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
    invoke-static {v1}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->access$0(Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    .line 81
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/jd/lottery/lib/R$string;->toast_ssq_duplex_not_execced_20_danma_plus_tuoma:I

    invoke-static {v0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    .line 82
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelDanma:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->access$1(Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->negationItem(I)V

    goto :goto_0

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;

    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelDanma:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
    invoke-static {v1}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->access$1(Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->procssBallClickedEvent(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;I)V

    goto :goto_0
.end method
