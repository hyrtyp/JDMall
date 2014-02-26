.class Lnet/simonvt/numberpicker/NumberPicker$3;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/simonvt/numberpicker/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/simonvt/numberpicker/NumberPicker;


# direct methods
.method constructor <init>(Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$3;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v1, 0x0

    .line 678
    if-eqz p2, :cond_0

    .line 679
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$3;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #getter for: Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$11(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 684
    :goto_0
    return-void

    .line 681
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$3;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #getter for: Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$11(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 682
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$3;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #calls: Lnet/simonvt/numberpicker/NumberPicker;->validateInputTextView(Landroid/view/View;)V
    invoke-static {v0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->access$18(Lnet/simonvt/numberpicker/NumberPicker;Landroid/view/View;)V

    goto :goto_0
.end method
