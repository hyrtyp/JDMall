.class Lnet/simonvt/numberpicker/NumberPicker$1;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$1;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 633
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$1;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #calls: Lnet/simonvt/numberpicker/NumberPicker;->hideSoftInput()V
    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$16(Lnet/simonvt/numberpicker/NumberPicker;)V

    .line 634
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$1;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #getter for: Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$11(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 635
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/jd/lottery/lib/R$id;->np__increment:I

    if-ne v0, v1, :cond_0

    .line 636
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$1;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    const/4 v1, 0x1

    #calls: Lnet/simonvt/numberpicker/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->access$12(Lnet/simonvt/numberpicker/NumberPicker;Z)V

    .line 640
    :goto_0
    return-void

    .line 638
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$1;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    const/4 v1, 0x0

    #calls: Lnet/simonvt/numberpicker/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->access$12(Lnet/simonvt/numberpicker/NumberPicker;Z)V

    goto :goto_0
.end method
