.class Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$2;
.super Ljava/lang/Object;
.source "OptionalPanelFragment.java"

# interfaces
.implements Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$SelectorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->setupViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$2;->this$0:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    .line 101
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
    .line 106
    .local p2, integers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$2;->this$0:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 111
    sget v1, Lcom/jd/lottery/lib/R$string;->toast_ssq_optional_not_execced_16_redball:I

    .line 109
    invoke-static {v0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    .line 112
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$2;->this$0:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->selectorPanelRed:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->access$1(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->negationItem(I)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$2;->this$0:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$2;->this$0:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->selectorPanelRed:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
    invoke-static {v1}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->access$1(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->procssBallClickedEvent(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;I)V

    goto :goto_0
.end method
