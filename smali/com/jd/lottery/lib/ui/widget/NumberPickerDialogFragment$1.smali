.class Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$1;
.super Ljava/lang/Object;
.source "NumberPickerDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;

.field private final synthetic val$blueBallPicker:Lnet/simonvt/numberpicker/NumberPicker;

.field private final synthetic val$redBallPicker:Lnet/simonvt/numberpicker/NumberPicker;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;Lnet/simonvt/numberpicker/NumberPicker;Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;

    iput-object p2, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$1;->val$redBallPicker:Lnet/simonvt/numberpicker/NumberPicker;

    iput-object p3, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$1;->val$blueBallPicker:Lnet/simonvt/numberpicker/NumberPicker;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->numberPickeredListener:Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$NumberPickeredListener;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->access$0(Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;)Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$NumberPickeredListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "latest_red"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->lotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;
    invoke-static {v2}, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->access$1(Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;)Lcom/jd/lottery/lib/data/Constants$LotteryType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$1;->val$redBallPicker:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/jd/lottery/lib/utils/PreferenceUtil;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 121
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "latest_blue"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->lotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;
    invoke-static {v2}, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->access$1(Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;)Lcom/jd/lottery/lib/data/Constants$LotteryType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$1;->val$blueBallPicker:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/jd/lottery/lib/utils/PreferenceUtil;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 123
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->numberPickeredListener:Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$NumberPickeredListener;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->access$0(Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;)Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$NumberPickeredListener;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$1;->val$redBallPicker:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$1;->val$blueBallPicker:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v2

    .line 123
    invoke-interface {v0, v1, v2}, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$NumberPickeredListener;->onNumberPickered(II)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->dismiss()V

    .line 127
    return-void
.end method
