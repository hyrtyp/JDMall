.class Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter$1;
.super Ljava/lang/Object;
.source "RandomListDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter$1;->this$1:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;

    iput p2, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter$1;->val$position:I

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter$1;->this$1:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;

    #getter for: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->access$1(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;)Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    move-result-object v0

    #getter for: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->currentPosition:I
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->access$2(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)I

    move-result v0

    iget v1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter$1;->val$position:I

    if-eq v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter$1;->this$1:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;

    #getter for: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->access$1(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;)Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    move-result-object v0

    iget v1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter$1;->val$position:I

    #setter for: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->currentPosition:I
    invoke-static {v0, v1}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->access$3(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;I)V

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter$1;->this$1:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;

    #getter for: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->access$1(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;)Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    move-result-object v0

    #getter for: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->access$4(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 255
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter$1;->this$1:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;

    #getter for: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->access$1(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;)Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    move-result-object v0

    const/4 v1, -0x1

    #setter for: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->currentPosition:I
    invoke-static {v0, v1}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->access$3(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;I)V

    goto :goto_0
.end method
