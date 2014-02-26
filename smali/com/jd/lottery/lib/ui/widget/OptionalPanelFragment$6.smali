.class Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$6;
.super Ljava/lang/Object;
.source "OptionalPanelFragment.java"

# interfaces
.implements Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$NumberPickeredListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->showNumberPicker()V
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
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$6;->this$0:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNumberPickered(II)V
    .locals 3
    .parameter "redBallNum"
    .parameter "blueBallNum"

    .prologue
    .line 199
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$6;->this$0:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->formatter:Lcom/jd/lottery/lib/formatter/Formatter;
    invoke-static {v1}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->access$5(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;)Lcom/jd/lottery/lib/formatter/Formatter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/jd/lottery/lib/formatter/Formatter;->random(II)Ljava/util/List;

    move-result-object v0

    .line 202
    .local v0, lists:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$6;->this$0:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->selectorPanelRed:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
    invoke-static {v1}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->access$1(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    move-result-object v2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setSelected(Ljava/util/List;)V

    .line 203
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$6;->this$0:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->selectorPanelBlue:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
    invoke-static {v1}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->access$2(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    move-result-object v2

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->setSelected(Ljava/util/List;)V

    .line 205
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$6;->this$0:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->updateBetBasicInfo()V

    .line 207
    return-void
.end method
