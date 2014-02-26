.class Lnet/simonvt/numberpicker/NumberPicker$2;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$2;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 645
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$2;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #calls: Lnet/simonvt/numberpicker/NumberPicker;->hideSoftInput()V
    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$16(Lnet/simonvt/numberpicker/NumberPicker;)V

    .line 646
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$2;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #getter for: Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$11(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 647
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/jd/lottery/lib/R$id;->np__increment:I

    if-ne v0, v1, :cond_0

    .line 648
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$2;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #calls: Lnet/simonvt/numberpicker/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V
    invoke-static {v0, v2, v3, v4}, Lnet/simonvt/numberpicker/NumberPicker;->access$17(Lnet/simonvt/numberpicker/NumberPicker;ZJ)V

    .line 652
    :goto_0
    return v2

    .line 650
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$2;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    const/4 v1, 0x0

    #calls: Lnet/simonvt/numberpicker/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V
    invoke-static {v0, v1, v3, v4}, Lnet/simonvt/numberpicker/NumberPicker;->access$17(Lnet/simonvt/numberpicker/NumberPicker;ZJ)V

    goto :goto_0
.end method
