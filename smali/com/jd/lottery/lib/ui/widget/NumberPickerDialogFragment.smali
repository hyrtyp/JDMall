.class public Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "NumberPickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$NumberPickeredListener;
    }
.end annotation


# static fields
.field private static final BLUE_BALL_MAX:Ljava/lang/String; = "blue_ball_max"

.field private static final BLUE_BALL_MIN:Ljava/lang/String; = "blue_ball_min"

.field private static final LOTTERY_TYPE:Ljava/lang/String; = "lottery_type"

.field private static final RED_BALL_MAX:Ljava/lang/String; = "red_ball_max"

.field private static final RED_BALL_MIN:Ljava/lang/String; = "red_ball_min"


# instance fields
.field private blueBallMax:I

.field private blueBallMin:I

.field private latestBlue:I

.field private latestRed:I

.field private lotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

.field private numberPickeredListener:Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$NumberPickeredListener;

.field private redBallMax:I

.field private redBallMin:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;)Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$NumberPickeredListener;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->numberPickeredListener:Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$NumberPickeredListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;)Lcom/jd/lottery/lib/data/Constants$LotteryType;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->lotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    return-object v0
.end method

.method public static newInstance(IIIILcom/jd/lottery/lib/data/Constants$LotteryType;)Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;
    .locals 3
    .parameter "redBallMin"
    .parameter "redBallMax"
    .parameter "blueBallMin"
    .parameter "blueBallmax"
    .parameter "lotteryType"

    .prologue
    .line 41
    new-instance v1, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;

    invoke-direct {v1}, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;-><init>()V

    .line 43
    .local v1, numberPickerFragment:Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "red_ball_min"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    const-string v2, "red_ball_max"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    const-string v2, "blue_ball_min"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    const-string v2, "blue_ball_max"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    const-string v2, "lottery_type"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 50
    invoke-virtual {v1, v0}, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 52
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "red_ball_min"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->redBallMin:I

    .line 60
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "red_ball_max"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->redBallMax:I

    .line 61
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "blue_ball_min"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->blueBallMin:I

    .line 62
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "blue_ball_max"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->blueBallMax:I

    .line 63
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "lottery_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/data/Constants$LotteryType;

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->lotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/high16 v10, 0x6

    const/4 v9, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/Window;->requestFeature(I)Z

    .line 74
    sget v7, Lcom/jd/lottery/lib/R$layout;->fragmentdialog_number_picker:I

    .line 73
    invoke-virtual {p1, v7, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 76
    .local v3, layout:Landroid/widget/LinearLayout;
    sget v7, Lcom/jd/lottery/lib/R$id;->fragment_number_picker_red_text:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 77
    .local v6, redTitle:Landroid/widget/TextView;
    sget v7, Lcom/jd/lottery/lib/R$id;->fragment_number_picker_blue_text:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 79
    .local v1, blueTitle:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->lotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    sget-object v8, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DoubleColor:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v7, v8, :cond_1

    .line 80
    sget v7, Lcom/jd/lottery/lib/R$string;->red_ball:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 81
    sget v7, Lcom/jd/lottery/lib/R$string;->blue_ball:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 88
    :cond_0
    :goto_0
    sget v7, Lcom/jd/lottery/lib/R$id;->fragment_number_picker_red:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 87
    check-cast v5, Lnet/simonvt/numberpicker/NumberPicker;

    .line 90
    .local v5, redBallPicker:Lnet/simonvt/numberpicker/NumberPicker;
    sget v7, Lcom/jd/lottery/lib/R$id;->fragment_number_picker_blue:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 89
    check-cast v0, Lnet/simonvt/numberpicker/NumberPicker;

    .line 92
    .local v0, blueBallPicker:Lnet/simonvt/numberpicker/NumberPicker;
    iget v7, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->redBallMin:I

    invoke-virtual {v5, v7}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 93
    iget v7, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->redBallMax:I

    invoke-virtual {v5, v7}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 94
    invoke-virtual {v5, v9}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 96
    invoke-virtual {v5, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setDescendantFocusability(I)V

    .line 98
    iget v7, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->blueBallMin:I

    invoke-virtual {v0, v7}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 99
    iget v7, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->blueBallMax:I

    invoke-virtual {v0, v7}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 100
    invoke-virtual {v0, v9}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 102
    invoke-virtual {v0, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setDescendantFocusability(I)V

    .line 104
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "latest_red"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->lotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    invoke-virtual {v9}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->getValue()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->redBallMin:I

    invoke-static {v7, v8, v9}, Lcom/jd/lottery/lib/utils/PreferenceUtil;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->latestRed:I

    .line 105
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "latest_blue"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->lotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    invoke-virtual {v9}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->getValue()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->blueBallMin:I

    invoke-static {v7, v8, v9}, Lcom/jd/lottery/lib/utils/PreferenceUtil;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->latestBlue:I

    .line 106
    iget v7, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->latestRed:I

    invoke-virtual {v5, v7}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    .line 107
    iget v7, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->latestBlue:I

    invoke-virtual {v0, v7}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    .line 110
    sget v7, Lcom/jd/lottery/lib/R$id;->fragment_dialog_ok:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 109
    check-cast v4, Landroid/widget/TextView;

    .line 112
    .local v4, okTextView:Landroid/widget/TextView;
    sget v7, Lcom/jd/lottery/lib/R$id;->fragment_dialog_cancle:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 111
    check-cast v2, Landroid/widget/TextView;

    .line 114
    .local v2, cancleTextView:Landroid/widget/TextView;
    new-instance v7, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$1;

    invoke-direct {v7, p0, v5, v0}, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$1;-><init>(Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;Lnet/simonvt/numberpicker/NumberPicker;Lnet/simonvt/numberpicker/NumberPicker;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    new-instance v7, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$2;

    invoke-direct {v7, p0}, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$2;-><init>(Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-object v3

    .line 82
    .end local v0           #blueBallPicker:Lnet/simonvt/numberpicker/NumberPicker;
    .end local v2           #cancleTextView:Landroid/widget/TextView;
    .end local v4           #okTextView:Landroid/widget/TextView;
    .end local v5           #redBallPicker:Lnet/simonvt/numberpicker/NumberPicker;
    :cond_1
    iget-object v7, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->lotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    sget-object v8, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DaLeTou:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    if-ne v7, v8, :cond_0

    .line 83
    sget v7, Lcom/jd/lottery/lib/R$string;->qianqu:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 84
    sget v7, Lcom/jd/lottery/lib/R$string;->houqu:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method public setNumberPickeredListener(Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$NumberPickeredListener;)V
    .locals 0
    .parameter "numberPickeredListener"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment;->numberPickeredListener:Lcom/jd/lottery/lib/ui/widget/NumberPickerDialogFragment$NumberPickeredListener;

    .line 145
    return-void
.end method
