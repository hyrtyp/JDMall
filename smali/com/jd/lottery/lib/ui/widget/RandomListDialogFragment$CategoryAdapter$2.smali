.class Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter$2;
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
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter$2;->this$1:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;

    iput p2, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter$2;->val$position:I

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter$2;->this$1:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;

    #getter for: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->access$1(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;)Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    move-result-object v0

    #getter for: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->mLotteriesSource:Ljava/util/List;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->access$5(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter$2;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter$2;->this$1:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;

    #getter for: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->access$1(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;)Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    move-result-object v0

    #getter for: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->mLotteriesShow:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->access$6(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter$2;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter$2;->this$1:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;

    #getter for: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->access$1(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;)Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    move-result-object v0

    const/4 v1, -0x1

    #setter for: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->currentPosition:I
    invoke-static {v0, v1}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->access$3(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;I)V

    .line 268
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter$2;->this$1:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;

    #getter for: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->access$1(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;)Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    move-result-object v0

    #getter for: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->access$4(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 269
    return-void
.end method
