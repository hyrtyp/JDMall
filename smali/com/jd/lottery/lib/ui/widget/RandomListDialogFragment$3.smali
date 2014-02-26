.class Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$3;
.super Ljava/lang/Object;
.source "RandomListDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$3;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$3;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->dismiss()V

    .line 118
    return-void
.end method
