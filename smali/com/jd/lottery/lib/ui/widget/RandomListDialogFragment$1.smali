.class Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$1;
.super Landroid/os/Handler;
.source "RandomListDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    .line 54
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->mListAdapter:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->access$0(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->mListAdapter:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->access$0(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->notifyDataSetChanged()V

    .line 58
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    #calls: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->updateMessage()V
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->access$1(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)V

    .line 60
    :cond_0
    return-void
.end method
