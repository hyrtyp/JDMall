.class Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment$3;
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
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment$3;->this$0:Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;

    .line 118
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
    .line 122
    .local p2, integers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment$3;->this$0:Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;

    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment$3;->this$0:Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
    invoke-static {v1}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->access$2(Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/jd/lottery/lib/ui/widget/DuplexPanelFragment;->procssBallClickedEvent(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;I)V

    .line 123
    return-void
.end method
