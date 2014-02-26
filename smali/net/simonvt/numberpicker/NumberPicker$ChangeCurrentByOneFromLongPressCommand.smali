.class Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/numberpicker/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lnet/simonvt/numberpicker/NumberPicker;


# direct methods
.method constructor <init>(Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 2157
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2160
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .locals 0
    .parameter "increment"

    .prologue
    .line 2161
    iput-boolean p1, p0, Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 2162
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2166
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    #calls: Lnet/simonvt/numberpicker/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->access$12(Lnet/simonvt/numberpicker/NumberPicker;Z)V

    .line 2167
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #getter for: Lnet/simonvt/numberpicker/NumberPicker;->mLongPressUpdateInterval:J
    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->access$13(Lnet/simonvt/numberpicker/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2168
    return-void
.end method
