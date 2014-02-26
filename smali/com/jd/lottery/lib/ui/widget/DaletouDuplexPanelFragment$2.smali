.class Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment$2;
.super Ljava/lang/Object;
.source "DaletouDuplexPanelFragment.java"

# interfaces
.implements Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$SelectorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->setupViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment$2;->this$0:Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;

    .line 92
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
    .line 97
    .local p2, integers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment$2;->this$0:Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelQiandan:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->access$1(Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->isSelected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment$2;->this$0:Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelQiandan:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->access$1(Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->negationItem(I)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment$2;->this$0:Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;

    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment$2;->this$0:Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->selectorPanelQiantuo:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
    invoke-static {v1}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->access$0(Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/jd/lottery/lib/ui/widget/DaletouDuplexPanelFragment;->procssBallClickedEvent(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;I)V

    .line 102
    return-void
.end method
