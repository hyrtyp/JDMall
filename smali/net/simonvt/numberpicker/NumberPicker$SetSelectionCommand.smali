.class Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;
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
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field private mSelectionEnd:I

.field private mSelectionStart:I

.field final synthetic this$0:Lnet/simonvt/numberpicker/NumberPicker;


# direct methods
.method constructor <init>(Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 2144
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2145
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    return-void
.end method

.method static synthetic access$1(Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2147
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2150
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #getter for: Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$11(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 2151
    return-void
.end method
