.class Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$1;
.super Ljava/lang/Object;
.source "BallSelectorPanel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->init(IILcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$1;->this$0:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$1;->this$0:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    #getter for: Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->myAdapter:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;
    invoke-static {v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->access$1(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->negationItem(I)V

    .line 69
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$1;->this$0:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    #getter for: Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->selectorChangedListener:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$SelectorChangedListener;
    invoke-static {v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->access$2(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$SelectorChangedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$1;->this$0:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->getSelectedNums()Ljava/util/List;

    move-result-object v0

    .line 71
    .local v0, integers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$1;->this$0:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    #getter for: Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->selectorChangedListener:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$SelectorChangedListener;
    invoke-static {v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->access$2(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$SelectorChangedListener;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$SelectorChangedListener;->onSelectedChanged(ILjava/util/List;)V

    .line 73
    .end local v0           #integers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method
